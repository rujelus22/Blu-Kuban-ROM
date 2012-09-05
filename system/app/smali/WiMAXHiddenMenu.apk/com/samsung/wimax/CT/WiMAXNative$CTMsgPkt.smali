.class Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;
.super Ljava/lang/Object;
.source "WiMAXNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/CT/WiMAXNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CTMsgPkt"
.end annotation


# instance fields
.field code:I

.field data:Ljava/lang/String;

.field gId:I

.field msgId:I

.field final synthetic this$0:Lcom/samsung/wimax/CT/WiMAXNative;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/CT/WiMAXNative;IIILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter "code"
    .parameter "gId"
    .parameter "msgId"
    .parameter "strData"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->this$0:Lcom/samsung/wimax/CT/WiMAXNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p2, p0, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->code:I

    .line 57
    iput p3, p0, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->gId:I

    .line 58
    iput p4, p0, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    .line 59
    iput-object p5, p0, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    .line 60
    return-void
.end method
