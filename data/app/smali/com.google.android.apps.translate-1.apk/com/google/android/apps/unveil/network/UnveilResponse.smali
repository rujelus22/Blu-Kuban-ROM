.class public final Lcom/google/android/apps/unveil/network/UnveilResponse;
.super Ljava/lang/Object;
.source "UnveilResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Lcom/google/protobuf/GeneratedMessageLite;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final exception:Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;

.field private final response:Lcom/google/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResponseType;"
        }
    .end annotation
.end field

.field private final responseReceivedTimestamp:J

.field private final responseSize:I


# direct methods
.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite;ILcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;J)V
    .registers 6
    .parameter
    .parameter "responseSize"
    .parameter "exception"
    .parameter "responseReceivedTimestamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseType;I",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, this:Lcom/google/android/apps/unveil/network/UnveilResponse;,"Lcom/google/android/apps/unveil/network/UnveilResponse<TResponseType;>;"
    .local p1, response:Lcom/google/protobuf/GeneratedMessageLite;,"TResponseType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/UnveilResponse;->response:Lcom/google/protobuf/GeneratedMessageLite;

    .line 23
    iput p2, p0, Lcom/google/android/apps/unveil/network/UnveilResponse;->responseSize:I

    .line 24
    iput-object p3, p0, Lcom/google/android/apps/unveil/network/UnveilResponse;->exception:Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;

    .line 25
    iput-wide p4, p0, Lcom/google/android/apps/unveil/network/UnveilResponse;->responseReceivedTimestamp:J

    .line 26
    return-void
.end method

.method public static get(J)Lcom/google/android/apps/unveil/network/UnveilResponse;
    .registers 8
    .parameter "responseReceivedTimestamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType:",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            ">(J)",
            "Lcom/google/android/apps/unveil/network/UnveilResponse",
            "<TResponseType;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 41
    new-instance v0, Lcom/google/android/apps/unveil/network/UnveilResponse;

    const/4 v2, 0x0

    move-object v3, v1

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/unveil/network/UnveilResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite;ILcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;J)V

    return-object v0
.end method

.method public static get(Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;)Lcom/google/android/apps/unveil/network/UnveilResponse;
    .registers 7
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType:",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            ">(",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;",
            ")",
            "Lcom/google/android/apps/unveil/network/UnveilResponse",
            "<TResponseType;>;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/apps/unveil/network/UnveilResponse;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-wide/16 v4, -0x1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/unveil/network/UnveilResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite;ILcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;J)V

    return-object v0
.end method

.method public static get(Lcom/google/protobuf/GeneratedMessageLite;IJ)Lcom/google/android/apps/unveil/network/UnveilResponse;
    .registers 10
    .parameter
    .parameter "responseSize"
    .parameter "responseReceivedTimestamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType:",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            ">(TResponseType;IJ)",
            "Lcom/google/android/apps/unveil/network/UnveilResponse",
            "<TResponseType;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, response:Lcom/google/protobuf/GeneratedMessageLite;,"TResponseType;"
    new-instance v0, Lcom/google/android/apps/unveil/network/UnveilResponse;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/unveil/network/UnveilResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite;ILcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;J)V

    return-object v0
.end method


# virtual methods
.method public getException()Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;
    .registers 2

    .prologue
    .line 49
    .local p0, this:Lcom/google/android/apps/unveil/network/UnveilResponse;,"Lcom/google/android/apps/unveil/network/UnveilResponse<TResponseType;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/UnveilResponse;->exception:Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;

    return-object v0
.end method

.method public getProtocolBuffer()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResponseType;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/google/android/apps/unveil/network/UnveilResponse;,"Lcom/google/android/apps/unveil/network/UnveilResponse<TResponseType;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/UnveilResponse;->response:Lcom/google/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public getResponseReceivedTimestamp()J
    .registers 3

    .prologue
    .line 70
    .local p0, this:Lcom/google/android/apps/unveil/network/UnveilResponse;,"Lcom/google/android/apps/unveil/network/UnveilResponse<TResponseType;>;"
    iget-wide v0, p0, Lcom/google/android/apps/unveil/network/UnveilResponse;->responseReceivedTimestamp:J

    return-wide v0
.end method

.method public getResponseSize()I
    .registers 2

    .prologue
    .line 66
    .local p0, this:Lcom/google/android/apps/unveil/network/UnveilResponse;,"Lcom/google/android/apps/unveil/network/UnveilResponse<TResponseType;>;"
    iget v0, p0, Lcom/google/android/apps/unveil/network/UnveilResponse;->responseSize:I

    return v0
.end method
