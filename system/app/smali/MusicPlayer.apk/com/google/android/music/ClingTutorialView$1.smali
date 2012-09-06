.class Lcom/google/android/music/ClingTutorialView$1;
.super Ljava/lang/Object;
.source "ClingTutorialView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ClingTutorialView;->setVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ClingTutorialView;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/google/android/music/ClingTutorialView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/music/ClingTutorialView$1;->this$0:Lcom/google/android/music/ClingTutorialView;

    iput p2, p0, Lcom/google/android/music/ClingTutorialView$1;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/music/ClingTutorialView$1;->this$0:Lcom/google/android/music/ClingTutorialView;

    iget v1, p0, Lcom/google/android/music/ClingTutorialView$1;->val$visibility:I

    #calls: Lcom/google/android/music/ClingTutorialView;->superSetVisibility(I)V
    invoke-static {v0, v1}, Lcom/google/android/music/ClingTutorialView;->access$000(Lcom/google/android/music/ClingTutorialView;I)V

    .line 143
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 144
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 145
    return-void
.end method
