.class Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck$SocketCheck;
.super Ljava/util/TimerTask;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketCheck"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;)V
    .registers 2
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck$SocketCheck;->this$1:Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 574
    const-string v0, "timer start"

    invoke-static {v1, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck$SocketCheck;->this$1:Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;

    iget-object v0, v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->ServerSocket_Check()I

    move-result v0

    if-nez v0, :cond_2a

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck$SocketCheck;->this$1:Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;

    iget-object v0, v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 577
    const-string v0, "timer cancel"

    invoke-static {v1, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck$SocketCheck;->this$1:Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;

    iget-object v0, v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->fileDelete()V

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck$SocketCheck;->this$1:Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;

    iget-object v0, v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->finish()V

    .line 581
    :cond_2a
    return-void
.end method
