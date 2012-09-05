.class Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker$1;
.super Landroid/os/Handler;
.source "FTSMediaMountChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker$1;->this$0:Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 102
    if-nez p1, :cond_3

    .line 114
    :goto_2
    return-void

    .line 105
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_22

    goto :goto_2

    .line 108
    :pswitch_9
    const-string v1, "[FT]-Server"

    const-string v2, "FTSMediaMountChecker :SEND MSG for FTS_NEWSTART"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FTS_SERVICE_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, it:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker$1;->this$0:Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;

    #getter for: Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;->access$000(Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 105
    nop

    :pswitch_data_22
    .packed-switch 0x4d
        :pswitch_9
    .end packed-switch
.end method
