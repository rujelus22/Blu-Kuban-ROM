.class Lcom/samsung/wimax/CT/CT$2;
.super Ljava/lang/Object;
.source "CT.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/CT/CT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/CT/CT;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/CT/CT;)V
    .registers 2
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/samsung/wimax/CT/CT$2;->this$0:Lcom/samsung/wimax/CT/CT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 558
    sget-object v1, Lcom/samsung/wimax/CT/WiMAXNative;->qCTMsg:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eq v1, v2, :cond_26

    .line 560
    sget-object v1, Lcom/samsung/wimax/CT/WiMAXNative;->qCTMsg:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;

    .line 561
    .local v0, msgPkt:Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;
    sget-object v1, Lcom/samsung/wimax/CT/WiMAXNative;->qCTMsg:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 563
    iget v1, v0, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->code:I

    if-ne v1, v2, :cond_27

    .line 564
    const-string v1, "CT MSG"

    const-string v2, "***************** CT_CODE_CT_DATA *************!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v1, p0, Lcom/samsung/wimax/CT/CT$2;->this$0:Lcom/samsung/wimax/CT/CT;

    #calls: Lcom/samsung/wimax/CT/CT;->ProcessData(Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;)V
    invoke-static {v1, v0}, Lcom/samsung/wimax/CT/CT;->access$100(Lcom/samsung/wimax/CT/CT;Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;)V

    .line 572
    .end local v0           #msgPkt:Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;
    :cond_26
    :goto_26
    return-void

    .line 566
    .restart local v0       #msgPkt:Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;
    :cond_27
    iget v1, v0, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->code:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_26

    .line 567
    const-string v1, "CT MSG"

    const-string v2, "***************** CT_CODE_CT_ACK *************!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v1, p0, Lcom/samsung/wimax/CT/CT$2;->this$0:Lcom/samsung/wimax/CT/CT;

    #calls: Lcom/samsung/wimax/CT/CT;->ProcessAck(Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;)V
    invoke-static {v1, v0}, Lcom/samsung/wimax/CT/CT;->access$200(Lcom/samsung/wimax/CT/CT;Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;)V

    goto :goto_26
.end method
