.class public abstract LaJ/d;
.super Lat/a;


# static fields
.field private static volatile f:Z


# instance fields
.field protected final a:J

.field private b:Lar/u;

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, LaJ/d;->f:Z

    return-void
.end method

.method protected constructor <init>(IB)V
    .registers 7

    invoke-direct {p0}, Lat/a;-><init>()V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, LaJ/d;->a:J

    iput p1, p0, LaJ/d;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tile-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    shl-int/2addr v1, p2

    invoke-static {v1}, LaJ/d;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lar/u;

    const-string v2, "t"

    const/16 v3, 0x16

    invoke-direct {v1, v0, v2, v3}, Lar/u;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, LaJ/d;->b:Lar/u;

    iget-object v0, p0, LaJ/d;->b:Lar/u;

    invoke-virtual {v0}, Lar/u;->a()V

    return-void
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, LaJ/d;->f:Z

    return-void
.end method

.method private static b(I)Ljava/lang/String;
    .registers 3

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_d

    const-string v1, "m"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_16

    const-string v1, "s"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_1f

    const-string v1, "h"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_28

    const-string v1, "n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_31

    const-string v1, "t"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Las/b;->a(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/io/DataInput;)[B
    .registers 3

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, LaJ/d;->c:I

    return v0
.end method

.method protected abstract a(I)V
.end method

.method protected abstract a(II)V
.end method

.method protected a([LaJ/P;Ljava/io/DataOutput;)V
    .registers 7

    iget v0, p0, LaJ/d;->c:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_34

    array-length v0, p1

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeShort(I)V

    invoke-static {}, LaJ/I;->w()I

    move-result v0

    iput v0, p0, LaJ/d;->d:I

    iget v0, p0, LaJ/d;->d:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeShort(I)V

    const/16 v0, 0x100

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeShort(I)V

    const-wide/16 v0, 0xa2f

    sget-boolean v2, LaJ/d;->f:Z

    if-eqz v2, :cond_23

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    :cond_23
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->am()Z

    move-result v2

    if-eqz v2, :cond_31

    const-wide/32 v2, 0x8000

    or-long/2addr v0, v2

    :cond_31
    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_34
    const/4 v0, 0x0

    :goto_35
    array-length v1, p1

    if-ge v0, v1, :cond_40

    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, LaJ/P;->a(Ljava/io/DataOutput;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_40
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, LaJ/d;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, LaJ/d;->e:I

    return-void
.end method

.method protected abstract a(ILaJ/P;[B)Z
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 15

    const/4 v11, 0x1

    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v1

    iget-wide v3, p0, LaJ/d;->a:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    iget v3, p0, LaJ/d;->d:I

    invoke-virtual {p0, v1, v3}, LaJ/d;->a(II)V

    iget v1, p0, LaJ/d;->c:I

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_8f

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    if-eqz v1, :cond_48

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_40
    .catchall {:try_start_2 .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v1

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    :goto_44
    invoke-virtual {p0, v1}, LaJ/d;->a(I)V

    throw v0

    :cond_48
    :try_start_48
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_40

    move-result v4

    :goto_4c
    move v5, v0

    move v6, v0

    :goto_4e
    if-ge v6, v4, :cond_5e

    :try_start_50
    invoke-static {p1}, LaJ/P;->a(Ljava/io/DataInput;)LaJ/P;

    move-result-object v1

    invoke-direct {p0, p1}, LaJ/d;->b(Ljava/io/DataInput;)[B

    move-result-object v3

    invoke-virtual {p0, v6, v1, v3}, LaJ/d;->a(ILaJ/P;[B)Z

    move-result v7

    if-eqz v7, :cond_80

    :cond_5e
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v7

    iget-wide v9, p0, LaJ/d;->a:J

    sub-long/2addr v7, v9

    long-to-int v3, v7

    iget-object v1, p0, LaJ/d;->b:Lar/u;

    invoke-virtual {v1}, Lar/u;->b()V

    invoke-static {v0}, LaJ/d;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, LaJ/d;->e:I

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/K;->a(Ljava/lang/String;IIIII)V
    :try_end_7c
    .catchall {:try_start_50 .. :try_end_7c} :catchall_8c

    invoke-virtual {p0, v6}, LaJ/d;->a(I)V

    return v11

    :cond_80
    :try_start_80
    array-length v3, v3

    add-int/2addr v5, v3

    invoke-virtual {v1}, LaJ/P;->b()B
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_8c

    move-result v1

    shl-int v1, v11, v1

    or-int/2addr v0, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    :catchall_8c
    move-exception v0

    move v1, v6

    goto :goto_44

    :cond_8f
    move v4, v0

    goto :goto_4c
.end method
