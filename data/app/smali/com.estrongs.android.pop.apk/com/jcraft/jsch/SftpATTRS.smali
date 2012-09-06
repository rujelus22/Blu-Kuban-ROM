.class public Lcom/jcraft/jsch/SftpATTRS;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:J

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    return-void
.end method

.method static a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;
    .registers 7

    new-instance v1, Lcom/jcraft/jsch/SftpATTRS;

    invoke-direct {v1}, Lcom/jcraft/jsch/SftpATTRS;-><init>()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    iput v0, v1, Lcom/jcraft/jsch/SftpATTRS;->a:I

    iget v0, v1, Lcom/jcraft/jsch/SftpATTRS;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jcraft/jsch/SftpATTRS;->b:J

    :cond_17
    iget v0, v1, Lcom/jcraft/jsch/SftpATTRS;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    iput v0, v1, Lcom/jcraft/jsch/SftpATTRS;->c:I

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    iput v0, v1, Lcom/jcraft/jsch/SftpATTRS;->d:I

    :cond_29
    iget v0, v1, Lcom/jcraft/jsch/SftpATTRS;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    iput v0, v1, Lcom/jcraft/jsch/SftpATTRS;->e:I

    :cond_35
    iget v0, v1, Lcom/jcraft/jsch/SftpATTRS;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    iput v0, v1, Lcom/jcraft/jsch/SftpATTRS;->f:I

    :cond_41
    iget v0, v1, Lcom/jcraft/jsch/SftpATTRS;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    iput v0, v1, Lcom/jcraft/jsch/SftpATTRS;->g:I

    :cond_4d
    iget v0, v1, Lcom/jcraft/jsch/SftpATTRS;->a:I

    const/high16 v2, -0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_84

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v2

    if-lez v2, :cond_84

    mul-int/lit8 v0, v2, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v1, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_61
    if-ge v0, v2, :cond_84

    iget-object v3, v1, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    mul-int/lit8 v4, v0, 0x2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v3, v1, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    :cond_84
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 8

    const/16 v6, 0x73

    const/16 v5, 0x78

    const/16 v4, 0x77

    const/16 v3, 0x72

    const/16 v2, 0x2d

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v1

    if-eqz v1, :cond_72

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1c
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_82

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_25
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_86

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2e
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_8a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_37
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_98

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_40
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_49
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_52
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_ae

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5b
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_64
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_72
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->e()Z

    move-result v1

    if-eqz v1, :cond_7e

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1c

    :cond_7e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1c

    :cond_82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_25

    :cond_86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2e

    :cond_8a
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_94

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_37

    :cond_94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_37

    :cond_98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_40

    :cond_9c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_49

    :cond_a0
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_aa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_52

    :cond_aa
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_52

    :cond_ae
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5b

    :cond_b2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_64

    :cond_b6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6d
.end method

.method a(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/Date;

    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->g:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .registers 4

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    and-int/lit16 v0, v0, -0x1000

    and-int/lit16 v1, p1, 0xfff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    return-void
.end method

.method b(Lcom/jcraft/jsch/Buffer;)V
    .registers 6

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/jcraft/jsch/SftpATTRS;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->a(J)V

    :cond_10
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->c:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->d:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    :cond_20
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    :cond_2b
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_36

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->f:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    :cond_36
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->g:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    :cond_41
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v1, v0, 0x2

    if-lez v1, :cond_71

    const/4 v0, 0x0

    :goto_50
    if-ge v0, v1, :cond_71

    iget-object v2, p0, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    mul-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_71
    return-void
.end method

.method c()I
    .registers 6

    const/4 v0, 0x4

    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    const/16 v0, 0xc

    :cond_9
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_11

    add-int/lit8 v0, v0, 0x8

    :cond_11
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_19

    add-int/lit8 v0, v0, 0x4

    :cond_19
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_21

    add-int/lit8 v0, v0, 0x8

    :cond_21
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    const/high16 v2, -0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_55

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v3, v1, 0x2

    if-lez v3, :cond_55

    const/4 v1, 0x0

    :goto_32
    if-ge v1, v3, :cond_55

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    mul-int/lit8 v4, v1, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_32

    :cond_55
    return v0
.end method

.method public d()Z
    .registers 3

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public e()Z
    .registers 3

    const v1, 0xa000

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->a:I

    return v0
.end method

.method public g()J
    .registers 3

    iget-wide v0, p0, Lcom/jcraft/jsch/SftpATTRS;->b:J

    return-wide v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->c:I

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->d:I

    return v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->e:I

    return v0
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->g:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
