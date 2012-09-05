.class public LaB/d;
.super Ljava/lang/Object;


# static fields
.field private static d:LaB/d;


# instance fields
.field private final a:[LaB/c;

.field private final b:Ljava/util/Set;

.field private final c:Lcom/google/googlenav/ui/D;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/D;[LaB/c;)V
    .registers 8

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LaB/d;->b:Ljava/util/Set;

    iput-object p1, p0, LaB/d;->c:Lcom/google/googlenav/ui/D;

    iput-object p2, p0, LaB/d;->a:[LaB/c;

    invoke-direct {p0}, LaB/d;->f()V

    invoke-static {}, Laf/d;->b()Z

    move-result v0

    if-nez v0, :cond_50

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ay()Z

    move-result v0

    if-nez v0, :cond_50

    sget-object v0, LaC/d;->a:LaC/d;

    invoke-direct {p0, v0}, LaB/d;->a(LaC/d;)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "VectorMaps"

    invoke-interface {v0, v1}, Lak/m;->a_(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_50

    sget-object v1, LaC/d;->a:LaC/d;

    invoke-direct {p0, v1, v4}, LaB/d;->a(LaB/c;Z)V

    const-string v1, "VectorMaps"

    new-array v2, v4, [B

    const/4 v3, 0x0

    aput-byte v4, v2, v3

    invoke-interface {v0, v1, v2}, Lak/m;->a(Ljava/lang/String;[B)Z

    invoke-interface {v0}, Lak/m;->a()V

    :cond_50
    return-void
.end method

.method public static a()LaB/d;
    .registers 1

    sget-object v0, LaB/d;->d:LaB/d;

    return-object v0
.end method

.method private a(LaB/c;Z)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-interface {p1}, LaB/c;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LaB/d;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LaB/d;->c:Lcom/google/googlenav/ui/D;

    invoke-interface {p1, v0, p2}, LaB/c;->a(Lcom/google/googlenav/ui/D;Z)V

    invoke-direct {p0}, LaB/d;->h()V

    if-nez p2, :cond_2

    const/16 v0, 0x47

    const-string v1, "a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, LaB/c;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method public static a(Lcom/google/googlenav/ui/D;[LaB/c;)V
    .registers 3

    new-instance v0, LaB/d;

    invoke-direct {v0, p0, p1}, LaB/d;-><init>(Lcom/google/googlenav/ui/D;[LaB/c;)V

    sput-object v0, LaB/d;->d:LaB/d;

    return-void
.end method

.method public static a(I)Z
    .registers 5

    const/4 v1, 0x0

    invoke-static {}, LaB/d;->g()[I

    move-result-object v2

    move v0, v1

    :goto_6
    array-length v3, v2

    if-ge v0, v3, :cond_e

    aget v3, v2, v0

    if-ne v3, p0, :cond_f

    const/4 v1, 0x1

    :cond_e
    return v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private a(LaC/d;)Z
    .registers 3

    iget-object v0, p0, LaB/d;->a:[LaB/c;

    invoke-static {v0, p1}, Lar/a;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private b(I)LaB/c;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, LaB/d;->a:[LaB/c;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    iget-object v1, p0, LaB/d;->a:[LaB/c;

    aget-object v1, v1, v0

    invoke-interface {v1}, LaB/c;->d()I

    move-result v1

    if-ne v1, p1, :cond_15

    iget-object v1, p0, LaB/d;->a:[LaB/c;

    aget-object v0, v1, v0

    :goto_14
    return-object v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static c()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ai()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    invoke-static {}, Laf/d;->b()Z

    move-result v2

    if-nez v2, :cond_15

    move v0, v1

    goto :goto_c

    :cond_15
    sget-object v2, LaC/d;->a:LaC/d;

    invoke-virtual {v2}, LaC/d;->d()I

    move-result v2

    invoke-static {v2}, LaB/d;->a(I)Z

    move-result v2

    if-eqz v2, :cond_23

    move v0, v1

    goto :goto_c

    :cond_23
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->n()Lak/m;

    move-result-object v2

    const-string v3, "VectorMaps"

    invoke-interface {v2, v3}, Lak/m;->a_(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_c

    move v0, v1

    goto :goto_c
.end method

.method private f()V
    .registers 5

    invoke-static {}, LaB/d;->g()[I

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_15

    aget v2, v1, v0

    invoke-direct {p0, v2}, LaB/d;->b(I)LaB/c;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, LaB/d;->a(LaB/c;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_15
    return-void
.end method

.method private static g()[I
    .registers 6

    const/4 v2, 0x0

    const-string v0, "Labs"

    invoke-static {v0}, Laf/l;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v3

    if-nez v3, :cond_c

    new-array v0, v2, [I

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    :try_start_c
    invoke-interface {v3}, Ljava/io/DataInput;->readInt()I

    move-result v4

    new-array v0, v4, [I

    move v1, v2

    :goto_13
    if-ge v1, v4, :cond_b

    invoke-interface {v3}, Ljava/io/DataInput;->readInt()I

    move-result v5

    aput v5, v0, v1
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1b} :catch_1e

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :catch_1e
    move-exception v0

    const-string v1, "FLASH"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "Labs"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lak/m;->a(Ljava/lang/String;[B)Z

    new-array v0, v2, [I

    goto :goto_b
.end method

.method private h()V
    .registers 7

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, LaB/d;->d()[LaB/c;

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

    invoke-interface {v5}, LaB/c;->d()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v2, "Labs"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lak/m;->a(Ljava/lang/String;[B)Z

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v4}, Lat/h;->b([I)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_45} :catch_46

    :cond_45
    :goto_45
    return-void

    :catch_46
    move-exception v0

    const-string v1, "FLASH"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "Labs"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lak/m;->a(Ljava/lang/String;[B)Z

    goto :goto_45
.end method


# virtual methods
.method public a(LaB/c;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LaB/d;->a(LaB/c;Z)V

    return-void
.end method

.method public b(LaB/c;)V
    .registers 6

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-interface {p1}, LaB/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LaB/d;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, LaB/d;->c:Lcom/google/googlenav/ui/D;

    invoke-interface {p1, v0}, LaB/c;->a(Lcom/google/googlenav/ui/D;)V

    invoke-direct {p0}, LaB/d;->h()V

    const/16 v0, 0x47

    const-string v1, "d"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, LaB/c;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method public b()[LaB/c;
    .registers 2

    iget-object v0, p0, LaB/d;->a:[LaB/c;

    return-object v0
.end method

.method public d()[LaB/c;
    .registers 3

    iget-object v0, p0, LaB/d;->b:Ljava/util/Set;

    iget-object v1, p0, LaB/d;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [LaB/c;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaB/c;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LaB/d;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaB/c;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_22

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    invoke-interface {v0}, LaB/c;->d()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
