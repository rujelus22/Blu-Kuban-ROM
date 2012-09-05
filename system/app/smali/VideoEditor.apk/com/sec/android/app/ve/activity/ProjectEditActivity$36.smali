.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$36;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$36;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 2237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 2241
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1a

    .line 2242
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$36;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/view/OperationViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/OperationViewGroup;->changeToAddMedia()V

    .line 2245
    :cond_1a
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 2246
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->refersh()V

    .line 2247
    :cond_27
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$36;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->resetThemeToBasic(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 2248
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$36;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const v2, 0x7f0b0108

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    .line 2249
    .local v0, musicBarGroup:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;
    if-eqz v0, :cond_45

    .line 2251
    const-string v1, "Resettign Music in case of basic"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2252
    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->setMusic(Ljava/lang/String;Lcom/samsung/app/video/editor/external/Element;)V

    .line 2254
    :cond_45
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$36;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/4 v2, 0x1

    #calls: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchApplyingThemeDialog(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$27(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Z)V

    .line 2255
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$36;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v2, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$24(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 2256
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$36;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 2257
    return-void
.end method
