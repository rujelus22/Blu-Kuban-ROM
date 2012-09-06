.class Lcom/google/android/apps/plus/hangout/HangoutTabletTile$7;
.super Ljava/lang/Object;
.source "HangoutTabletTile.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->registerInteractionHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V
    .registers 2
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$7;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 767
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 763
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$7;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->resumeFilmStrip()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2600(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    .line 756
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$7;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2400(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 757
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$7;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2400(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 759
    :cond_17
    return-void
.end method
