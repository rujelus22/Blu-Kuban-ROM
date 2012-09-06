.class Lcom/google/googlenav/friend/aG;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/googlenav/friend/aG;


# instance fields
.field private final b:Lcom/google/googlenav/friend/aF;

.field private final c:Lcom/google/googlenav/friend/aF;

.field private final d:Lcom/google/googlenav/friend/aF;

.field private final e:Lcom/google/googlenav/friend/aF;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 442
    new-instance v0, Lcom/google/googlenav/friend/aG;

    invoke-direct {v0}, Lcom/google/googlenav/friend/aG;-><init>()V

    sput-object v0, Lcom/google/googlenav/friend/aG;->a:Lcom/google/googlenav/friend/aG;

    return-void
.end method

.method private constructor <init>()V
    .registers 11

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    new-instance v0, Lcom/google/googlenav/friend/aF;

    const-wide/16 v1, 0x1

    const/16 v3, 0x3ce

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f020298

    const v8, 0x7f0200b7

    sget-object v9, Lcom/google/googlenav/friend/aI;->b:Lcom/google/googlenav/friend/aI;

    invoke-direct/range {v0 .. v9}, Lcom/google/googlenav/friend/aF;-><init>(JLjava/lang/String;Ljava/lang/String;JIILcom/google/googlenav/friend/aI;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/aG;->b:Lcom/google/googlenav/friend/aF;

    .line 459
    new-instance v0, Lcom/google/googlenav/friend/aF;

    const-wide/16 v1, 0x2

    const/16 v3, 0x9e

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f020217

    const v8, 0x7f020218

    sget-object v9, Lcom/google/googlenav/friend/aI;->b:Lcom/google/googlenav/friend/aI;

    invoke-direct/range {v0 .. v9}, Lcom/google/googlenav/friend/aF;-><init>(JLjava/lang/String;Ljava/lang/String;JIILcom/google/googlenav/friend/aI;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/aG;->c:Lcom/google/googlenav/friend/aF;

    .line 468
    new-instance v0, Lcom/google/googlenav/friend/aF;

    const-wide v1, -0x411daa5aff29b7b0L

    const/16 v3, 0x3dc

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f020293

    const v8, 0x7f0200b5

    sget-object v9, Lcom/google/googlenav/friend/aI;->a:Lcom/google/googlenav/friend/aI;

    invoke-direct/range {v0 .. v9}, Lcom/google/googlenav/friend/aF;-><init>(JLjava/lang/String;Ljava/lang/String;JIILcom/google/googlenav/friend/aI;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/aG;->d:Lcom/google/googlenav/friend/aF;

    .line 477
    new-instance v0, Lcom/google/googlenav/friend/aF;

    const-wide v1, -0x35c1067b89114543L

    const/16 v3, 0x3cf

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f020294

    const v8, 0x7f0200b6

    sget-object v9, Lcom/google/googlenav/friend/aI;->a:Lcom/google/googlenav/friend/aI;

    invoke-direct/range {v0 .. v9}, Lcom/google/googlenav/friend/aF;-><init>(JLjava/lang/String;Ljava/lang/String;JIILcom/google/googlenav/friend/aI;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/aG;->e:Lcom/google/googlenav/friend/aF;

    .line 485
    return-void
.end method

.method static a()Lcom/google/googlenav/friend/aG;
    .registers 1

    .prologue
    .line 488
    sget-object v0, Lcom/google/googlenav/friend/aG;->a:Lcom/google/googlenav/friend/aG;

    return-object v0
.end method


# virtual methods
.method a(Lcom/google/googlenav/friend/aF;)I
    .registers 3
    .parameter

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/googlenav/friend/aG;->d:Lcom/google/googlenav/friend/aF;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/aF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 512
    const/4 v0, 0x0

    .line 520
    :goto_9
    return v0

    .line 513
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/friend/aG;->e:Lcom/google/googlenav/friend/aF;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/aF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 514
    const/4 v0, 0x1

    goto :goto_9

    .line 515
    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/friend/aG;->b:Lcom/google/googlenav/friend/aF;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/aF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 516
    const/4 v0, 0x2

    goto :goto_9

    .line 517
    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/friend/aG;->c:Lcom/google/googlenav/friend/aF;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/aF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 518
    const/4 v0, 0x3

    goto :goto_9

    .line 520
    :cond_28
    const/4 v0, 0x4

    goto :goto_9
.end method

.method b()Lcom/google/googlenav/friend/aF;
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/googlenav/friend/aG;->b:Lcom/google/googlenav/friend/aF;

    return-object v0
.end method

.method c()Lcom/google/googlenav/friend/aF;
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/googlenav/friend/aG;->c:Lcom/google/googlenav/friend/aF;

    return-object v0
.end method

.method d()Lcom/google/googlenav/friend/aF;
    .registers 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/googlenav/friend/aG;->e:Lcom/google/googlenav/friend/aF;

    return-object v0
.end method

.method e()Lcom/google/googlenav/friend/aF;
    .registers 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/googlenav/friend/aG;->d:Lcom/google/googlenav/friend/aF;

    return-object v0
.end method
