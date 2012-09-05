.class public Lcom/samsung/api/DMCAPIException;
.super Ljava/lang/Exception;
.source "DMCAPIException.java"


# instance fields
.field private mErrorCode:I

.field private mMsg:Ljava/lang/String;

.field private mStatus:Lcom/samsung/upnp/UPnPStatus;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 36
    const/4 v0, 0x0

    const-string v1, "No Error"

    new-instance v2, Lcom/samsung/upnp/UPnPStatus;

    invoke-direct {v2}, Lcom/samsung/upnp/UPnPStatus;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "errorCode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error with Value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/upnp/UPnPStatus;

    invoke-direct {v1}, Lcom/samsung/upnp/UPnPStatus;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    .line 47
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V
    .registers 8
    .parameter "errorCode"
    .parameter "msg"
    .parameter "status"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    iput v1, p0, Lcom/samsung/api/DMCAPIException;->mErrorCode:I

    .line 33
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/api/DMCAPIException;->mStatus:Lcom/samsung/upnp/UPnPStatus;

    .line 59
    sget-object v2, Lcom/samsung/api/DLNAErrorCode;->ERROR_TYPES:[I

    array-length v3, v2

    :goto_10
    if-lt v1, v3, :cond_1a

    .line 68
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/api/DMCAPIException;->mErrorCode:I

    .line 69
    iput-object p2, p0, Lcom/samsung/api/DMCAPIException;->mMsg:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/samsung/api/DMCAPIException;->mStatus:Lcom/samsung/upnp/UPnPStatus;

    .line 71
    :goto_19
    return-void

    .line 59
    :cond_1a
    aget v0, v2, v1

    .line 60
    .local v0, type:I
    if-ne p1, v0, :cond_25

    .line 61
    iput p1, p0, Lcom/samsung/api/DMCAPIException;->mErrorCode:I

    .line 62
    iput-object p2, p0, Lcom/samsung/api/DMCAPIException;->mMsg:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/samsung/api/DMCAPIException;->mStatus:Lcom/samsung/upnp/UPnPStatus;

    goto :goto_19

    .line 59
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method
