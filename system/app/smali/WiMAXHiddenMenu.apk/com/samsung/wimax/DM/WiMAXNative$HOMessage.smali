.class public Lcom/samsung/wimax/DM/WiMAXNative$HOMessage;
.super Ljava/lang/Object;
.source "WiMAXNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/DM/WiMAXNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HOMessage"
.end annotation


# instance fields
.field HOFailCnt:I

.field HOTryCnt:I

.field InterFANbrCinrMean:I

.field InterFANbrNum:I

.field InterFANbrPreambleIdx:Ljava/lang/String;

.field InterFANbrRssi:Ljava/lang/String;

.field IntraFANbrCinrMean:I

.field IntraFANbrNum:I

.field IntraFANbrPreambleIdx:Ljava/lang/String;

.field IntraFANbrRssi:Ljava/lang/String;

.field PingPongCnt:I

.field servingCinr:I

.field final synthetic this$0:Lcom/samsung/wimax/DM/WiMAXNative;


# direct methods
.method public constructor <init>(Lcom/samsung/wimax/DM/WiMAXNative;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/samsung/wimax/DM/WiMAXNative$HOMessage;->this$0:Lcom/samsung/wimax/DM/WiMAXNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
