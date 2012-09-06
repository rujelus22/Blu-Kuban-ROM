.class Landroid/support/v4/app/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/f;

.field final synthetic b:Landroid/support/v4/app/m;


# direct methods
.method constructor <init>(Landroid/support/v4/app/m;Landroid/support/v4/app/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 981
    iput-object p1, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/m;

    iput-object p2, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 984
    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/f;

    iget-object v0, v0, Landroid/support/v4/app/f;->b:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 985
    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/f;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/app/f;->b:Landroid/view/View;

    .line 986
    iget-object v0, p0, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/m;

    iget-object v1, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/f;

    iget-object v2, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/f;

    iget v2, v2, Landroid/support/v4/app/f;->c:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/f;IIIZ)V

    .line 989
    :cond_19
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 992
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 995
    return-void
.end method
