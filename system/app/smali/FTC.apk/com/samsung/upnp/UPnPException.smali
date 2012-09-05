.class public Lcom/samsung/upnp/UPnPException;
.super Ljava/lang/Exception;
.source "UPnPException.java"


# static fields
.field private static final serialVersionUID:J = -0x4f5c679824eb3fcbL


# instance fields
.field private errorCode:I

.field private msg:Ljava/lang/String;

.field private status:Lcom/samsung/upnp/UPnPStatus;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 38
    const/4 v0, 0x0

    const-string v1, "No Error"

    new-instance v2, Lcom/samsung/upnp/UPnPStatus;

    invoke-direct {v2}, Lcom/samsung/upnp/UPnPStatus;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/upnp/UPnPException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "errorCode"

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

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/upnp/UPnPException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    .line 47
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V
    .registers 5
    .parameter "errorCode"
    .parameter "msg"
    .parameter "status"

    .prologue
    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/upnp/UPnPException;->errorCode:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/upnp/UPnPException;->status:Lcom/samsung/upnp/UPnPStatus;

    .line 57
    iput p1, p0, Lcom/samsung/upnp/UPnPException;->errorCode:I

    .line 58
    iput-object p2, p0, Lcom/samsung/upnp/UPnPException;->msg:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/samsung/upnp/UPnPException;->status:Lcom/samsung/upnp/UPnPStatus;

    .line 60
    return-void
.end method
