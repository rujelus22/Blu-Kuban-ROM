.class Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;
.super Landroid/os/AsyncTask;
.source "MPrintPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;
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
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1546
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1546
    invoke-direct {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;-><init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1546
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 12
    .parameter "arg0"

    .prologue
    const-wide/16 v8, 0x3e8

    .line 1549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1551
    .local v4, startTime:J
    const/4 v3, 0x0

    .line 1552
    .local v3, newPath:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    invoke-static {v6}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2200(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Lcom/sec/android/app/mobileprint/MPrintJobItem;

    move-result-object v6

    iget v6, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintMode:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_44

    iget-object v6, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFilePath:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2300(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_44

    iget-object v6, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFilePath:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2300(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 1553
    iget-object v6, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFilePath:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2300(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/mobileprint/MPrintFileUtility;->moveFilesToInternalDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1556
    :cond_44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v4

    .line 1559
    .local v1, executeTime:J
    cmp-long v6, v1, v8

    if-gez v6, :cond_54

    sub-long v6, v8, v1

    :goto_50
    :try_start_50
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_53} :catch_57

    .line 1564
    :goto_53
    return-object v3

    .line 1559
    :cond_54
    const-wide/16 v6, 0x0

    goto :goto_50

    .line 1560
    :catch_57
    move-exception v0

    .line 1561
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_53
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1546
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2400(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1570
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2400(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1571
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2402(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1574
    :cond_17
    if-eqz p1, :cond_25

    .line 1575
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2200(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Lcom/sec/android/app/mobileprint/MPrintJobItem;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/mobileprint/MPrintFileUtility;->getImageFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    .line 1578
    :cond_25
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->startPrint()V
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2500(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V

    .line 1579
    return-void
.end method
