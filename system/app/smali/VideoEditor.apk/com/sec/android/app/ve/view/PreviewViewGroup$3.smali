.class Lcom/sec/android/app/ve/view/PreviewViewGroup$3;
.super Ljava/lang/Object;
.source "PreviewViewGroup.java"

# interfaces
.implements Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/PreviewViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$3;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPaused()V
    .registers 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$3;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$14(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$3;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$14(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    .line 428
    const-string v0, "PreviewGroup: Activity paused, make surface GONE"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$3;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$14(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/view/SurfaceView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 431
    :cond_24
    return-void
.end method

.method public onActivityResumed()V
    .registers 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$3;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$14(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$3;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$14(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_34

    .line 415
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 416
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationSubMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_34

    .line 418
    const-string v0, "PreviewGroup: Activity resumed, make surface visibile"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$3;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$14(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 422
    :cond_34
    return-void
.end method
