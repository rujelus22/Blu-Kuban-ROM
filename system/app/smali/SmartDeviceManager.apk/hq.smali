.class public final Lhq;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Lhl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhl",
        "<",
        "Lhq;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:I


# instance fields
.field protected b:Lha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lha",
            "<+",
            "Lgz;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lgy;

.field protected d:I

.field protected e:Ljava/text/DateFormat;

.field protected f:Lhx$a;

.field protected g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Llu;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected i:Z

.field protected final j:Lke;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lke",
            "<*>;"
        }
    .end annotation
.end field

.field protected k:Lka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lka",
            "<*>;"
        }
    .end annotation
.end field

.field protected l:Lkc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 319
    invoke-static {}, Lhq$a;->collectDefaults()I

    move-result v0

    sput v0, Lhq;->a:I

    return-void
.end method

.method public constructor <init>(Lha;Lgy;Lka;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lha",
            "<+",
            "Lgz;",
            ">;",
            "Lgy;",
            "Lka",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    sget v0, Lhq;->a:I

    iput v0, p0, Lhq;->d:I

    .line 352
    sget-object v0, Lmk;->f:Lmk;

    iput-object v0, p0, Lhq;->e:Ljava/text/DateFormat;

    .line 366
    iput-object v1, p0, Lhq;->f:Lhx$a;

    .line 438
    iput-object p1, p0, Lhq;->b:Lha;

    .line 439
    iput-object p2, p0, Lhq;->c:Lgy;

    .line 440
    iput-object v1, p0, Lhq;->j:Lke;

    .line 441
    iput-object p3, p0, Lhq;->k:Lka;

    .line 442
    iput-object v1, p0, Lhq;->l:Lkc;

    .line 443
    return-void
.end method

.method private constructor <init>(Lhq;Ljava/util/HashMap;Lke;Lka;Lkc;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhq;",
            "Ljava/util/HashMap",
            "<",
            "Llu;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Lke",
            "<*>;",
            "Lka",
            "<*>;",
            "Lkc;",
            ")V"
        }
    .end annotation

    .prologue
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    sget v0, Lhq;->a:I

    iput v0, p0, Lhq;->d:I

    .line 352
    sget-object v0, Lmk;->f:Lmk;

    iput-object v0, p0, Lhq;->e:Ljava/text/DateFormat;

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lhq;->f:Lhx$a;

    .line 451
    iget-object v0, p1, Lhq;->b:Lha;

    iput-object v0, p0, Lhq;->b:Lha;

    .line 452
    iget-object v0, p1, Lhq;->c:Lgy;

    iput-object v0, p0, Lhq;->c:Lgy;

    .line 453
    iget v0, p1, Lhq;->d:I

    iput v0, p0, Lhq;->d:I

    .line 454
    iget-object v0, p1, Lhq;->e:Ljava/text/DateFormat;

    iput-object v0, p0, Lhq;->e:Ljava/text/DateFormat;

    .line 455
    iget-object v0, p1, Lhq;->f:Lhx$a;

    iput-object v0, p0, Lhq;->f:Lhx$a;

    .line 456
    iget-object v0, p1, Lhq;->g:Ljava/lang/Class;

    iput-object v0, p0, Lhq;->g:Ljava/lang/Class;

    .line 457
    iput-object p2, p0, Lhq;->h:Ljava/util/HashMap;

    .line 458
    iput-object p3, p0, Lhq;->j:Lke;

    .line 459
    iput-object p4, p0, Lhq;->k:Lka;

    .line 460
    iput-object p5, p0, Lhq;->l:Lkc;

    .line 461
    return-void
.end method


# virtual methods
.method public final a()Lgy;
    .registers 2

    .prologue
    .line 543
    sget-object v0, Lhq$a;->USE_ANNOTATIONS:Lhq$a;

    invoke-virtual {p0, v0}, Lhq;->a(Lhq$a;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 544
    iget-object v0, p0, Lhq;->c:Lgy;

    .line 546
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Ljz;->a:Ljz;

    goto :goto_a
.end method

.method public final a(Lnd;)Lgz;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lgz;",
            ">(",
            "Lnd;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, Lhq;->b:Lha;

    invoke-virtual {v0, p0, p1, p0}, Lha;->a(Lhq;Lnd;Lha$a;)Lgz;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lke;Lka;Lkc;)Lhq;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lke",
            "<*>;",
            "Lka",
            "<*>;",
            "Lkc;",
            ")",
            "Lhq;"
        }
    .end annotation

    .prologue
    .line 523
    iget-object v2, p0, Lhq;->h:Ljava/util/HashMap;

    .line 524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhq;->i:Z

    .line 525
    new-instance v0, Lhq;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lhq;-><init>(Lhq;Ljava/util/HashMap;Lke;Lka;Lkc;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Lhq;->h:Ljava/util/HashMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lhq;->h:Ljava/util/HashMap;

    new-instance v1, Llu;

    invoke-direct {v1, p1}, Llu;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    move-object v0, p0

    goto :goto_5
.end method

.method public final a(Lhx$a;)V
    .registers 4
    .parameter

    .prologue
    .line 761
    iput-object p1, p0, Lhq;->f:Lhx$a;

    .line 763
    sget-object v0, Lhx$a;->NON_NULL:Lhx$a;

    if-ne p1, v0, :cond_14

    .line 764
    sget-object v0, Lhq$a;->WRITE_NULL_PROPERTIES:Lhq$a;

    iget v1, p0, Lhq;->d:I

    invoke-virtual {v0}, Lhq$a;->getMask()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lhq;->d:I

    .line 768
    :goto_13
    return-void

    .line 766
    :cond_14
    sget-object v0, Lhq$a;->WRITE_NULL_PROPERTIES:Lhq$a;

    iget v1, p0, Lhq;->d:I

    invoke-virtual {v0}, Lhq$a;->getMask()I

    move-result v0

    or-int/2addr v0, v1

    iput v0, p0, Lhq;->d:I

    goto :goto_13
.end method

.method public final a(Lhq$a;)Z
    .registers 4
    .parameter

    .prologue
    .line 668
    iget v0, p0, Lhq;->d:I

    invoke-virtual {p1}, Lhq$a;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final b(Ljava/lang/Class;)Lgz;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lgz;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 692
    iget-object v0, p0, Lhq;->b:Lha;

    invoke-virtual {v0, p0, p1, p0}, Lha;->a(Lhl;Ljava/lang/Class;Lha$a;)Lgz;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/text/DateFormat;
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Lhq;->e:Ljava/text/DateFormat;

    return-object v0
.end method

.method public final c()Lke;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lke",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 622
    iget-object v0, p0, Lhq;->j:Lke;

    return-object v0
.end method

.method public final d()Lka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lka",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lhq;->k:Lka;

    return-object v0
.end method

.method public final e()Lkc;
    .registers 2

    .prologue
    .line 715
    iget-object v0, p0, Lhq;->l:Lkc;

    if-nez v0, :cond_b

    .line 716
    new-instance v0, Lkn;

    invoke-direct {v0}, Lkn;-><init>()V

    iput-object v0, p0, Lhq;->l:Lkc;

    .line 718
    :cond_b
    iget-object v0, p0, Lhq;->l:Lkc;

    return-object v0
.end method

.method public final f()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Lhq;->g:Ljava/lang/Class;

    return-object v0
.end method

.method public final g()Lhx$a;
    .registers 2

    .prologue
    .line 744
    iget-object v0, p0, Lhq;->f:Lhx$a;

    if-eqz v0, :cond_7

    .line 745
    iget-object v0, p0, Lhq;->f:Lhx$a;

    .line 747
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lhq$a;->WRITE_NULL_PROPERTIES:Lhq$a;

    invoke-virtual {p0, v0}, Lhq;->a(Lhq$a;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lhx$a;->ALWAYS:Lhx$a;

    goto :goto_6

    :cond_12
    sget-object v0, Lhx$a;->NON_NULL:Lhx$a;

    goto :goto_6
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SerializationConfig: flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lhq;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
