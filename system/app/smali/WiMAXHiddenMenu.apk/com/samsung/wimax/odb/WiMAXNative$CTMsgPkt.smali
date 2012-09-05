.class Lcom/samsung/wimax/odb/WiMAXNative$CTMsgPkt;
.super Ljava/lang/Object;
.source "WiMAXNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/odb/WiMAXNative;
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

.field final synthetic this$0:Lcom/samsung/wimax/odb/WiMAXNative;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/odb/WiMAXNative;IIILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter "code"
    .parameter "gId"
    .parameter "msgId"
    .parameter "strData"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/wimax/odb/WiMAXNative$CTMsgPkt;->this$0:Lcom/samsung/wimax/odb/WiMAXNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p2, p0, Lcom/samsung/wimax/odb/WiMAXNative$CTMsgPkt;->code:I

    .line 52
    iput p3, p0, Lcom/samsung/wimax/odb/WiMAXNative$CTMsgPkt;->gId:I

    .line 53
    iput p4, p0, Lcom/samsung/wimax/odb/WiMAXNative$CTMsgPkt;->msgId:I

    .line 54
    iput-object p5, p0, Lcom/samsung/wimax/odb/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    .line 55
    return-void
.end method
