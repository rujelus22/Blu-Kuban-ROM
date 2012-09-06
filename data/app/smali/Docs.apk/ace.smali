.class public Lace;
.super Ljava/lang/Object;
.source "SwipeySwitcher.java"

# interfaces
.implements Laca;


# instance fields
.field private a:Landroid/content/Intent;

.field private a:Landroid/view/View;

.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Laca;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
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
.method public constructor <init>(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Laca;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Laca;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lace;->a:Landroid/view/View;

    .line 224
    iput-object p2, p0, Lace;->a:Ljava/util/ArrayList;

    .line 225
    iput-object p3, p0, Lace;->b:Ljava/util/ArrayList;

    .line 226
    return-void
.end method

.method static synthetic a(Lace;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lace;->a:Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lace;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public a()Landroid/view/View;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lace;->a:Landroid/view/View;

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lace;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 241
    iget-object v0, p0, Lace;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 243
    :cond_9
    iget-object v0, p0, Lace;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    .line 244
    iget-object v0, p0, Lace;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_12
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 233
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 249
    return-void
.end method

.method public d()V
    .registers 1

    .prologue
    .line 256
    return-void
.end method

.method public e()V
    .registers 1

    .prologue
    .line 259
    return-void
.end method
