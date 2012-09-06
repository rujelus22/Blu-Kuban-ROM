.class public Lde/innosystec/unrar/rarfile/q;
.super Lde/innosystec/unrar/rarfile/p;


# instance fields
.field private g:Lorg/apache/commons/logging/Log;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/p;[B)V
    .registers 7

    const v1, 0xffff

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/p;-><init>(Lde/innosystec/unrar/rarfile/p;)V

    const-class v0, Lde/innosystec/unrar/rarfile/q;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/q;->g:Lorg/apache/commons/logging/Log;

    invoke-static {p2, v3}, Lde/innosystec/unrar/b/b;->b([BI)S

    move-result v0

    and-int/2addr v0, v1

    iput v0, p0, Lde/innosystec/unrar/rarfile/q;->h:I

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->b([BI)S

    move-result v0

    and-int/2addr v0, v1

    iput v0, p0, Lde/innosystec/unrar/rarfile/q;->i:I

    const/4 v0, 0x4

    iget v1, p0, Lde/innosystec/unrar/rarfile/q;->h:I

    add-int/lit8 v1, v1, 0x4

    array-length v2, p2

    if-ge v1, v2, :cond_36

    iget v1, p0, Lde/innosystec/unrar/rarfile/q;->h:I

    new-array v1, v1, [B

    iget v2, p0, Lde/innosystec/unrar/rarfile/q;->h:I

    invoke-static {p2, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/q;->j:Ljava/lang/String;

    :cond_36
    iget v0, p0, Lde/innosystec/unrar/rarfile/q;->h:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lde/innosystec/unrar/rarfile/q;->i:I

    add-int/2addr v1, v0

    array-length v2, p2

    if-ge v1, v2, :cond_50

    iget v1, p0, Lde/innosystec/unrar/rarfile/q;->i:I

    new-array v1, v1, [B

    iget v2, p0, Lde/innosystec/unrar/rarfile/q;->i:I

    invoke-static {p2, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/q;->k:Ljava/lang/String;

    :cond_50
    return-void
.end method


# virtual methods
.method public j()V
    .registers 4

    invoke-super {p0}, Lde/innosystec/unrar/rarfile/p;->j()V

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/q;->g:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ownerNameSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lde/innosystec/unrar/rarfile/q;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/q;->g:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "owner: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lde/innosystec/unrar/rarfile/q;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/q;->g:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "groupNameSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lde/innosystec/unrar/rarfile/q;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/q;->g:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "group: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lde/innosystec/unrar/rarfile/q;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method
