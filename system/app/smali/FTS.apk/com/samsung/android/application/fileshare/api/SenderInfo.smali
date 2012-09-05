.class public abstract Lcom/samsung/android/application/fileshare/api/SenderInfo;
.super Ljava/lang/Object;
.source "SenderInfo.java"


# instance fields
.field protected mDescritpion:Ljava/lang/String;

.field protected mFriendlyName:Ljava/lang/String;

.field protected mSessionID:Ljava/lang/String;

.field protected mTotalCount:I

.field protected mTotalSize:J

.field protected mTransportDescription:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 10
    .parameter "name"
    .parameter "desc"
    .parameter "transportDescription"
    .parameter "totalCount"
    .parameter "totalSize"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/api/SenderInfo;->mFriendlyName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/application/fileshare/api/SenderInfo;->mDescritpion:Ljava/lang/String;

    .line 43
    const-string v0, "[FT]-server"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stack - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput-object p3, p0, Lcom/samsung/android/application/fileshare/api/SenderInfo;->mTransportDescription:Ljava/lang/String;

    .line 45
    iput p4, p0, Lcom/samsung/android/application/fileshare/api/SenderInfo;->mTotalCount:I

    .line 46
    iput-wide p5, p0, Lcom/samsung/android/application/fileshare/api/SenderInfo;->mTotalSize:J

    .line 47
    return-void
.end method


# virtual methods
.method public final getFriendlyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/SenderInfo;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/SenderInfo;->mSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalCount()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lcom/samsung/android/application/fileshare/api/SenderInfo;->mTotalCount:I

    return v0
.end method

.method public final getTotalSize()J
    .registers 3

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/samsung/android/application/fileshare/api/SenderInfo;->mTotalSize:J

    return-wide v0
.end method

.method public final getTransportDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/SenderInfo;->mTransportDescription:Ljava/lang/String;

    return-object v0
.end method
