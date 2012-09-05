.class public Lcom/syncmldstmo/push/smlNoti;
.super Ljava/lang/Object;
.source "smlNoti.java"


# instance fields
.field public appId:I

.field public digestdata:[B

.field public mimeType:I

.field public nBodySize:I

.field public statusDigest:I

.field public triggerBody:Lcom/syncmldstmo/push/smlNotiTriggerBody;

.field public triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/syncmldstmo/push/smlNoti;->appId:I

    .line 18
    iput v0, p0, Lcom/syncmldstmo/push/smlNoti;->statusDigest:I

    .line 19
    iput v0, p0, Lcom/syncmldstmo/push/smlNoti;->mimeType:I

    .line 20
    iput v0, p0, Lcom/syncmldstmo/push/smlNoti;->nBodySize:I

    .line 21
    new-instance v0, Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    invoke-direct {v0}, Lcom/syncmldstmo/push/smlNotiTriggerHeader;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    .line 22
    new-instance v0, Lcom/syncmldstmo/push/smlNotiTriggerBody;

    invoke-direct {v0}, Lcom/syncmldstmo/push/smlNotiTriggerBody;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/push/smlNoti;->triggerBody:Lcom/syncmldstmo/push/smlNotiTriggerBody;

    .line 23
    return-void
.end method
