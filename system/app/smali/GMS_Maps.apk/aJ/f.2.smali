.class LaJ/f;
.super Ljava/lang/Object;


# static fields
.field private static d:[B

.field private static e:LaJ/f;

.field private static final f:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Vector;

.field private b:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, LaJ/f;->d:[B

    sput-object v0, LaJ/f;->e:LaJ/f;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LaJ/f;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaJ/f;->c:Z

    const/4 v0, -0x1

    iput v0, p0, LaJ/f;->b:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaJ/f;->a:Ljava/util/Vector;

    return-void
.end method

.method private a([BLaJ/P;)LaJ/I;
    .registers 12

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    array-length v1, p1

    if-nez v1, :cond_9

    :cond_7
    move-object v0, v2

    :goto_8
    return-object v0

    :cond_9
    :try_start_9
    invoke-static {p1}, Lak/k;->a([B)Ljava/io/DataInput;

    move-result-object v4

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    invoke-virtual {p0}, LaJ/f;->a()I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_57

    move-result v1

    if-eq v5, v1, :cond_19

    move-object v0, v2

    goto :goto_8

    :cond_19
    move v3, v0

    move-object v1, v2

    :goto_1b
    if-ge v3, v5, :cond_60

    :try_start_1d
    invoke-static {v4}, LaJ/I;->a(Ljava/io/DataInput;)LaJ/I;

    move-result-object v0

    iget-boolean v6, p0, LaJ/f;->c:Z

    if-eqz v6, :cond_38

    new-instance v6, LaJ/e;

    invoke-direct {v6, v0}, LaJ/e;-><init>(LaJ/I;)V

    iget-object v7, p0, LaJ/f;->a:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, LaJ/e;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    move-object v0, v2

    goto :goto_8

    :cond_38
    invoke-virtual {v0}, LaJ/I;->c()LaJ/P;

    move-result-object v6

    invoke-virtual {v6, p2}, LaJ/P;->equals(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_3f} :catch_5b

    move-result v6

    if-eqz v6, :cond_51

    :try_start_42
    iget-boolean v1, p0, LaJ/f;->c:Z

    if-nez v1, :cond_52

    :goto_46
    const/4 v1, 0x0

    iput-boolean v1, p0, LaJ/f;->c:Z
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_49} :catch_4a

    goto :goto_8

    :catch_4a
    move-exception v1

    :goto_4b
    const-string v2, "FLASH"

    invoke-static {v2, v1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_51
    move-object v0, v1

    :cond_52
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1b

    :catch_57
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_4b

    :catch_5b
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_4b

    :cond_60
    move-object v0, v1

    goto :goto_46
.end method

.method public static a(Ljava/io/DataInput;)LaJ/f;
    .registers 6

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    new-instance v3, LaJ/f;

    invoke-direct {v3}, LaJ/f;-><init>()V

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v1, :cond_25

    invoke-static {p0}, LaJ/e;->a(Ljava/io/DataInput;)LaJ/e;

    move-result-object v4

    invoke-virtual {v3, v4}, LaJ/f;->a(LaJ/e;)Z

    move-result v4

    if-nez v4, :cond_22

    new-instance v0, Ljava/io/IOException;

    const-string v1, "FlashRecord full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, v3, LaJ/f;->c:Z

    iput v2, v3, LaJ/f;->b:I

    return-object v3
.end method

.method static f()V
    .registers 2

    sget-object v1, LaJ/f;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-object v0, LaJ/f;->d:[B

    const/4 v0, 0x0

    sput-object v0, LaJ/f;->e:LaJ/f;

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, LaJ/f;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public a(J)J
    .registers 11

    iget-object v0, p0, LaJ/f;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    const-wide/16 v1, 0x0

    if-lez v3, :cond_25

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v3, :cond_21

    invoke-virtual {p0, v0}, LaJ/f;->a(I)LaJ/e;

    move-result-object v4

    invoke-virtual {v4}, LaJ/e;->a()LaJ/P;

    move-result-object v5

    invoke-virtual {v4}, LaJ/e;->b()J

    move-result-wide v6

    invoke-static {v5, p1, p2, v6, v7}, LaJ/D;->a(LaJ/P;JJ)J

    move-result-wide v4

    add-long/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_21
    int-to-long v3, v3

    div-long v0, v1, v3

    :goto_24
    return-wide v0

    :cond_25
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_24
.end method

.method public a(Ljava/lang/String;LaJ/P;)LaJ/I;
    .registers 6

    const/4 v0, 0x0

    iget v1, p0, LaJ/f;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    sget-object v2, LaJ/f;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_a
    sget-object v1, LaJ/f;->e:LaJ/f;

    invoke-virtual {p0, v1}, LaJ/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    sget-object v1, LaJ/f;->d:[B

    :goto_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_37

    if-nez v1, :cond_30

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    invoke-interface {v1, p1}, Lak/m;->d(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_30

    array-length v2, v1

    if-eqz v2, :cond_30

    sget-object v2, LaJ/f;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2b
    sput-object v1, LaJ/f;->d:[B

    sput-object p0, LaJ/f;->e:LaJ/f;

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_3a

    :cond_30
    if-eqz v1, :cond_6

    invoke-direct {p0, v1, p2}, LaJ/f;->a([BLaJ/P;)LaJ/I;

    move-result-object v0

    goto :goto_6

    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0

    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0

    :cond_3d
    move-object v1, v0

    goto :goto_14
.end method

.method public a(I)LaJ/e;
    .registers 3

    iget-object v0, p0, LaJ/f;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/e;

    return-object v0
.end method

.method public a(LaJ/P;)LaJ/e;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, LaJ/f;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    invoke-virtual {p0, v0}, LaJ/f;->a(I)LaJ/e;

    move-result-object v1

    invoke-virtual {v1}, LaJ/e;->a()LaJ/P;

    move-result-object v2

    invoke-virtual {v2, p1}, LaJ/P;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object v0, v1

    :goto_18
    return-object v0

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5

    iget v0, p0, LaJ/f;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t write unsaved FlashRecord"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p0}, LaJ/f;->a()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, LaJ/f;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v1, :cond_26

    invoke-virtual {p0, v0}, LaJ/f;->a(I)LaJ/e;

    move-result-object v2

    invoke-virtual {v2, p1}, LaJ/e;->a(Ljava/io/DataOutput;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_26
    return-void
.end method

.method a(Ljava/lang/String;I[B)V
    .registers 6

    iget v0, p0, LaJ/f;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already saved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Lak/m;->a([BLjava/lang/String;)I

    iput p2, p0, LaJ/f;->b:I

    return-void
.end method

.method public a(LaJ/e;)Z
    .registers 4

    invoke-virtual {p0}, LaJ/f;->a()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_d

    iget v0, p0, LaJ/f;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, LaJ/f;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, LaJ/e;->a(LaJ/f;)V

    const/4 v0, 0x1

    goto :goto_e
.end method

.method a(Ljava/util/Hashtable;)[B
    .registers 7

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const v0, 0x11940

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, LaJ/f;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_16
    if-ge v1, v4, :cond_31

    invoke-virtual {p0, v1}, LaJ/f;->a(I)LaJ/e;

    move-result-object v0

    invoke-virtual {v0}, LaJ/e;->a()LaJ/P;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/I;

    if-nez v0, :cond_2a

    const/4 v0, 0x0

    :goto_29
    return-object v0

    :cond_2a
    invoke-virtual {v0, v3}, LaJ/I;->a(Ljava/io/DataOutput;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    :cond_31
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_29
.end method

.method public b()I
    .registers 5

    iget-object v0, p0, LaJ/f;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_16

    invoke-virtual {p0, v0}, LaJ/f;->a(I)LaJ/e;

    move-result-object v3

    invoke-virtual {v3}, LaJ/e;->c()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    return v1
.end method

.method public c()I
    .registers 2

    iget v0, p0, LaJ/f;->b:I

    return v0
.end method

.method d()Z
    .registers 3

    iget v0, p0, LaJ/f;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method e()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, LaJ/f;->b:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_6

    move v0, v1

    :goto_5
    return v0

    :cond_6
    instance-of v0, p1, LaJ/f;

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_5

    :cond_c
    check-cast p1, LaJ/f;

    iget v0, p0, LaJ/f;->b:I

    iget v3, p1, LaJ/f;->b:I

    if-eq v0, v3, :cond_16

    move v0, v2

    goto :goto_5

    :cond_16
    invoke-virtual {p0}, LaJ/f;->a()I

    move-result v4

    invoke-virtual {p1}, LaJ/f;->a()I

    move-result v0

    if-eq v4, v0, :cond_22

    move v0, v2

    goto :goto_5

    :cond_22
    iget-object v5, p1, LaJ/f;->a:Ljava/util/Vector;

    move v3, v2

    :goto_25
    if-ge v3, v4, :cond_3f

    iget-object v0, p0, LaJ/f;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/e;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, LaJ/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    move v0, v2

    goto :goto_5

    :cond_3b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_25

    :cond_3f
    move v0, v1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, LaJ/f;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
