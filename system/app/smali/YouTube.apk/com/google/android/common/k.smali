.class final Lcom/google/android/common/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/common/SwipeySwitcher;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;

.field private d:Lcom/google/android/common/g;


# direct methods
.method constructor <init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/common/k;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/k;->b:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/k;->c:Ljava/util/ArrayList;

    .line 114
    iput-object p2, p0, Lcom/google/android/common/k;->d:Lcom/google/android/common/g;

    .line 115
    return-void
.end method


# virtual methods
.method final a(Landroid/content/Intent;)Lcom/google/android/common/h;
    .registers 7
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/common/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 119
    iget-object v0, p0, Lcom/google/android/common/k;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/common/l;

    iget-object v2, p0, Lcom/google/android/common/k;->d:Lcom/google/android/common/g;

    invoke-interface {v2}, Lcom/google/android/common/g;->a()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/common/k;->b:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/common/k;->c:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/common/l;-><init>(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_1c
    iget-object v0, p0, Lcom/google/android/common/k;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/common/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/h;

    .line 122
    iget-object v1, p0, Lcom/google/android/common/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 123
    check-cast v1, Lcom/google/android/common/l;

    invoke-static {v1, p1}, Lcom/google/android/common/l;->a(Lcom/google/android/common/l;Landroid/content/Intent;)Landroid/content/Intent;

    .line 124
    return-object v0
.end method

.method final a(Lcom/google/android/common/h;)Z
    .registers 3
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/common/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/common/k;->b:Ljava/util/ArrayList;

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
