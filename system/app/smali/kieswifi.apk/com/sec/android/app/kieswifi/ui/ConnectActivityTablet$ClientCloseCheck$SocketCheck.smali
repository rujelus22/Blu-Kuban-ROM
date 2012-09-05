.class Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck$SocketCheck;
.super Ljava/util/TimerTask;
.source "ConnectActivityTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketCheck"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;)V
    .registers 2
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck$SocketCheck;->this$1:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 619
    const-string v0, "timer start"

    invoke-static {v1, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck$SocketCheck;->this$1:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;

    iget-object v0, v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->ServerSocket_Check()I

    move-result v0

    if-nez v0, :cond_2a

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck$SocketCheck;->this$1:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;

    iget-object v0, v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 622
    const-string v0, "timer cancel"

    invoke-static {v1, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck$SocketCheck;->this$1:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;

    iget-object v0, v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->fileDelete()V

    .line 625
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck$SocketCheck;->this$1:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;

    iget-object v0, v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->finish()V

    .line 627
    :cond_2a
    return-void
.end method
