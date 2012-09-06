.class public final Lorg/apache/james/mime4j/parser/MimeEntityConfig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private countLineNumbers:Z

.field private maxContentLen:J

.field private maxHeaderCount:I

.field private maxLineLen:I

.field private maximalBodyDescriptor:Z

.field private strictParsing:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maximalBodyDescriptor:Z

    iput-boolean v2, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->strictParsing:Z

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxLineLen:I

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxHeaderCount:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxContentLen:J

    iput-boolean v2, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->countLineNumbers:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->clone()Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    .registers 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public getMaxContentLen()J
    .registers 3

    iget-wide v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxContentLen:J

    return-wide v0
.end method

.method public getMaxHeaderCount()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxHeaderCount:I

    return v0
.end method

.method public getMaxLineLen()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxLineLen:I

    return v0
.end method

.method public isCountLineNumbers()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->countLineNumbers:Z

    return v0
.end method

.method public isMaximalBodyDescriptor()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maximalBodyDescriptor:Z

    return v0
.end method

.method public isStrictParsing()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->strictParsing:Z

    return v0
.end method

.method public setCountLineNumbers(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->countLineNumbers:Z

    return-void
.end method

.method public setMaxContentLen(J)V
    .registers 3

    iput-wide p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxContentLen:J

    return-void
.end method

.method public setMaxHeaderCount(I)V
    .registers 2

    iput p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxHeaderCount:I

    return-void
.end method

.method public setMaxLineLen(I)V
    .registers 2

    iput p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxLineLen:I

    return-void
.end method

.method public setMaximalBodyDescriptor(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maximalBodyDescriptor:Z

    return-void
.end method

.method public setStrictParsing(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->strictParsing:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[max body descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maximalBodyDescriptor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strict parsing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->strictParsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max line length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxLineLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max header count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxHeaderCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max content length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxContentLen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count line numbers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->countLineNumbers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
