.class public final Lcom/wssnps/mmspdu/myutil/PduCacheEntry;
.super Lcom/wssnps/mmspdu/MultimediaMessagePdu;
.source "PduCacheEntry.java"


# instance fields
.field private final mMessageBox:I

.field private final mPdu:Lcom/wssnps/mmspdu/GenericPdu;

.field private final mThreadId:J


# direct methods
.method public constructor <init>(Lcom/wssnps/mmspdu/GenericPdu;IJ)V
    .registers 5
    .parameter "pdu"
    .parameter "msgBox"
    .parameter "threadId"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/wssnps/mmspdu/MultimediaMessagePdu;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/wssnps/mmspdu/myutil/PduCacheEntry;->mPdu:Lcom/wssnps/mmspdu/GenericPdu;

    .line 30
    iput p2, p0, Lcom/wssnps/mmspdu/myutil/PduCacheEntry;->mMessageBox:I

    .line 31
    iput-wide p3, p0, Lcom/wssnps/mmspdu/myutil/PduCacheEntry;->mThreadId:J

    .line 32
    return-void
.end method


# virtual methods
.method public getMessageBox()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/wssnps/mmspdu/myutil/PduCacheEntry;->mMessageBox:I

    return v0
.end method

.method public getPdu()Lcom/wssnps/mmspdu/GenericPdu;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wssnps/mmspdu/myutil/PduCacheEntry;->mPdu:Lcom/wssnps/mmspdu/GenericPdu;

    return-object v0
.end method

.method public getThreadId()J
    .registers 3

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/wssnps/mmspdu/myutil/PduCacheEntry;->mThreadId:J

    return-wide v0
.end method
