.class Lcom/sec/android/app/dlna/DLNAManager$1;
.super Landroid/os/Handler;
.source "DLNAManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/DLNAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/DLNAManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/DLNAManager;)V
    .registers 2
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAManager$1;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_66

    .line 190
    :cond_6
    :goto_6
    return-void

    .line 167
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager$1;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    iget v0, v0, Lcom/sec/android/app/dlna/DLNAManager;->UploadedFileCnt:I

    if-lez v0, :cond_6

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager$1;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/dlna/DLNAManager;->waitScannerforUpload:Z

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager$1;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    iput v5, v0, Lcom/sec/android/app/dlna/DLNAManager;->UploadedFileCnt:I

    .line 170
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getDLNAContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09006d

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 175
    :pswitch_29
    const-string v0, "DLNA"

    const-string v1, " RUN upload : media scanner. "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getDLNAContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager$1;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    iput v5, v0, Lcom/sec/android/app/dlna/DLNAManager;->UploadedFileCnt:I

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager$1;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    iput-boolean v5, v0, Lcom/sec/android/app/dlna/DLNAManager;->waitScannerforUpload:Z

    goto :goto_6

    .line 165
    :pswitch_data_66
    .packed-switch 0x1a2c
        :pswitch_29
        :pswitch_7
    .end packed-switch
.end method
