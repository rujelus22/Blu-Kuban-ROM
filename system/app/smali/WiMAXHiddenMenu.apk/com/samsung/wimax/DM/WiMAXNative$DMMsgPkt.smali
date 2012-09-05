.class Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;
.super Ljava/lang/Object;
.source "WiMAXNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/DM/WiMAXNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DMMsgPkt"
.end annotation


# instance fields
.field HO:Lcom/samsung/wimax/DM/WiMAXNative$HOMessage;

.field code:I

.field data:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/wimax/DM/WiMAXNative;

.field typeId:I


# direct methods
.method constructor <init>(Lcom/samsung/wimax/DM/WiMAXNative;IILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter "code"
    .parameter "typeId"
    .parameter "strData"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;->this$0:Lcom/samsung/wimax/DM/WiMAXNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p2, p0, Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;->code:I

    .line 76
    iput p3, p0, Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;->typeId:I

    .line 77
    iput-object p4, p0, Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;->data:Ljava/lang/String;

    .line 78
    return-void
.end method
