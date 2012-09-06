.class Landroid/support/v4/view/e;
.super Landroid/support/v4/view/b;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/support/v4/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroid/view/View;)Ld/m;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-static {p1, p2}, Landroid/support/v4/view/k;->a(Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    .line 277
    if-eqz v1, :cond_c

    .line 278
    new-instance v0, Ld/m;

    invoke-direct {v0, v1}, Ld/m;-><init>(Ljava/lang/Object;)V

    .line 280
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public a(Landroid/support/v4/view/a;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 217
    new-instance v0, Landroid/support/v4/view/f;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/f;-><init>(Landroid/support/v4/view/e;Landroid/support/v4/view/a;)V

    invoke-static {v0}, Landroid/support/v4/view/k;->a(Landroid/support/v4/view/m;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/k;->a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
