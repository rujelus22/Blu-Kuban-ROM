.class public abstract Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;
.super Ljava/lang/Object;
.source "HttpConnectionAdapter.java"


# static fields
.field public static ivBoundary:Ljava/lang/String;


# instance fields
.field protected ivRequestID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string v0, "-------------------------------1878979834"

    sput-object v0, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->ivBoundary:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "requestID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->ivRequestID:I

    .line 29
    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract finishRequest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract finishResponse()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getConnection()Lcom/vlingo/client/core/http/custom/VHttpConnection;
.end method

.method public abstract getIn()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getOut()Lcom/vlingo/client/core/http/custom/MPOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getRequestID()I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->ivRequestID:I

    return v0
.end method

.method public abstract getResponseHeaderField(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseHeaderFieldKey(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
