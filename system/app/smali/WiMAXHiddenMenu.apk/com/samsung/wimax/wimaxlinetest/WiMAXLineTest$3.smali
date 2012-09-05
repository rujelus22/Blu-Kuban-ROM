.class Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$3;
.super Ljava/lang/Object;
.source "WiMAXLineTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)V
    .registers 2
    .parameter

    .prologue
    .line 897
    iput-object p1, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$3;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 899
    iget-object v1, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$3;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    iget-object v1, v1, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    sget-object v1, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->qCTMsg:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eq v1, v3, :cond_33

    .line 901
    iget-object v1, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$3;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    iget-object v1, v1, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    sget-object v1, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->qCTMsg:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;

    .line 902
    .local v0, msgPkt:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;
    iget-object v1, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$3;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    iget-object v1, v1, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    sget-object v1, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->qCTMsg:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 904
    iget v1, v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;->code:I

    if-ne v1, v3, :cond_34

    .line 905
    const-string v1, "WLT MSG"

    const-string v2, "<<< CT_CODE_CT_DATA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v1, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$3;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    #calls: Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->ProcessData(Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;)V
    invoke-static {v1, v0}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->access$200(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;)V

    .line 927
    .end local v0           #msgPkt:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;
    :cond_33
    :goto_33
    return-void

    .line 908
    .restart local v0       #msgPkt:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;
    :cond_34
    iget v1, v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;->code:I

    if-ne v1, v4, :cond_83

    .line 909
    const-string v1, "WLT MSG"

    const-string v2, "<<< CT_CODE_CT_ACK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget v1, v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;->gId:I

    if-ne v1, v4, :cond_68

    .line 911
    iget v1, v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;->msgId:I

    if-ne v1, v3, :cond_4d

    .line 913
    iget-object v1, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$3;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    #calls: Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->MacAck()V
    invoke-static {v1}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->access$300(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)V

    goto :goto_33

    .line 916
    :cond_4d
    const-string v1, "WLT MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msgPkt.msgId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;->msgId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 919
    :cond_68
    const-string v1, "WLT MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msgPkt.gId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;->gId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 922
    :cond_83
    const-string v1, "WLT MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msgPkt.code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method
