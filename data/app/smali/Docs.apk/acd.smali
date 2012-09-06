.class public Lacd;
.super Ljava/lang/Object;
.source "SwipeySwitcher.java"


# instance fields
.field private a:LabZ;

.field final synthetic a:Lcom/google/android/common/SwipeySwitcher;

.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Laca;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Laca;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/common/SwipeySwitcher;LabZ;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lacd;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lacd;->a:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lacd;->b:Ljava/util/ArrayList;

    .line 114
    iput-object p2, p0, Lacd;->a:LabZ;

    .line 115
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Laca;
    .registers 7
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lacd;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 119
    iget-object v0, p0, Lacd;->a:Ljava/util/ArrayList;

    new-instance v1, Lace;

    iget-object v2, p0, Lacd;->a:LabZ;

    invoke-interface {v2}, LabZ;->a()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lacd;->a:Ljava/util/ArrayList;

    iget-object v4, p0, Lacd;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lace;-><init>(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_1c
    iget-object v0, p0, Lacd;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lacd;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laca;

    .line 122
    iget-object v1, p0, Lacd;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 123
    check-cast v1, Lace;

    invoke-static {v1, p1}, Lace;->a(Lace;Landroid/content/Intent;)Landroid/content/Intent;

    .line 124
    return-object v0
.end method

.method public a(Laca;)Z
    .registers 3
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lacd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lacd;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
