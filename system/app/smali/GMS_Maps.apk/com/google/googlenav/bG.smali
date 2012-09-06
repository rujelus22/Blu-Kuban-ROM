.class Lcom/google/googlenav/bg;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/google/googlenav/bf;

.field private h:Z


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 228
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 159
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/bg;->b:J

    .line 161
    iput v2, p0, Lcom/google/googlenav/bg;->d:I

    .line 163
    iput v2, p0, Lcom/google/googlenav/bg;->f:I

    .line 229
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bz()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bg;->c:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/bg;->b:J

    .line 231
    iput p2, p0, Lcom/google/googlenav/bg;->a:I

    .line 232
    iput-object p3, p0, Lcom/google/googlenav/bg;->g:Lcom/google/googlenav/bf;

    .line 233
    return-void
.end method

.method public static a(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)Lcom/google/googlenav/bg;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    new-instance v0, Lcom/google/googlenav/bg;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p2}, Lcom/google/googlenav/bg;-><init>(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)V

    .line 187
    iput p1, v0, Lcom/google/googlenav/bg;->f:I

    .line 188
    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ai;Lcom/google/googlenav/bf;)Lcom/google/googlenav/bg;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 170
    new-instance v0, Lcom/google/googlenav/bg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/google/googlenav/bg;-><init>(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)V

    .line 172
    return-object v0
.end method

.method public static b(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)Lcom/google/googlenav/bg;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    new-instance v0, Lcom/google/googlenav/bg;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p2}, Lcom/google/googlenav/bg;-><init>(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)V

    .line 203
    iput p1, v0, Lcom/google/googlenav/bg;->d:I

    .line 204
    return-object v0
.end method

.method public static b(Lcom/google/googlenav/ai;Lcom/google/googlenav/bf;)Lcom/google/googlenav/bg;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 177
    new-instance v0, Lcom/google/googlenav/bg;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1}, Lcom/google/googlenav/bg;-><init>(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)V

    .line 179
    return-object v0
.end method

.method public static c(Lcom/google/googlenav/ai;Lcom/google/googlenav/bf;)Lcom/google/googlenav/bg;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 193
    new-instance v0, Lcom/google/googlenav/bg;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/googlenav/bg;-><init>(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)V

    .line 195
    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 237
    const/16 v0, 0x4e

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 247
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/gd;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 250
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlenav/bg;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 252
    iget-wide v1, p0, Lcom/google/googlenav/bg;->b:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1c

    .line 253
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/googlenav/bg;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 256
    :cond_1c
    iget-object v1, p0, Lcom/google/googlenav/bg;->c:Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 257
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/bg;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 260
    :cond_26
    iget v1, p0, Lcom/google/googlenav/bg;->d:I

    if-eq v1, v5, :cond_30

    .line 261
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/googlenav/bg;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 264
    :cond_30
    iget-object v1, p0, Lcom/google/googlenav/bg;->e:Ljava/lang/String;

    if-eqz v1, :cond_3a

    .line 265
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlenav/bg;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 268
    :cond_3a
    iget v1, p0, Lcom/google/googlenav/bg;->f:I

    if-eq v1, v5, :cond_44

    .line 269
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/googlenav/bg;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 272
    :cond_44
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 273
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 278
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/gd;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 280
    invoke-static {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    .line 283
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 285
    invoke-static {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 288
    packed-switch v1, :pswitch_data_24

    .line 295
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Las/f;->a(I)V

    .line 298
    :goto_1f
    return v3

    .line 290
    :pswitch_20
    iput-boolean v3, p0, Lcom/google/googlenav/bg;->h:Z

    goto :goto_1f

    .line 288
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
    .end packed-switch
.end method

.method public l_()V
    .registers 2

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/google/googlenav/bg;->h:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/bg;->g:Lcom/google/googlenav/bf;

    if-eqz v0, :cond_d

    .line 304
    iget-object v0, p0, Lcom/google/googlenav/bg;->g:Lcom/google/googlenav/bf;

    invoke-interface {v0}, Lcom/google/googlenav/bf;->a()V

    .line 306
    :cond_d
    return-void
.end method

.method public q()Z
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method
