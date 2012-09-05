.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9$1;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;)V
    .registers 2
    .parameter

    .prologue
    .line 835
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9$1;->this$1:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 838
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9$1;->this$1:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubFilesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$1200(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 840
    .local v1, selectedFile:Ljava/io/File;
    if-eqz v1, :cond_3d

    .line 841
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->existFile(Ljava/lang/String;)Z
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$1300(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 844
    :try_start_1a
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9$1;->this$1:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$1402(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;Ljava/lang/String;)Ljava/lang/String;

    .line 845
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9$1;->this$1:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->initSubTitle()Z

    .line 846
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSubtitleFileName(Ljava/lang/String;)V

    .line 847
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    .line 848
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9$1;->this$1:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->startSubTitleProccessor()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3d} :catch_3e

    .line 856
    :cond_3d
    :goto_3d
    return-void

    .line 849
    :catch_3e
    move-exception v0

    .line 850
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 851
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "createSelectSubtitlePopup() - iputFilePath has an exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method
