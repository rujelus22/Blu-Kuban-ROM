.class Lcom/sec/android/app/mobileprint/MPrintSettingActivity$EncoderCallback;
.super Ljava/lang/Object;
.source "MPrintSettingActivity.java"

# interfaces
.implements Lcom/sec/android/app/mobileprint/MPrintImageEncoder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncoderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 744
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$EncoderCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;Lcom/sec/android/app/mobileprint/MPrintSettingActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 744
    invoke-direct {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$EncoderCallback;-><init>(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V

    return-void
.end method


# virtual methods
.method public responseEncodeCompleted(Ljava/lang/String;)V
    .registers 5
    .parameter "filePath"

    .prologue
    .line 746
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$EncoderCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->access$700(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)Lcom/sec/android/app/mobileprint/MPrintJobItem;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/mobileprint/MPrintFileUtility;->getImageFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    .line 747
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$EncoderCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->access$700(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)Lcom/sec/android/app/mobileprint/MPrintJobItem;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    if-eqz v0, :cond_41

    .line 751
    const-string v0, "MobilePrint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MPrintSettingActivity.EncoderCallback : TotalPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$EncoderCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->access$700(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)Lcom/sec/android/app/mobileprint/MPrintJobItem;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :goto_3a
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$EncoderCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mIsEncodingImage:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->access$1102(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;Z)Z

    .line 773
    return-void

    .line 754
    :cond_41
    const-string v0, "MobilePrint"

    const-string v1, "MPrintSettingActivity.EncoderCallback : mFilePathList is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method
