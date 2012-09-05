.class Lcom/sec/android/app/servicemodeapp/ViewRilLog$3;
.super Ljava/lang/Object;
.source "ViewRilLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/servicemodeapp/ViewRilLog;->moveToPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)V
    .registers 2
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$3;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v3, rilLogMessage:Ljava/lang/StringBuilder;
    const-string v2, ""

    .line 336
    .local v2, rilLogLine:Ljava/lang/String;
    const/4 v1, 0x0

    .line 340
    .local v1, i:I
    :try_start_8
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$200()Ljava/io/RandomAccessFile;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$700()I

    move-result v5

    mul-int/lit16 v5, v5, 0x1b58

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 342
    :cond_16
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$200()Ljava/io/RandomAccessFile;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 344
    add-int/lit8 v1, v1, 0x1

    .line 346
    const-string v4, "ViewRilLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$200()Ljava/io/RandomAccessFile;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$200()Ljava/io/RandomAccessFile;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-static {}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$700()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    mul-int/lit16 v6, v6, 0x1b58

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_16

    .line 355
    :cond_73
    const-string v4, "ViewRilLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Last FilePointer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$200()Ljava/io/RandomAccessFile;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$200()Ljava/io/RandomAccessFile;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9a
    .catchall {:try_start_8 .. :try_end_9a} :catchall_104
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_9a} :catch_b2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_9a} :catch_db

    .line 374
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$3;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #getter for: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$500(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 376
    const-string v4, "ViewRilLog"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$3;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #calls: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->sendParsedString(Ljava/lang/StringBuilder;)V
    invoke-static {v4, v3}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$600(Lcom/sec/android/app/servicemodeapp/ViewRilLog;Ljava/lang/StringBuilder;)V

    .line 380
    :goto_b1
    return-void

    .line 359
    :catch_b2
    move-exception v0

    .line 361
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_b3
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$3;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    const-string v5, "File open fail!"

    #calls: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->DisplayMessageDialog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$400(Lcom/sec/android/app/servicemodeapp/ViewRilLog;Ljava/lang/String;)V

    .line 362
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$3;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #getter for: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$500(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_c3
    .catchall {:try_start_b3 .. :try_end_c3} :catchall_104

    .line 374
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$3;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #getter for: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$500(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 376
    const-string v4, "ViewRilLog"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$3;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #calls: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->sendParsedString(Ljava/lang/StringBuilder;)V
    invoke-static {v4, v3}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$600(Lcom/sec/android/app/servicemodeapp/ViewRilLog;Ljava/lang/StringBuilder;)V

    goto :goto_b1

    .line 365
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_db
    move-exception v0

    .line 367
    .local v0, e:Ljava/io/IOException;
    :try_start_dc
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$3;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    const-string v5, "File open fail!"

    #calls: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->DisplayMessageDialog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$400(Lcom/sec/android/app/servicemodeapp/ViewRilLog;Ljava/lang/String;)V

    .line 368
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$3;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #getter for: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$500(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_ec
    .catchall {:try_start_dc .. :try_end_ec} :catchall_104

    .line 374
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$3;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #getter for: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$500(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 376
    const-string v4, "ViewRilLog"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$3;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #calls: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->sendParsedString(Ljava/lang/StringBuilder;)V
    invoke-static {v4, v3}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$600(Lcom/sec/android/app/servicemodeapp/ViewRilLog;Ljava/lang/StringBuilder;)V

    goto :goto_b1

    .line 374
    .end local v0           #e:Ljava/io/IOException;
    :catchall_104
    move-exception v4

    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$3;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #getter for: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$500(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 376
    const-string v5, "ViewRilLog"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$3;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #calls: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->sendParsedString(Ljava/lang/StringBuilder;)V
    invoke-static {v5, v3}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$600(Lcom/sec/android/app/servicemodeapp/ViewRilLog;Ljava/lang/StringBuilder;)V

    throw v4
.end method
