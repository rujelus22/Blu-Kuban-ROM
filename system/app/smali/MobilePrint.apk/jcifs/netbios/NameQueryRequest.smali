.class Ljcifs/netbios/NameQueryRequest;
.super Ljcifs/netbios/NameServicePacket;
.source "NameQueryRequest.java"


# direct methods
.method constructor <init>(Ljcifs/netbios/Name;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 23
    invoke-direct {p0}, Ljcifs/netbios/NameServicePacket;-><init>()V

    .line 24
    iput-object p1, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    .line 25
    const/16 v0, 0x20

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    .line 26
    return-void
.end method


# virtual methods
.method readBodyWireFormat([BI)I
    .registers 4
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameQueryRequest;->readQuestionSectionWireFormat([BI)I

    move-result v0

    return v0
.end method

.method readRDataWireFormat([BI)I
    .registers 4
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 41
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NameQueryRequest["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-super {p0}, Ljcifs/netbios/NameServicePacket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBodyWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameQueryRequest;->writeQuestionSectionWireFormat([BI)I

    move-result v0

    return v0
.end method

.method writeRDataWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method
