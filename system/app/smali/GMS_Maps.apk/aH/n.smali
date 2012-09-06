.class public Lah/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Lah/n;->a:Ljava/lang/String;

    .line 299
    iput-object p2, p0, Lah/n;->b:Ljava/lang/Long;

    .line 300
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lah/n;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 343
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 346
    :goto_14
    new-instance v2, Lah/n;

    invoke-direct {v2, v1, v0}, Lah/n;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v2

    .line 344
    :cond_1a
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lah/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lah/n;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public c()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    .line 353
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ag;->v:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 354
    const/4 v1, 0x2

    iget-object v2, p0, Lah/n;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 355
    iget-object v1, p0, Lah/n;->a:Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 356
    const/4 v1, 0x1

    iget-object v2, p0, Lah/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 358
    :cond_1b
    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lah/n;->a:Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x8

    return v0

    :cond_8
    iget-object v0, p0, Lah/n;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 312
    if-ne p0, p1, :cond_5

    .line 328
    :cond_4
    :goto_4
    return v0

    .line 315
    :cond_5
    instance-of v2, p1, Lah/n;

    if-nez v2, :cond_b

    move v0, v1

    .line 316
    goto :goto_4

    .line 319
    :cond_b
    check-cast p1, Lah/n;

    .line 321
    iget-object v2, p0, Lah/n;->b:Ljava/lang/Long;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lah/n;->b:Ljava/lang/Long;

    iget-object v3, p1, Lah/n;->b:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_1b
    move v0, v1

    .line 322
    goto :goto_4

    .line 321
    :cond_1d
    iget-object v2, p1, Lah/n;->b:Ljava/lang/Long;

    if-nez v2, :cond_1b

    .line 324
    :cond_21
    iget-object v2, p0, Lah/n;->a:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lah/n;->a:Ljava/lang/String;

    iget-object v3, p1, Lah/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_2f
    move v0, v1

    .line 325
    goto :goto_4

    .line 324
    :cond_31
    iget-object v2, p1, Lah/n;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_2f
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lah/n;->a:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lah/n;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 335
    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lah/n;->b:Ljava/lang/Long;

    if-eqz v2, :cond_17

    iget-object v1, p0, Lah/n;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_17
    add-int/2addr v0, v1

    .line 336
    return v0

    :cond_19
    move v0, v1

    .line 334
    goto :goto_b
.end method
