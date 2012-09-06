.class Li/H;
.super Lac/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Li/E;

.field private final b:Ljava/util/Locale;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Li/F;


# direct methods
.method public constructor <init>(Li/E;Ljava/util/Locale;ILi/F;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 385
    invoke-virtual {p1, p3}, Li/E;->a(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Li/H;-><init>(Li/E;Ljava/util/Locale;ILjava/lang/String;Li/F;)V

    .line 386
    return-void
.end method

.method public constructor <init>(Li/E;Ljava/util/Locale;ILjava/lang/String;Li/F;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Li/H;->a:Li/E;

    invoke-direct {p0}, Lac/a;-><init>()V

    .line 390
    iput-object p2, p0, Li/H;->b:Ljava/util/Locale;

    .line 391
    iput p3, p0, Li/H;->c:I

    .line 392
    iput-object p4, p0, Li/H;->d:Ljava/lang/String;

    .line 393
    iput-object p5, p0, Li/H;->e:Li/F;

    .line 394
    return-void
.end method

.method static synthetic a(Li/H;)I
    .registers 2
    .parameter

    .prologue
    .line 376
    iget v0, p0, Li/H;->c:I

    return v0
.end method

.method static synthetic b(Li/H;)Ljava/util/Locale;
    .registers 2
    .parameter

    .prologue
    .line 376
    iget-object v0, p0, Li/H;->b:Ljava/util/Locale;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 461
    const/16 v0, 0x27

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6
    .parameter

    .prologue
    .line 398
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/fg;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 400
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/file/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Li/H;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 403
    iget-object v1, p0, Li/H;->e:Li/F;

    if-eqz v1, :cond_2e

    .line 404
    const/4 v1, 0x2

    iget-object v2, p0, Li/H;->e:Li/F;

    invoke-virtual {v2}, Li/F;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 407
    :cond_2e
    invoke-virtual {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v0

    .line 408
    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 409
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 410
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 415
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/fg;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v2, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 418
    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    if-nez v3, :cond_2f

    .line 419
    const-string v1, "CannedSpeechManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty response for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Li/H;->b:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " voice bundle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :goto_2e
    return v0

    .line 425
    :cond_2f
    invoke-virtual {v2, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 428
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 432
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_5b

    .line 435
    iget-object v2, p0, Li/H;->b:Ljava/util/Locale;

    iget v3, p0, Li/H;->c:I

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v4

    iget-object v6, p0, Li/H;->a:Li/E;

    invoke-static {v6}, Li/E;->a(Li/E;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Li/F;->a(Ljava/util/Locale;IJLjava/lang/String;)Li/F;

    move-result-object v2

    .line 438
    iget-object v3, p0, Li/H;->a:Li/E;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v0

    invoke-static {v3, p0, v2, v0}, Li/E;->a(Li/E;Li/H;Li/F;[B)V

    :goto_59
    move v0, v1

    .line 456
    goto :goto_2e

    .line 442
    :cond_5b
    const/16 v0, 0x130

    if-ne v2, v0, :cond_74

    .line 443
    iget-object v0, p0, Li/H;->e:Li/F;

    if-eqz v0, :cond_6e

    .line 444
    iget-object v0, p0, Li/H;->e:Li/F;

    invoke-virtual {v0}, Li/F;->h()V

    .line 445
    iget-object v0, p0, Li/H;->a:Li/E;

    invoke-static {v0}, Li/E;->b(Li/E;)V

    goto :goto_59

    .line 447
    :cond_6e
    iget-object v0, p0, Li/H;->a:Li/E;

    invoke-static {v0, p0}, Li/E;->a(Li/E;Li/H;)V

    goto :goto_59

    .line 449
    :cond_74
    const/16 v0, 0x194

    if-ne v2, v0, :cond_98

    .line 450
    const-string v0, "CannedSpeechManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get voice bundle for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Li/H;->b:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Li/H;->a:Li/E;

    invoke-static {v0, p0}, Li/E;->b(Li/E;Li/H;)V

    goto :goto_59

    .line 453
    :cond_98
    const-string v0, "CannedSpeechManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get voice bundle for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Li/H;->b:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Li/H;->a:Li/E;

    invoke-static {v0, p0}, Li/E;->a(Li/E;Li/H;)V

    goto :goto_59
.end method
