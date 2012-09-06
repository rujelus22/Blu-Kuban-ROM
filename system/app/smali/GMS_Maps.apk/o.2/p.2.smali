.class public Lo/P;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lo/Q;

.field private final b:Ln/s;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-static {p1}, Lo/P;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lo/Q;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1}, Lt/e;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/s;

    move-result-object v1

    if-eqz p2, :cond_25

    :goto_f
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, p2, v2}, Lo/P;-><init>(Lo/Q;Ln/s;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {p1}, Lo/P;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/P;->g:Ljava/lang/String;

    .line 157
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lo/P;->f:I

    .line 158
    return-void

    .line 151
    :cond_25
    invoke-static {p1}, Lo/P;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object p2

    goto :goto_f
.end method

.method public constructor <init>(Ljava/lang/String;Ln/s;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, v0, p2, p3, p4}, Lo/P;-><init>(Lo/Q;Ln/s;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void

    .line 130
    :cond_7
    new-instance v0, Lo/Q;

    invoke-direct {v0, p1}, Lo/Q;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public constructor <init>(Ln/s;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 161
    move-object v0, v1

    check-cast v0, Lo/Q;

    invoke-direct {p0, v0, p1, v1, v1}, Lo/P;-><init>(Lo/Q;Ln/s;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Lo/P;)V
    .registers 3
    .parameter

    .prologue
    .line 166
    iget-object v0, p1, Lo/P;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lo/P;-><init>(Lo/P;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Lo/P;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iget-object v0, p1, Lo/P;->a:Lo/Q;

    iput-object v0, p0, Lo/P;->a:Lo/Q;

    .line 175
    iget-object v0, p1, Lo/P;->b:Ln/s;

    iput-object v0, p0, Lo/P;->b:Ln/s;

    .line 176
    iput-object p2, p0, Lo/P;->c:Ljava/lang/String;

    .line 177
    iget-object v0, p1, Lo/P;->d:Ljava/lang/String;

    iput-object v0, p0, Lo/P;->d:Ljava/lang/String;

    .line 178
    iget-object v0, p1, Lo/P;->e:Ljava/lang/String;

    iput-object v0, p0, Lo/P;->e:Ljava/lang/String;

    .line 179
    iget v0, p1, Lo/P;->f:I

    iput v0, p0, Lo/P;->f:I

    .line 180
    iget-object v0, p1, Lo/P;->g:Ljava/lang/String;

    iput-object v0, p0, Lo/P;->g:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public constructor <init>(Lo/Q;Ln/s;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    if-eqz p1, :cond_1a

    if-eqz p3, :cond_1a

    invoke-virtual {p1}, Lo/Q;->a()I

    move-result v1

    if-lez v1, :cond_1a

    invoke-virtual {p1, v2}, Lo/Q;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object p3, v0

    .line 140
    :cond_1a
    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Lo/Q;->a()I

    move-result v1

    if-eqz v1, :cond_2d

    :goto_22
    iput-object p1, p0, Lo/P;->a:Lo/Q;

    .line 141
    iput-object p2, p0, Lo/P;->b:Ln/s;

    .line 142
    iput-object p3, p0, Lo/P;->c:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lo/P;->d:Ljava/lang/String;

    .line 144
    iput v2, p0, Lo/P;->f:I

    .line 145
    return-void

    :cond_2d
    move-object p1, v0

    .line 140
    goto :goto_22
.end method

.method private static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lo/Q;
    .registers 8
    .parameter

    .prologue
    const/4 v6, 0x4

    .line 328
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 329
    if-eqz v1, :cond_3d

    .line 330
    invoke-virtual {v1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 331
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 332
    const/4 v0, 0x0

    :goto_12
    if-ge v0, v2, :cond_24

    .line 333
    invoke-virtual {v1, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v4

    .line 334
    invoke-static {v4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 335
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 338
    :cond_24
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3d

    .line 339
    new-instance v1, Lo/Q;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, v0}, Lo/Q;-><init>([Ljava/lang/String;)V

    move-object v0, v1

    .line 346
    :goto_3c
    return-object v0

    .line 342
    :cond_3d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 344
    new-instance v0, Lo/Q;

    invoke-direct {v0, v1}, Lo/Q;-><init>(Ljava/lang/String;)V

    goto :goto_3c

    .line 346
    :cond_4e
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method private static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 351
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_13

    .line 353
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 358
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/16 v3, 0x77

    .line 363
    const/4 v0, 0x0

    .line 364
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 365
    if-eqz v1, :cond_18

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 366
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/googlenav/az;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 368
    :cond_18
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 192
    iput p1, p0, Lo/P;->f:I

    .line 193
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lo/P;->e:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 184
    iget v0, p0, Lo/P;->f:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lo/P;->f:I

    return v0
.end method

.method public c()Ln/s;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lo/P;->b:Ln/s;

    return-object v0
.end method

.method public d()Lo/Q;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lo/P;->a:Lo/Q;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lo/P;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 261
    if-ne p0, p1, :cond_5

    .line 316
    :cond_4
    :goto_4
    return v0

    .line 264
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 265
    goto :goto_4

    .line 267
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 268
    goto :goto_4

    .line 270
    :cond_15
    check-cast p1, Lo/P;

    .line 271
    iget-object v2, p0, Lo/P;->a:Lo/Q;

    if-nez v2, :cond_21

    .line 272
    iget-object v2, p1, Lo/P;->a:Lo/Q;

    if-eqz v2, :cond_2d

    move v0, v1

    .line 273
    goto :goto_4

    .line 275
    :cond_21
    iget-object v2, p0, Lo/P;->a:Lo/Q;

    iget-object v3, p1, Lo/P;->a:Lo/Q;

    invoke-virtual {v2, v3}, Lo/Q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    .line 276
    goto :goto_4

    .line 278
    :cond_2d
    iget v2, p0, Lo/P;->f:I

    iget v3, p1, Lo/P;->f:I

    if-eq v2, v3, :cond_35

    move v0, v1

    .line 279
    goto :goto_4

    .line 281
    :cond_35
    iget-object v2, p0, Lo/P;->b:Ln/s;

    if-nez v2, :cond_3f

    .line 282
    iget-object v2, p1, Lo/P;->b:Ln/s;

    if-eqz v2, :cond_4b

    move v0, v1

    .line 283
    goto :goto_4

    .line 285
    :cond_3f
    iget-object v2, p0, Lo/P;->b:Ln/s;

    iget-object v3, p1, Lo/P;->b:Ln/s;

    invoke-virtual {v2, v3}, Ln/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    move v0, v1

    .line 286
    goto :goto_4

    .line 288
    :cond_4b
    iget-object v2, p0, Lo/P;->c:Ljava/lang/String;

    if-nez v2, :cond_55

    .line 289
    iget-object v2, p1, Lo/P;->c:Ljava/lang/String;

    if-eqz v2, :cond_61

    move v0, v1

    .line 290
    goto :goto_4

    .line 292
    :cond_55
    iget-object v2, p0, Lo/P;->c:Ljava/lang/String;

    iget-object v3, p1, Lo/P;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    move v0, v1

    .line 293
    goto :goto_4

    .line 295
    :cond_61
    iget-object v2, p0, Lo/P;->d:Ljava/lang/String;

    if-nez v2, :cond_6b

    .line 296
    iget-object v2, p1, Lo/P;->d:Ljava/lang/String;

    if-eqz v2, :cond_77

    move v0, v1

    .line 297
    goto :goto_4

    .line 299
    :cond_6b
    iget-object v2, p0, Lo/P;->d:Ljava/lang/String;

    iget-object v3, p1, Lo/P;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    move v0, v1

    .line 300
    goto :goto_4

    .line 302
    :cond_77
    iget-object v2, p0, Lo/P;->g:Ljava/lang/String;

    if-nez v2, :cond_81

    .line 303
    iget-object v2, p1, Lo/P;->g:Ljava/lang/String;

    if-eqz v2, :cond_8e

    move v0, v1

    .line 304
    goto :goto_4

    .line 306
    :cond_81
    iget-object v2, p0, Lo/P;->g:Ljava/lang/String;

    iget-object v3, p1, Lo/P;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    move v0, v1

    .line 307
    goto/16 :goto_4

    .line 309
    :cond_8e
    iget-object v2, p0, Lo/P;->e:Ljava/lang/String;

    if-nez v2, :cond_99

    .line 310
    iget-object v2, p1, Lo/P;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 311
    goto/16 :goto_4

    .line 313
    :cond_99
    iget-object v2, p0, Lo/P;->e:Ljava/lang/String;

    iget-object v3, p1, Lo/P;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 314
    goto/16 :goto_4
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lo/P;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lo/P;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    .line 227
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/aY;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 228
    iget-object v1, p0, Lo/P;->a:Lo/Q;

    if-eqz v1, :cond_15

    .line 229
    const/4 v1, 0x1

    iget-object v2, p0, Lo/P;->a:Lo/Q;

    invoke-virtual {v2}, Lo/Q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 231
    :cond_15
    iget-object v1, p0, Lo/P;->b:Ln/s;

    if-eqz v1, :cond_29

    .line 232
    const/4 v1, 0x2

    iget-object v2, p0, Lo/P;->b:Ln/s;

    invoke-static {v2}, Lt/e;->a(Ln/s;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 234
    const/4 v1, 0x5

    iget v2, p0, Lo/P;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 236
    :cond_29
    iget-object v1, p0, Lo/P;->d:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 237
    const/4 v1, 0x3

    iget-object v2, p0, Lo/P;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 240
    :cond_33
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 245
    .line 247
    iget-object v0, p0, Lo/P;->a:Lo/Q;

    if-nez v0, :cond_35

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    .line 248
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lo/P;->f:I

    add-int/2addr v0, v2

    .line 249
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lo/P;->b:Ln/s;

    if-nez v0, :cond_3c

    move v0, v1

    :goto_14
    add-int/2addr v0, v2

    .line 250
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lo/P;->c:Ljava/lang/String;

    if-nez v0, :cond_43

    move v0, v1

    :goto_1c
    add-int/2addr v0, v2

    .line 251
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lo/P;->d:Ljava/lang/String;

    if-nez v0, :cond_4a

    move v0, v1

    :goto_24
    add-int/2addr v0, v2

    .line 253
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lo/P;->g:Ljava/lang/String;

    if-nez v0, :cond_51

    move v0, v1

    :goto_2c
    add-int/2addr v0, v2

    .line 254
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/P;->e:Ljava/lang/String;

    if-nez v2, :cond_58

    :goto_33
    add-int/2addr v0, v1

    .line 256
    return v0

    .line 247
    :cond_35
    iget-object v0, p0, Lo/P;->a:Lo/Q;

    invoke-virtual {v0}, Lo/Q;->hashCode()I

    move-result v0

    goto :goto_6

    .line 249
    :cond_3c
    iget-object v0, p0, Lo/P;->b:Ln/s;

    invoke-virtual {v0}, Ln/s;->hashCode()I

    move-result v0

    goto :goto_14

    .line 250
    :cond_43
    iget-object v0, p0, Lo/P;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1c

    .line 251
    :cond_4a
    iget-object v0, p0, Lo/P;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_24

    .line 253
    :cond_51
    iget-object v0, p0, Lo/P;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2c

    .line 254
    :cond_58
    iget-object v1, p0, Lo/P;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_33
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[addr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/P;->a:Lo/Q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " point:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/P;->b:Ln/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/P;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/P;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/P;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/P;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
