.class public final Laf/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Vector;

.field private static b:[B

.field private static c:Z

.field private static d:J

.field private static e:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Laf/l;->a:Ljava/util/Vector;

    const/4 v0, 0x1

    sput-boolean v0, Laf/l;->c:Z

    const-wide/16 v0, 0x2710

    sput-wide v0, Laf/l;->d:J

    const-wide/16 v0, 0x0

    sput-wide v0, Laf/l;->e:J

    invoke-static {}, Laf/l;->c()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lak/m;Ljava/lang/String;)Ljava/io/DataInput;
    .registers 5

    invoke-interface {p0, p1}, Lak/m;->d(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_7
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0}, Laf/l;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v2

    if-nez v2, :cond_8

    :goto_7
    return-object v0

    :cond_8
    packed-switch p1, :pswitch_data_54

    :try_start_b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2e
    move-exception v1

    goto :goto_7

    :pswitch_30
    new-instance v1, Ljava/lang/Boolean;

    invoke-interface {v2}, Ljava/io/DataInput;->readBoolean()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v1

    goto :goto_7

    :pswitch_3b
    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7

    :pswitch_44
    new-instance v1, Ljava/lang/Long;

    invoke-interface {v2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v1

    goto :goto_7

    :pswitch_4f
    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_52} :catch_2e

    move-result-object v0

    goto :goto_7

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_30
        :pswitch_3b
        :pswitch_44
        :pswitch_4f
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x3

    invoke-static {p0, v0}, Laf/l;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a()V
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Laf/l;->a(Z)V

    return-void
.end method

.method public static a(Laf/j;)V
    .registers 3

    sget-boolean v0, Laf/l;->c:Z

    if-eqz v0, :cond_11

    invoke-static {}, Laf/l;->e()V

    sget-object v0, Laf/l;->a:Ljava/util/Vector;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .registers 4

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {p0, v0}, Laf/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    if-nez p1, :cond_f

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lak/m;->a(Ljava/lang/String;[B)Z

    :goto_e
    return-void

    :cond_f
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_19
    instance-of v3, p1, Ljava/lang/Boolean;

    if-eqz v3, :cond_46

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeBoolean(Z)V

    :goto_26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lak/m;->a(Ljava/lang/String;[B)Z
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2d} :catch_2e

    goto :goto_e

    :catch_2e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_46
    :try_start_46
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_50

    check-cast p1, Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_26

    :cond_50
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_5e

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_26

    :cond_5e
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_6c

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_26

    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_93} :catch_2e
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Laf/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 3

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {p0, v0}, Laf/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Z)V
    .registers 3

    const/4 v0, 0x0

    sput-object v0, Laf/l;->b:[B

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eqz p0, :cond_30

    const-string v0, "LowOnMemory"

    :goto_9
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Laf/l;->e()V

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    sget-object v0, Laf/l;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    sget-object v0, Laf/l;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf/j;

    if-eqz v0, :cond_2c

    invoke-interface {v0, p0}, Laf/j;->a(Z)V

    :cond_2c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_30
    const-string v0, "OutOfMemory"

    goto :goto_9

    :cond_33
    invoke-static {}, Laf/l;->c()V

    return-void
.end method

.method public static b(Ljava/lang/String;J)J
    .registers 4

    const/4 v0, 0x2

    invoke-static {p0, v0}, Laf/l;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :cond_d
    return-wide p1
.end method

.method public static b(Ljava/lang/String;)Ljava/io/DataInput;
    .registers 4

    invoke-static {}, Laf/l;->d()Lak/m;

    move-result-object v0

    invoke-interface {v0, p0}, Lak/m;->a_(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_b
.end method

.method public static b()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Laf/l;->a(Z)V

    return-void
.end method

.method public static b(Laf/j;)V
    .registers 4

    sget-boolean v0, Laf/l;->c:Z

    if-eqz v0, :cond_12

    invoke-static {}, Laf/l;->e()V

    sget-object v0, Laf/l;->a:Ljava/util/Vector;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :cond_12
    return-void
.end method

.method public static b(Ljava/lang/String;Z)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Laf/l;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_d
    return p1
.end method

.method private static c()V
    .registers 1

    sget-object v0, Laf/l;->b:[B

    if-nez v0, :cond_b

    const v0, 0x8000

    :try_start_7
    new-array v0, v0, [B

    sput-object v0, Laf/l;->b:[B
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public static c(Laf/j;)V
    .registers 3

    invoke-static {}, Laf/l;->e()V

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    sget-object v0, Laf/l;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    sget-object v0, Laf/l;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_21

    sget-object v0, Laf/l;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_20
    return-void

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5
.end method

.method private static d()Lak/m;
    .registers 1

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    return-object v0
.end method

.method private static e()V
    .registers 6

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v2

    sget-wide v0, Laf/l;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1e

    sget-wide v0, Laf/l;->e:J

    sub-long v0, v2, v0

    sget-wide v4, Laf/l;->d:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_42

    :cond_1e
    sget-object v0, Laf/l;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_27
    if-ltz v1, :cond_40

    sget-object v0, Laf/l;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3c

    sget-object v0, Laf/l;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_3c
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_27

    :cond_40
    sput-wide v2, Laf/l;->e:J

    :cond_42
    return-void
.end method
