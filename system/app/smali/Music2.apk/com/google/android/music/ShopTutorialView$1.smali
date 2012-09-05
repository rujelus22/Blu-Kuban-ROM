.class Lcom/google/android/music/ShopTutorialView$1;
.super Ljava/lang/Object;
.source "ShopTutorialView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ShopTutorialView;->setVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ShopTutorialView;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/google/android/music/ShopTutorialView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/music/ShopTutorialView$1;->this$0:Lcom/google/android/music/ShopTutorialView;

    iput p2, p0, Lcom/google/android/music/ShopTutorialView$1;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialView$1;->this$0:Lcom/google/android/music/ShopTutorialView;

    iget v1, p0, Lcom/google/android/music/ShopTutorialView$1;->val$visibility:I

    #calls: Lcom/google/android/music/ShopTutorialView;->superSetVisibility(I)V
    invoke-static {v0, v1}, Lcom/google/android/music/ShopTutorialView;->access$000(Lcom/google/android/music/ShopTutorialView;I)V

    .line 133
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialView$1;->this$0:Lcom/google/android/music/ShopTutorialView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/ShopTutorialView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 134
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 135
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 136
    return-void
.end method
