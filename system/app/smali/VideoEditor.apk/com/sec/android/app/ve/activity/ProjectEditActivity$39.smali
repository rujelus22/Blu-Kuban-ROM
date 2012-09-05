.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$39;
.super Ljava/lang/Object;
.source "ProjectEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$39;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 2289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 2292
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_21

    .line 2293
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$39;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/OperationViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/OperationViewGroup;->changeToAddMedia()V

    .line 2294
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeMode(I)V

    .line 2297
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$39;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mCurrentTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->applyThemeToTransCodeElem(Lcom/samsung/app/video/editor/external/TranscodeElement;Z)V

    .line 2298
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 2299
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->refersh()V

    .line 2301
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$39;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchApplyingThemeDialog(Z)V
    invoke-static {v0, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$27(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Z)V

    .line 2303
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$39;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v1, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$24(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 2304
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$39;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 2305
    return-void
.end method
