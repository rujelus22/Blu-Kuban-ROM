.class public LaH/d;
.super Lac/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static b:I

.field private static c:I


# instance fields
.field a:Z

.field private final d:I

.field private final e:LaH/e;

.field private final f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private h:Z

.field private final i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput v0, LaH/d;->b:I

    return-void
.end method

.method public constructor <init>(LaH/e;Lat/B;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 105
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 62
    iput-boolean v3, p0, LaH/d;->h:Z

    .line 76
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, LaH/d;->i:J

    .line 106
    iput-object p1, p0, LaH/d;->e:LaH/e;

    .line 107
    sget v0, LaH/d;->c:I

    add-int/lit8 v1, v0, 0x1

    sput v1, LaH/d;->c:I

    iput v0, p0, LaH/d;->d:I

    .line 108
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/gq;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, LaH/d;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 109
    if-eqz p2, :cond_3b

    .line 111
    iget-object v0, p0, LaH/d;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {p2}, Lat/B;->g()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 118
    iget-object v0, p0, LaH/d;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x33

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 119
    return-void

    .line 114
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private s()V
    .registers 11

    .prologue
    const/16 v6, 0x16

    const/16 v1, 0x11

    const/4 v5, 0x0

    .line 243
    .line 246
    iget-object v0, p0, LaH/d;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 247
    iget-object v0, p0, LaH/d;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 248
    invoke-virtual {v2, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    move v0, v5

    .line 250
    :goto_18
    if-ge v0, v4, :cond_2c

    .line 251
    invoke-virtual {v2, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 253
    const/16 v3, 0x19

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v1, v5

    .line 250
    add-int/lit8 v5, v0, 0x1

    move v0, v5

    move v5, v1

    goto :goto_18

    :cond_2b
    move v4, v5

    .line 257
    :cond_2c
    if-nez v4, :cond_2f

    .line 267
    :goto_2e
    return-void

    .line 260
    :cond_2f
    const-string v0, "sv"

    iget-wide v1, p0, LaH/d;->j:J

    iget-wide v6, p0, LaH/d;->i:J

    sub-long/2addr v1, v6

    long-to-int v1, v1

    iget-wide v2, p0, LaH/d;->k:J

    iget-wide v6, p0, LaH/d;->i:J

    sub-long/2addr v2, v6

    long-to-int v2, v2

    iget-wide v6, p0, LaH/d;->l:J

    iget-wide v8, p0, LaH/d;->i:J

    sub-long/2addr v6, v8

    long-to-int v3, v6

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/I;->a(Ljava/lang/String;IIIII)V

    goto :goto_2e
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 155
    const/16 v0, 0x28

    return v0
.end method

.method public a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x35

    .line 144
    iget-object v0, p0, LaH/d;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 146
    const/16 v1, 0x36

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 147
    const/16 v1, 0x37

    invoke-virtual {v0, v1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 148
    iget-object v1, p0, LaH/d;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 149
    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 4
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, LaH/d;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 166
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, LaH/d;->j:J

    .line 167
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-boolean p1, p0, LaH/d;->h:Z

    .line 126
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 186
    iget-boolean v0, p0, LaH/d;->a:Z

    if-eqz v0, :cond_11

    .line 199
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 203
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataInput;->skipBytes(I)I

    .line 230
    :goto_10
    return v4

    .line 206
    :cond_11
    :try_start_11
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, LaH/d;->k:J

    .line 207
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/gq;->m:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, LaH/d;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 209
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, LaH/d;->l:J

    .line 210
    invoke-direct {p0}, LaH/d;->s()V
    :try_end_38
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_38} :catch_39

    goto :goto_10

    .line 211
    :catch_39
    move-exception v0

    .line 225
    iget-object v1, p0, LaH/d;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->remove(II)V

    .line 226
    iput-boolean v4, p0, LaH/d;->a:Z

    .line 227
    throw v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 160
    iget-boolean v0, p0, LaH/d;->h:Z

    return v0
.end method

.method public k()Z
    .registers 3

    .prologue
    .line 281
    iget-object v0, p0, LaH/d;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public l()Z
    .registers 3

    .prologue
    .line 292
    iget-object v0, p0, LaH/d;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public l_()V
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, LaH/d;->e:LaH/e;

    if-eqz v0, :cond_9

    .line 237
    iget-object v0, p0, LaH/d;->e:LaH/e;

    invoke-interface {v0, p0}, LaH/e;->a(LaH/d;)V

    .line 239
    :cond_9
    return-void
.end method

.method public m()LS/f;
    .registers 5

    .prologue
    .line 301
    iget-object v0, p0, LaH/d;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 302
    const/4 v0, 0x0

    .line 305
    :goto_b
    return-object v0

    .line 304
    :cond_c
    invoke-virtual {p0}, LaH/d;->n()[B

    move-result-object v0

    .line 305
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, LS/h;->a([BII)LS/f;

    move-result-object v0

    goto :goto_b
.end method

.method public n()[B
    .registers 3

    .prologue
    .line 313
    iget-object v0, p0, LaH/d;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public o()V
    .registers 4

    .prologue
    .line 325
    sget v0, LaH/d;->b:I

    if-lez v0, :cond_20

    iget-object v0, p0, LaH/d;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 331
    invoke-virtual {p0}, LaH/d;->r()LY/d;

    move-result-object v0

    .line 332
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LY/d;->b(I)V

    .line 333
    sget v1, LaH/d;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, LY/d;->a(J)V

    .line 334
    invoke-virtual {v0}, LY/d;->g()V

    .line 338
    :goto_1f
    return-void

    .line 336
    :cond_20
    invoke-virtual {p0}, LaH/d;->p()V

    goto :goto_1f
.end method

.method p()V
    .registers 2

    .prologue
    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, LaH/d;->m:Z

    .line 355
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lac/h;->c(Lac/g;)V

    .line 356
    return-void
.end method

.method r()LY/d;
    .registers 3

    .prologue
    .line 377
    new-instance v0, LY/d;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, v1, p0}, LY/d;-><init>(LY/c;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public run()V
    .registers 1

    .prologue
    .line 343
    invoke-virtual {p0}, LaH/d;->p()V

    .line 344
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SVR["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LaH/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
