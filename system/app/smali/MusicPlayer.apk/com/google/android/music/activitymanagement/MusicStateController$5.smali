.class Lcom/google/android/music/activitymanagement/MusicStateController$5;
.super Ljava/lang/Object;
.source "MusicStateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/MusicStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/MusicStateController;


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 2
    .parameter

    .prologue
    .line 1285
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController$5;->this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1287
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController$5;->this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    .line 1288
    .local v0, fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController$5;->this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

    #getter for: Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;
    invoke-static {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->access$700(Lcom/google/android/music/activitymanagement/MusicStateController;)Lcom/google/android/music/activitymanagement/MusicStateStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v1

    .line 1289
    .local v1, state:Lcom/google/android/music/activitymanagement/MusicState;
    if-eqz v0, :cond_14

    if-nez v1, :cond_15

    .line 1296
    :cond_14
    :goto_14
    return-void

    .line 1292
    :cond_15
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController$5;->this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

    #getter for: Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;
    invoke-static {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->access$500(Lcom/google/android/music/activitymanagement/MusicStateController;)Lcom/google/android/music/activitymanagement/TopLevelActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->invalidateMusicOptionsMenu()V

    .line 1293
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/music/activitymanagement/MusicFragment;->onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V

    .line 1294
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentActionbarConfig()Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/music/activitymanagement/MusicFragment;->onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V

    .line 1295
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController$5;->this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

    #getter for: Lcom/google/android/music/activitymanagement/MusicStateController;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;
    invoke-static {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->access$800(Lcom/google/android/music/activitymanagement/MusicStateController;)Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController$5;->this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

    #getter for: Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;
    invoke-static {v3}, Lcom/google/android/music/activitymanagement/MusicStateController;->access$700(Lcom/google/android/music/activitymanagement/MusicStateController;)Lcom/google/android/music/activitymanagement/MusicStateStack;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/MusicUIController;->updateFrame(Lcom/google/android/music/activitymanagement/MusicStateStack;)V

    goto :goto_14
.end method
