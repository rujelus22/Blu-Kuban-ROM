.class public Lorg/codehaus/jackson/JsonLocation;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lorg/codehaus/jackson/JsonLocation; = null

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

    const-wide/16 v2, -0x1

    const/4 v6, -0x1

    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    const-string v1, "N/A"

    move-wide v4, v2

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    sput-object v0, Lorg/codehaus/jackson/JsonLocation;->a:Lorg/codehaus/jackson/JsonLocation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JII)V
    .registers 14

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;JJII)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/codehaus/jackson/JsonLocation;->_totalBytes:J

    iput-wide p4, p0, Lorg/codehaus/jackson/JsonLocation;->_totalChars:J

    iput p6, p0, Lorg/codehaus/jackson/JsonLocation;->_lineNr:I

    iput p7, p0, Lorg/codehaus/jackson/JsonLocation;->_columnNr:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    instance-of v2, p1, Lorg/codehaus/jackson/JsonLocation;

    if-nez v2, :cond_f

    move v0, v1

    goto :goto_4

    :cond_f
    check-cast p1, Lorg/codehaus/jackson/JsonLocation;

    iget-object v2, p0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v2, :cond_1b

    iget-object v2, p1, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-eqz v2, :cond_27

    move v0, v1

    goto :goto_4

    :cond_1b
    iget-object v2, p0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    iget-object v3, p1, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    move v0, v1

    goto :goto_4

    :cond_27
    iget v2, p0, Lorg/codehaus/jackson/JsonLocation;->_lineNr:I

    iget v3, p1, Lorg/codehaus/jackson/JsonLocation;->_lineNr:I

    if-ne v2, v3, :cond_43

    iget v2, p0, Lorg/codehaus/jackson/JsonLocation;->_columnNr:I

    iget v3, p1, Lorg/codehaus/jackson/JsonLocation;->_columnNr:I

    if-ne v2, v3, :cond_43

    iget-wide v2, p0, Lorg/codehaus/jackson/JsonLocation;->_totalChars:J

    iget-wide v4, p1, Lorg/codehaus/jackson/JsonLocation;->_totalChars:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_43

    iget-wide v2, p0, Lorg/codehaus/jackson/JsonLocation;->_totalBytes:J

    iget-wide v4, p1, Lorg/codehaus/jackson/JsonLocation;->_totalBytes:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    :cond_43
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_5
    iget v1, p0, Lorg/codehaus/jackson/JsonLocation;->_lineNr:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/codehaus/jackson/JsonLocation;->_columnNr:I

    add-int/2addr v0, v1

    iget-wide v1, p0, Lorg/codehaus/jackson/JsonLocation;->_totalChars:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lorg/codehaus/jackson/JsonLocation;->_totalBytes:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0

    :cond_14
    iget-object v0, p0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v1, :cond_33

    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    const-string v1, "; line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codehaus/jackson/JsonLocation;->_lineNr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", column: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codehaus/jackson/JsonLocation;->_columnNr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_33
    iget-object v1, p0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15
.end method
