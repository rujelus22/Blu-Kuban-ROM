.class Lcom/samsung/client/DMApp$4;
.super Landroid/os/CountDownTimer;
.source "DMApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/DMApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/DMApp;


# direct methods
.method constructor <init>(Lcom/samsung/client/DMApp;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1563
    iput-object p1, p0, Lcom/samsung/client/DMApp$4;->this$0:Lcom/samsung/client/DMApp;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    .line 1572
    const-string v1, "DMApp"

    const-string v2, "onFinish"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iget-object v1, p0, Lcom/samsung/client/DMApp$4;->this$0:Lcom/samsung/client/DMApp;

    #calls: Lcom/samsung/client/DMApp;->next_san_msg()Lcom/samsung/client/TslcmnSan$TslSanMsg;
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$3800(Lcom/samsung/client/DMApp;)Lcom/samsung/client/TslcmnSan$TslSanMsg;

    move-result-object v0

    .line 1580
    .local v0, san_msg:Lcom/samsung/client/TslcmnSan$TslSanMsg;
    iget-object v1, p0, Lcom/samsung/client/DMApp$4;->this$0:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, v0}, Lcom/samsung/client/DMApp;->retryNIASession(Lcom/samsung/client/TslcmnSan$TslSanMsg;)V

    .line 1582
    return-void
.end method

.method public onTick(J)V
    .registers 5
    .parameter "millisUntilFinished"

    .prologue
    .line 1567
    const-string v0, "DMApp"

    const-string v1, "onTick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    return-void
.end method
