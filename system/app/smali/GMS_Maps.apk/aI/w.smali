.class public LaI/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Lat/B;

.field private final j:I

.field private final k:Ljava/lang/String;

.field private final l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final m:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-string v0, "indexInList="

    sput-object v0, LaI/w;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lat/B;ILjava/lang/String;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 14
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
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    if-nez p1, :cond_2a

    const-string v0, ""

    :goto_7
    iput-object v0, p0, LaI/w;->b:Ljava/lang/String;

    .line 214
    invoke-static {p2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :goto_f
    iput-object p1, p0, LaI/w;->c:Ljava/lang/String;

    .line 215
    if-nez p3, :cond_15

    const-string p3, ""

    :cond_15
    iput-object p3, p0, LaI/w;->d:Ljava/lang/String;

    .line 216
    iput p4, p0, LaI/w;->e:I

    .line 217
    iput p5, p0, LaI/w;->f:I

    .line 218
    iput p6, p0, LaI/w;->g:I

    .line 219
    iput-object p7, p0, LaI/w;->h:Ljava/lang/String;

    .line 220
    iput-object p8, p0, LaI/w;->i:Lat/B;

    .line 221
    iput p9, p0, LaI/w;->j:I

    .line 222
    iput-object p10, p0, LaI/w;->k:Ljava/lang/String;

    .line 223
    iput-object p11, p0, LaI/w;->m:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 224
    iput-object p12, p0, LaI/w;->l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 225
    return-void

    :cond_2a
    move-object v0, p1

    .line 213
    goto :goto_7

    :cond_2c
    move-object p1, p2

    .line 214
    goto :goto_f
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lat/B;ILjava/lang/String;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;LaI/x;)V
    .registers 14
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
    .line 23
    invoke-direct/range {p0 .. p12}, LaI/w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lat/B;ILjava/lang/String;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 345
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 346
    :cond_4
    const/4 v0, 0x1

    .line 349
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 228
    iget v0, p0, LaI/w;->f:I

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    invoke-virtual {p0}, LaI/w;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 387
    invoke-virtual {p0}, LaI/w;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_12
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {p0}, LaI/w;->h()Lat/B;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 391
    invoke-virtual {p0}, LaI/w;->h()Lat/B;

    move-result-object v1

    invoke-virtual {v1}, Lat/B;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_28
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const/4 v1, -0x1

    if-eq p1, v1, :cond_38

    .line 395
    sget-object v1, LaI/w;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 398
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(LaI/w;)Z
    .registers 4
    .parameter

    .prologue
    .line 357
    invoke-virtual {p0}, LaI/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LaI/w;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LaI/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, LaI/w;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LaI/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LaI/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, LaI/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, LaI/w;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, LaI/w;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 244
    iget v0, p0, LaI/w;->e:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 327
    instance-of v1, p1, LaI/w;

    if-nez v1, :cond_6

    .line 331
    :cond_5
    :goto_5
    return v0

    .line 330
    :cond_6
    check-cast p1, LaI/w;

    .line 331
    iget v1, p0, LaI/w;->e:I

    invoke-virtual {p1}, LaI/w;->e()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget v1, p0, LaI/w;->f:I

    invoke-virtual {p1}, LaI/w;->a()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget v1, p0, LaI/w;->g:I

    invoke-virtual {p1}, LaI/w;->f()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, LaI/w;->b:Ljava/lang/String;

    invoke-virtual {p1}, LaI/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laa/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, LaI/w;->c:Ljava/lang/String;

    invoke-virtual {p1}, LaI/w;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laa/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, LaI/w;->d:Ljava/lang/String;

    invoke-virtual {p1}, LaI/w;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laa/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, LaI/w;->h:Ljava/lang/String;

    invoke-virtual {p1}, LaI/w;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laa/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public f()I
    .registers 2

    .prologue
    .line 248
    iget v0, p0, LaI/w;->g:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, LaI/w;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lat/B;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, LaI/w;->i:Lat/B;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 263
    iget v0, p0, LaI/w;->e:I

    packed-switch v0, :pswitch_data_1e

    .line 280
    const-string v0, "d"

    :goto_7
    return-object v0

    .line 265
    :pswitch_8
    const-string v0, "c"

    goto :goto_7

    .line 267
    :pswitch_b
    const-string v0, "h"

    goto :goto_7

    .line 269
    :pswitch_e
    const-string v0, "r"

    goto :goto_7

    .line 271
    :pswitch_11
    const-string v0, "v"

    goto :goto_7

    .line 273
    :pswitch_14
    const-string v0, "f"

    goto :goto_7

    .line 275
    :pswitch_17
    const-string v0, "p"

    goto :goto_7

    .line 277
    :pswitch_1a
    const-string v0, "d"

    goto :goto_7

    .line 263
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_14
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_17
    .end packed-switch
.end method

.method public j()Ljava/lang/String;
    .registers 4

    .prologue
    const v0, 0x7f0203d3

    const v1, 0x7f0203d1

    .line 287
    .line 288
    iget v2, p0, LaI/w;->e:I

    packed-switch v2, :pswitch_data_2a

    .line 309
    :pswitch_b
    const v0, 0x7f0203cf

    .line 312
    :goto_e
    :pswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_22
    move v0, v1

    .line 295
    goto :goto_e

    :pswitch_24
    move v0, v1

    .line 298
    goto :goto_e

    .line 300
    :pswitch_26
    const v0, 0x7f0203d0

    .line 301
    goto :goto_e

    .line 288
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_b
        :pswitch_22
        :pswitch_26
        :pswitch_e
        :pswitch_22
        :pswitch_e
    .end packed-switch
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, LaI/w;->k:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 8

    .prologue
    const/16 v4, 0xe

    const/16 v3, 0xd

    const/16 v6, 0xc

    .line 406
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/gV;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 407
    const/4 v1, 0x1

    iget v2, p0, LaI/w;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 408
    iget-object v1, p0, LaI/w;->l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_54

    .line 409
    iget-object v1, p0, LaI/w;->l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 410
    const/4 v1, 0x4

    iget-object v2, p0, LaI/w;->l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 413
    :cond_29
    iget-object v1, p0, LaI/w;->l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 414
    const/4 v1, 0x5

    iget-object v2, p0, LaI/w;->l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getDouble(I)D

    move-result-wide v2

    const-wide v4, 0x40c3880000000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 417
    :cond_42
    iget-object v1, p0, LaI/w;->l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 418
    const/4 v1, 0x3

    iget-object v2, p0, LaI/w;->l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 422
    :cond_54
    return-object v0
.end method

.method public m()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, LaI/w;->m:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaI/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " description:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaI/w;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LaI/w;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " providerId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LaI/w;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ranking:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LaI/w;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
