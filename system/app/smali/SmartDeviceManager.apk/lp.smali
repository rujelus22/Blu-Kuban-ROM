.class public final Llp;
.super Lhs;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llp$a;
    }
.end annotation


# static fields
.field public static final c:Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final f:Lhr;

.field protected final g:Lln;

.field protected h:Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final l:Llk;

.field protected m:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 49
    new-instance v0, Lld;

    const-string v1, "Null key for a Map not allowed in Json (use a converting NullKeySerializer?)"

    invoke-direct {v0, v1}, Lld;-><init>(Ljava/lang/String;)V

    sput-object v0, Llp;->c:Lhj;

    .line 52
    new-instance v0, Llo;

    invoke-direct {v0}, Llo;-><init>()V

    sput-object v0, Llp;->d:Lhj;

    .line 54
    new-instance v0, Llq;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Llq;-><init>(Ljava/lang/Class;)V

    sput-object v0, Llp;->e:Lhj;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, v1}, Lhs;-><init>(Lhq;)V

    .line 99
    sget-object v0, Llp;->e:Lhj;

    iput-object v0, p0, Llp;->h:Lhj;

    .line 105
    sget-object v0, Llp;->d:Lhj;

    iput-object v0, p0, Llp;->i:Lhj;

    .line 111
    sget-object v0, Lli;->a:Lli;

    iput-object v0, p0, Llp;->j:Lhj;

    .line 120
    sget-object v0, Llp;->c:Lhj;

    iput-object v0, p0, Llp;->k:Lhj;

    .line 155
    iput-object v1, p0, Llp;->f:Lhr;

    .line 156
    new-instance v0, Lln;

    invoke-direct {v0}, Lln;-><init>()V

    iput-object v0, p0, Llp;->g:Lln;

    .line 158
    iput-object v1, p0, Llp;->l:Llk;

    .line 159
    return-void
.end method

.method private constructor <init>(Lhq;Llp;Lhr;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lhs;-><init>(Lhq;)V

    .line 99
    sget-object v0, Llp;->e:Lhj;

    iput-object v0, p0, Llp;->h:Lhj;

    .line 105
    sget-object v0, Llp;->d:Lhj;

    iput-object v0, p0, Llp;->i:Lhj;

    .line 111
    sget-object v0, Lli;->a:Lli;

    iput-object v0, p0, Llp;->j:Lhj;

    .line 120
    sget-object v0, Llp;->c:Lhj;

    iput-object v0, p0, Llp;->k:Lhj;

    .line 172
    if-nez p1, :cond_1b

    .line 173
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 175
    :cond_1b
    iput-object p3, p0, Llp;->f:Lhr;

    .line 177
    iget-object v0, p2, Llp;->g:Lln;

    iput-object v0, p0, Llp;->g:Lln;

    .line 178
    iget-object v0, p2, Llp;->h:Lhj;

    iput-object v0, p0, Llp;->h:Lhj;

    .line 179
    iget-object v0, p2, Llp;->i:Lhj;

    iput-object v0, p0, Llp;->i:Lhj;

    .line 180
    iget-object v0, p2, Llp;->j:Lhj;

    iput-object v0, p0, Llp;->j:Lhj;

    .line 181
    iget-object v0, p2, Llp;->k:Lhj;

    iput-object v0, p0, Llp;->k:Lhj;

    .line 186
    iget-object v0, p0, Llp;->g:Lln;

    invoke-virtual {v0}, Lln;->a()Llk;

    move-result-object v0

    iput-object v0, p0, Llp;->l:Llk;

    .line 187
    return-void
.end method

.method private c(Ljava/lang/Class;)Lhj;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 634
    :try_start_0
    invoke-static {p1}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v1

    invoke-direct {p0, v1}, Llp;->d(Lnd;)Lhj;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_2a

    move-result-object v2

    .line 642
    if-eqz v2, :cond_29

    .line 643
    iget-object v1, p0, Llp;->g:Lln;

    monitor-enter v1

    :try_start_d
    iget-object v3, v1, Lln;->a:Ljava/util/HashMap;

    new-instance v4, Lln$c;

    invoke-direct {v4, p1}, Lln$c;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1d

    const/4 v3, 0x0

    iput-object v3, v1, Lln;->b:Llk;

    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_35

    .line 647
    instance-of v1, v2, Lhp;

    if-eqz v1, :cond_29

    .line 648
    move-object v0, v2

    check-cast v0, Lhp;

    move-object v1, v0

    invoke-interface {v1, p0}, Lhp;->a(Lhs;)V

    .line 651
    :cond_29
    return-object v2

    .line 635
    :catch_2a
    move-exception v1

    .line 639
    new-instance v2, Lhg;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lhg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 643
    :catchall_35
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private c(Lnd;)Lhj;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            ")",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 662
    :try_start_0
    invoke-direct {p0, p1}, Llp;->d(Lnd;)Lhj;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_21

    move-result-object v2

    .line 670
    if-eqz v2, :cond_20

    .line 671
    iget-object v1, p0, Llp;->g:Lln;

    monitor-enter v1

    :try_start_9
    iget-object v3, v1, Lln;->a:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_14

    const/4 v3, 0x0

    iput-object v3, v1, Lln;->b:Llk;

    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_2c

    .line 675
    instance-of v1, v2, Lhp;

    if-eqz v1, :cond_20

    .line 676
    move-object v0, v2

    check-cast v0, Lhp;

    move-object v1, v0

    invoke-interface {v1, p0}, Lhp;->a(Lhs;)V

    .line 679
    :cond_20
    return-object v2

    .line 663
    :catch_21
    move-exception v1

    .line 667
    new-instance v2, Lhg;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lhg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 671
    :catchall_2c
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private d(Lnd;)Lhj;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            ")",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 691
    iget-object v0, p0, Llp;->f:Lhr;

    iget-object v1, p0, Llp;->a:Lhq;

    invoke-virtual {v0, p1, v1}, Lhr;->a(Lnd;Lhq;)Lhj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lhj;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Llp;->l:Llk;

    iget-object v1, v0, Llk;->d:Lln$c;

    invoke-virtual {v1, p1}, Lln$c;->a(Ljava/lang/Class;)V

    iget-object v1, v0, Llk;->a:Ljava/util/HashMap;

    iget-object v0, v0, Llk;->d:Lln$c;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhj;

    .line 397
    if-eqz v0, :cond_14

    .line 421
    :cond_13
    :goto_13
    return-object v0

    .line 400
    :cond_14
    iget-object v0, p0, Llp;->g:Lln;

    invoke-virtual {v0, p1}, Lln;->a(Ljava/lang/Class;)Lhj;

    move-result-object v0

    .line 401
    if-nez v0, :cond_13

    .line 404
    iget-object v0, p0, Llp;->g:Lln;

    invoke-static {p1}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lln;->a(Lnd;)Lhj;

    move-result-object v0

    .line 405
    if-nez v0, :cond_13

    .line 408
    invoke-direct {p0, p1}, Llp;->c(Ljava/lang/Class;)Lhj;

    move-result-object v0

    .line 414
    if-nez v0, :cond_13

    .line 415
    iget-object v0, p0, Llp;->h:Lhj;

    goto :goto_13
.end method

.method public final a(Lnd;)Lhj;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            ")",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Llp;->l:Llk;

    iget-object v0, v0, Llk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhj;

    .line 435
    if-eqz v0, :cond_d

    .line 458
    :cond_c
    :goto_c
    return-object v0

    .line 439
    :cond_d
    iget-object v0, p0, Llp;->g:Lln;

    invoke-virtual {v0, p1}, Lln;->a(Lnd;)Lhj;

    move-result-object v0

    .line 440
    if-nez v0, :cond_c

    .line 445
    invoke-direct {p0, p1}, Llp;->c(Lnd;)Lhj;

    move-result-object v0

    .line 451
    if-nez v0, :cond_c

    .line 452
    iget-object v0, p0, Llp;->h:Lhj;

    goto :goto_c
.end method

.method public final a(JLez;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 565
    sget-object v0, Lhq$a;->WRITE_DATES_AS_TIMESTAMPS:Lhq$a;

    invoke-virtual {p0, v0}, Llp;->a(Lhq$a;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 566
    invoke-virtual {p3, p1, p2}, Lez;->a(J)V

    .line 574
    :goto_b
    return-void

    .line 568
    :cond_c
    iget-object v0, p0, Llp;->m:Ljava/text/DateFormat;

    if-nez v0, :cond_1e

    .line 570
    iget-object v0, p0, Llp;->a:Lhq;

    invoke-virtual {v0}, Lhq;->b()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Llp;->m:Ljava/text/DateFormat;

    .line 572
    :cond_1e
    iget-object v0, p0, Llp;->m:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lez;->b(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public final a(Lhq;Lez;Ljava/lang/Object;Lhr;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 210
    if-nez p4, :cond_a

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null serializerFactory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_a
    new-instance v0, Llp;

    invoke-direct {v0, p1, p0, p4}, Llp;-><init>(Lhq;Llp;Lhr;)V

    .line 220
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_44

    .line 221
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broken serializer provider: createInstance returned instance of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; blueprint of type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_44
    if-nez p3, :cond_4c

    iget-object v1, v0, Llp;->j:Lhj;

    :goto_48
    :try_start_48
    invoke-virtual {v1, p3, p2, v0}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_55
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_57

    return-void

    :cond_4c
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Llp;->b(Ljava/lang/Class;)Lhj;

    move-result-object v1

    goto :goto_48

    :catch_55
    move-exception v0

    throw v0

    :catch_57
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[no message for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7f
    new-instance v2, Lhg;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lhg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw v2
.end method

.method public final a(Ljava/util/Date;Lez;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 581
    sget-object v0, Lhq$a;->WRITE_DATES_AS_TIMESTAMPS:Lhq$a;

    invoke-virtual {p0, v0}, Llp;->a(Lhq$a;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 582
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lez;->a(J)V

    .line 591
    :goto_f
    return-void

    .line 584
    :cond_10
    iget-object v0, p0, Llp;->m:Ljava/text/DateFormat;

    if-nez v0, :cond_22

    .line 585
    iget-object v0, p0, Llp;->a:Lhq;

    invoke-virtual {v0}, Lhq;->b()Ljava/text/DateFormat;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Llp;->m:Ljava/text/DateFormat;

    .line 589
    :cond_22
    iget-object v0, p0, Llp;->m:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lez;->b(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public final b()Lhj;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Llp;->i:Lhj;

    return-object v0
.end method

.method public final b(Ljava/lang/Class;)Lhj;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Llp;->l:Llk;

    iget-object v1, v0, Llk;->b:Lln$b;

    invoke-virtual {v1, p1}, Lln$b;->a(Ljava/lang/Class;)V

    iget-object v1, v0, Llk;->a:Ljava/util/HashMap;

    iget-object v0, v0, Llk;->b:Lln$b;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhj;

    .line 472
    if-eqz v0, :cond_14

    .line 490
    :cond_13
    :goto_13
    return-object v0

    .line 476
    :cond_14
    iget-object v0, p0, Llp;->g:Lln;

    invoke-virtual {v0, p1}, Lln;->b(Ljava/lang/Class;)Lhj;

    move-result-object v0

    .line 477
    if-nez v0, :cond_13

    .line 482
    invoke-virtual {p0, p1}, Llp;->a(Ljava/lang/Class;)Lhj;

    move-result-object v0

    .line 483
    iget-object v1, p0, Llp;->f:Lhr;

    invoke-static {p1}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v2

    iget-object v3, p0, Llp;->a:Lhq;

    invoke-virtual {v1, v2, v3}, Lhr;->b(Lnd;Lhq;)Lhu;

    move-result-object v1

    .line 484
    if-eqz v1, :cond_34

    .line 485
    new-instance v2, Llp$a;

    invoke-direct {v2, v1, v0}, Llp$a;-><init>(Lhu;Lhj;)V

    move-object v0, v2

    .line 487
    :cond_34
    iget-object v1, p0, Llp;->g:Lln;

    monitor-enter v1

    :try_start_37
    iget-object v2, v1, Lln;->a:Ljava/util/HashMap;

    new-instance v3, Lln$b;

    invoke-direct {v3, p1}, Lln$b;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_47

    const/4 v2, 0x0

    iput-object v2, v1, Lln;->b:Llk;

    :cond_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_49

    goto :goto_13

    :catchall_49
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lnd;)Lhj;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            ")",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Llp;->l:Llk;

    iget-object v1, v0, Llk;->c:Lln$a;

    iput-object p1, v1, Lln$a;->a:Lnd;

    iget-object v1, v0, Llk;->a:Ljava/util/HashMap;

    iget-object v0, v0, Llk;->c:Lln$a;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhj;

    .line 503
    if-eqz v0, :cond_13

    .line 518
    :cond_12
    :goto_12
    return-object v0

    .line 507
    :cond_13
    iget-object v0, p0, Llp;->g:Lln;

    invoke-virtual {v0, p1}, Lln;->b(Lnd;)Lhj;

    move-result-object v0

    .line 508
    if-nez v0, :cond_12

    .line 513
    invoke-virtual {p0, p1}, Llp;->a(Lnd;)Lhj;

    move-result-object v0

    .line 514
    iget-object v1, p0, Llp;->f:Lhr;

    iget-object v2, p0, Llp;->a:Lhq;

    invoke-virtual {v1, p1, v2}, Lhr;->b(Lnd;Lhq;)Lhu;

    move-result-object v1

    .line 515
    if-eqz v1, :cond_12

    .line 516
    new-instance v2, Llp$a;

    invoke-direct {v2, v1, v0}, Llp$a;-><init>(Lhu;Lhj;)V

    move-object v0, v2

    goto :goto_12
.end method

.method public final c()Lhj;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Llp;->k:Lhj;

    return-object v0
.end method

.method public final d()Lhj;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Llp;->j:Lhj;

    return-object v0
.end method
