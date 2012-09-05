.class Lcom/sec/android/app/servicemodeapp/ViewRilLog$2;
.super Ljava/lang/Object;
.source "ViewRilLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/servicemodeapp/ViewRilLog;->onCreate(Landroid/os/Bundle;)V
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
    .line 175
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$2;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v3, rilLogMessage:Ljava/lang/StringBuilder;
    const-string v2, ""

    .line 180
    .local v2, rilLogLine:Ljava/lang/String;
    const/4 v1, 0x0

    .line 185
    .local v1, i:I
    :cond_8
    :goto_8
    :try_start_8
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$200()Ljava/io/RandomAccessFile;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 187
    add-int/lit8 v1, v1, 0x1

    .line 189
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$200()Ljava/io/RandomAccessFile;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    const-wide/16 v6, 0x1b58

    cmp-long v4, v4, v6

    if-gez v4, :cond_8

    .line 191
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_ce
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_2a} :catch_2b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2a} :catch_ad

    goto :goto_8

    .line 205
    :catch_2b
    move-exception v0

    .line 207
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2c
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$2;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    const-string v5, "File open fail!"

    #calls: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->DisplayMessageDialog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$400(Lcom/sec/android/app/servicemodeapp/ViewRilLog;Ljava/lang/String;)V

    .line 208
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$2;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #getter for: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$500(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_ce

    .line 220
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$2;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #getter for: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$500(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 221
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$2;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #calls: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->sendParsedString(Ljava/lang/StringBuilder;)V
    invoke-static {v4, v3}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$600(Lcom/sec/android/app/servicemodeapp/ViewRilLog;Ljava/lang/StringBuilder;)V

    .line 224
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_4a
    return-void

    .line 197
    :cond_4b
    :try_start_4b
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

    .line 199
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$200()Ljava/io/RandomAccessFile;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    long-to-int v4, v4

    div-int/lit16 v4, v4, 0x1b58

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$302(I)I

    .line 201
    const-string v4, "ViewRilLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "totalPages = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$300()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$200()Ljava/io/RandomAccessFile;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9e
    .catchall {:try_start_4b .. :try_end_9e} :catchall_ce
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_9e} :catch_2b
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_9e} :catch_ad

    .line 220
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$2;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #getter for: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$500(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 221
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$2;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #calls: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->sendParsedString(Ljava/lang/StringBuilder;)V
    invoke-static {v4, v3}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$600(Lcom/sec/android/app/servicemodeapp/ViewRilLog;Ljava/lang/StringBuilder;)V

    goto :goto_4a

    .line 211
    :catch_ad
    move-exception v0

    .line 213
    .local v0, e:Ljava/io/IOException;
    :try_start_ae
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$2;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    const-string v5, "File open fail!"

    #calls: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->DisplayMessageDialog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$400(Lcom/sec/android/app/servicemodeapp/ViewRilLog;Ljava/lang/String;)V

    .line 214
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$2;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #getter for: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$500(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_be
    .catchall {:try_start_ae .. :try_end_be} :catchall_ce

    .line 220
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$2;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #getter for: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$500(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 221
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$2;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #calls: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->sendParsedString(Ljava/lang/StringBuilder;)V
    invoke-static {v4, v3}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$600(Lcom/sec/android/app/servicemodeapp/ViewRilLog;Ljava/lang/StringBuilder;)V

    goto/16 :goto_4a

    .line 220
    .end local v0           #e:Ljava/io/IOException;
    :catchall_ce
    move-exception v4

    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$2;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #getter for: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$500(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 221
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$2;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #calls: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->sendParsedString(Ljava/lang/StringBuilder;)V
    invoke-static {v5, v3}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$600(Lcom/sec/android/app/servicemodeapp/ViewRilLog;Ljava/lang/StringBuilder;)V

    throw v4
.end method
