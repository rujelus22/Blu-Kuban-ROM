.class Lcom/samsung/client/DMApp$10;
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
    .line 3091
    iput-object p1, p0, Lcom/samsung/client/DMApp$10;->this$0:Lcom/samsung/client/DMApp;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 3098
    const-string v0, "DMApp"

    const-string v1, "radioResetTimer:onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    iget-object v0, p0, Lcom/samsung/client/DMApp$10;->this$0:Lcom/samsung/client/DMApp;

    iget-object v0, v0, Lcom/samsung/client/DMApp;->delayStart:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 3101
    return-void
.end method

.method public onTick(J)V
    .registers 5
    .parameter "millisUntilFinished"

    .prologue
    .line 3094
    const-string v0, "DMApp"

    const-string v1, "1 second over"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    return-void
.end method
