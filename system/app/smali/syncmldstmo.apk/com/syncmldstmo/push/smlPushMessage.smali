.class public Lcom/syncmldstmo/push/smlPushMessage;
.super Ljava/lang/Object;
.source "smlPushMessage.java"


# instance fields
.field public appId:I

.field public bodySize:I

.field public dataSize:I

.field public mime_type:I

.field public pBody:[B

.field public pData:[B

.field public pHeader:[B

.field public push_status:I

.field public push_type:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/syncmldstmo/push/smlPushMessage;->appId:I

    .line 19
    iput v0, p0, Lcom/syncmldstmo/push/smlPushMessage;->push_type:I

    .line 20
    iput v0, p0, Lcom/syncmldstmo/push/smlPushMessage;->mime_type:I

    .line 21
    iput-object v1, p0, Lcom/syncmldstmo/push/smlPushMessage;->pData:[B

    .line 22
    iput-object v1, p0, Lcom/syncmldstmo/push/smlPushMessage;->pHeader:[B

    .line 23
    iput-object v1, p0, Lcom/syncmldstmo/push/smlPushMessage;->pBody:[B

    .line 24
    iput v0, p0, Lcom/syncmldstmo/push/smlPushMessage;->dataSize:I

    .line 25
    iput v0, p0, Lcom/syncmldstmo/push/smlPushMessage;->bodySize:I

    .line 26
    iput v0, p0, Lcom/syncmldstmo/push/smlPushMessage;->push_status:I

    .line 27
    return-void
.end method
