.class Lcom/samsung/map/SmsInfo;
.super Ljava/lang/Object;
.source "SmsObserver.java"


# instance fields
.field public proto:I

.field public type:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "type"
    .parameter "proto"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/samsung/map/SmsInfo;->type:I

    .line 63
    iput p2, p0, Lcom/samsung/map/SmsInfo;->proto:I

    .line 64
    return-void
.end method
