.class public Lcom/samsung/swift/service/fx/RequestHeader;
.super Ljava/lang/Object;
.source "RequestHeader.java"


# instance fields
.field private dataSize:J

.field private dataStart:J

.field private destFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataSize()J
    .registers 3

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/samsung/swift/service/fx/RequestHeader;->dataSize:J

    return-wide v0
.end method

.method public getDataStart()J
    .registers 3

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/samsung/swift/service/fx/RequestHeader;->dataStart:J

    return-wide v0
.end method

.method public getDestFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/swift/service/fx/RequestHeader;->destFile:Ljava/lang/String;

    return-object v0
.end method

.method public setDataSize(J)V
    .registers 3
    .parameter "dataSize"

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/samsung/swift/service/fx/RequestHeader;->dataSize:J

    .line 103
    return-void
.end method

.method public setDataStart(J)V
    .registers 3
    .parameter "dataStart"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/samsung/swift/service/fx/RequestHeader;->dataStart:J

    .line 93
    return-void
.end method

.method public setDestFile(Ljava/lang/String;)V
    .registers 2
    .parameter "destFile"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/samsung/swift/service/fx/RequestHeader;->destFile:Ljava/lang/String;

    .line 113
    return-void
.end method
