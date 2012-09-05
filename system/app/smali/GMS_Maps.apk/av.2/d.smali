.class public Lav/d;
.super Ljava/lang/Object;


# static fields
.field private static e:Lav/d;


# instance fields
.field private final a:[Lav/c;

.field private final b:Ljava/util/Hashtable;

.field private final c:Lat/h;

.field private d:Z


# direct methods
.method private constructor <init>(Lat/h;[Lav/c;)V
    .registers 9

    const v5, 0x155cc0

    const v4, 0x13d620

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lav/d;->b:Ljava/util/Hashtable;

    iput-boolean v0, p0, Lav/d;->d:Z

    iput-object p2, p0, Lav/d;->a:[Lav/c;

    iput-object p1, p0, Lav/d;->c:Lat/h;

    iget-object v1, p0, Lav/d;->a:[Lav/c;

    if-nez v1, :cond_23

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad KNE"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    move v1, v0

    :goto_24
    array-length v2, p2

    if-ge v0, v2, :cond_9b

    aget-object v2, p2, v0

    instance-of v3, v2, Lav/m;

    if-eqz v3, :cond_4d

    if-eqz v1, :cond_4c

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate version control experiments: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lav/c;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    const/4 v1, 0x1

    :cond_4d
    invoke-interface {v2}, Lav/c;->a()I

    move-result v3

    if-lt v3, v4, :cond_59

    invoke-interface {v2}, Lav/c;->a()I

    move-result v3

    if-lt v3, v5, :cond_98

    :cond_59
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad experiment id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lav/c;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " <= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lav/c;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_9b
    array-length v0, p2

    if-lez v0, :cond_a8

    if-nez v1, :cond_a8

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No control experiment."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a8
    invoke-direct {p0}, Lav/d;->e()V

    invoke-direct {p0}, Lav/d;->d()V

    new-instance v0, Lav/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lav/f;-><init>(Lav/d;Lav/e;)V

    invoke-virtual {p1, v0}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method static synthetic a(Lav/d;I)Lav/c;
    .registers 3

    invoke-direct {p0, p1}, Lav/d;->c(I)Lav/c;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lav/d;
    .registers 1

    sget-object v0, Lav/d;->e:Lav/d;

    return-object v0
.end method

.method public static a(Lat/h;[Lav/c;)V
    .registers 4

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad drd"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lav/d;

    invoke-direct {v0, p0, p1}, Lav/d;-><init>(Lat/h;[Lav/c;)V

    sput-object v0, Lav/d;->e:Lav/d;

    return-void
.end method

.method private a(Lav/c;)V
    .registers 3

    iget-object v0, p0, Lav/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lav/c;->b()V

    return-void
.end method

.method static synthetic a(Lav/d;Lav/c;)V
    .registers 2

    invoke-direct {p0, p1}, Lav/d;->a(Lav/c;)V

    return-void
.end method

.method static synthetic a(Lav/d;)[Lav/c;
    .registers 2

    iget-object v0, p0, Lav/d;->a:[Lav/c;

    return-object v0
.end method

.method static synthetic b(Lav/d;)Z
    .registers 2

    iget-boolean v0, p0, Lav/d;->d:Z

    return v0
.end method

.method private c(I)Lav/c;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lav/d;->a:[Lav/c;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Lav/d;->a:[Lav/c;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lav/c;->a()I

    move-result v1

    if-ne v1, p1, :cond_15

    iget-object v1, p0, Lav/d;->a:[Lav/c;

    aget-object v0, v1, v0

    :cond_14
    :goto_14
    return-object v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    new-instance v0, Lav/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lav/g;-><init>(ILav/e;)V

    iget-object v1, p0, Lav/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lav/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lav/c;

    goto :goto_14
.end method

.method static synthetic c(Lav/d;)Ljava/util/Hashtable;
    .registers 2

    invoke-direct {p0}, Lav/d;->f()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lav/d;)Ljava/util/Hashtable;
    .registers 2

    iget-object v0, p0, Lav/d;->b:Ljava/util/Hashtable;

    return-object v0
.end method

.method private d()V
    .registers 7

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lav/d;->b()[Lav/c;

    move-result-object v3

    array-length v0, v3

    new-array v4, v0, [I

    :try_start_11
    array-length v0, v3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_16
    array-length v5, v3

    if-ge v0, v5, :cond_27

    aget-object v5, v3, v0

    invoke-interface {v5}, Lav/c;->a()I

    move-result v5

    aput v5, v4, v0

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v2, "Experiments"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lak/m;->a(Ljava/lang/String;[B)Z

    iget-object v0, p0, Lav/d;->c:Lat/h;

    invoke-virtual {v0, v4}, Lat/h;->a([I)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private e()V
    .registers 5

    const-string v0, "Experiments"

    invoke-static {v0}, Laf/l;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v1

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    :try_start_9
    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_8

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    invoke-direct {p0, v3}, Lav/d;->c(I)Lav/c;

    move-result-object v3

    invoke-direct {p0, v3}, Lav/d;->a(Lav/c;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1b} :catch_1e

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :catch_1e
    move-exception v0

    const-string v1, "FLASH"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "Experiments"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lak/m;->a(Ljava/lang/String;[B)Z

    goto :goto_8
.end method

.method static synthetic e(Lav/d;)V
    .registers 1

    invoke-direct {p0}, Lav/d;->d()V

    return-void
.end method

.method private f()Ljava/util/Hashtable;
    .registers 4

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iget-object v0, p0, Lav/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lav/c;

    invoke-virtual {v1, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_1b
    return-object v1
.end method


# virtual methods
.method public a(I)V
    .registers 4

    invoke-direct {p0, p1}, Lav/d;->c(I)Lav/c;

    move-result-object v0

    invoke-interface {v0}, Lav/c;->d()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lav/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lav/c;->b()V

    invoke-direct {p0}, Lav/d;->d()V

    :cond_15
    return-void
.end method

.method public b(I)V
    .registers 4

    invoke-direct {p0, p1}, Lav/d;->c(I)Lav/c;

    move-result-object v0

    invoke-interface {v0}, Lav/c;->d()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lav/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lav/c;->c()V

    invoke-direct {p0}, Lav/d;->d()V

    :cond_15
    return-void
.end method

.method public b()[Lav/c;
    .registers 6

    iget-object v0, p0, Lav/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v3, v0, [Lav/c;

    iget-object v0, p0, Lav/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lav/c;

    add-int/lit8 v2, v1, 0x1

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_10

    :cond_22
    return-object v3
.end method

.method public c()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lav/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lav/c;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_22

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    invoke-interface {v0}, Lav/c;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
