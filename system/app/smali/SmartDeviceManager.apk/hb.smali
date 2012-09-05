.class public final Lhb;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Lhl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhl",
        "<",
        "Lhb;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:I

.field protected static final b:Ljava/text/DateFormat;


# instance fields
.field protected c:Lha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lha",
            "<+",
            "Lgz;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lgy;

.field protected e:I

.field protected f:Lmg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmg",
            "<",
            "Lorg/codehaus/jackson/map/DeserializationProblemHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/text/DateFormat;

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

.field protected m:Lgx;

.field protected n:Lmt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 253
    invoke-static {}, Lhb$a;->collectDefaults()I

    move-result v0

    sput v0, Lhb;->a:I

    .line 255
    sget-object v0, Lmk;->f:Lmk;

    sput-object v0, Lhb;->b:Ljava/text/DateFormat;

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

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    sget v0, Lhb;->a:I

    iput v0, p0, Lhb;->e:I

    .line 294
    sget-object v0, Lhb;->b:Ljava/text/DateFormat;

    iput-object v0, p0, Lhb;->g:Ljava/text/DateFormat;

    .line 375
    iput-object p1, p0, Lhb;->c:Lha;

    .line 376
    iput-object p2, p0, Lhb;->d:Lgy;

    .line 377
    iput-object v1, p0, Lhb;->j:Lke;

    .line 378
    iput-object p3, p0, Lhb;->k:Lka;

    .line 379
    iput-object v1, p0, Lhb;->l:Lkc;

    .line 380
    sget-object v0, Lmt;->a:Lmt;

    iput-object v0, p0, Lhb;->n:Lmt;

    .line 381
    return-void
.end method

.method private constructor <init>(Lhb;Ljava/util/HashMap;Lke;Lka;Lkc;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhb;",
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
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    sget v0, Lhb;->a:I

    iput v0, p0, Lhb;->e:I

    .line 294
    sget-object v0, Lhb;->b:Ljava/text/DateFormat;

    iput-object v0, p0, Lhb;->g:Ljava/text/DateFormat;

    .line 389
    iget-object v0, p1, Lhb;->c:Lha;

    iput-object v0, p0, Lhb;->c:Lha;

    .line 390
    iget-object v0, p1, Lhb;->d:Lgy;

    iput-object v0, p0, Lhb;->d:Lgy;

    .line 391
    iget-object v0, p1, Lhb;->m:Lgx;

    iput-object v0, p0, Lhb;->m:Lgx;

    .line 392
    iget v0, p1, Lhb;->e:I

    iput v0, p0, Lhb;->e:I

    .line 393
    iget-object v0, p1, Lhb;->f:Lmg;

    iput-object v0, p0, Lhb;->f:Lmg;

    .line 394
    iget-object v0, p1, Lhb;->g:Ljava/text/DateFormat;

    iput-object v0, p0, Lhb;->g:Ljava/text/DateFormat;

    .line 395
    iget-object v0, p1, Lhb;->n:Lmt;

    iput-object v0, p0, Lhb;->n:Lmt;

    .line 396
    iput-object p2, p0, Lhb;->h:Ljava/util/HashMap;

    .line 397
    iput-object p3, p0, Lhb;->j:Lke;

    .line 398
    iput-object p4, p0, Lhb;->k:Lka;

    .line 399
    iput-object p5, p0, Lhb;->l:Lkc;

    .line 400
    return-void
.end method

.method public static h()Lev;
    .registers 1

    .prologue
    .line 751
    invoke-static {}, Lew;->a()Lev;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lgy;
    .registers 2

    .prologue
    .line 529
    sget-object v0, Lhb$a;->USE_ANNOTATIONS:Lhb$a;

    invoke-virtual {p0, v0}, Lhb;->a(Lhb$a;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 530
    iget-object v0, p0, Lhb;->d:Lgy;

    .line 532
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
    iget-object v0, p0, Lhb;->c:Lha;

    invoke-virtual {v0, p0, p1, p0}, Lha;->a(Lhb;Lnd;Lha$a;)Lgz;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lke;Lka;Lkc;)Lhb;
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
            "Lhb;"
        }
    .end annotation

    .prologue
    .line 496
    iget-object v2, p0, Lhb;->h:Ljava/util/HashMap;

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhb;->i:Z

    .line 498
    new-instance v0, Lhb;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lhb;-><init>(Lhb;Ljava/util/HashMap;Lke;Lka;Lkc;)V

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
    .line 586
    iget-object v0, p0, Lhb;->h:Ljava/util/HashMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lhb;->h:Ljava/util/HashMap;

    new-instance v1, Llu;

    invoke-direct {v1, p1}, Llu;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    move-object v0, p0

    goto :goto_5
.end method

.method public final a(Lhb$a;)Z
    .registers 4
    .parameter

    .prologue
    .line 438
    iget v0, p0, Lhb;->e:I

    invoke-virtual {p1}, Lhb$a;->getMask()I

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
    .line 701
    iget-object v0, p0, Lhb;->c:Lha;

    invoke-virtual {v0, p0, p1, p0}, Lha;->a(Lhl;Ljava/lang/Class;Lha$a;)Lgz;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lnd;)Lgz;
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
    .line 692
    iget-object v0, p0, Lhb;->c:Lha;

    invoke-virtual {v0, p0, p1, p0}, Lha;->b(Lhb;Lnd;Lha$a;)Lgz;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/text/DateFormat;
    .registers 2

    .prologue
    .line 590
    iget-object v0, p0, Lhb;->g:Ljava/text/DateFormat;

    return-object v0
.end method

.method public final c()Lka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lka",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Lhb;->k:Lka;

    return-object v0
.end method

.method public final d()Lke;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lke",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 609
    iget-object v0, p0, Lhb;->j:Lke;

    return-object v0
.end method

.method public final e()Lkc;
    .registers 2

    .prologue
    .line 616
    iget-object v0, p0, Lhb;->l:Lkc;

    if-nez v0, :cond_b

    .line 617
    new-instance v0, Lkn;

    invoke-direct {v0}, Lkn;-><init>()V

    iput-object v0, p0, Lhb;->l:Lkc;

    .line 619
    :cond_b
    iget-object v0, p0, Lhb;->l:Lkc;

    return-object v0
.end method

.method public final f()Lmg;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmg",
            "<",
            "Lorg/codehaus/jackson/map/DeserializationProblemHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lhb;->f:Lmg;

    return-object v0
.end method

.method public final g()Lgx;
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, Lhb;->m:Lgx;

    return-object v0
.end method

.method public final i()Lmt;
    .registers 2

    .prologue
    .line 765
    iget-object v0, p0, Lhb;->n:Lmt;

    return-object v0
.end method
