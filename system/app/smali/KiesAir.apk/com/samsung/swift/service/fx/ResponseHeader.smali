.class public Lcom/samsung/swift/service/fx/ResponseHeader;
.super Ljava/lang/Object;
.source "ResponseHeader.java"


# instance fields
.field private bytesWritten:J

.field private destFile:Ljava/lang/String;

.field private error:I

.field private fileSize:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytesWritten()J
    .registers 3

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/samsung/swift/service/fx/ResponseHeader;->bytesWritten:J

    return-wide v0
.end method

.method public getDestFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/swift/service/fx/ResponseHeader;->destFile:Ljava/lang/String;

    return-object v0
.end method

.method public getError()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/samsung/swift/service/fx/ResponseHeader;->error:I

    return v0
.end method

.method public getFileSize()J
    .registers 3

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/samsung/swift/service/fx/ResponseHeader;->fileSize:J

    return-wide v0
.end method

.method public setBytesWritten(J)V
    .registers 3
    .parameter "bytesWritten"

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/samsung/swift/service/fx/ResponseHeader;->bytesWritten:J

    .line 104
    return-void
.end method

.method public setDestFile(Ljava/lang/String;)V
    .registers 2
    .parameter "destFile"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/swift/service/fx/ResponseHeader;->destFile:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setError(I)V
    .registers 2
    .parameter "error"

    .prologue
    .line 123
    iput p1, p0, Lcom/samsung/swift/service/fx/ResponseHeader;->error:I

    .line 124
    return-void
.end method

.method public setFileSize(J)V
    .registers 3
    .parameter "fileSize"

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/samsung/swift/service/fx/ResponseHeader;->fileSize:J

    .line 114
    return-void
.end method
