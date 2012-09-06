.class public final Lagk;
.super Ljava/lang/Object;
.source "CacheBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Laga;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laga",
            "<+",
            "Lagi;",
            ">;"
        }
    .end annotation
.end field

.field static final a:Lage;

.field static final a:Lags;

.field private static final a:Ljava/util/logging/Logger;

.field static final b:Laga;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laga",
            "<",
            "Lagh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field a:J

.field a:LafD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LafD",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field a:LagY;

.field a:LahC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LahC",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field a:LahE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LahE",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field a:Z

.field b:I

.field b:J

.field b:LafD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LafD",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field b:LagY;

.field b:Lage;

.field c:J

.field c:Laga;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laga",
            "<+",
            "Lagi;",
            ">;"
        }
    .end annotation
.end field

.field d:J

.field e:J


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const-wide/16 v1, 0x0

    .line 142
    new-instance v0, Lagl;

    invoke-direct {v0}, Lagl;-><init>()V

    invoke-static {v0}, Lagb;->a(Ljava/lang/Object;)Laga;

    move-result-object v0

    sput-object v0, Lagk;->a:Laga;

    .line 164
    new-instance v0, Lags;

    move-wide v3, v1

    move-wide v5, v1

    move-wide v7, v1

    move-wide v9, v1

    move-wide v11, v1

    invoke-direct/range {v0 .. v12}, Lags;-><init>(JJJJJJ)V

    sput-object v0, Lagk;->a:Lags;

    .line 166
    new-instance v0, Lagm;

    invoke-direct {v0}, Lagm;-><init>()V

    sput-object v0, Lagk;->b:Laga;

    .line 190
    new-instance v0, Lagn;

    invoke-direct {v0}, Lagn;-><init>()V

    sput-object v0, Lagk;->a:Lage;

    .line 197
    const-class v0, Lagk;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lagk;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const-wide/16 v1, -0x1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lagk;->a:Z

    .line 203
    iput v3, p0, Lagk;->a:I

    .line 204
    iput v3, p0, Lagk;->b:I

    .line 205
    iput-wide v1, p0, Lagk;->a:J

    .line 206
    iput-wide v1, p0, Lagk;->b:J

    .line 212
    iput-wide v1, p0, Lagk;->c:J

    .line 213
    iput-wide v1, p0, Lagk;->d:J

    .line 214
    iput-wide v1, p0, Lagk;->e:J

    .line 222
    sget-object v0, Lagk;->b:Laga;

    iput-object v0, p0, Lagk;->c:Laga;

    .line 225
    return-void
.end method

.method public static a()Lagk;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lagk",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Lagk;

    invoke-direct {v0}, Lagk;-><init>()V

    return-object v0
.end method

.method private a()V
    .registers 5

    .prologue
    .line 761
    iget-wide v0, p0, Lagk;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    const-string v1, "refreshAfterWrite requires a LoadingCache"

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 762
    return-void

    .line 761
    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private b()V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    .line 765
    iget-object v2, p0, Lagk;->a:LahE;

    if-nez v2, :cond_16

    .line 766
    iget-wide v2, p0, Lagk;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_14

    :goto_e
    const-string v1, "maximumWeight requires weigher"

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 776
    :cond_13
    :goto_13
    return-void

    :cond_14
    move v0, v1

    .line 766
    goto :goto_e

    .line 768
    :cond_16
    iget-boolean v2, p0, Lagk;->a:Z

    if-eqz v2, :cond_28

    .line 769
    iget-wide v2, p0, Lagk;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_26

    :goto_20
    const-string v1, "weigher requires maximumWeight"

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    goto :goto_13

    :cond_26
    move v0, v1

    goto :goto_20

    .line 771
    :cond_28
    iget-wide v0, p0, Lagk;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_13

    .line 772
    sget-object v0, Lagk;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "ignoring weigher specified without maximumWeight"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_13
.end method


# virtual methods
.method a()I
    .registers 3

    .prologue
    .line 296
    iget v0, p0, Lagk;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x10

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lagk;->a:I

    goto :goto_7
.end method

.method a()J
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 426
    iget-wide v2, p0, Lagk;->c:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_e

    iget-wide v2, p0, Lagk;->d:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_f

    .line 429
    :cond_e
    :goto_e
    return-wide v0

    :cond_f
    iget-object v0, p0, Lagk;->a:LahE;

    if-nez v0, :cond_16

    iget-wide v0, p0, Lagk;->a:J

    goto :goto_e

    :cond_16
    iget-wide v0, p0, Lagk;->b:J

    goto :goto_e
.end method

.method a()LafD;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LafD",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lagk;->a:LafD;

    invoke-virtual {p0}, Lagk;->a()LagY;

    move-result-object v1

    invoke-virtual {v1}, LagY;->a()LafD;

    move-result-object v1

    invoke-static {v0, v1}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LafD;

    return-object v0
.end method

.method a()LagY;
    .registers 3

    .prologue
    .line 472
    iget-object v0, p0, Lagk;->a:LagY;

    sget-object v1, LagY;->a:LagY;

    invoke-static {v0, v1}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LagY;

    return-object v0
.end method

.method a()Laga;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laga",
            "<+",
            "Lagi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    iget-object v0, p0, Lagk;->c:Laga;

    return-object v0
.end method

.method a(Z)Lage;
    .registers 3
    .parameter

    .prologue
    .line 659
    iget-object v0, p0, Lagk;->b:Lage;

    if-eqz v0, :cond_7

    .line 660
    iget-object v0, p0, Lagk;->b:Lage;

    .line 662
    :goto_6
    return-object v0

    :cond_7
    if-eqz p1, :cond_e

    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    goto :goto_6

    :cond_e
    sget-object v0, Lagk;->a:Lage;

    goto :goto_6
.end method

.method public a()Lagj;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lagj",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 755
    invoke-direct {p0}, Lagk;->b()V

    .line 756
    invoke-direct {p0}, Lagk;->a()V

    .line 757
    new-instance v0, LagR;

    invoke-direct {v0, p0}, LagR;-><init>(Lagk;)V

    return-object v0
.end method

.method a(LagY;)Lagk;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagY;",
            ")",
            "Lagk",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 466
    iget-object v0, p0, Lagk;->a:LagY;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_7
    const-string v3, "Key strength was already set to %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lagk;->a:LagY;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, LafQ;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 467
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LagY;

    iput-object v0, p0, Lagk;->a:LagY;

    .line 468
    return-object p0

    :cond_1b
    move v0, v2

    .line 466
    goto :goto_7
.end method

.method public a(Lagq;)Lagt;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lagq",
            "<-TK1;TV1;>;)",
            "Lagt",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 738
    invoke-direct {p0}, Lagk;->b()V

    .line 739
    new-instance v0, LagQ;

    invoke-direct {v0, p0, p1}, LagQ;-><init>(Lagk;Lagq;)V

    return-object v0
.end method

.method a()LahC;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "LahC",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 708
    iget-object v0, p0, Lagk;->a:LahC;

    sget-object v1, Lago;->a:Lago;

    invoke-static {v0, v1}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LahC;

    return-object v0
.end method

.method a()LahE;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "LahE",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lagk;->a:LahE;

    sget-object v1, Lagp;->a:Lagp;

    invoke-static {v0, v1}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LahE;

    return-object v0
.end method

.method b()I
    .registers 3

    .prologue
    .line 326
    iget v0, p0, Lagk;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x4

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lagk;->b:I

    goto :goto_6
.end method

.method b()J
    .registers 5

    .prologue
    .line 567
    iget-wide v0, p0, Lagk;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lagk;->c:J

    goto :goto_a
.end method

.method b()LafD;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LafD",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lagk;->b:LafD;

    invoke-virtual {p0}, Lagk;->b()LagY;

    move-result-object v1

    invoke-virtual {v1}, LagY;->a()LafD;

    move-result-object v1

    invoke-static {v0, v1}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LafD;

    return-object v0
.end method

.method b()LagY;
    .registers 3

    .prologue
    .line 536
    iget-object v0, p0, Lagk;->b:LagY;

    sget-object v1, LagY;->a:LagY;

    invoke-static {v0, v1}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LagY;

    return-object v0
.end method

.method public b()Lagk;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lagk",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 462
    sget-object v0, LagY;->c:LagY;

    invoke-virtual {p0, v0}, Lagk;->a(LagY;)Lagk;

    move-result-object v0

    return-object v0
.end method

.method c()J
    .registers 5

    .prologue
    .line 601
    iget-wide v0, p0, Lagk;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lagk;->d:J

    goto :goto_a
.end method

.method d()J
    .registers 5

    .prologue
    .line 639
    iget-wide v0, p0, Lagk;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lagk;->e:J

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v3, -0x1

    const-wide/16 v5, -0x1

    .line 784
    invoke-static {p0}, LafL;->a(Ljava/lang/Object;)LafN;

    move-result-object v0

    .line 785
    iget v1, p0, Lagk;->a:I

    if-eq v1, v3, :cond_12

    .line 786
    const-string v1, "initialCapacity"

    iget v2, p0, Lagk;->a:I

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;I)LafN;

    .line 788
    :cond_12
    iget v1, p0, Lagk;->b:I

    if-eq v1, v3, :cond_1d

    .line 789
    const-string v1, "concurrencyLevel"

    iget v2, p0, Lagk;->b:I

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;I)LafN;

    .line 791
    :cond_1d
    iget-wide v1, p0, Lagk;->b:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_2e

    .line 792
    iget-object v1, p0, Lagk;->a:LahE;

    if-nez v1, :cond_b4

    .line 793
    const-string v1, "maximumSize"

    iget-wide v2, p0, Lagk;->b:J

    invoke-virtual {v0, v1, v2, v3}, LafN;->a(Ljava/lang/String;J)LafN;

    .line 798
    :cond_2e
    :goto_2e
    iget-wide v1, p0, Lagk;->c:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4e

    .line 799
    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lagk;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    .line 801
    :cond_4e
    iget-wide v1, p0, Lagk;->d:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_6e

    .line 802
    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lagk;->d:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    .line 804
    :cond_6e
    iget-object v1, p0, Lagk;->a:LagY;

    if-eqz v1, :cond_81

    .line 805
    const-string v1, "keyStrength"

    iget-object v2, p0, Lagk;->a:LagY;

    invoke-virtual {v2}, LagY;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lafk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    .line 807
    :cond_81
    iget-object v1, p0, Lagk;->b:LagY;

    if-eqz v1, :cond_94

    .line 808
    const-string v1, "valueStrength"

    iget-object v2, p0, Lagk;->b:LagY;

    invoke-virtual {v2}, LagY;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lafk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    .line 810
    :cond_94
    iget-object v1, p0, Lagk;->a:LafD;

    if-eqz v1, :cond_9d

    .line 811
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, LafN;->a(Ljava/lang/Object;)LafN;

    .line 813
    :cond_9d
    iget-object v1, p0, Lagk;->b:LafD;

    if-eqz v1, :cond_a6

    .line 814
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, LafN;->a(Ljava/lang/Object;)LafN;

    .line 816
    :cond_a6
    iget-object v1, p0, Lagk;->a:LahC;

    if-eqz v1, :cond_af

    .line 817
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, LafN;->a(Ljava/lang/Object;)LafN;

    .line 819
    :cond_af
    invoke-virtual {v0}, LafN;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 795
    :cond_b4
    const-string v1, "maximumWeight"

    iget-wide v2, p0, Lagk;->b:J

    invoke-virtual {v0, v1, v2, v3}, LafN;->a(Ljava/lang/String;J)LafN;

    goto/16 :goto_2e
.end method
