.class Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;
.super Ljava/lang/Object;
.source "MPrintPreviewActivity.java"

# interfaces
.implements Lcom/sec/android/app/mobileprint/MPrintImageEncoder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncoderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1583
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1583
    invoke-direct {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;-><init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V

    return-void
.end method


# virtual methods
.method public responseEncodeCompleted(Ljava/lang/String;)V
    .registers 5
    .parameter "filePath"

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #setter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFilePath:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2302(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1587
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2200(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Lcom/sec/android/app/mobileprint/MPrintJobItem;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/mobileprint/MPrintFileUtility;->getImageFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    .line 1588
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2200(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Lcom/sec/android/app/mobileprint/MPrintJobItem;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6d

    .line 1589
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2200(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Lcom/sec/android/app/mobileprint/MPrintJobItem;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    #setter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mTotalPage:I
    invoke-static {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$602(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;I)I

    .line 1590
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentPage:I
    invoke-static {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$502(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;I)I

    .line 1594
    const-string v0, "MobilePrint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MPrintPreviewActivity.EncoderCallback : TotalPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2200(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Lcom/sec/android/app/mobileprint/MPrintJobItem;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :goto_56
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIsEncodingImage:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2602(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;Z)Z

    .line 1603
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$1300(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback$1;-><init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1611
    return-void

    .line 1597
    :cond_6d
    const-string v0, "MobilePrint"

    const-string v1, "MPrintPreviewActivity.EncoderCallback : mFilePathList is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56
.end method
