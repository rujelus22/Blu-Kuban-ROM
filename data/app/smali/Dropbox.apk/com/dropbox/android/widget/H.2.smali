.class final Lcom/dropbox/android/widget/H;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/dropbox/android/widget/FileItemView;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/FileItemView;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/dropbox/android/widget/H;->b:Lcom/dropbox/android/widget/FileItemView;

    iput-object p2, p0, Lcom/dropbox/android/widget/H;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/dropbox/android/widget/H;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1052
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 1047
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 1044
    return-void
.end method
