.class public Lde/innosystec/unrar/rarfile/b;
.super Ljava/lang/Object;


# instance fields
.field a:Lorg/apache/commons/logging/Log;

.field protected b:J

.field protected c:S

.field protected d:B

.field protected e:S

.field protected f:S


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lde/innosystec/unrar/rarfile/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/b;->a:Lorg/apache/commons/logging/Log;

    iput-short v1, p0, Lde/innosystec/unrar/rarfile/b;->c:S

    iput-byte v1, p0, Lde/innosystec/unrar/rarfile/b;->d:B

    iput-short v1, p0, Lde/innosystec/unrar/rarfile/b;->e:S

    iput-short v1, p0, Lde/innosystec/unrar/rarfile/b;->f:S

    return-void
.end method

.method public constructor <init>(Lde/innosystec/unrar/rarfile/b;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lde/innosystec/unrar/rarfile/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/b;->a:Lorg/apache/commons/logging/Log;

    iput-short v1, p0, Lde/innosystec/unrar/rarfile/b;->c:S

    iput-byte v1, p0, Lde/innosystec/unrar/rarfile/b;->d:B

    iput-short v1, p0, Lde/innosystec/unrar/rarfile/b;->e:S

    iput-short v1, p0, Lde/innosystec/unrar/rarfile/b;->f:S

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/b;->f()S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/b;->e:S

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/b;->g()S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/b;->c:S

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/b;->i()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->getHeaderByte()B

    move-result v0

    iput-byte v0, p0, Lde/innosystec/unrar/rarfile/b;->d:B

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/b;->h()S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/b;->f:S

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/b;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lde/innosystec/unrar/rarfile/b;->b:J

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lde/innosystec/unrar/rarfile/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/b;->a:Lorg/apache/commons/logging/Log;

    iput-short v1, p0, Lde/innosystec/unrar/rarfile/b;->c:S

    iput-byte v1, p0, Lde/innosystec/unrar/rarfile/b;->d:B

    iput-short v1, p0, Lde/innosystec/unrar/rarfile/b;->e:S

    iput-short v1, p0, Lde/innosystec/unrar/rarfile/b;->f:S

    invoke-static {p1, v1}, Lde/innosystec/unrar/b/b;->b([BI)S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/b;->c:S

    const/4 v0, 0x2

    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/b;->d:B

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lde/innosystec/unrar/rarfile/b;->d:B

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lde/innosystec/unrar/b/b;->b([BI)S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/b;->e:S

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lde/innosystec/unrar/b/b;->b([BI)S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/b;->f:S

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lde/innosystec/unrar/rarfile/b;->b:J

    return-void
.end method

.method public a()Z
    .registers 2

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/b;->e:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b()Z
    .registers 2

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/b;->e:S

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c()Z
    .registers 2

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/b;->e:S

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public d()Z
    .registers 4

    const/4 v0, 0x1

    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->SubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    iget-byte v2, p0, Lde/innosystec/unrar/rarfile/b;->d:B

    invoke-virtual {v1, v2}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->NewSubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    iget-byte v2, p0, Lde/innosystec/unrar/rarfile/b;->d:B

    invoke-virtual {v1, v2}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-short v1, p0, Lde/innosystec/unrar/rarfile/b;->e:S

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_b

    :cond_1c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public e()J
    .registers 3

    iget-wide v0, p0, Lde/innosystec/unrar/rarfile/b;->b:J

    return-wide v0
.end method

.method public f()S
    .registers 2

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/b;->e:S

    return v0
.end method

.method public g()S
    .registers 2

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/b;->c:S

    return v0
.end method

.method public h()S
    .registers 2

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/b;->f:S

    return v0
.end method

.method public i()Lde/innosystec/unrar/rarfile/UnrarHeadertype;
    .registers 2

    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/b;->d:B

    invoke-static {v0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->findType(B)Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HeaderType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/b;->i()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nHeadCRC: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/b;->g()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nFlags: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/b;->f()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nHeaderSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/b;->h()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nPosition in file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/b;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/innosystec/unrar/rarfile/b;->a:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method
