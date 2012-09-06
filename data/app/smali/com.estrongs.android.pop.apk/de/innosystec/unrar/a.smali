.class public Lde/innosystec/unrar/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static a:Ljava/util/logging/Logger;

.field private static synthetic u:[I

.field private static synthetic v:[I


# instance fields
.field private b:Ljava/io/File;

.field private c:Lde/innosystec/unrar/b/a;

.field private d:Lde/innosystec/unrar/c;

.field private final e:Lde/innosystec/unrar/unpack/a;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/rarfile/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lde/innosystec/unrar/rarfile/l;

.field private h:Lde/innosystec/unrar/rarfile/k;

.field private i:Lde/innosystec/unrar/rarfile/f;

.field private j:Lde/innosystec/unrar/unpack/b;

.field private k:J

.field private l:I

.field private m:Z

.field private n:I

.field private o:J

.field private p:J

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/innosystec/unrar/rarfile/g;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lde/innosystec/unrar/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lde/innosystec/unrar/a;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lde/innosystec/unrar/b;Lde/innosystec/unrar/c;Z)V
    .registers 11

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    iput-object v1, p0, Lde/innosystec/unrar/a;->g:Lde/innosystec/unrar/rarfile/l;

    iput-object v1, p0, Lde/innosystec/unrar/a;->h:Lde/innosystec/unrar/rarfile/k;

    iput-object v1, p0, Lde/innosystec/unrar/a;->i:Lde/innosystec/unrar/rarfile/f;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lde/innosystec/unrar/a;->k:J

    iput-boolean v2, p0, Lde/innosystec/unrar/a;->m:Z

    iput v2, p0, Lde/innosystec/unrar/a;->n:I

    iput-wide v3, p0, Lde/innosystec/unrar/a;->o:J

    iput-wide v3, p0, Lde/innosystec/unrar/a;->p:J

    const-string v0, "GBK"

    iput-object v0, p0, Lde/innosystec/unrar/a;->q:Ljava/lang/String;

    iput-boolean v2, p0, Lde/innosystec/unrar/a;->r:Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/a;->s:Ljava/util/Map;

    iput-object p2, p0, Lde/innosystec/unrar/a;->q:Ljava/lang/String;

    iput-object p3, p0, Lde/innosystec/unrar/a;->t:Lde/innosystec/unrar/b;

    iput-boolean p5, p0, Lde/innosystec/unrar/a;->r:Z

    invoke-virtual {p0, p1}, Lde/innosystec/unrar/a;->a(Ljava/io/File;)V

    iput-object p4, p0, Lde/innosystec/unrar/a;->d:Lde/innosystec/unrar/c;

    new-instance v0, Lde/innosystec/unrar/unpack/a;

    invoke-direct {v0, p0}, Lde/innosystec/unrar/unpack/a;-><init>(Lde/innosystec/unrar/a;)V

    iput-object v0, p0, Lde/innosystec/unrar/a;->e:Lde/innosystec/unrar/unpack/a;

    return-void
.end method

.method private b(Lde/innosystec/unrar/rarfile/g;Ljava/io/OutputStream;)V
    .registers 10

    const-wide/16 v4, -0x1

    iget-object v0, p0, Lde/innosystec/unrar/a;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {v0, p2}, Lde/innosystec/unrar/unpack/a;->a(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lde/innosystec/unrar/a;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {v0, p1}, Lde/innosystec/unrar/unpack/a;->a(Lde/innosystec/unrar/rarfile/g;)V

    iget-object v1, p0, Lde/innosystec/unrar/a;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {p0}, Lde/innosystec/unrar/a;->f()Z

    move-result v0

    if-eqz v0, :cond_9e

    const/4 v0, 0x0

    :goto_15
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lde/innosystec/unrar/unpack/a;->a(J)V

    iget-object v0, p0, Lde/innosystec/unrar/a;->j:Lde/innosystec/unrar/unpack/b;

    if-nez v0, :cond_26

    new-instance v0, Lde/innosystec/unrar/unpack/b;

    iget-object v1, p0, Lde/innosystec/unrar/a;->e:Lde/innosystec/unrar/unpack/a;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/b;-><init>(Lde/innosystec/unrar/unpack/a;)V

    iput-object v0, p0, Lde/innosystec/unrar/a;->j:Lde/innosystec/unrar/unpack/b;

    :cond_26
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/g;->v()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lde/innosystec/unrar/a;->j:Lde/innosystec/unrar/unpack/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/b;->a([B)V

    :cond_32
    iget-object v0, p0, Lde/innosystec/unrar/a;->j:Lde/innosystec/unrar/unpack/b;

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/g;->s()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lde/innosystec/unrar/unpack/b;->a(J)V

    :try_start_3b
    iget-object v0, p0, Lde/innosystec/unrar/a;->j:Lde/innosystec/unrar/unpack/b;

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/g;->q()B

    move-result v1

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/g;->v()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lde/innosystec/unrar/unpack/b;->a(IZ)V

    iget-object v0, p0, Lde/innosystec/unrar/a;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/a;->c()Lde/innosystec/unrar/rarfile/g;

    move-result-object v2

    invoke-virtual {v2}, Lde/innosystec/unrar/rarfile/g;->t()Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lde/innosystec/unrar/a;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/a;->a()J

    move-result-wide v0

    xor-long/2addr v0, v4

    :goto_5b
    invoke-virtual {v2}, Lde/innosystec/unrar/rarfile/g;->m()I

    move-result v3

    int-to-long v4, v3

    cmp-long v4, v0, v4

    if-eqz v4, :cond_af

    new-instance v4, Lde/innosystec/unrar/exception/RarException;

    sget-object v5, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->crcError:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lde/innosystec/unrar/rarfile/g;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " expectedCRC = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",actualCRC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;Ljava/lang/String;)V

    throw v4
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_91} :catch_91

    :catch_91
    move-exception v0

    iget-object v1, p0, Lde/innosystec/unrar/a;->j:Lde/innosystec/unrar/unpack/b;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/b;->b()V

    instance-of v1, v0, Lde/innosystec/unrar/exception/RarException;

    if-eqz v1, :cond_a9

    check-cast v0, Lde/innosystec/unrar/exception/RarException;

    throw v0

    :cond_9e
    const/4 v0, -0x1

    goto/16 :goto_15

    :cond_a1
    :try_start_a1
    iget-object v0, p0, Lde/innosystec/unrar/a;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/a;->b()J
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a6} :catch_91

    move-result-wide v0

    xor-long/2addr v0, v4

    goto :goto_5b

    :cond_a9
    new-instance v1, Lde/innosystec/unrar/exception/RarException;

    invoke-direct {v1, v0}, Lde/innosystec/unrar/exception/RarException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_af
    return-void
.end method

.method static synthetic j()[I
    .registers 3

    sget-object v0, Lde/innosystec/unrar/a;->u:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->values()[Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->BEEA_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_4f

    :goto_15
    :try_start_15
    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->EA_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_4d

    :goto_1e
    :try_start_1e
    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->MAC_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_4b

    :goto_27
    :try_start_27
    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->NTACL_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_49

    :goto_30
    :try_start_30
    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->STREAM_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_47

    :goto_39
    :try_start_39
    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->UO_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_45

    :goto_42
    sput-object v0, Lde/innosystec/unrar/a;->u:[I

    goto :goto_4

    :catch_45
    move-exception v1

    goto :goto_42

    :catch_47
    move-exception v1

    goto :goto_39

    :catch_49
    move-exception v1

    goto :goto_30

    :catch_4b
    move-exception v1

    goto :goto_27

    :catch_4d
    move-exception v1

    goto :goto_1e

    :catch_4f
    move-exception v1

    goto :goto_15
.end method

.method static synthetic k()[I
    .registers 3

    sget-object v0, Lde/innosystec/unrar/a;->v:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->values()[Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->AvHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_7e

    :goto_15
    :try_start_15
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->CommHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_7c

    :goto_1e
    :try_start_1e
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->EndArcHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_7a

    :goto_28
    :try_start_28
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_31} :catch_78

    :goto_31
    :try_start_31
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MainHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3a} :catch_76

    :goto_3a
    :try_start_3a
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MarkHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_43} :catch_74

    :goto_43
    :try_start_43
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->NewSubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4d} :catch_72

    :goto_4d
    :try_start_4d
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ProtectHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_56} :catch_70

    :goto_56
    :try_start_56
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->SignHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_60} :catch_6e

    :goto_60
    :try_start_60
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->SubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_69} :catch_6c

    :goto_69
    sput-object v0, Lde/innosystec/unrar/a;->v:[I

    goto :goto_4

    :catch_6c
    move-exception v1

    goto :goto_69

    :catch_6e
    move-exception v1

    goto :goto_60

    :catch_70
    move-exception v1

    goto :goto_56

    :catch_72
    move-exception v1

    goto :goto_4d

    :catch_74
    move-exception v1

    goto :goto_43

    :catch_76
    move-exception v1

    goto :goto_3a

    :catch_78
    move-exception v1

    goto :goto_31

    :catch_7a
    move-exception v1

    goto :goto_28

    :catch_7c
    move-exception v1

    goto :goto_1e

    :catch_7e
    move-exception v1

    goto :goto_15
.end method

.method private l()V
    .registers 13

    const/16 v11, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x7

    iput-object v10, p0, Lde/innosystec/unrar/a;->g:Lde/innosystec/unrar/rarfile/l;

    iput-object v10, p0, Lde/innosystec/unrar/a;->h:Lde/innosystec/unrar/rarfile/k;

    iput-object v10, p0, Lde/innosystec/unrar/a;->i:Lde/innosystec/unrar/rarfile/f;

    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lde/innosystec/unrar/a;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput v3, p0, Lde/innosystec/unrar/a;->l:I

    iget-object v0, p0, Lde/innosystec/unrar/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    :cond_1e
    :goto_1e
    :pswitch_1e
    iget-object v0, p0, Lde/innosystec/unrar/a;->t:Lde/innosystec/unrar/b;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lde/innosystec/unrar/a;->t:Lde/innosystec/unrar/b;

    invoke-interface {v0}, Lde/innosystec/unrar/b;->a()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lde/innosystec/unrar/a;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_34
    :goto_34
    return-void

    :cond_35
    new-array v0, v1, [B

    iget-object v6, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v6}, Lde/innosystec/unrar/b/a;->a()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-gez v8, :cond_34

    iget-object v8, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v8, v0, v1}, Lde/innosystec/unrar/b/a;->a([BI)I

    move-result v8

    if-eqz v8, :cond_34

    new-instance v8, Lde/innosystec/unrar/rarfile/b;

    invoke-direct {v8, v0}, Lde/innosystec/unrar/rarfile/b;-><init>([B)V

    invoke-virtual {v8, v6, v7}, Lde/innosystec/unrar/rarfile/b;->a(J)V

    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/b;->i()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v0

    if-nez v0, :cond_5f

    new-instance v0, Lde/innosystec/unrar/exception/RarException;

    sget-object v1, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->wrongHeaderType:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v0

    :cond_5f
    invoke-static {}, Lde/innosystec/unrar/a;->k()[I

    move-result-object v6

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v0

    aget v0, v6, v0

    packed-switch v0, :pswitch_data_23c

    :pswitch_6c
    new-array v0, v2, [B

    iget-object v6, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v6, v0, v2}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v6, Lde/innosystec/unrar/rarfile/c;

    invoke-direct {v6, v8, v0}, Lde/innosystec/unrar/rarfile/c;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    invoke-static {}, Lde/innosystec/unrar/a;->k()[I

    move-result-object v0

    invoke-virtual {v6}, Lde/innosystec/unrar/rarfile/c;->i()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v7

    invoke-virtual {v7}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v7

    aget v0, v0, v7

    packed-switch v0, :pswitch_data_254

    :pswitch_89
    sget-object v0, Lde/innosystec/unrar/a;->a:Ljava/util/logging/Logger;

    const-string v1, "Unknown Header"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v0, Lde/innosystec/unrar/exception/RarException;

    sget-object v1, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->notRarArchive:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v0

    :pswitch_98
    new-instance v0, Lde/innosystec/unrar/rarfile/l;

    invoke-direct {v0, v8}, Lde/innosystec/unrar/rarfile/l;-><init>(Lde/innosystec/unrar/rarfile/b;)V

    iput-object v0, p0, Lde/innosystec/unrar/a;->g:Lde/innosystec/unrar/rarfile/l;

    iget-object v0, p0, Lde/innosystec/unrar/a;->g:Lde/innosystec/unrar/rarfile/l;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/l;->l()Z

    move-result v0

    if-nez v0, :cond_af

    new-instance v0, Lde/innosystec/unrar/exception/RarException;

    sget-object v1, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->badRarArchive:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v0

    :cond_af
    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    iget-object v6, p0, Lde/innosystec/unrar/a;->g:Lde/innosystec/unrar/rarfile/l;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    :pswitch_b8
    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/b;->c()Z

    move-result v0

    if-eqz v0, :cond_e2

    move v0, v1

    :goto_bf
    new-array v6, v0, [B

    iget-object v7, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v7, v6, v0}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v0, Lde/innosystec/unrar/rarfile/k;

    invoke-direct {v0, v8, v6}, Lde/innosystec/unrar/rarfile/k;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    iget-object v6, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lde/innosystec/unrar/a;->h:Lde/innosystec/unrar/rarfile/k;

    iget-object v0, p0, Lde/innosystec/unrar/a;->h:Lde/innosystec/unrar/rarfile/k;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/k;->o()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lde/innosystec/unrar/exception/RarException;

    sget-object v1, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->rarEncryptedException:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v0

    :cond_e2
    const/4 v0, 0x6

    goto :goto_bf

    :pswitch_e4
    new-array v0, v11, [B

    iget-object v6, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v6, v0, v11}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v6, Lde/innosystec/unrar/rarfile/o;

    invoke-direct {v6, v8, v0}, Lde/innosystec/unrar/rarfile/o;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    :pswitch_f7
    new-array v0, v1, [B

    iget-object v6, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v6, v0, v1}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v6, Lde/innosystec/unrar/rarfile/a;

    invoke-direct {v6, v8, v0}, Lde/innosystec/unrar/rarfile/a;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    :pswitch_10a
    const/4 v0, 0x6

    new-array v6, v0, [B

    iget-object v7, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v7, v6, v0}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v0, Lde/innosystec/unrar/rarfile/d;

    invoke-direct {v0, v8, v6}, Lde/innosystec/unrar/rarfile/d;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    iget-object v6, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/d;->e()J

    move-result-wide v6

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/d;->h()S

    move-result v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    iget-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v0, v6, v7}, Lde/innosystec/unrar/b/a;->a(J)V

    goto/16 :goto_1e

    :pswitch_12d
    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/b;->a()Z

    move-result v0

    if-eqz v0, :cond_238

    move v0, v2

    :goto_134
    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/b;->b()Z

    move-result v1

    if-eqz v1, :cond_13c

    add-int/lit8 v0, v0, 0x2

    :cond_13c
    if-lez v0, :cond_153

    new-array v1, v0, [B

    iget-object v2, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v2, v1, v0}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v0, Lde/innosystec/unrar/rarfile/f;

    invoke-direct {v0, v8, v1}, Lde/innosystec/unrar/rarfile/f;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    :goto_14a
    iget-object v1, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lde/innosystec/unrar/a;->i:Lde/innosystec/unrar/rarfile/f;

    goto/16 :goto_34

    :cond_153
    new-instance v0, Lde/innosystec/unrar/rarfile/f;

    invoke-direct {v0, v8, v10}, Lde/innosystec/unrar/rarfile/f;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    goto :goto_14a

    :pswitch_159
    invoke-virtual {v6}, Lde/innosystec/unrar/rarfile/c;->h()S

    move-result v0

    add-int/lit8 v0, v0, -0x7

    add-int/lit8 v0, v0, -0x4

    new-array v7, v0, [B

    iget-object v8, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v8, v7, v0}, Lde/innosystec/unrar/b/a;->a([BI)I

    iget-boolean v0, p0, Lde/innosystec/unrar/a;->r:Z

    if-eqz v0, :cond_176

    iget-object v0, p0, Lde/innosystec/unrar/a;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_176

    iput-boolean v3, p0, Lde/innosystec/unrar/a;->r:Z

    :cond_176
    new-instance v0, Lde/innosystec/unrar/rarfile/g;

    invoke-direct {v0, v6, v7, p0}, Lde/innosystec/unrar/rarfile/g;-><init>(Lde/innosystec/unrar/rarfile/c;[BLde/innosystec/unrar/a;)V

    iget-object v6, p0, Lde/innosystec/unrar/a;->s:Ljava/util/Map;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->n()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->e()J

    move-result-wide v6

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->h()S

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->r()J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v0, v6, v7}, Lde/innosystec/unrar/b/a;->a(J)V

    goto/16 :goto_1e

    :pswitch_19f
    invoke-virtual {v6}, Lde/innosystec/unrar/rarfile/c;->h()S

    move-result v0

    add-int/lit8 v0, v0, -0x7

    add-int/lit8 v0, v0, -0x4

    new-array v7, v0, [B

    iget-object v8, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v8, v7, v0}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v0, Lde/innosystec/unrar/rarfile/n;

    invoke-direct {v0, v6, v7}, Lde/innosystec/unrar/rarfile/n;-><init>(Lde/innosystec/unrar/rarfile/c;[B)V

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/n;->e()J

    move-result-wide v6

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/n;->h()S

    move-result v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    iget-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v0, v6, v7}, Lde/innosystec/unrar/b/a;->a(J)V

    goto/16 :goto_1e

    :pswitch_1c4
    const/4 v0, 0x3

    new-array v0, v0, [B

    iget-object v7, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    const/4 v8, 0x3

    invoke-interface {v7, v0, v8}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v7, Lde/innosystec/unrar/rarfile/p;

    invoke-direct {v7, v6, v0}, Lde/innosystec/unrar/rarfile/p;-><init>(Lde/innosystec/unrar/rarfile/c;[B)V

    invoke-virtual {v7}, Lde/innosystec/unrar/rarfile/p;->j()V

    invoke-static {}, Lde/innosystec/unrar/a;->j()[I

    move-result-object v0

    invoke-virtual {v7}, Lde/innosystec/unrar/rarfile/p;->n()Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    move-result-object v6

    invoke-virtual {v6}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_266

    goto/16 :goto_1e

    :pswitch_1e8
    const/16 v0, 0xa

    new-array v0, v0, [B

    iget-object v6, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    const/16 v8, 0xa

    invoke-interface {v6, v0, v8}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v6, Lde/innosystec/unrar/rarfile/e;

    invoke-direct {v6, v7, v0}, Lde/innosystec/unrar/rarfile/e;-><init>(Lde/innosystec/unrar/rarfile/p;[B)V

    invoke-virtual {v6}, Lde/innosystec/unrar/rarfile/e;->j()V

    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    :pswitch_202
    new-array v0, v11, [B

    iget-object v6, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v6, v0, v11}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v6, Lde/innosystec/unrar/rarfile/j;

    invoke-direct {v6, v7, v0}, Lde/innosystec/unrar/rarfile/j;-><init>(Lde/innosystec/unrar/rarfile/p;[B)V

    invoke-virtual {v6}, Lde/innosystec/unrar/rarfile/j;->j()V

    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    :pswitch_218
    invoke-virtual {v7}, Lde/innosystec/unrar/rarfile/p;->h()S

    move-result v0

    add-int/lit8 v0, v0, -0x7

    add-int/lit8 v0, v0, -0x4

    add-int/lit8 v0, v0, -0x3

    new-array v6, v0, [B

    iget-object v8, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v8, v6, v0}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v0, Lde/innosystec/unrar/rarfile/q;

    invoke-direct {v0, v7, v6}, Lde/innosystec/unrar/rarfile/q;-><init>(Lde/innosystec/unrar/rarfile/p;[B)V

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/q;->j()V

    iget-object v6, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    :cond_238
    move v0, v3

    goto/16 :goto_134

    nop

    :pswitch_data_23c
    .packed-switch 0x1
        :pswitch_b8
        :pswitch_98
        :pswitch_6c
        :pswitch_10a
        :pswitch_f7
        :pswitch_6c
        :pswitch_6c
        :pswitch_e4
        :pswitch_6c
        :pswitch_12d
    .end packed-switch

    :pswitch_data_254
    .packed-switch 0x3
        :pswitch_159
        :pswitch_89
        :pswitch_89
        :pswitch_1c4
        :pswitch_19f
        :pswitch_89
        :pswitch_159
    .end packed-switch

    :pswitch_data_266
    .packed-switch 0x1
        :pswitch_1e8
        :pswitch_218
        :pswitch_202
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method private m()V
    .registers 16

    const/4 v14, 0x3

    const/16 v13, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x7

    const/4 v4, 0x0

    iget-object v0, p0, Lde/innosystec/unrar/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    new-array v0, v4, [B

    iget-object v1, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v1}, Lde/innosystec/unrar/b/a;->a()J

    move-result-wide v7

    :cond_14
    :goto_14
    :pswitch_14
    iget-object v1, p0, Lde/innosystec/unrar/a;->t:Lde/innosystec/unrar/b;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lde/innosystec/unrar/a;->t:Lde/innosystec/unrar/b;

    invoke-interface {v1}, Lde/innosystec/unrar/b;->a()Z

    move-result v1

    if-eqz v1, :cond_26

    :cond_20
    iget-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v0, v7, v8}, Lde/innosystec/unrar/b/a;->a(J)V

    :goto_25
    return-void

    :cond_26
    new-array v1, v2, [B

    iget-object v9, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v9}, Lde/innosystec/unrar/b/a;->a()J

    move-result-wide v9

    cmp-long v11, v9, v5

    if-gez v11, :cond_20

    iget-object v11, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v11, v1, v2}, Lde/innosystec/unrar/b/a;->a([BI)I

    move-result v11

    if-eqz v11, :cond_20

    new-instance v11, Lde/innosystec/unrar/rarfile/b;

    invoke-direct {v11, v1}, Lde/innosystec/unrar/rarfile/b;-><init>([B)V

    invoke-virtual {v11, v9, v10}, Lde/innosystec/unrar/rarfile/b;->a(J)V

    invoke-virtual {v11}, Lde/innosystec/unrar/rarfile/b;->i()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v1

    if-nez v1, :cond_50

    new-instance v0, Lde/innosystec/unrar/exception/RarException;

    sget-object v1, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->wrongHeaderType:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v0

    :cond_50
    invoke-static {}, Lde/innosystec/unrar/a;->k()[I

    move-result-object v9

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    aget v1, v9, v1

    packed-switch v1, :pswitch_data_210

    :pswitch_5d
    new-array v1, v3, [B

    iget-object v9, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v9, v1, v3}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v9, Lde/innosystec/unrar/rarfile/c;

    invoke-direct {v9, v11, v1}, Lde/innosystec/unrar/rarfile/c;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    invoke-static {}, Lde/innosystec/unrar/a;->k()[I

    move-result-object v1

    invoke-virtual {v9}, Lde/innosystec/unrar/rarfile/c;->i()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v10

    invoke-virtual {v10}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v10

    aget v1, v1, v10

    packed-switch v1, :pswitch_data_228

    :pswitch_7a
    sget-object v0, Lde/innosystec/unrar/a;->a:Ljava/util/logging/Logger;

    const-string v1, "Unknown Header"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v0, Lde/innosystec/unrar/exception/RarException;

    sget-object v1, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->notRarArchive:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v0

    :pswitch_89
    new-instance v1, Lde/innosystec/unrar/rarfile/l;

    invoke-direct {v1, v11}, Lde/innosystec/unrar/rarfile/l;-><init>(Lde/innosystec/unrar/rarfile/b;)V

    iput-object v1, p0, Lde/innosystec/unrar/a;->g:Lde/innosystec/unrar/rarfile/l;

    iget-object v1, p0, Lde/innosystec/unrar/a;->g:Lde/innosystec/unrar/rarfile/l;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/l;->l()Z

    move-result v1

    if-nez v1, :cond_14

    new-instance v0, Lde/innosystec/unrar/exception/RarException;

    sget-object v1, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->badRarArchive:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v0

    :pswitch_a0
    invoke-virtual {v11}, Lde/innosystec/unrar/rarfile/b;->c()Z

    move-result v1

    if-eqz v1, :cond_b5

    move v1, v2

    :goto_a7
    new-array v9, v1, [B

    iget-object v10, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v10, v9, v1}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v1, Lde/innosystec/unrar/rarfile/k;

    invoke-direct {v1, v11, v9}, Lde/innosystec/unrar/rarfile/k;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    goto/16 :goto_14

    :cond_b5
    const/4 v1, 0x6

    goto :goto_a7

    :pswitch_b7
    new-array v1, v13, [B

    iget-object v9, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v9, v1, v13}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v9, Lde/innosystec/unrar/rarfile/o;

    invoke-direct {v9, v11, v1}, Lde/innosystec/unrar/rarfile/o;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    goto/16 :goto_14

    :pswitch_c5
    new-array v1, v2, [B

    iget-object v9, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v9, v1, v2}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v9, Lde/innosystec/unrar/rarfile/a;

    invoke-direct {v9, v11, v1}, Lde/innosystec/unrar/rarfile/a;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    goto/16 :goto_14

    :pswitch_d3
    const/4 v1, 0x6

    new-array v9, v1, [B

    iget-object v10, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v10, v9, v1}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v1, Lde/innosystec/unrar/rarfile/d;

    invoke-direct {v1, v11, v9}, Lde/innosystec/unrar/rarfile/d;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/d;->e()J

    move-result-wide v9

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/d;->h()S

    move-result v1

    int-to-long v11, v1

    add-long/2addr v9, v11

    iget-object v1, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v1, v9, v10}, Lde/innosystec/unrar/b/a;->a(J)V

    goto/16 :goto_14

    :pswitch_f1
    invoke-virtual {v11}, Lde/innosystec/unrar/rarfile/b;->a()Z

    move-result v1

    if-eqz v1, :cond_20c

    move v1, v3

    :goto_f8
    invoke-virtual {v11}, Lde/innosystec/unrar/rarfile/b;->b()Z

    move-result v2

    if-eqz v2, :cond_100

    add-int/lit8 v1, v1, 0x2

    :cond_100
    if-lez v1, :cond_128

    new-array v2, v1, [B

    iget-object v3, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v3, v2, v1}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v1, Lde/innosystec/unrar/rarfile/f;

    invoke-direct {v1, v11, v2}, Lde/innosystec/unrar/rarfile/f;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    :goto_10e
    iget-boolean v1, p0, Lde/innosystec/unrar/a;->r:Z

    if-eqz v1, :cond_121

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/estrongs/android/a/a;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11f

    iput-object v0, p0, Lde/innosystec/unrar/a;->q:Ljava/lang/String;

    :cond_11f
    iput-boolean v4, p0, Lde/innosystec/unrar/a;->r:Z

    :cond_121
    iget-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v0, v7, v8}, Lde/innosystec/unrar/b/a;->a(J)V

    goto/16 :goto_25

    :cond_128
    new-instance v1, Lde/innosystec/unrar/rarfile/f;

    const/4 v2, 0x0

    invoke-direct {v1, v11, v2}, Lde/innosystec/unrar/rarfile/f;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    goto :goto_10e

    :pswitch_12f
    invoke-virtual {v9}, Lde/innosystec/unrar/rarfile/c;->h()S

    move-result v1

    add-int/lit8 v1, v1, -0x7

    add-int/lit8 v1, v1, -0x4

    new-array v10, v1, [B

    iget-object v11, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v11, v10, v1}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v1, Lde/innosystec/unrar/rarfile/i;

    invoke-direct {v1, v9, v10, p0}, Lde/innosystec/unrar/rarfile/i;-><init>(Lde/innosystec/unrar/rarfile/c;[BLde/innosystec/unrar/a;)V

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/i;->o()Z

    move-result v9

    if-eqz v9, :cond_151

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/i;->q()[B

    move-result-object v9

    invoke-static {v0, v9}, Lcom/estrongs/android/a/a;->a([B[B)[B

    move-result-object v0

    :cond_151
    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/i;->e()J

    move-result-wide v9

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/i;->h()S

    move-result v11

    int-to-long v11, v11

    add-long/2addr v9, v11

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/i;->m()J

    move-result-wide v11

    add-long/2addr v9, v11

    iget-object v1, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v1, v9, v10}, Lde/innosystec/unrar/b/a;->a(J)V

    array-length v1, v0

    const/16 v9, 0x3e8

    if-lt v1, v9, :cond_14

    iget-boolean v1, p0, Lde/innosystec/unrar/a;->r:Z

    if-eqz v1, :cond_14

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/estrongs/android/a/a;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17b

    iput-object v0, p0, Lde/innosystec/unrar/a;->q:Ljava/lang/String;

    :cond_17b
    iput-boolean v4, p0, Lde/innosystec/unrar/a;->r:Z

    iget-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v0, v7, v8}, Lde/innosystec/unrar/b/a;->a(J)V

    goto/16 :goto_25

    :pswitch_184
    invoke-virtual {v9}, Lde/innosystec/unrar/rarfile/c;->h()S

    move-result v1

    add-int/lit8 v1, v1, -0x7

    add-int/lit8 v1, v1, -0x4

    new-array v10, v1, [B

    iget-object v11, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v11, v10, v1}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v1, Lde/innosystec/unrar/rarfile/n;

    invoke-direct {v1, v9, v10}, Lde/innosystec/unrar/rarfile/n;-><init>(Lde/innosystec/unrar/rarfile/c;[B)V

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/n;->e()J

    move-result-wide v9

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/n;->h()S

    move-result v1

    int-to-long v11, v1

    add-long/2addr v9, v11

    iget-object v1, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v1, v9, v10}, Lde/innosystec/unrar/b/a;->a(J)V

    goto/16 :goto_14

    :pswitch_1a9
    new-array v1, v14, [B

    iget-object v10, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v10, v1, v14}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v10, Lde/innosystec/unrar/rarfile/p;

    invoke-direct {v10, v9, v1}, Lde/innosystec/unrar/rarfile/p;-><init>(Lde/innosystec/unrar/rarfile/c;[B)V

    invoke-virtual {v10}, Lde/innosystec/unrar/rarfile/p;->j()V

    invoke-static {}, Lde/innosystec/unrar/a;->j()[I

    move-result-object v1

    invoke-virtual {v10}, Lde/innosystec/unrar/rarfile/p;->n()Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    move-result-object v9

    invoke-virtual {v9}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v9

    aget v1, v1, v9

    packed-switch v1, :pswitch_data_23a

    goto/16 :goto_14

    :pswitch_1cb
    const/16 v1, 0xa

    new-array v1, v1, [B

    iget-object v9, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    const/16 v11, 0xa

    invoke-interface {v9, v1, v11}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v9, Lde/innosystec/unrar/rarfile/e;

    invoke-direct {v9, v10, v1}, Lde/innosystec/unrar/rarfile/e;-><init>(Lde/innosystec/unrar/rarfile/p;[B)V

    invoke-virtual {v9}, Lde/innosystec/unrar/rarfile/e;->j()V

    goto/16 :goto_14

    :pswitch_1e0
    new-array v1, v13, [B

    iget-object v9, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v9, v1, v13}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v9, Lde/innosystec/unrar/rarfile/j;

    invoke-direct {v9, v10, v1}, Lde/innosystec/unrar/rarfile/j;-><init>(Lde/innosystec/unrar/rarfile/p;[B)V

    invoke-virtual {v9}, Lde/innosystec/unrar/rarfile/j;->j()V

    goto/16 :goto_14

    :pswitch_1f1
    invoke-virtual {v10}, Lde/innosystec/unrar/rarfile/p;->h()S

    move-result v1

    add-int/lit8 v1, v1, -0x7

    add-int/lit8 v1, v1, -0x4

    add-int/lit8 v1, v1, -0x3

    new-array v9, v1, [B

    iget-object v11, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v11, v9, v1}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v1, Lde/innosystec/unrar/rarfile/q;

    invoke-direct {v1, v10, v9}, Lde/innosystec/unrar/rarfile/q;-><init>(Lde/innosystec/unrar/rarfile/p;[B)V

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/q;->j()V

    goto/16 :goto_14

    :cond_20c
    move v1, v4

    goto/16 :goto_f8

    nop

    :pswitch_data_210
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_89
        :pswitch_5d
        :pswitch_d3
        :pswitch_c5
        :pswitch_5d
        :pswitch_5d
        :pswitch_b7
        :pswitch_5d
        :pswitch_f1
    .end packed-switch

    :pswitch_data_228
    .packed-switch 0x3
        :pswitch_12f
        :pswitch_7a
        :pswitch_7a
        :pswitch_1a9
        :pswitch_184
        :pswitch_7a
        :pswitch_12f
    .end packed-switch

    :pswitch_data_23a
    .packed-switch 0x1
        :pswitch_1cb
        :pswitch_1f1
        :pswitch_1e0
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/a;->b:Ljava/io/File;

    return-object v0
.end method

.method public a(I)V
    .registers 7

    if-lez p1, :cond_15

    iget-wide v0, p0, Lde/innosystec/unrar/a;->p:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lde/innosystec/unrar/a;->p:J

    iget-object v0, p0, Lde/innosystec/unrar/a;->d:Lde/innosystec/unrar/c;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lde/innosystec/unrar/a;->d:Lde/innosystec/unrar/c;

    iget-wide v1, p0, Lde/innosystec/unrar/a;->p:J

    iget-wide v3, p0, Lde/innosystec/unrar/a;->o:J

    invoke-interface {v0, v1, v2, v3, v4}, Lde/innosystec/unrar/c;->a(JJ)V

    :cond_15
    return-void
.end method

.method public a(Lde/innosystec/unrar/c;)V
    .registers 2

    iput-object p1, p0, Lde/innosystec/unrar/a;->d:Lde/innosystec/unrar/c;

    return-void
.end method

.method public a(Lde/innosystec/unrar/rarfile/g;Ljava/io/OutputStream;)V
    .registers 7

    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lde/innosystec/unrar/a;->s:Ljava/util/Map;

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/g;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    new-instance v0, Lde/innosystec/unrar/exception/RarException;

    sget-object v1, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->headerNotInArchive:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v0

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lde/innosystec/unrar/a;->s:Ljava/util/Map;

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/g;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/rarfile/g;

    invoke-direct {p0, v0, p2}, Lde/innosystec/unrar/a;->b(Lde/innosystec/unrar/rarfile/g;Ljava/io/OutputStream;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to extract "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/g;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    instance-of v1, v0, Lde/innosystec/unrar/exception/RarException;

    if-eqz v1, :cond_5d

    check-cast v0, Lde/innosystec/unrar/exception/RarException;

    throw v0

    :cond_5d
    new-instance v1, Lde/innosystec/unrar/exception/RarException;

    invoke-direct {v1, v0}, Lde/innosystec/unrar/exception/RarException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method a(Ljava/io/File;)V
    .registers 8

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lde/innosystec/unrar/a;->b:Ljava/io/File;

    iput-wide v0, p0, Lde/innosystec/unrar/a;->o:J

    iput-wide v0, p0, Lde/innosystec/unrar/a;->p:J

    invoke-virtual {p0}, Lde/innosystec/unrar/a;->close()V

    new-instance v0, Lde/innosystec/unrar/b/c;

    invoke-direct {v0, p1}, Lde/innosystec/unrar/b/c;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    iget-boolean v0, p0, Lde/innosystec/unrar/a;->r:Z

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lde/innosystec/unrar/a;->m()V

    :cond_19
    :try_start_19
    invoke-direct {p0}, Lde/innosystec/unrar/a;->l()V
    :try_end_1c
    .catch Lde/innosystec/unrar/exception/RarException; {:try_start_19 .. :try_end_1c} :catch_36
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_38

    :goto_1c
    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lde/innosystec/unrar/a;->d:Lde/innosystec/unrar/c;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lde/innosystec/unrar/a;->d:Lde/innosystec/unrar/c;

    iget-wide v1, p0, Lde/innosystec/unrar/a;->p:J

    iget-wide v3, p0, Lde/innosystec/unrar/a;->o:J

    invoke-interface {v0, v1, v2, v3, v4}, Lde/innosystec/unrar/c;->a(JJ)V

    :cond_35
    return-void

    :catch_36
    move-exception v0

    throw v0

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lde/innosystec/unrar/a;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "exception in archive constructor maybe file is encrypted or currupt"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c

    :cond_46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/rarfile/b;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/b;->i()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v2

    sget-object v3, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    if-ne v2, v3, :cond_22

    iget-wide v2, p0, Lde/innosystec/unrar/a;->o:J

    check-cast v0, Lde/innosystec/unrar/rarfile/g;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->r()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lde/innosystec/unrar/a;->o:J

    goto :goto_22
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lde/innosystec/unrar/a;->q:Ljava/lang/String;

    return-void
.end method

.method public b()Lde/innosystec/unrar/b/a;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    return-object v0
.end method

.method public c()Lde/innosystec/unrar/rarfile/g;
    .registers 5

    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_6
    iget v0, p0, Lde/innosystec/unrar/a;->l:I

    if-lt v0, v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    iget v2, p0, Lde/innosystec/unrar/a;->l:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lde/innosystec/unrar/a;->l:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/rarfile/b;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/b;->i()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v2

    sget-object v3, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    if-ne v2, v3, :cond_6

    check-cast v0, Lde/innosystec/unrar/rarfile/g;

    goto :goto_b
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v0}, Lde/innosystec/unrar/b/a;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    :cond_c
    return-void
.end method

.method public d()Lde/innosystec/unrar/c;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/a;->d:Lde/innosystec/unrar/c;

    return-object v0
.end method

.method public e()Lde/innosystec/unrar/rarfile/k;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/a;->h:Lde/innosystec/unrar/rarfile/k;

    return-object v0
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/a;->g:Lde/innosystec/unrar/rarfile/l;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/l;->m()Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Lde/innosystec/unrar/a;->r:Z

    return v0
.end method

.method public i()Lde/innosystec/unrar/b;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/a;->t:Lde/innosystec/unrar/b;

    return-object v0
.end method
