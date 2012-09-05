.class public Lcom/vlingo/client/core/net/ConnectionResult;
.super Ljava/lang/Object;
.source "ConnectionResult.java"


# instance fields
.field public apnUsed:Z

.field public connection:Ljavax/microedition/io/Connection;

.field public connectionType:I

.field public connectionTypeString:Ljava/lang/String;

.field public failureException:Ljava/lang/Exception;

.field public isFailure:Z

.field public timeToComplete:J

.field public url:Ljava/lang/String;

.field public wifiActive:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v1, p0, Lcom/vlingo/client/core/net/ConnectionResult;->isFailure:Z

    .line 24
    iput-object v0, p0, Lcom/vlingo/client/core/net/ConnectionResult;->failureException:Ljava/lang/Exception;

    .line 27
    iput-object v0, p0, Lcom/vlingo/client/core/net/ConnectionResult;->connection:Ljavax/microedition/io/Connection;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/core/net/ConnectionResult;->url:Ljava/lang/String;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/core/net/ConnectionResult;->connectionType:I

    .line 30
    iput-boolean v1, p0, Lcom/vlingo/client/core/net/ConnectionResult;->wifiActive:Z

    .line 31
    iput-boolean v1, p0, Lcom/vlingo/client/core/net/ConnectionResult;->apnUsed:Z

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vlingo/client/core/net/ConnectionResult;->timeToComplete:J

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/core/net/ConnectionResult;->connectionTypeString:Ljava/lang/String;

    .line 34
    return-void
.end method
