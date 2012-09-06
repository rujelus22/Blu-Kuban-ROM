.class final Lcom/google/android/youtube/app/ui/df;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/youtube/app/ui/TutorialView;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/TutorialView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/df;->b:Lcom/google/android/youtube/app/ui/TutorialView;

    iput p2, p0, Lcom/google/android/youtube/app/ui/df;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/df;->b:Lcom/google/android/youtube/app/ui/TutorialView;

    iget v1, p0, Lcom/google/android/youtube/app/ui/df;->a:I

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/TutorialView;->a(Lcom/google/android/youtube/app/ui/TutorialView;I)V

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/df;->b:Lcom/google/android/youtube/app/ui/TutorialView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/TutorialView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 86
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    return-void
.end method
