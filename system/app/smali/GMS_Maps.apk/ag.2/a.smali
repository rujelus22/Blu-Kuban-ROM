.class public LaG/a;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:[B

.field private final d:Lat/B;

.field private e:Ln/B;

.field private final f:Lat/H;

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:Z

.field private k:LaG/b;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;[BLat/B;Ln/B;ZILat/H;IIIILjava/lang/String;Ljava/lang/String;LaG/b;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 200
    iput-object p8, p0, LaG/a;->f:Lat/H;

    .line 201
    iput p9, p0, LaG/a;->g:I

    .line 202
    iput p10, p0, LaG/a;->h:I

    .line 208
    iput p1, p0, LaG/a;->a:I

    .line 209
    iput-object p2, p0, LaG/a;->b:Ljava/lang/String;

    .line 210
    iput-object p3, p0, LaG/a;->c:[B

    .line 212
    iput-object p4, p0, LaG/a;->d:Lat/B;

    .line 213
    iput-object p5, p0, LaG/a;->e:Ln/B;

    .line 214
    iput-boolean p6, p0, LaG/a;->j:Z

    .line 215
    iput p7, p0, LaG/a;->i:I

    .line 216
    iput-object p14, p0, LaG/a;->q:Ljava/lang/String;

    .line 217
    iput-object p15, p0, LaG/a;->k:LaG/b;

    .line 220
    iput p11, p0, LaG/a;->n:I

    .line 221
    iput p12, p0, LaG/a;->o:I

    .line 222
    iput-object p13, p0, LaG/a;->p:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[BLat/B;Ln/B;ZILat/H;IILjava/lang/String;LaG/b;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 152
    iput-object p8, p0, LaG/a;->f:Lat/H;

    .line 153
    iput p9, p0, LaG/a;->g:I

    .line 154
    iput p10, p0, LaG/a;->h:I

    .line 165
    iput p1, p0, LaG/a;->a:I

    .line 166
    iput-object p2, p0, LaG/a;->b:Ljava/lang/String;

    .line 167
    iput-object p3, p0, LaG/a;->c:[B

    .line 169
    iput-object p4, p0, LaG/a;->d:Lat/B;

    .line 170
    iput-object p5, p0, LaG/a;->e:Ln/B;

    .line 171
    iput-boolean p6, p0, LaG/a;->j:Z

    .line 172
    iput p7, p0, LaG/a;->i:I

    .line 173
    iput-object p11, p0, LaG/a;->q:Ljava/lang/String;

    .line 174
    iput-object p12, p0, LaG/a;->k:LaG/b;

    .line 175
    return-void
.end method

.method private static a(I)Z
    .registers 2
    .parameter

    .prologue
    .line 343
    const/4 v0, 0x5

    if-eq p0, v0, :cond_9

    const/4 v0, 0x6

    if-eq p0, v0, :cond_9

    const/4 v0, 0x7

    if-ne p0, v0, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 238
    const/16 v0, 0x4f

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 11
    .parameter

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 243
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/fc;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 244
    iget v1, p0, LaG/a;->a:I

    invoke-virtual {v0, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 245
    iget-object v1, p0, LaG/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 246
    iget-object v1, p0, LaG/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 248
    :cond_1a
    iget-object v1, p0, LaG/a;->c:[B

    if-eqz v1, :cond_24

    .line 249
    const/4 v1, 0x7

    iget-object v2, p0, LaG/a;->c:[B

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBytes(I[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 251
    :cond_24
    iget-boolean v1, p0, LaG/a;->j:Z

    invoke-virtual {v0, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 252
    const/16 v1, 0x8

    iget v2, p0, LaG/a;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 254
    iget-object v1, p0, LaG/a;->q:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 255
    const/16 v1, 0xb

    iget-object v2, p0, LaG/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 259
    :cond_3f
    iget-object v1, p0, LaG/a;->d:Lat/B;

    invoke-static {v1}, Lat/C;->d(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 260
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 261
    iget-object v1, p0, LaG/a;->f:Lat/H;

    invoke-virtual {v1}, Lat/H;->a()Lat/B;

    move-result-object v1

    iget v2, p0, LaG/a;->g:I

    iget v3, p0, LaG/a;->h:I

    iget-object v4, p0, LaG/a;->f:Lat/H;

    invoke-virtual {v4}, Lat/H;->b()Lat/Y;

    move-result-object v4

    invoke-virtual {v4}, Lat/Y;->a()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lat/C;->a(Lat/B;III)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 264
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 267
    iget-object v1, p0, LaG/a;->e:Ln/B;

    if-eqz v1, :cond_82

    .line 268
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ei;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 269
    iget-object v2, p0, LaG/a;->e:Ln/B;

    invoke-virtual {v2}, Ln/B;->a()Ln/p;

    move-result-object v2

    invoke-virtual {v2}, Ln/p;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 270
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 274
    :cond_82
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/fc;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 275
    iget v2, p0, LaG/a;->a:I

    invoke-static {v2}, LaG/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 276
    iget v2, p0, LaG/a;->n:I

    invoke-virtual {v1, v6, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 277
    iget v2, p0, LaG/a;->o:I

    invoke-virtual {v1, v7, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 278
    iget-object v2, p0, LaG/a;->p:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 282
    :cond_a0
    :goto_a0
    invoke-virtual {v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 283
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 286
    :cond_aa
    iget-object v1, p0, LaG/a;->s:[B

    if-eqz v1, :cond_b8

    iget-object v1, p0, LaG/a;->s:[B

    array-length v1, v1

    if-lez v1, :cond_b8

    .line 287
    iget-object v1, p0, LaG/a;->s:[B

    invoke-virtual {v0, v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBytes(I[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 290
    :cond_b8
    iget-object v1, p0, LaG/a;->r:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c7

    .line 291
    const/16 v1, 0xa

    iget-object v2, p0, LaG/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 294
    :cond_c7
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 295
    return-void

    .line 279
    :cond_cd
    iget v2, p0, LaG/a;->a:I

    if-ne v2, v8, :cond_a0

    iget-object v2, p0, LaG/a;->p:Ljava/lang/String;

    if-eqz v2, :cond_a0

    .line 280
    iget-object v2, p0, LaG/a;->p:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_a0
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 299
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/fc;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 301
    invoke-static {v0, v3, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    iput v1, p0, LaG/a;->l:I

    .line 305
    iput v2, p0, LaG/a;->m:I

    .line 306
    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 307
    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 308
    invoke-static {v0, v3, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    iput v0, p0, LaG/a;->m:I

    .line 313
    :cond_21
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget v1, p0, LaG/a;->m:I

    invoke-virtual {v0, v1}, Las/f;->a(I)V

    .line 315
    return v3
.end method

.method public l_()V
    .registers 3

    .prologue
    .line 321
    iget v0, p0, LaG/a;->l:I

    packed-switch v0, :pswitch_data_1c

    .line 336
    :cond_5
    :goto_5
    return-void

    .line 323
    :pswitch_6
    iget-object v0, p0, LaG/a;->k:LaG/b;

    if-eqz v0, :cond_5

    .line 324
    iget-object v0, p0, LaG/a;->k:LaG/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LaG/b;->a(I)V

    goto :goto_5

    .line 330
    :pswitch_11
    iget-object v0, p0, LaG/a;->k:LaG/b;

    if-eqz v0, :cond_5

    .line 331
    iget-object v0, p0, LaG/a;->k:LaG/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LaG/b;->a(I)V

    goto :goto_5

    .line 321
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_11
    .end packed-switch
.end method
