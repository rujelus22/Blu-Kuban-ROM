.class public Lcom/estrongs/io/archive/aeszip/a;
.super Ljava/lang/Object;


# static fields
.field protected static a:I

.field static final synthetic f:Z

.field private static final j:Ljava/util/Set;

.field private static final k:Ljava/util/List;

.field private static final m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected b:Lde/a/a/a/a/h;

.field protected c:J

.field protected d:Ljava/io/File;

.field protected e:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/a/a/a/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private n:Lcom/estrongs/io/archive/aeszip/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/estrongs/io/archive/aeszip/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/estrongs/io/archive/aeszip/a;->f:Z

    const/16 v0, 0x2800

    sput v0, Lcom/estrongs/io/archive/aeszip/a;->a:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/estrongs/io/archive/aeszip/a;->j:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/estrongs/io/archive/aeszip/a;->k:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/estrongs/io/archive/aeszip/a;->m:Ljava/util/HashMap;

    return-void

    :cond_27
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;ZLcom/estrongs/io/archive/aeszip/b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GBK"

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/io/archive/aeszip/a;->h:Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->i:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->l:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/io/archive/aeszip/a;->d:Ljava/io/File;

    new-instance v0, Lde/a/a/a/a/h;

    invoke-direct {v0, p1}, Lde/a/a/a/a/h;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    iput-object p2, p0, Lcom/estrongs/io/archive/aeszip/a;->g:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/estrongs/io/archive/aeszip/a;->h:Z

    iput-object p4, p0, Lcom/estrongs/io/archive/aeszip/a;->n:Lcom/estrongs/io/archive/aeszip/b;

    invoke-virtual {p0}, Lcom/estrongs/io/archive/aeszip/a;->a()V

    iget-boolean v0, p0, Lcom/estrongs/io/archive/aeszip/a;->h:Z

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lcom/estrongs/io/archive/aeszip/a;->h()V

    :cond_2e
    invoke-direct {p0}, Lcom/estrongs/io/archive/aeszip/a;->i()V

    return-void
.end method

.method public static final a(J)I
    .registers 7

    const-wide/32 v0, 0x10000

    const-wide/16 v2, 0x2000

    cmp-long v4, p0, v0

    if-lez v4, :cond_c

    move-wide p0, v0

    :cond_a
    :goto_a
    long-to-int v0, p0

    return v0

    :cond_c
    cmp-long v0, p0, v2

    if-gez v0, :cond_a

    move-wide p0, v2

    goto :goto_a
.end method

.method static synthetic a(Ljava/io/InputStream;J[B)J
    .registers 6

    invoke-static {p0, p1, p2, p3}, Lcom/estrongs/io/archive/aeszip/a;->b(Ljava/io/InputStream;J[B)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/estrongs/io/archive/aeszip/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/io/archive/aeszip/a;->f()V

    return-void
.end method

.method public static a(Lde/a/a/a/a/i;)V
    .registers 5

    invoke-virtual {p0}, Lde/a/a/a/a/i;->g()Lde/a/a/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/a/a/a/a/g;->i()S

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_2b

    if-eqz v0, :cond_2b

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2b

    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The compress method is not supported - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/a/a/a/a/i;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-virtual {p0}, Lde/a/a/a/a/i;->g()Lde/a/a/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/a/a/a/a/g;->d()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-virtual {v0}, Lde/a/a/a/a/g;->m()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-virtual {v0}, Lde/a/a/a/a/g;->j()B

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7e

    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NOT_SUPPORTED_ENC_ALG("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lde/a/a/a/a/i;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_65
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NOT_SUPPORTED_ENC_ALG - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/a/a/a/a/i;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7e
    return-void
.end method

.method static synthetic a(Ljava/lang/String;JJ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/estrongs/io/archive/aeszip/a;->b(Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic a(Ljava/util/zip/Inflater;)V
    .registers 1

    invoke-static {p0}, Lcom/estrongs/io/archive/aeszip/a;->b(Ljava/util/zip/Inflater;)V

    return-void
.end method

.method private static b(Ljava/io/InputStream;J[B)J
    .registers 14

    const-wide/16 v3, 0x0

    move-wide v1, v3

    :goto_3
    sub-long v5, p1, v1

    cmp-long v0, v5, v3

    if-gtz v0, :cond_a

    :cond_9
    return-wide v1

    :cond_a
    const/4 v7, 0x0

    array-length v0, p3

    int-to-long v8, v0

    cmp-long v0, v5, v8

    if-gez v0, :cond_1f

    long-to-int v0, v5

    :goto_12
    invoke-virtual {p0, p3, v7, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v5, v3

    if-ltz v0, :cond_9

    add-long v0, v1, v5

    move-wide v1, v0

    goto :goto_3

    :cond_1f
    array-length v0, p3

    goto :goto_12
.end method

.method private static b(Ljava/lang/String;JJ)V
    .registers 8

    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CRC32 Error - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",expectedCrc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",actualCrc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Ljava/util/zip/Inflater;)V
    .registers 4

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->reset()V

    sget-object v1, Lcom/estrongs/io/archive/aeszip/a;->k:Ljava/util/List;

    monitor-enter v1

    :try_start_6
    sget-object v0, Lcom/estrongs/io/archive/aeszip/a;->k:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/io/archive/aeszip/a;->j:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0
.end method

.method static synthetic e()Ljava/util/zip/Inflater;
    .registers 1

    invoke-static {}, Lcom/estrongs/io/archive/aeszip/a;->g()Ljava/util/zip/Inflater;

    move-result-object v0

    return-object v0
.end method

.method private final f()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "ZIP file has been closed"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private static g()Ljava/util/zip/Inflater;
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/io/archive/aeszip/a;->k:Ljava/util/List;

    monitor-enter v1

    :try_start_4
    sget-object v2, Lcom/estrongs/io/archive/aeszip/a;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1f

    :goto_10
    if-nez v0, :cond_18

    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    :cond_18
    sget-object v2, Lcom/estrongs/io/archive/aeszip/a;->j:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-object v0

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/Inflater;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    if-eqz v0, :cond_a

    goto :goto_10

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_31

    throw v0
.end method

.method private h()V
    .registers 16

    invoke-virtual {p0}, Lcom/estrongs/io/archive/aeszip/a;->d()S

    move-result v4

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    iget-wide v1, p0, Lcom/estrongs/io/archive/aeszip/a;->c:J

    invoke-virtual {v0, v1, v2}, Lde/a/a/a/a/h;->a(J)I

    move-result v0

    const/4 v1, 0x0

    new-array v3, v1, [B

    int-to-long v1, v0

    const/4 v0, 0x0

    move v12, v0

    move-object v0, v3

    move-wide v13, v1

    move-wide v2, v13

    move v1, v12

    :goto_16
    if-lt v1, v4, :cond_2d

    :cond_18
    iget-boolean v1, p0, Lcom/estrongs/io/archive/aeszip/a;->h:Z

    if-eqz v1, :cond_2c

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/estrongs/android/a/a;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->g:Ljava/lang/String;

    :cond_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/io/archive/aeszip/a;->h:Z

    :cond_2c
    return-void

    :cond_2d
    iget-object v5, p0, Lcom/estrongs/io/archive/aeszip/a;->n:Lcom/estrongs/io/archive/aeszip/b;

    if-eqz v5, :cond_39

    iget-object v5, p0, Lcom/estrongs/io/archive/aeszip/a;->n:Lcom/estrongs/io/archive/aeszip/b;

    invoke-interface {v5}, Lcom/estrongs/io/archive/aeszip/b;->a()Z

    move-result v5

    if-nez v5, :cond_2c

    :cond_39
    iget-object v5, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    invoke-virtual {v5, v2, v3}, Lde/a/a/a/a/h;->a(J)I

    move-result v5

    int-to-long v5, v5

    const-wide/32 v7, 0x2014b50

    cmp-long v5, v5, v7

    if-eqz v5, :cond_68

    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "expected CENSIC not found at entry no "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " in central directory at end of zip file at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
    iget-object v5, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v6, 0x1c

    add-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Lde/a/a/a/a/h;->b(J)S

    move-result v5

    iget-object v6, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v7, 0x1e

    add-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Lde/a/a/a/a/h;->b(J)S

    move-result v6

    iget-object v7, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v8, 0x20

    add-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Lde/a/a/a/a/h;->b(J)S

    move-result v7

    iget-object v8, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v9, 0x2a

    add-long/2addr v9, v2

    invoke-virtual {v8, v9, v10}, Lde/a/a/a/a/h;->a(J)I

    move-result v8

    int-to-long v8, v8

    iget-object v10, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    invoke-virtual {v10, v8, v9}, Lde/a/a/a/a/h;->a(J)I

    move-result v8

    int-to-long v8, v8

    const-wide/32 v10, 0x4034b50

    cmp-long v8, v8, v10

    if-eqz v8, :cond_b2

    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected LOCSIC not found at alleged position of data for file no "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b2
    iget-object v8, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v9, 0x2e

    add-long/2addr v9, v2

    invoke-virtual {v8, v9, v10, v5}, Lde/a/a/a/a/h;->a(JI)[B

    move-result-object v8

    invoke-static {v0, v8}, Lcom/estrongs/android/a/a;->a([B[B)[B

    move-result-object v0

    array-length v8, v0

    const/16 v9, 0x3e8

    if-ge v8, v9, :cond_18

    const-wide/16 v8, 0x2e

    add-long/2addr v2, v8

    int-to-long v8, v5

    add-long/2addr v2, v8

    int-to-long v5, v6

    add-long/2addr v2, v5

    int-to-long v5, v7

    add-long/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_16
.end method

.method private i()V
    .registers 16

    invoke-virtual {p0}, Lcom/estrongs/io/archive/aeszip/a;->d()S

    move-result v4

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    iget-wide v1, p0, Lcom/estrongs/io/archive/aeszip/a;->c:J

    invoke-virtual {v0, v1, v2}, Lde/a/a/a/a/h;->a(J)I

    move-result v0

    int-to-long v1, v0

    const/4 v0, 0x0

    move-wide v13, v1

    move-wide v2, v13

    move v1, v0

    :goto_11
    if-lt v1, v4, :cond_14

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->n:Lcom/estrongs/io/archive/aeszip/b;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->n:Lcom/estrongs/io/archive/aeszip/b;

    invoke-interface {v0}, Lcom/estrongs/io/archive/aeszip/b;->a()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_13

    :cond_26
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    invoke-virtual {v0, v2, v3}, Lde/a/a/a/a/h;->a(J)I

    move-result v0

    int-to-long v5, v0

    const-wide/32 v7, 0x2014b50

    cmp-long v0, v5, v7

    if-eqz v0, :cond_55

    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "expected CENSIC not found at entry no "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " in central directory at end of zip file at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v5, 0x1c

    add-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Lde/a/a/a/a/h;->b(J)S

    move-result v5

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v6, 0x1e

    add-long/2addr v6, v2

    invoke-virtual {v0, v6, v7}, Lde/a/a/a/a/h;->b(J)S

    move-result v6

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v7, 0x20

    add-long/2addr v7, v2

    invoke-virtual {v0, v7, v8}, Lde/a/a/a/a/h;->b(J)S

    move-result v7

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v8, 0x2a

    add-long/2addr v8, v2

    invoke-virtual {v0, v8, v9}, Lde/a/a/a/a/h;->a(J)I

    move-result v0

    int-to-long v8, v0

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    invoke-virtual {v0, v8, v9}, Lde/a/a/a/a/h;->a(J)I

    move-result v0

    int-to-long v8, v0

    const-wide/32 v10, 0x4034b50

    cmp-long v0, v8, v10

    if-eqz v0, :cond_9f

    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected LOCSIC not found at alleged position of data for file no "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9f
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v8, 0x2e

    add-long/2addr v8, v2

    invoke-virtual {v0, v8, v9, v5}, Lde/a/a/a/a/h;->a(JI)[B

    move-result-object v0

    new-instance v8, Lde/a/a/a/a/g;

    iget-object v9, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    invoke-direct {v8, v9, v2, v3}, Lde/a/a/a/a/g;-><init>(Lde/a/a/a/a/h;J)V

    new-instance v9, Ljava/lang/String;

    iget-object v10, p0, Lcom/estrongs/io/archive/aeszip/a;->g:Ljava/lang/String;

    invoke-direct {v9, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10f

    new-instance v0, Lde/a/a/a/a/i;

    const/4 v10, 0x0

    invoke-direct {v0, v9, v10}, Lde/a/a/a/a/i;-><init>(Ljava/lang/String;Lde/a/a/a/a/g;)V

    :goto_c4
    iget-object v9, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v10, 0xc

    add-long/2addr v10, v2

    invoke-virtual {v9, v10, v11}, Lde/a/a/a/a/h;->a(J)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v9, v10}, Lde/a/a/a/a/i;->b(J)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lde/a/a/a/a/i;->setTime(J)V

    invoke-virtual {v8}, Lde/a/a/a/a/g;->d()Z

    move-result v9

    if-eqz v9, :cond_128

    invoke-virtual {v8}, Lde/a/a/a/a/g;->i()S

    move-result v9

    invoke-virtual {v0, v9}, Lde/a/a/a/a/i;->setMethod(I)V

    invoke-virtual {v8}, Lde/a/a/a/a/g;->f()J

    move-result-wide v9

    invoke-virtual {v8}, Lde/a/a/a/a/g;->k()I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v9, v11

    long-to-int v9, v9

    invoke-virtual {v8}, Lde/a/a/a/a/g;->l()S

    move-result v8

    add-int/2addr v8, v9

    invoke-virtual {v0, v8}, Lde/a/a/a/a/i;->a(I)V

    invoke-virtual {v0}, Lde/a/a/a/a/i;->a()V

    :goto_f8
    iget-object v8, p0, Lcom/estrongs/io/archive/aeszip/a;->i:Ljava/util/Map;

    invoke-virtual {v0}, Lde/a/a/a/a/i;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x2e

    add-long/2addr v2, v8

    int-to-long v8, v5

    add-long/2addr v2, v8

    int-to-long v5, v6

    add-long/2addr v2, v5

    int-to-long v5, v7

    add-long/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_11

    :cond_10f
    new-instance v0, Lde/a/a/a/a/i;

    invoke-direct {v0, v9, v8}, Lde/a/a/a/a/i;-><init>(Ljava/lang/String;Lde/a/a/a/a/g;)V

    invoke-virtual {v8}, Lde/a/a/a/a/g;->b()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v0, v9, v10}, Lde/a/a/a/a/i;->setCompressedSize(J)V

    invoke-virtual {v8}, Lde/a/a/a/a/g;->c()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v0, v9, v10}, Lde/a/a/a/a/i;->setSize(J)V

    invoke-static {v0}, Lcom/estrongs/io/archive/aeszip/a;->a(Lde/a/a/a/a/i;)V

    goto :goto_c4

    :cond_128
    invoke-virtual {v8}, Lde/a/a/a/a/g;->i()S

    move-result v9

    invoke-virtual {v0, v9}, Lde/a/a/a/a/i;->setMethod(I)V

    invoke-virtual {v8}, Lde/a/a/a/a/g;->i()S

    move-result v9

    invoke-virtual {v0, v9}, Lde/a/a/a/a/i;->b(I)V

    invoke-virtual {v8}, Lde/a/a/a/a/g;->h()I

    move-result v8

    invoke-virtual {v0, v8}, Lde/a/a/a/a/i;->a(I)V

    goto :goto_f8
.end method


# virtual methods
.method protected a(Lde/a/a/a/a/i;Lde/a/a/a/a/b;)Ljava/io/InputStream;
    .registers 11

    new-instance v0, Lcom/estrongs/io/archive/aeszip/d;

    invoke-virtual {p1}, Lde/a/a/a/a/i;->e()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getCompressedSize()J

    move-result-wide v4

    const-wide/16 v6, 0x1c

    sub-long/2addr v4, v6

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/io/archive/aeszip/d;-><init>(Lcom/estrongs/io/archive/aeszip/a;JJLde/a/a/a/a/b;)V

    return-object v0
.end method

.method protected a(Lde/a/a/a/a/i;ZZ)Ljava/io/InputStream;
    .registers 10

    new-instance v0, Lcom/estrongs/io/archive/aeszip/e;

    invoke-virtual {p1}, Lde/a/a/a/a/i;->e()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getCompressedSize()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/io/archive/aeszip/e;-><init>(Lcom/estrongs/io/archive/aeszip/a;JJ)V

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/estrongs/io/archive/aeszip/a;->a(J)I

    move-result v2

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getMethod()I

    move-result v1

    sparse-switch v1, :sswitch_data_50

    sget-boolean v1, Lcom/estrongs/io/archive/aeszip/a;->f:Z

    if-nez v1, :cond_3b

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this should already have been checked by mountCentralDirectory()"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :sswitch_2a
    if-eqz p3, :cond_3c

    invoke-virtual {v0}, Lcom/estrongs/io/archive/aeszip/e;->a()V

    new-instance v1, Lcom/estrongs/io/archive/aeszip/f;

    invoke-direct {v1, v0, v2}, Lcom/estrongs/io/archive/aeszip/f;-><init>(Ljava/io/InputStream;I)V

    if-eqz p2, :cond_4e

    new-instance v0, Lcom/estrongs/io/archive/aeszip/c;

    invoke-direct {v0, v1, p1, v2}, Lcom/estrongs/io/archive/aeszip/c;-><init>(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;I)V

    :cond_3b
    :goto_3b
    return-object v0

    :cond_3c
    if-eqz p2, :cond_3b

    new-instance v1, Lcom/estrongs/io/archive/aeszip/g;

    invoke-direct {v1, v0, p1, v2}, Lcom/estrongs/io/archive/aeszip/g;-><init>(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;I)V

    move-object v0, v1

    goto :goto_3b

    :sswitch_45
    if-eqz p2, :cond_3b

    new-instance v1, Lcom/estrongs/io/archive/aeszip/c;

    invoke-direct {v1, v0, p1, v2}, Lcom/estrongs/io/archive/aeszip/c;-><init>(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;I)V

    move-object v0, v1

    goto :goto_3b

    :cond_4e
    move-object v0, v1

    goto :goto_3b

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_45
        0x8 -> :sswitch_2a
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/io/a/b;)Ljava/io/InputStream;
    .registers 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/a/a/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/io/archive/aeszip/a;->b(Lde/a/a/a/a/i;)V

    move-object v1, v2

    check-cast v1, [B

    invoke-virtual {v0}, Lde/a/a/a/a/i;->c()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {v0}, Lde/a/a/a/a/i;->g()Lde/a/a/a/a/g;

    move-result-object v1

    invoke-virtual {v0}, Lde/a/a/a/a/i;->e()I

    move-result v3

    invoke-virtual {v1}, Lde/a/a/a/a/g;->l()S

    move-result v1

    sub-int v1, v3, v1

    iget-object v3, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    int-to-long v4, v1

    const/16 v6, 0x10

    invoke-virtual {v3, v4, v5, v6}, Lde/a/a/a/a/h;->a(JI)[B

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    add-int/lit8 v1, v1, 0x10

    int-to-long v5, v1

    const/4 v1, 0x2

    invoke-virtual {v4, v5, v6, v1}, Lde/a/a/a/a/h;->a(JI)[B

    move-result-object v4

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/io/archive/aeszip/a;->l:Ljava/lang/String;

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->b()Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/a;->l:Ljava/lang/String;

    if-nez v1, :cond_47

    :cond_46
    :goto_46
    return-object v2

    :cond_47
    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/a;->l:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    :try_start_4f
    new-instance v1, Lde/a/a/a/a/c;

    invoke-direct {v1, v5, v3, v4}, Lde/a/a/a/a/c;-><init>([B[B[B)V
    :try_end_54
    .catch Ljava/util/zip/ZipException; {:try_start_4f .. :try_end_54} :catch_74

    invoke-interface {v1}, Lde/a/a/a/a/b;->a()[B

    move-object v2, v1

    :cond_58
    invoke-virtual {v0}, Lde/a/a/a/a/i;->getSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/estrongs/io/archive/aeszip/a;->a(J)I

    move-result v1

    new-array v3, v1, [B

    invoke-virtual {v0}, Lde/a/a/a/a/i;->c()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-virtual {v0}, Lde/a/a/a/a/i;->getMethod()I

    move-result v1

    if-nez v1, :cond_84

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/io/archive/aeszip/a;->a(Lde/a/a/a/a/i;Lde/a/a/a/a/b;)Ljava/io/InputStream;

    move-result-object v0

    :goto_72
    move-object v2, v0

    goto :goto_46

    :catch_74
    move-exception v0

    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WRONG PASSWORD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_83

    iput-object v2, p0, Lcom/estrongs/io/archive/aeszip/a;->l:Ljava/lang/String;

    :cond_83
    throw v0

    :cond_84
    new-instance v1, Lcom/estrongs/io/archive/aeszip/f;

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/io/archive/aeszip/a;->a(Lde/a/a/a/a/i;Lde/a/a/a/a/b;)Ljava/io/InputStream;

    move-result-object v0

    array-length v2, v3

    invoke-direct {v1, v0, v2}, Lcom/estrongs/io/archive/aeszip/f;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v1

    goto :goto_72

    :cond_90
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/estrongs/io/archive/aeszip/a;->a(Lde/a/a/a/a/i;ZZ)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_72
.end method

.method protected a()V
    .registers 10

    const-wide/16 v7, 0x10

    const-wide/16 v5, 0x6

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    sub-long/2addr v0, v5

    iput-wide v0, p0, Lcom/estrongs/io/archive/aeszip/a;->c:J

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    iget-wide v1, p0, Lcom/estrongs/io/archive/aeszip/a;->c:J

    sub-long/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Lde/a/a/a/a/h;->a(J)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x6054b50

    cmp-long v0, v0, v2

    if-eqz v0, :cond_57

    const v0, 0x6054b50

    invoke-static {v0}, Lde/a/a/a/a/f;->a(I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    invoke-virtual {v1, v0}, Lde/a/a/a/a/h;->a([B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_39

    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "expected ENDSIC not found (marks the beginning of the central directory at end of the zip file)"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    add-long/2addr v0, v7

    iput-wide v0, p0, Lcom/estrongs/io/archive/aeszip/a;->c:J

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    iget-wide v1, p0, Lcom/estrongs/io/archive/aeszip/a;->c:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lde/a/a/a/a/h;->b(J)S

    move-result v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    iget-wide v3, p0, Lcom/estrongs/io/archive/aeszip/a;->c:J

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4, v0}, Lde/a/a/a/a/h;->a(JI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/estrongs/io/archive/aeszip/a;->e:Ljava/lang/String;

    :cond_57
    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    invoke-virtual {v0}, Lde/a/a/a/a/h;->a()V

    return-void
.end method

.method protected b(Lde/a/a/a/a/i;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "zipEntry must NOT be NULL"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Lde/a/a/a/a/i;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "directory entries cannot be decrypted"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    return-void
.end method

.method public c()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lde/a/a/a/a/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public d()S
    .registers 6

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    iget-wide v1, p0, Lcom/estrongs/io/archive/aeszip/a;->c:J

    const-wide/16 v3, 0x6

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lde/a/a/a/a/h;->b(J)S

    move-result v0

    return v0
.end method
