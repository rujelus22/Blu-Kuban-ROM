.class Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;
.super Landroid/os/AsyncTask;
.source "MPrintSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreparePrintTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;Lcom/sec/android/app/mobileprint/MPrintSettingActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 703
    invoke-direct {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;-><init>(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 703
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 13
    .parameter "arg0"

    .prologue
    const-wide/16 v9, 0x3e8

    const/4 v8, 0x1

    .line 706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 708
    .local v5, startClock:J
    iget-object v7, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mIsNeedEncodeImage:Z
    invoke-static {v7}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->access$600(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)Z

    move-result v7

    if-ne v7, v8, :cond_1e

    iget-object v7, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    invoke-static {v7}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->access$700(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)Lcom/sec/android/app/mobileprint/MPrintJobItem;

    move-result-object v7

    iget v7, v7, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintMode:I

    if-ne v7, v8, :cond_1e

    .line 709
    iget-object v7, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->encodeImage()V
    invoke-static {v7}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->access$800(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V

    .line 712
    :cond_1e
    const/4 v3, 0x0

    .line 713
    .local v3, newPath:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    invoke-static {v7}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->access$700(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)Lcom/sec/android/app/mobileprint/MPrintJobItem;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/sec/android/app/mobileprint/MPrintFileUtility;->getParentDirectory(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    .line 714
    .local v4, parentDir:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    invoke-static {v7}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->access$700(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)Lcom/sec/android/app/mobileprint/MPrintJobItem;

    move-result-object v7

    iget v7, v7, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintMode:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_56

    if-eqz v4, :cond_56

    iget-object v7, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_56

    .line 715
    iget-object v7, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/sec/android/app/mobileprint/MPrintFileUtility;->moveFilesToInternalDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 718
    :cond_56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v1, v7, v5

    .line 720
    .local v1, executeTime:J
    cmp-long v7, v1, v9

    if-gez v7, :cond_66

    sub-long v7, v9, v1

    :goto_62
    :try_start_62
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_65
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_65} :catch_69

    .line 725
    :goto_65
    return-object v3

    .line 720
    :cond_66
    const-wide/16 v7, 0x0

    goto :goto_62

    .line 721
    :catch_69
    move-exception v0

    .line 722
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_65
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 703
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 730
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->access$900(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 731
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->access$900(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 732
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->access$902(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 735
    :cond_17
    if-eqz p1, :cond_25

    .line 736
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->access$700(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)Lcom/sec/android/app/mobileprint/MPrintJobItem;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/mobileprint/MPrintFileUtility;->getImageFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    .line 739
    :cond_25
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->startPrint()V
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->access$1000(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V

    .line 740
    return-void
.end method