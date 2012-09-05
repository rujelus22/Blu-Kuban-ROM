.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$8;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSelectSubtitlesPopup(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

.field final synthetic val$makeSubtitleFilesListThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;Ljava/lang/Thread;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 807
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$8;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    iput-object p2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$8;->val$makeSubtitleFilesListThread:Ljava/lang/Thread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 810
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$8;->val$makeSubtitleFilesListThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$8;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->findingSubtitleFilesDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$1100(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_e

    .line 820
    :goto_d
    return-void

    .line 814
    :cond_e
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    if-eqz v0, :cond_24

    .line 815
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$8;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$8;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$600(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSubTitleSettingPopup(Landroid/content/Context;)V

    .line 819
    :goto_1d
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$8;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->findingSubtitleFilesDlg:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$1102(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_d

    .line 817
    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$8;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->resumeByDialog()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$500(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    goto :goto_1d
.end method
