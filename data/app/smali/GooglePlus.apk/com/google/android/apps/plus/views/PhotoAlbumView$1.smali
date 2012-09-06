.class Lcom/google/android/apps/plus/views/PhotoAlbumView$1;
.super Ljava/lang/Object;
.source "PhotoAlbumView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/PhotoAlbumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/PhotoAlbumView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/PhotoAlbumView;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView$1;->this$0:Lcom/google/android/apps/plus/views/PhotoAlbumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 52
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 56
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoAlbumView$1;->this$0:Lcom/google/android/apps/plus/views/PhotoAlbumView;

    #getter for: Lcom/google/android/apps/plus/views/PhotoAlbumView;->mDateDisplay:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/PhotoAlbumView;->access$000(Lcom/google/android/apps/plus/views/PhotoAlbumView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    return-void
.end method
