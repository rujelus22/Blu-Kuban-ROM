.class Lcom/samsung/wimax/throughput/Throughput$1;
.super Landroid/content/BroadcastReceiver;
.source "Throughput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/throughput/Throughput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/throughput/Throughput;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/throughput/Throughput;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/wimax/throughput/Throughput$1;->this$0:Lcom/samsung/wimax/throughput/Throughput;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, action:Ljava/lang/String;
    const-string v1, "TP MSG"

    const-string v2, "BROADCAST RECEIVED.... >>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v1, "android.net.wimax.WIMAX_DATA_THROUGHPUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 39
    const-string v1, "TP MSG"

    const-string v2, "BROADCAST RECEIVED.... WIMAX_DATA_THROUGHPUT_ACTION>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v1, p0, Lcom/samsung/wimax/throughput/Throughput$1;->this$0:Lcom/samsung/wimax/throughput/Throughput;

    #calls: Lcom/samsung/wimax/throughput/Throughput;->handleChange(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/samsung/wimax/throughput/Throughput;->access$000(Lcom/samsung/wimax/throughput/Throughput;Landroid/content/Intent;)V

    .line 42
    :cond_1f
    return-void
.end method
