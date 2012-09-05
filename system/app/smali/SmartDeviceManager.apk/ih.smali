.class public Lih;
.super Lja;
.source "a"

# interfaces
.implements Lho;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lih$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lja",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lho;"
    }
.end annotation

.annotation runtime Lhv;
.end annotation


# instance fields
.field protected final a:Lnd;

.field protected b:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field protected c:Lil$d;

.field protected d:Lil$b;

.field protected e:Lil$a;

.field protected f:Lil$c;

.field protected final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Liy;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Lix;

.field protected i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Z

.field protected k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Liy;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Llu;",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnd;)V
    .registers 3
    .parameter

    .prologue
    .line 150
    invoke-virtual {p1}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lja;-><init>(Ljava/lang/Class;)V

    .line 151
    iput-object p1, p0, Lih;->a:Lnd;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lih;->g:Ljava/util/HashMap;

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lih;->i:Ljava/util/HashSet;

    .line 154
    return-void
.end method

.method private a(Lhc;Ljava/lang/Object;)Lhf;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhc;",
            "Ljava/lang/Object;",
            ")",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 746
    monitor-enter p0

    .line 747
    :try_start_1
    iget-object v0, p0, Lih;->l:Ljava/util/HashMap;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 748
    :goto_6
    monitor-exit p0

    .line 749
    if-eqz v0, :cond_1f

    .line 767
    :cond_9
    :goto_9
    return-object v0

    .line 747
    :cond_a
    iget-object v0, p0, Lih;->l:Ljava/util/HashMap;

    new-instance v1, Llu;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Llu;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhf;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1c

    goto :goto_6

    .line 748
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 753
    :cond_1f
    invoke-virtual {p1}, Lhc;->b()Lhe;

    move-result-object v1

    .line 754
    if-eqz v1, :cond_9

    .line 755
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v0

    .line 756
    invoke-virtual {p1}, Lhc;->a()Lhb;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lhe;->a(Lhb;Lnd;)Lhf;

    move-result-object v0

    .line 758
    if-eqz v0, :cond_9

    .line 759
    monitor-enter p0

    .line 760
    :try_start_38
    iget-object v1, p0, Lih;->l:Ljava/util/HashMap;

    if-nez v1, :cond_43

    .line 761
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lih;->l:Ljava/util/HashMap;

    .line 763
    :cond_43
    iget-object v1, p0, Lih;->l:Ljava/util/HashMap;

    new-instance v2, Llu;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3}, Llu;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_53

    goto :goto_9

    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lfd;Lhc;Ljava/lang/Object;Lnm;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 710
    invoke-direct {p0, p2, p3}, Lih;->a(Lhc;Ljava/lang/Object;)Lhf;

    move-result-object v0

    .line 711
    if-eqz v0, :cond_1d

    .line 712
    if-eqz p4, :cond_2e

    .line 714
    invoke-virtual {p4}, Lnm;->e()V

    .line 715
    invoke-virtual {p4}, Lnm;->h()Lfd;

    move-result-object v1

    .line 716
    invoke-virtual {v1}, Lfd;->b()Lfg;

    .line 717
    invoke-virtual {v0, v1, p2, p3}, Lhf;->a(Lfd;Lhc;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 720
    :goto_16
    if-eqz p1, :cond_2c

    .line 721
    invoke-virtual {v0, p1, p2, v1}, Lhf;->a(Lfd;Lhc;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 733
    :cond_1c
    :goto_1c
    return-object v0

    .line 726
    :cond_1d
    if-eqz p4, :cond_2a

    .line 727
    invoke-direct {p0, p2, p3, p4}, Lih;->a(Lhc;Ljava/lang/Object;Lnm;)Ljava/lang/Object;

    move-result-object v0

    .line 730
    :goto_23
    if-eqz p1, :cond_1c

    .line 731
    invoke-virtual {p0, p1, p2, v0}, Lih;->a(Lfd;Lhc;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1c

    :cond_2a
    move-object v0, p3

    goto :goto_23

    :cond_2c
    move-object v0, v1

    goto :goto_1c

    :cond_2e
    move-object v1, p3

    goto :goto_16
.end method

.method private a(Lhc;Ljava/lang/Object;Lnm;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 681
    invoke-virtual {p3}, Lnm;->e()V

    .line 684
    invoke-virtual {p3}, Lnm;->h()Lfd;

    move-result-object v0

    .line 685
    :goto_7
    invoke-virtual {v0}, Lfd;->b()Lfg;

    move-result-object v1

    sget-object v2, Lfg;->END_OBJECT:Lfg;

    if-eq v1, v2, :cond_1a

    .line 686
    invoke-virtual {v0}, Lfd;->f()Ljava/lang/String;

    move-result-object v1

    .line 688
    invoke-virtual {v0}, Lfd;->b()Lfg;

    .line 689
    invoke-virtual {p0, v0, p1, p2, v1}, Lih;->a(Lfd;Lhc;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    .line 691
    :cond_1a
    return-object p2
.end method

.method private static a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 795
    :goto_0
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 796
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object p0, v0

    goto :goto_0

    .line 799
    :cond_10
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_17

    .line 800
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 803
    :cond_17
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_22

    instance-of v0, p0, Lhg;

    if-nez v0, :cond_22

    .line 804
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 807
    :cond_22
    invoke-static {p0, p1, p2}, Lhg;->a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0
.end method

.method private c(Ljava/lang/String;)Liy;
    .registers 3
    .parameter

    .prologue
    .line 449
    iget-object v0, p0, Lih;->k:Ljava/util/HashMap;

    if-nez v0, :cond_6

    .line 450
    const/4 v0, 0x0

    .line 452
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lih;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Liy;

    move-object v0, p0

    goto :goto_5
.end method


# virtual methods
.method public final a(Lfd;Lhc;)Ljava/lang/Object;
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
    .line 346
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 348
    sget-object v1, Lfg;->START_OBJECT:Lfg;

    if-ne v0, v1, :cond_10

    .line 349
    invoke-virtual {p1}, Lfd;->b()Lfg;

    .line 350
    invoke-virtual {p0, p1, p2}, Lih;->b(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    .line 368
    :goto_f
    return-object v0

    .line 353
    :cond_10
    sget-object v1, Lih$1;->a:[I

    invoke-virtual {v0}, Lfg;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_b2

    .line 370
    iget-object v0, p0, Lih;->a:Lnd;

    invoke-virtual {v0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    .line 355
    :pswitch_26
    iget-object v0, p0, Lih;->c:Lil$d;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lih;->c:Lil$d;

    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lil$d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f

    :cond_35
    iget-object v0, p0, Lih;->e:Lil$a;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lih;->e:Lil$a;

    invoke-virtual {v0, p1, p2}, Lil$a;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f

    :cond_40
    iget-object v0, p0, Lih;->a:Lnd;

    invoke-virtual {v0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "no suitable creator method found"

    invoke-virtual {p2, v0, v1}, Lhc;->a(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 358
    :pswitch_4d
    iget-object v0, p0, Lih;->d:Lil$b;

    if-eqz v0, :cond_60

    sget-object v0, Lih$1;->b:[I

    invoke-virtual {p1}, Lfd;->n()Lfd$b;

    move-result-object v1

    invoke-virtual {v1}, Lfd$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_c8

    :cond_60
    iget-object v0, p0, Lih;->e:Lil$a;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lih;->e:Lil$a;

    invoke-virtual {v0, p1, p2}, Lil$a;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f

    :pswitch_6b
    iget-object v0, p0, Lih;->d:Lil$b;

    invoke-virtual {p1}, Lfd;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Lil$b;->a(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f

    :pswitch_76
    iget-object v0, p0, Lih;->d:Lil$b;

    invoke-virtual {p1}, Lfd;->r()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lil$b;->a(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f

    :cond_81
    iget-object v0, p0, Lih;->a:Lnd;

    invoke-virtual {v0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "no suitable creator method found"

    invoke-virtual {p2, v0, v1}, Lhc;->a(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 360
    :pswitch_8e
    invoke-virtual {p1}, Lfd;->w()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_f

    .line 365
    :pswitch_94
    iget-object v0, p0, Lih;->e:Lil$a;

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lih;->e:Lil$a;

    invoke-virtual {v0, p1, p2}, Lil$a;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_f

    :cond_a0
    iget-object v0, p0, Lih;->a:Lnd;

    invoke-virtual {v0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    .line 368
    :pswitch_ab
    invoke-virtual {p0, p1, p2}, Lih;->b(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_f

    .line 353
    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_26
        :pswitch_4d
        :pswitch_4d
        :pswitch_8e
        :pswitch_94
        :pswitch_94
        :pswitch_94
        :pswitch_ab
        :pswitch_ab
    .end packed-switch

    .line 358
    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_76
    .end packed-switch
.end method

.method public final a(Lfd;Lhc;Lht;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 423
    invoke-virtual {p3, p1, p2}, Lht;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lfd;Lhc;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 384
    sget-object v1, Lfg;->START_OBJECT:Lfg;

    if-ne v0, v1, :cond_c

    .line 385
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v0

    .line 387
    :cond_c
    :goto_c
    sget-object v1, Lfg;->FIELD_NAME:Lfg;

    if-ne v0, v1, :cond_4c

    .line 388
    invoke-virtual {p1}, Lfd;->f()Ljava/lang/String;

    move-result-object v1

    .line 389
    iget-object v0, p0, Lih;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liy;

    .line 390
    invoke-virtual {p1}, Lfd;->b()Lfg;

    .line 392
    if-eqz v0, :cond_2e

    .line 394
    :try_start_21
    invoke-virtual {v0, p1, p2, p3}, Liy;->a(Lfd;Lhc;Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_29

    .line 387
    :goto_24
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v0

    goto :goto_c

    .line 395
    :catch_29
    move-exception v0

    invoke-static {v0, p3, v1}, Lih;->a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_24

    .line 403
    :cond_2e
    iget-object v0, p0, Lih;->i:Ljava/util/HashSet;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lih;->i:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 404
    invoke-virtual {p1}, Lfd;->c()Lfd;

    goto :goto_24

    .line 407
    :cond_3e
    iget-object v0, p0, Lih;->h:Lix;

    if-eqz v0, :cond_48

    .line 408
    iget-object v0, p0, Lih;->h:Lix;

    invoke-virtual {v0, p1, p2, p3, v1}, Lix;->a(Lfd;Lhc;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_24

    .line 412
    :cond_48
    invoke-virtual {p0, p1, p2, p3, v1}, Lih;->a(Lfd;Lhc;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_24

    .line 414
    :cond_4c
    return-object p3
.end method

.method protected final a(Lfd;Lhc;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 661
    iget-boolean v0, p0, Lih;->j:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lih;->i:Ljava/util/HashSet;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lih;->i:Ljava/util/HashSet;

    invoke-virtual {v0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 663
    :cond_10
    invoke-virtual {p1}, Lfd;->c()Lfd;

    .line 670
    :goto_13
    return-void

    .line 669
    :cond_14
    invoke-super {p0, p1, p2, p3, p4}, Lja;->a(Lfd;Lhc;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public final a(Lhb;Lhe;)V
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 266
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 267
    iget-object v0, p0, Lih;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_186

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 268
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liy;

    .line 270
    invoke-virtual {v1}, Liy;->e()Z

    move-result v2

    if-nez v2, :cond_34

    .line 271
    invoke-virtual {v1}, Liy;->c()Lnd;

    move-result-object v2

    invoke-static {p1, p2, v2, v3}, Lih;->a(Lhb;Lhe;Lnd;Ljava/util/Map;)Lhf;

    move-result-object v2

    invoke-virtual {v1, v2}, Liy;->a(Lhf;)V

    .line 274
    :cond_34
    invoke-virtual {v1}, Liy;->d()Ljava/lang/String;

    move-result-object v5

    .line 275
    if-eqz v5, :cond_11

    .line 276
    iget-object v2, v1, Liy;->c:Lhf;

    .line 279
    instance-of v6, v2, Lih;

    if-eqz v6, :cond_71

    .line 280
    check-cast v2, Lih;

    invoke-direct {v2, v5}, Lih;->c(Ljava/lang/String;)Liy;

    move-result-object v2

    move-object v6, v2

    move v2, v11

    .line 297
    :goto_48
    if-nez v6, :cond_125

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not handle managed/back reference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': no back reference property found from type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Liy;->c()Lnd;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_71
    instance-of v6, v2, Lik;

    if-eqz v6, :cond_bf

    .line 282
    check-cast v2, Lik;

    invoke-virtual {v2}, Lik;->b()Lhf;

    move-result-object v2

    .line 283
    instance-of v6, v2, Lih;

    if-nez v6, :cond_b6

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not handle managed/back reference \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\': value deserializer is of type ContainerDeserializer, but content type is not handled by a BeanDeserializer "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (instead it\'s of type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_b6
    check-cast v2, Lih;

    invoke-direct {v2, v5}, Lih;->c(Ljava/lang/String;)Liy;

    move-result-object v2

    move-object v6, v2

    move v2, v12

    .line 290
    goto :goto_48

    :cond_bf
    instance-of v0, v2, Lic;

    if-eqz v0, :cond_fa

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not handle managed/back reference for abstract types (property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lih;->a:Lnd;

    invoke-virtual {v3}, Lnd;->i()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Liy;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_fa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not handle managed/back reference \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\': type for value deserializer is not BeanDeserializer or ContainerDeserializer, but "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_125
    iget-object v7, p0, Lih;->a:Lnd;

    .line 303
    invoke-virtual {v6}, Liy;->c()Lnd;

    move-result-object v8

    .line 304
    invoke-virtual {v8}, Lnd;->i()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7}, Lnd;->i()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_17c

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not handle managed/back reference \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': back reference type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lnd;->i()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not compatible with managed type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lnd;->i()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_17c
    new-instance v7, Liy$c;

    invoke-direct {v7, v5, v1, v6, v2}, Liy$c;-><init>(Ljava/lang/String;Liy;Liy;Z)V

    invoke-interface {v0, v7}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 314
    :cond_186
    iget-object v0, p0, Lih;->h:Lix;

    if-eqz v0, :cond_1a0

    iget-object v0, p0, Lih;->h:Lix;

    iget-object v0, v0, Lix;->c:Lhf;

    if-eqz v0, :cond_1df

    move v0, v12

    :goto_191
    if-nez v0, :cond_1a0

    .line 315
    iget-object v0, p0, Lih;->h:Lix;

    iget-object v1, p0, Lih;->h:Lix;

    iget-object v1, v1, Lix;->b:Lnd;

    invoke-static {p1, p2, v1, v3}, Lih;->a(Lhb;Lhe;Lnd;Ljava/util/Map;)Lhf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lix;->a(Lhf;)V

    .line 319
    :cond_1a0
    iget-object v0, p0, Lih;->e:Lil$a;

    if-eqz v0, :cond_1b3

    .line 320
    iget-object v0, p0, Lih;->e:Lil$a;

    invoke-virtual {v0}, Lil$a;->a()Lnd;

    move-result-object v0

    invoke-static {p1, p2, v0, v3}, Lih;->a(Lhb;Lhe;Lnd;Ljava/util/Map;)Lhf;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lih;->e:Lil$a;

    invoke-virtual {v1, v0}, Lil$a;->a(Lhf;)V

    .line 324
    :cond_1b3
    iget-object v0, p0, Lih;->f:Lil$c;

    if-eqz v0, :cond_1e1

    .line 325
    iget-object v0, p0, Lih;->f:Lil$c;

    invoke-virtual {v0}, Lil$c;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c1
    :goto_1c1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Liy;

    .line 326
    invoke-virtual {p0}, Liy;->e()Z

    move-result v1

    if-nez v1, :cond_1c1

    .line 327
    invoke-virtual {p0}, Liy;->c()Lnd;

    move-result-object v1

    invoke-static {p1, p2, v1, v3}, Lih;->a(Lhb;Lhe;Lnd;Ljava/util/Map;)Lhf;

    move-result-object v1

    invoke-virtual {p0, v1}, Liy;->a(Lhf;)V

    goto :goto_1c1

    :cond_1df
    move v0, v11

    .line 314
    goto :goto_191

    .line 331
    :cond_1e1
    return-void
.end method

.method public final a(Lim;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 166
    iget-object v0, p1, Lim;->i:Ljm;

    if-nez v0, :cond_3b

    iget-object v0, p1, Lim;->c:Ljp;

    if-nez v0, :cond_3b

    move-object v0, v6

    :goto_a
    iput-object v0, p0, Lih;->c:Lil$d;

    .line 167
    iget-object v0, p1, Lim;->j:Ljm;

    if-nez v0, :cond_47

    iget-object v0, p1, Lim;->d:Ljp;

    if-nez v0, :cond_47

    iget-object v0, p1, Lim;->k:Ljm;

    if-nez v0, :cond_47

    iget-object v0, p1, Lim;->e:Ljp;

    if-nez v0, :cond_47

    move-object v0, v6

    :goto_1d
    iput-object v0, p0, Lih;->d:Lil$b;

    .line 176
    iget-object v0, p1, Lim;->l:Ljm;

    if-nez v0, :cond_57

    iget-object v0, p1, Lim;->f:Ljp;

    if-nez v0, :cond_57

    move-object v0, v6

    :goto_28
    iput-object v0, p0, Lih;->e:Lil$a;

    .line 177
    invoke-virtual {p1}, Lim;->a()Lil$c;

    move-result-object v0

    iput-object v0, p0, Lih;->f:Lil$c;

    .line 182
    iget-object v0, p0, Lih;->e:Lil$a;

    if-nez v0, :cond_38

    iget-object v0, p0, Lih;->f:Lil$c;

    if-eqz v0, :cond_3a

    .line 183
    :cond_38
    iput-object v6, p0, Lih;->b:Ljava/lang/reflect/Constructor;

    .line 185
    :cond_3a
    return-void

    .line 166
    :cond_3b
    new-instance v0, Lil$d;

    iget-object v1, p1, Lim;->a:Ljava/lang/Class;

    iget-object v2, p1, Lim;->i:Ljm;

    iget-object v3, p1, Lim;->c:Ljp;

    invoke-direct {v0, v1, v2, v3}, Lil$d;-><init>(Ljava/lang/Class;Ljm;Ljp;)V

    goto :goto_a

    .line 167
    :cond_47
    new-instance v0, Lil$b;

    iget-object v1, p1, Lim;->a:Ljava/lang/Class;

    iget-object v2, p1, Lim;->j:Ljm;

    iget-object v3, p1, Lim;->d:Ljp;

    iget-object v4, p1, Lim;->k:Ljm;

    iget-object v5, p1, Lim;->e:Ljp;

    invoke-direct/range {v0 .. v5}, Lil$b;-><init>(Ljava/lang/Class;Ljm;Ljp;Ljm;Ljp;)V

    goto :goto_1d

    .line 176
    :cond_57
    new-instance v0, Lil$a;

    iget-object v1, p1, Lim;->l:Ljm;

    iget-object v2, p1, Lim;->f:Ljp;

    invoke-direct {v0, v1, v2}, Lil$a;-><init>(Ljm;Ljp;)V

    goto :goto_28
.end method

.method public final a(Lix;)V
    .registers 4
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lih;->h:Lix;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "_anySetter already set to non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_e
    iput-object p1, p0, Lih;->h:Lix;

    .line 226
    return-void
.end method

.method public final a(Liy;)V
    .registers 5
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lih;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Liy;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liy;

    .line 195
    if-eqz v0, :cond_39

    if-eq v0, p1, :cond_39

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Liy;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lih;->a:Lnd;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_39
    return-void
.end method

.method public final a(Ljava/lang/String;Liy;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lih;->k:Ljava/util/HashMap;

    if-nez v0, :cond_c

    .line 210
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lih;->k:Ljava/util/HashMap;

    .line 212
    :cond_c
    iget-object v0, p0, Lih;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method public final a(Ljava/lang/reflect/Constructor;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 157
    iput-object p1, p0, Lih;->b:Ljava/lang/reflect/Constructor;

    .line 158
    return-void
.end method

.method public final a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 229
    iput-boolean p1, p0, Lih;->j:Z

    .line 230
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lih;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Lfd;Lhc;)Ljava/lang/Object;
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
    .line 464
    iget-object v0, p0, Lih;->b:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_60

    .line 466
    iget-object v0, p0, Lih;->f:Lil$c;

    if-eqz v0, :cond_d

    .line 467
    invoke-virtual {p0, p1, p2}, Lih;->c(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    .line 519
    :goto_c
    return-object v0

    .line 470
    :cond_d
    iget-object v0, p0, Lih;->e:Lil$a;

    if-eqz v0, :cond_18

    .line 471
    iget-object v0, p0, Lih;->e:Lil$a;

    invoke-virtual {v0, p1, p2}, Lil$a;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    .line 474
    :cond_18
    iget-object v0, p0, Lih;->a:Lnd;

    invoke-virtual {v0}, Lnd;->b()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not instantiate abstract type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lih;->a:Lnd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (need to add/enable type information?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lhg;->a(Lfd;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 478
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No suitable constructor found for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lih;->a:Lnd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": can not instantiate from JSON object (need to add/enable type information?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lhg;->a(Lfd;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 483
    :cond_60
    :try_start_60
    iget-object v0, p0, Lih;->b:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_68} :catch_89

    move-result-object v1

    .line 488
    :goto_69
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    sget-object v2, Lfg;->END_OBJECT:Lfg;

    if-eq v0, v2, :cond_b8

    .line 489
    invoke-virtual {p1}, Lfd;->f()Ljava/lang/String;

    move-result-object v2

    .line 491
    invoke-virtual {p1}, Lfd;->b()Lfg;

    .line 492
    iget-object v0, p0, Lih;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liy;

    .line 493
    if-eqz v0, :cond_95

    .line 495
    :try_start_82
    invoke-virtual {v0, p1, p2, v1}, Liy;->a(Lfd;Lhc;Ljava/lang/Object;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_90

    .line 488
    :goto_85
    invoke-virtual {p1}, Lfd;->b()Lfg;

    goto :goto_69

    .line 484
    :catch_89
    move-exception v0

    invoke-static {v0}, Lme;->a(Ljava/lang/Throwable;)V

    .line 486
    const/4 v0, 0x0

    goto/16 :goto_c

    .line 496
    :catch_90
    move-exception v0

    invoke-static {v0, v1, v2}, Lih;->a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_85

    .line 504
    :cond_95
    iget-object v0, p0, Lih;->i:Ljava/util/HashSet;

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lih;->i:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 505
    invoke-virtual {p1}, Lfd;->c()Lfd;

    goto :goto_85

    .line 508
    :cond_a5
    iget-object v0, p0, Lih;->h:Lix;

    if-eqz v0, :cond_b4

    .line 510
    :try_start_a9
    iget-object v0, p0, Lih;->h:Lix;

    invoke-virtual {v0, p1, p2, v1, v2}, Lix;->a(Lfd;Lhc;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ae} :catch_af

    goto :goto_85

    .line 511
    :catch_af
    move-exception v0

    invoke-static {v0, v1, v2}, Lih;->a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_85

    .line 517
    :cond_b4
    invoke-virtual {p0, p1, p2, v1, v2}, Lih;->a(Lfd;Lhc;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_85

    :cond_b8
    move-object v0, v1

    .line 519
    goto/16 :goto_c
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lih;->i:Ljava/util/HashSet;

    if-nez v0, :cond_b

    .line 239
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lih;->i:Ljava/util/HashSet;

    .line 241
    :cond_b
    iget-object v0, p0, Lih;->i:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method protected final c(Lfd;Lhc;)Ljava/lang/Object;
    .registers 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 573
    iget-object v1, p0, Lih;->f:Lil$c;

    .line 574
    invoke-virtual {v1, p1, p2}, Lil$c;->a(Lfd;Lhc;)Liw;

    move-result-object v2

    .line 579
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    move-object v3, v8

    .line 580
    :goto_c
    sget-object v4, Lfg;->FIELD_NAME:Lfg;

    if-ne v0, v4, :cond_a9

    .line 581
    invoke-virtual {p1}, Lfd;->f()Ljava/lang/String;

    move-result-object v4

    .line 582
    invoke-virtual {p1}, Lfd;->b()Lfg;

    .line 584
    invoke-virtual {v1, v4}, Lil$c;->a(Ljava/lang/String;)Liy;

    move-result-object v0

    .line 585
    if-eqz v0, :cond_4f

    .line 587
    invoke-virtual {v0, p1, p2}, Liy;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v4

    .line 588
    invoke-virtual {v0}, Liy;->f()I

    move-result v0

    invoke-virtual {v2, v0, v4}, Liw;->a(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 589
    invoke-virtual {p1}, Lfd;->b()Lfg;

    .line 590
    invoke-virtual {v1, v2}, Lil$c;->a(Liw;)Ljava/lang/Object;

    move-result-object v0

    .line 592
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lih;->a:Lnd;

    invoke-virtual {v2}, Lnd;->i()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_43

    .line 593
    invoke-direct {p0, p1, p2, v0, v3}, Lih;->a(Lfd;Lhc;Ljava/lang/Object;Lnm;)Ljava/lang/Object;

    move-result-object v0

    .line 639
    :cond_42
    :goto_42
    return-object v0

    .line 595
    :cond_43
    if-eqz v3, :cond_4a

    .line 596
    invoke-direct {p0, p2, v0, v3}, Lih;->a(Lhc;Ljava/lang/Object;Lnm;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_42

    .line 599
    :cond_4a
    invoke-virtual {p0, p1, p2, v0}, Lih;->a(Lfd;Lhc;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_42

    .line 604
    :cond_4f
    iget-object v0, p0, Lih;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liy;

    .line 605
    if-eqz v0, :cond_6f

    .line 606
    invoke-virtual {v0, p1, p2}, Liy;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Liv$c;

    iget-object v6, v2, Liw;->d:Liv;

    invoke-direct {v5, v6, v4, v0}, Liv$c;-><init>(Liv;Ljava/lang/Object;Liy;)V

    iput-object v5, v2, Liw;->d:Liv;

    move-object v0, v3

    .line 580
    :goto_67
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v3

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    goto :goto_c

    .line 612
    :cond_6f
    iget-object v0, p0, Lih;->i:Ljava/util/HashSet;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lih;->i:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 613
    invoke-virtual {p1}, Lfd;->c()Lfd;

    move-object v0, v3

    .line 614
    goto :goto_67

    .line 617
    :cond_80
    iget-object v0, p0, Lih;->h:Lix;

    if-eqz v0, :cond_97

    .line 618
    iget-object v0, p0, Lih;->h:Lix;

    iget-object v5, p0, Lih;->h:Lix;

    invoke-virtual {v5, p1, p2}, Lix;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Liv$a;

    iget-object v7, v2, Liw;->d:Liv;

    invoke-direct {v6, v7, v5, v0, v4}, Liv$a;-><init>(Liv;Ljava/lang/Object;Lix;Ljava/lang/String;)V

    iput-object v6, v2, Liw;->d:Liv;

    move-object v0, v3

    .line 619
    goto :goto_67

    .line 622
    :cond_97
    if-nez v3, :cond_c6

    .line 623
    new-instance v0, Lnm;

    invoke-virtual {p1}, Lfd;->a()Lfh;

    move-result-object v3

    invoke-direct {v0, v3}, Lnm;-><init>(Lfh;)V

    .line 625
    :goto_a2
    invoke-virtual {v0, v4}, Lnm;->a(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v0, p1}, Lnm;->b(Lfd;)V

    goto :goto_67

    .line 630
    :cond_a9
    invoke-virtual {v1, v2}, Lil$c;->a(Liw;)Ljava/lang/Object;

    move-result-object v0

    .line 631
    if-eqz v3, :cond_42

    .line 633
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lih;->a:Lnd;

    invoke-virtual {v2}, Lnd;->i()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_c0

    .line 634
    invoke-direct {p0, v8, p2, v0, v3}, Lih;->a(Lfd;Lhc;Ljava/lang/Object;Lnm;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_42

    .line 637
    :cond_c0
    invoke-direct {p0, p2, v0, v3}, Lih;->a(Lhc;Ljava/lang/Object;Lnm;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_42

    :cond_c6
    move-object v0, v3

    goto :goto_a2

    :cond_c8
    move-object v0, v3

    goto :goto_67
.end method
