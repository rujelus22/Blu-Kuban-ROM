.class public Lorg/apache/commons/io/filefilter/SizeFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "SizeFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final acceptLarger:Z

.field private final size:J


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 9
    .parameter "file"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->size:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_14

    move v0, v1

    .line 90
    .local v0, smaller:Z
    :goto_d
    iget-boolean v3, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->acceptLarger:Z

    if-eqz v3, :cond_18

    if-nez v0, :cond_16

    :goto_13
    return v1

    .end local v0           #smaller:Z
    :cond_14
    move v0, v2

    .line 89
    goto :goto_d

    .restart local v0       #smaller:Z
    :cond_16
    move v1, v2

    .line 90
    goto :goto_13

    :cond_18
    move v1, v0

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 99
    iget-boolean v1, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->acceptLarger:Z

    if-eqz v1, :cond_2e

    const-string v0, ">="

    .line 100
    .local v0, condition:Ljava/lang/String;
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 99
    .end local v0           #condition:Ljava/lang/String;
    :cond_2e
    const-string v0, "<"

    goto :goto_6
.end method
