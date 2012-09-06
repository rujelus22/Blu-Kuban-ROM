.class public Lo/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:[Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;II[Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput p1, p0, Lo/e;->a:I

    .line 444
    iput-object p2, p0, Lo/e;->b:Ljava/lang/String;

    .line 445
    iput p3, p0, Lo/e;->c:I

    .line 446
    iput p4, p0, Lo/e;->d:I

    .line 447
    iput-object p5, p0, Lo/e;->e:[Ljava/lang/String;

    .line 448
    return-void
.end method

.method static synthetic a(Lo/e;)I
    .registers 2
    .parameter

    .prologue
    .line 416
    iget v0, p0, Lo/e;->a:I

    return v0
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lo/e;
    .registers 11
    .parameter

    .prologue
    const/4 v9, 0x4

    const/4 v0, -0x1

    const/4 v2, 0x1

    .line 472
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 473
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 474
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    .line 476
    const/4 v5, 0x0

    .line 478
    if-eqz v3, :cond_17

    if-eq v3, v2, :cond_17

    move v3, v0

    .line 481
    :cond_17
    if-ne v3, v2, :cond_20

    .line 482
    invoke-virtual {p0, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v6

    .line 484
    if-nez v6, :cond_30

    move v3, v0

    .line 498
    :cond_20
    :goto_20
    if-ltz v4, :cond_24

    if-le v4, v2, :cond_25

    :cond_24
    move v3, v0

    .line 502
    :cond_25
    new-instance v0, Lo/e;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Lo/e;-><init>(ILjava/lang/String;II[Ljava/lang/String;)V

    return-object v0

    .line 487
    :cond_30
    new-array v5, v6, [Ljava/lang/String;

    .line 488
    const/4 v2, 0x0

    :goto_33
    if-ge v2, v6, :cond_43

    .line 489
    invoke-virtual {p0, v9, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 491
    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    .line 488
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 494
    :cond_43
    add-int/lit8 v2, v6, -0x1

    goto :goto_20
.end method

.method static synthetic b(Lo/e;)I
    .registers 2
    .parameter

    .prologue
    .line 416
    iget v0, p0, Lo/e;->c:I

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Lo/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 535
    iget v0, p0, Lo/e;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 511
    if-ne p1, p0, :cond_5

    .line 523
    :cond_4
    :goto_4
    return v0

    .line 514
    :cond_5
    instance-of v2, p1, Lo/e;

    if-eqz v2, :cond_37

    .line 515
    check-cast p1, Lo/e;

    .line 516
    iget v2, p1, Lo/e;->a:I

    iget v3, p0, Lo/e;->a:I

    if-ne v2, v3, :cond_35

    iget-object v2, p1, Lo/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lo/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget v2, p1, Lo/e;->c:I

    iget v3, p0, Lo/e;->c:I

    if-ne v2, v3, :cond_35

    iget v2, p1, Lo/e;->d:I

    iget v3, p1, Lo/e;->d:I

    if-ne v2, v3, :cond_35

    iget v2, p0, Lo/e;->c:I

    if-ne v2, v0, :cond_4

    iget-object v2, p1, Lo/e;->e:[Ljava/lang/String;

    iget-object v3, p0, Lo/e;->e:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_35
    move v0, v1

    goto :goto_4

    :cond_37
    move v0, v1

    .line 523
    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 550
    iget v0, p0, Lo/e;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "[option "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    const-string v0, "id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lo/e;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string v0, "text="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lo/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    const-string v0, "type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget v0, p0, Lo/e;->c:I

    if-nez v0, :cond_65

    .line 561
    const-string v0, "boolean"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_38
    :goto_38
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    const-string v0, "default="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lo/e;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    iget v0, p0, Lo/e;->c:I

    if-ne v0, v3, :cond_7f

    .line 571
    const-string v0, ", choices={ "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    iget-object v2, p0, Lo/e;->e:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_55
    if-ge v0, v3, :cond_7a

    aget-object v4, v2, v0

    .line 573
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 562
    :cond_65
    iget v0, p0, Lo/e;->c:I

    if-ne v0, v3, :cond_6f

    .line 563
    const-string v0, "choice"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 564
    :cond_6f
    iget v0, p0, Lo/e;->c:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_38

    .line 565
    const-string v0, "invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 575
    :cond_7a
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_7f
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
