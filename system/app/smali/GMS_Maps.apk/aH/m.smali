.class public Lah/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I


# instance fields
.field private final c:Lah/n;

.field private d:LS/f;

.field private e:LS/f;

.field private f:LS/f;

.field private final g:LS/f;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 27
    new-array v2, v0, [I

    fill-array-data v2, :array_34

    .line 28
    new-array v3, v0, [I

    fill-array-data v3, :array_3e

    .line 30
    invoke-static {}, Lcom/google/googlenav/ui/bn;->P()Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    .line 37
    :goto_13
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/K;->an()Z

    move-result v4

    if-eqz v4, :cond_21

    if-ge v0, v1, :cond_21

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 41
    :cond_21
    aget v1, v2, v0

    sput v1, Lah/m;->a:I

    .line 42
    aget v0, v3, v0

    sput v0, Lah/m;->b:I

    .line 43
    return-void

    .line 32
    :cond_2a
    invoke-static {}, Lcom/google/googlenav/ui/bn;->O()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 33
    const/4 v0, 0x1

    goto :goto_13

    .line 35
    :cond_32
    const/4 v0, 0x0

    goto :goto_13

    .line 27
    :array_34
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 28
    :array_3e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(LS/f;LS/f;LS/f;LS/f;Lah/n;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lah/m;->g:LS/f;

    .line 59
    iput-object p2, p0, Lah/m;->f:LS/f;

    .line 60
    iput-object p3, p0, Lah/m;->e:LS/f;

    .line 61
    iput-object p4, p0, Lah/m;->d:LS/f;

    .line 62
    iput-object p5, p0, Lah/m;->c:Lah/n;

    .line 63
    return-void
.end method

.method public constructor <init>(LS/f;LS/f;LS/f;LS/f;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    new-instance v5, Lah/n;

    invoke-direct {v5, p5, p6}, Lah/n;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lah/m;-><init>(LS/f;LS/f;LS/f;LS/f;Lah/n;)V

    .line 54
    return-void
.end method

.method private a(II)LS/f;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lah/m;->g:LS/f;

    if-eqz v0, :cond_b

    .line 188
    iget-object v0, p0, Lah/m;->g:LS/f;

    invoke-interface {v0, p1, p2}, LS/f;->a(II)LS/f;

    move-result-object v0

    .line 190
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)LS/f;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 107
    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 108
    :cond_8
    const/4 v0, 0x0

    .line 111
    :goto_9
    return-object v0

    .line 110
    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v0

    .line 111
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, LS/h;->a([BII)LS/f;

    move-result-object v0

    goto :goto_9
.end method

.method public static a(Lah/n;ILcom/google/googlenav/common/io/protocol/ProtoBuf;II)Lah/m;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 207
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, p3, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 215
    invoke-static {}, Lcom/google/googlenav/ui/bn;->O()Z

    move-result v1

    if-nez v1, :cond_32

    .line 216
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, p3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 217
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p2, p3, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    move-object v4, v0

    move-object v3, v1

    .line 219
    :goto_1b
    new-instance v0, Lah/m;

    invoke-static {v5, p4}, Lah/m;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)LS/f;

    move-result-object v1

    invoke-static {v2, p4}, Lah/m;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)LS/f;

    move-result-object v2

    invoke-static {v3, p4}, Lah/m;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)LS/f;

    move-result-object v3

    invoke-static {v4, p4}, Lah/m;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)LS/f;

    move-result-object v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lah/m;-><init>(LS/f;LS/f;LS/f;LS/f;Lah/n;)V

    return-object v0

    :cond_32
    move-object v4, v2

    move-object v3, v2

    goto :goto_1b
.end method

.method private a(LS/f;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter

    .prologue
    .line 238
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 239
    const/4 v1, 0x3

    invoke-static {p1}, LS/j;->c(LS/f;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBytes(I[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 240
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lah/m;->c:Lah/n;

    invoke-virtual {v0}, Lah/n;->b()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public b()Lah/n;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lah/m;->c:Lah/n;

    return-object v0
.end method

.method public c()LS/f;
    .registers 4

    .prologue
    .line 128
    iget-object v0, p0, Lah/m;->d:LS/f;

    if-nez v0, :cond_2c

    .line 129
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->m()LS/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bn;->H:C

    invoke-interface {v0, v1}, LS/g;->c(C)I

    move-result v0

    .line 131
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bn;->m()LS/g;

    move-result-object v1

    sget-char v2, Lcom/google/googlenav/ui/bn;->H:C

    invoke-interface {v1, v2}, LS/g;->b(C)I

    move-result v1

    .line 133
    invoke-virtual {p0}, Lah/m;->f()LS/f;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 134
    invoke-direct {p0, v0, v1}, Lah/m;->a(II)LS/f;

    move-result-object v0

    iput-object v0, p0, Lah/m;->d:LS/f;

    .line 137
    :cond_2c
    iget-object v0, p0, Lah/m;->d:LS/f;

    return-object v0
.end method

.method public d()LS/f;
    .registers 4

    .prologue
    .line 144
    iget-object v0, p0, Lah/m;->e:LS/f;

    if-nez v0, :cond_2c

    .line 145
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->l()LS/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bn;->H:C

    invoke-interface {v0, v1}, LS/g;->c(C)I

    move-result v0

    .line 147
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bn;->l()LS/g;

    move-result-object v1

    sget-char v2, Lcom/google/googlenav/ui/bn;->H:C

    invoke-interface {v1, v2}, LS/g;->b(C)I

    move-result v1

    .line 149
    invoke-virtual {p0}, Lah/m;->f()LS/f;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 150
    invoke-direct {p0, v0, v1}, Lah/m;->a(II)LS/f;

    move-result-object v0

    iput-object v0, p0, Lah/m;->e:LS/f;

    .line 153
    :cond_2c
    iget-object v0, p0, Lah/m;->e:LS/f;

    return-object v0
.end method

.method public e()LS/f;
    .registers 4

    .prologue
    .line 157
    iget-object v0, p0, Lah/m;->f:LS/f;

    if-nez v0, :cond_3d

    .line 158
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->k()LS/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bn;->H:C

    invoke-interface {v0, v1}, LS/g;->c(C)I

    move-result v0

    .line 160
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bn;->k()LS/g;

    move-result-object v1

    sget-char v2, Lcom/google/googlenav/ui/bn;->H:C

    invoke-interface {v1, v2}, LS/g;->b(C)I

    move-result v1

    .line 162
    invoke-direct {p0, v0, v1}, Lah/m;->a(II)LS/f;

    move-result-object v0

    .line 167
    invoke-static {}, Lcom/google/googlenav/ui/bn;->P()Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {}, Lcom/google/googlenav/ui/bn;->O()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 169
    :cond_3a
    iput-object v0, p0, Lah/m;->f:LS/f;

    .line 173
    :cond_3c
    :goto_3c
    return-object v0

    :cond_3d
    iget-object v0, p0, Lah/m;->f:LS/f;

    goto :goto_3c
.end method

.method public f()LS/f;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lah/m;->g:LS/f;

    return-object v0
.end method

.method public g()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 227
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ag;->w:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 228
    iget-object v1, p0, Lah/m;->g:LS/f;

    invoke-direct {p0, v1}, Lah/m;->a(LS/f;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 230
    invoke-static {}, Lcom/google/googlenav/ui/bn;->O()Z

    move-result v1

    if-nez v1, :cond_29

    .line 231
    iget-object v1, p0, Lah/m;->e:LS/f;

    invoke-direct {p0, v1}, Lah/m;->a(LS/f;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 232
    iget-object v1, p0, Lah/m;->d:LS/f;

    invoke-direct {p0, v1}, Lah/m;->a(LS/f;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 234
    :cond_29
    return-object v0
.end method

.method public h()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 256
    invoke-static {}, Lcom/google/googlenav/ui/bn;->O()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 257
    iget-object v2, p0, Lah/m;->g:LS/f;

    if-eqz v2, :cond_d

    .line 264
    :cond_c
    :goto_c
    return v0

    :cond_d
    move v0, v1

    .line 257
    goto :goto_c

    .line 261
    :cond_f
    iget-object v2, p0, Lah/m;->g:LS/f;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lah/m;->e:LS/f;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lah/m;->d:LS/f;

    if-nez v2, :cond_c

    :cond_1b
    move v0, v1

    goto :goto_c
.end method

.method public i()I
    .registers 3

    .prologue
    .line 269
    iget-object v0, p0, Lah/m;->c:Lah/n;

    invoke-virtual {v0}, Lah/n;->d()I

    move-result v0

    .line 270
    iget-object v1, p0, Lah/m;->d:LS/f;

    if-eqz v1, :cond_11

    .line 271
    iget-object v1, p0, Lah/m;->d:LS/f;

    invoke-interface {v1}, LS/f;->g()I

    move-result v1

    add-int/2addr v0, v1

    .line 273
    :cond_11
    iget-object v1, p0, Lah/m;->e:LS/f;

    if-eqz v1, :cond_1c

    .line 274
    iget-object v1, p0, Lah/m;->e:LS/f;

    invoke-interface {v1}, LS/f;->g()I

    move-result v1

    add-int/2addr v0, v1

    .line 276
    :cond_1c
    iget-object v1, p0, Lah/m;->f:LS/f;

    if-eqz v1, :cond_27

    .line 277
    iget-object v1, p0, Lah/m;->f:LS/f;

    invoke-interface {v1}, LS/f;->g()I

    move-result v1

    add-int/2addr v0, v1

    .line 279
    :cond_27
    iget-object v1, p0, Lah/m;->g:LS/f;

    if-eqz v1, :cond_32

    .line 280
    iget-object v1, p0, Lah/m;->g:LS/f;

    invoke-interface {v1}, LS/f;->g()I

    move-result v1

    add-int/2addr v0, v1

    .line 282
    :cond_32
    return v0
.end method
