.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;
.super Ljava/lang/Thread;
.source "VideoSubTitleUtil.java"


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


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V
    .registers 2
    .parameter

    .prologue
    .line 790
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->makeSubtitleFilesList()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$1000(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->findingSubtitleFilesDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$1100(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 795
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 796
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->findingSubtitleFilesDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$1100(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 798
    :cond_1c
    return-void
.end method
