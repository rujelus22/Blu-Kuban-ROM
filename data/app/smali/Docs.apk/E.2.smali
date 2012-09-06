.class LE;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic a:Lz;


# direct methods
.method constructor <init>(Lz;Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 980
    iput-object p1, p0, LE;->a:Lz;

    iput-object p2, p0, LE;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 983
    iget-object v0, p0, LE;->a:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->a:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 984
    iget-object v0, p0, LE;->a:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->a:Landroid/view/View;

    .line 985
    iget-object v0, p0, LE;->a:Lz;

    iget-object v1, p0, LE;->a:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, LE;->a:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->e:I

    invoke-virtual {v0, v1, v2, v3, v3}, Lz;->a(Landroid/support/v4/app/Fragment;III)V

    .line 988
    :cond_17
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 991
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 994
    return-void
.end method
