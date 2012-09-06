.class public Lorg/codehaus/jackson/JsonLocation;
.super Ljava/lang/Object;
.source "JsonLocation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NA:Lorg/codehaus/jackson/JsonLocation; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final _columnNr:I

.field final _lineNr:I

.field final _sourceRef:Ljava/lang/Object;

.field final _totalBytes:J

.field final _totalChars:J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const-wide/16 v2, -0x1

    const/4 v6, -0x1

    .line 22
    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    const-string v1, "N/A"

    move-wide v4, v2

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    sput-object v0, Lorg/codehaus/jackson/JsonLocation;->NA:Lorg/codehaus/jackson/JsonLocation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JII)V
    .registers 14
    .parameter "srcRef"
    .parameter "totalChars"
    .parameter "lineNr"
    .parameter "colNr"

    .prologue
    .line 42
    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JJII)V
    .registers 8
    .parameter "sourceRef"
    .parameter "totalBytes"
    .parameter "totalChars"
    .parameter "lineNr"
    .parameter "columnNr"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    .line 53
    iput-wide p2, p0, Lorg/codehaus/jackson/JsonLocation;->_totalBytes:J

    .line 54
    iput-wide p4, p0, Lorg/codehaus/jackson/JsonLocation;->_totalChars:J

    .line 55
    iput p6, p0, Lorg/codehaus/jackson/JsonLocation;->_lineNr:I

    .line 56
    iput p7, p0, Lorg/codehaus/jackson/JsonLocation;->_columnNr:I

    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    if-ne p1, p0, :cond_6

    move v2, v1

    .line 135
    :cond_5
    :goto_5
    return v2

    .line 127
    :cond_6
    if-eqz p1, :cond_5

    .line 128
    instance-of v3, p1, Lorg/codehaus/jackson/JsonLocation;

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 129
    check-cast v0, Lorg/codehaus/jackson/JsonLocation;

    .line 131
    .local v0, otherLoc:Lorg/codehaus/jackson/JsonLocation;
    iget-object v3, p0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v3, :cond_39

    .line 132
    iget-object v3, v0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v3, :cond_5

    .line 135
    :cond_17
    iget v3, p0, Lorg/codehaus/jackson/JsonLocation;->_lineNr:I

    iget v4, v0, Lorg/codehaus/jackson/JsonLocation;->_lineNr:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Lorg/codehaus/jackson/JsonLocation;->_columnNr:I

    iget v4, v0, Lorg/codehaus/jackson/JsonLocation;->_columnNr:I

    if-ne v3, v4, :cond_44

    iget-wide v3, p0, Lorg/codehaus/jackson/JsonLocation;->_totalChars:J

    iget-wide v5, v0, Lorg/codehaus/jackson/JsonLocation;->_totalChars:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_44

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonLocation;->getByteOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonLocation;->getByteOffset()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_44

    :goto_37
    move v2, v1

    goto :goto_5

    .line 133
    :cond_39
    iget-object v3, p0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    iget-object v4, v0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_5

    :cond_44
    move v1, v2

    .line 135
    goto :goto_37
.end method

.method public getByteOffset()J
    .registers 3

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/codehaus/jackson/JsonLocation;->_totalBytes:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 115
    iget-object v1, p0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v1, :cond_14

    const/4 v0, 0x1

    .line 116
    .local v0, hash:I
    :goto_5
    iget v1, p0, Lorg/codehaus/jackson/JsonLocation;->_lineNr:I

    xor-int/2addr v0, v1

    .line 117
    iget v1, p0, Lorg/codehaus/jackson/JsonLocation;->_columnNr:I

    add-int/2addr v0, v1

    .line 118
    iget-wide v1, p0, Lorg/codehaus/jackson/JsonLocation;->_totalChars:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    .line 119
    iget-wide v1, p0, Lorg/codehaus/jackson/JsonLocation;->_totalBytes:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 120
    return v0

    .line 115
    .end local v0           #hash:I
    :cond_14
    iget-object v1, p0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 98
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "[Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v1, :cond_33

    .line 100
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :goto_15
    const-string v1, "; line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Lorg/codehaus/jackson/JsonLocation;->_lineNr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", column: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lorg/codehaus/jackson/JsonLocation;->_columnNr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 102
    :cond_33
    iget-object v1, p0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15
.end method
