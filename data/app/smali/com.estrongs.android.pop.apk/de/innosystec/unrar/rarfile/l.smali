.class public Lde/innosystec/unrar/rarfile/l;
.super Lde/innosystec/unrar/rarfile/b;


# instance fields
.field private g:Lorg/apache/commons/logging/Log;

.field private h:Z


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/b;)V
    .registers 3

    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/b;-><init>(Lde/innosystec/unrar/rarfile/b;)V

    const-class v0, Lde/innosystec/unrar/rarfile/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/l;->g:Lorg/apache/commons/logging/Log;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/innosystec/unrar/rarfile/l;->h:Z

    return-void
.end method


# virtual methods
.method public j()V
    .registers 4

    invoke-super {p0}, Lde/innosystec/unrar/rarfile/b;->j()V

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/l;->g:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "valid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/l;->k()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public k()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/l;->g()S

    move-result v1

    const/16 v2, 0x6152

    if-eq v1, v2, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/l;->i()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v1

    sget-object v2, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MarkHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    if-ne v1, v2, :cond_9

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/l;->f()S

    move-result v1

    const/16 v2, 0x1a21

    if-ne v1, v2, :cond_9

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/l;->h()S

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public l()Z
    .registers 9

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x7

    new-array v2, v2, [B

    iget-short v3, p0, Lde/innosystec/unrar/rarfile/l;->c:S

    invoke-static {v2, v1, v3}, Lde/innosystec/unrar/b/b;->a([BIS)V

    iget-byte v3, p0, Lde/innosystec/unrar/rarfile/l;->d:B

    aput-byte v3, v2, v5

    iget-short v3, p0, Lde/innosystec/unrar/rarfile/l;->e:S

    invoke-static {v2, v6, v3}, Lde/innosystec/unrar/b/b;->a([BIS)V

    iget-short v3, p0, Lde/innosystec/unrar/rarfile/l;->f:S

    invoke-static {v2, v7, v3}, Lde/innosystec/unrar/b/b;->a([BIS)V

    aget-byte v3, v2, v1

    const/16 v4, 0x52

    if-ne v3, v4, :cond_5c

    aget-byte v3, v2, v0

    const/16 v4, 0x45

    if-ne v3, v4, :cond_36

    aget-byte v3, v2, v5

    const/16 v4, 0x7e

    if-ne v3, v4, :cond_36

    aget-byte v3, v2, v6

    const/16 v4, 0x5e

    if-ne v3, v4, :cond_36

    iput-boolean v0, p0, Lde/innosystec/unrar/rarfile/l;->h:Z

    :goto_35
    return v0

    :cond_36
    aget-byte v3, v2, v0

    const/16 v4, 0x61

    if-ne v3, v4, :cond_5c

    aget-byte v3, v2, v5

    const/16 v4, 0x72

    if-ne v3, v4, :cond_5c

    aget-byte v3, v2, v6

    const/16 v4, 0x21

    if-ne v3, v4, :cond_5c

    const/4 v3, 0x4

    aget-byte v3, v2, v3

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_5c

    aget-byte v3, v2, v7

    const/4 v4, 0x7

    if-ne v3, v4, :cond_5c

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    if-nez v2, :cond_5c

    iput-boolean v1, p0, Lde/innosystec/unrar/rarfile/l;->h:Z

    goto :goto_35

    :cond_5c
    move v0, v1

    goto :goto_35
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lde/innosystec/unrar/rarfile/l;->h:Z

    return v0
.end method
