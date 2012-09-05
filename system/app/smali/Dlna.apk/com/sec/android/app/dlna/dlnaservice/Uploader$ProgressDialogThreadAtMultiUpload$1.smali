.class Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;
.super Ljava/lang/Object;
.source "Uploader.java"

# interfaces
.implements Lcom/sec/android/app/dlna/dlnaservice/IWriteChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bundle:Landroid/os/Bundle;

.field final synthetic this$1:Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;

.field final synthetic val$client:Landroid/net/http/AndroidHttpClient;

.field final synthetic val$entity:Lorg/apache/http/HttpEntity;

.field final synthetic val$isentity:Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpEntity;Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;->this$1:Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;

    iput-object p2, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;->val$client:Landroid/net/http/AndroidHttpClient;

    iput-object p3, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;->val$entity:Lorg/apache/http/HttpEntity;

    iput-object p4, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;->val$isentity:Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public changed(J)V
    .registers 8
    .parameter "changed"

    .prologue
    .line 167
    iget-object v2, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;->this$1:Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;

    iget-object v2, v2, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->isCancel:Z
    invoke-static {v2}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$000(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 168
    const-string v2, "DLNA"

    const-string v3, "closing http..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v2, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;->val$client:Landroid/net/http/AndroidHttpClient;

    if-eqz v2, :cond_1a

    .line 170
    iget-object v2, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;->val$client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 172
    :cond_1a
    iget-object v2, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;->val$entity:Lorg/apache/http/HttpEntity;

    if-eqz v2, :cond_23

    .line 174
    :try_start_1e
    iget-object v2, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;->val$entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_64

    .line 180
    :cond_23
    :goto_23
    iget-object v2, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;->val$isentity:Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;

    if-eqz v2, :cond_2c

    .line 182
    :try_start_27
    iget-object v2, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;->val$isentity:Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;->consumeContent()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_69

    .line 187
    :cond_2c
    :goto_2c
    const-string v2, "DLNA"

    const-string v3, "closing http done !"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_33
    iget-object v2, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;->this$1:Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;

    iget-object v2, v2, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 190
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;->bundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    .line 191
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p1, v2

    if-gez v2, :cond_53

    .line 192
    iget-object v2, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;->bundle:Landroid/os/Bundle;

    const-string v3, "progress"

    long-to-int v4, p1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    :cond_53
    iget-object v2, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 194
    iget-object v2, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;->this$1:Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;

    iget-object v2, v2, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    return-void

    .line 175
    .end local v1           #msg:Landroid/os/Message;
    :catch_64
    move-exception v0

    .line 176
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    .line 183
    .end local v0           #e:Ljava/io/IOException;
    :catch_69
    move-exception v0

    .line 184
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c
.end method
