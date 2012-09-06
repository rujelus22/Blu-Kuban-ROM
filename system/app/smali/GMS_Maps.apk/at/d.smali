.class public abstract Lat/d;
.super Lac/a;
.source "SourceFile"


# static fields
.field private static volatile f:Z


# instance fields
.field protected final a:J

.field private b:LaT/h;

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lat/d;->f:Z

    return-void
.end method

.method protected constructor <init>(IB)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 37
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lat/d;->a:J

    .line 56
    iput p1, p0, Lat/d;->c:I

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tile-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    shl-int/2addr v1, p2

    invoke-static {v1}, Lat/d;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, LaT/h;

    const-string v2, "t"

    const/16 v3, 0x16

    invoke-direct {v1, v0, v2, v3}, LaT/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lat/d;->b:LaT/h;

    .line 62
    iget-object v0, p0, Lat/d;->b:LaT/h;

    invoke-virtual {v0}, LaT/h;->a()V

    .line 63
    return-void
.end method

.method public static a(Z)V
    .registers 1
    .parameter

    .prologue
    .line 70
    sput-boolean p0, Lat/d;->f:Z

    .line 71
    return-void
.end method

.method private static b(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 212
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 213
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_d

    .line 214
    const-string v1, "m"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_d
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_16

    .line 217
    const-string v1, "s"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_16
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_1f

    .line 221
    const-string v1, "h"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_1f
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_28

    .line 225
    const-string v1, "n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_28
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_31

    .line 229
    const-string v1, "t"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Laa/b;->a(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/io/DataInput;)[B
    .registers 3
    .parameter

    .prologue
    .line 197
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 198
    new-array v0, v0, [B

    .line 201
    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 202
    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lat/d;->c:I

    return v0
.end method

.method protected abstract a(I)V
.end method

.method protected abstract a(II)V
.end method

.method protected a([Lat/P;Ljava/io/DataOutput;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 75
    iget v0, p0, Lat/d;->c:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_34

    .line 81
    array-length v0, p1

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 82
    invoke-static {}, Lat/I;->w()I

    move-result v0

    iput v0, p0, Lat/d;->d:I

    .line 83
    iget v0, p0, Lat/d;->d:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 84
    const/16 v0, 0x100

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 86
    const-wide/16 v0, 0xa2f

    .line 93
    sget-boolean v2, Lat/d;->f:Z

    if-eqz v2, :cond_23

    .line 94
    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    .line 96
    :cond_23
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->ao()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 97
    const-wide/32 v2, 0x8000

    or-long/2addr v0, v2

    .line 99
    :cond_31
    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 102
    :cond_34
    const/4 v0, 0x0

    :goto_35
    array-length v1, p1

    if-ge v0, v1, :cond_40

    .line 103
    aget-object v1, p1, v0

    .line 104
    invoke-virtual {v1, p2}, Lat/P;->a(Ljava/io/DataOutput;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 106
    :cond_40
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    .line 107
    iget-wide v2, p0, Lat/d;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lat/d;->e:I

    .line 108
    return-void
.end method

.method protected abstract a(ILat/P;[B)Z
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 15
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v0, 0x0

    .line 111
    .line 113
    :try_start_2
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v1

    .line 114
    iget-wide v3, p0, Lat/d;->a:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    .line 115
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    .line 116
    iget v3, p0, Lat/d;->d:I

    invoke-virtual {p0, v1, v3}, Lat/d;->a(II)V

    .line 121
    iget v1, p0, Lat/d;->c:I

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_8f

    .line 125
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 126
    if-eqz v1, :cond_48

    .line 128
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

    .line 162
    :catchall_40
    move-exception v1

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    :goto_44
    invoke-virtual {p0, v1}, Lat/d;->a(I)V

    throw v0

    .line 130
    :cond_48
    :try_start_48
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_40

    move-result v4

    :goto_4c
    move v5, v0

    move v6, v0

    .line 134
    :goto_4e
    if-ge v6, v4, :cond_5e

    .line 135
    :try_start_50
    invoke-static {p1}, Lat/P;->a(Ljava/io/DataInput;)Lat/P;

    move-result-object v1

    .line 136
    invoke-direct {p0, p1}, Lat/d;->b(Ljava/io/DataInput;)[B

    move-result-object v3

    .line 137
    invoke-virtual {p0, v6, v1, v3}, Lat/d;->a(ILat/P;[B)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 154
    :cond_5e
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v7

    .line 155
    iget-wide v9, p0, Lat/d;->a:J

    sub-long/2addr v7, v9

    long-to-int v3, v7

    .line 157
    iget-object v1, p0, Lat/d;->b:LaT/h;

    invoke-virtual {v1}, LaT/h;->b()V

    .line 159
    invoke-static {v0}, Lat/d;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lat/d;->e:I

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/I;->a(Ljava/lang/String;IIIII)V
    :try_end_7c
    .catchall {:try_start_50 .. :try_end_7c} :catchall_8c

    .line 162
    invoke-virtual {p0, v6}, Lat/d;->a(I)V

    .line 165
    return v11

    .line 141
    :cond_80
    :try_start_80
    array-length v3, v3

    add-int/2addr v5, v3

    .line 149
    invoke-virtual {v1}, Lat/P;->b()B
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_8c

    move-result v1

    shl-int v1, v11, v1

    or-int/2addr v0, v1

    .line 134
    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    .line 162
    :catchall_8c
    move-exception v0

    move v1, v6

    goto :goto_44

    :cond_8f
    move v4, v0

    goto :goto_4c
.end method
