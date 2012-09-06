.class public Lke;
.super Ljava/lang/Object;
.source "TabletDocListControllerImpl.java"

# interfaces
.implements Lkc;


# instance fields
.field private final a:LFX;

.field private final a:LHW;

.field private final a:LLz;

.field private final a:LOC;

.field private final a:LQN;

.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final a:LdE;

.field private final a:LeZ;

.field private final a:LhB;

.field private final a:LhG;

.field private final a:LhM;

.field private final a:Lid;

.field private final a:Lii;

.field private final a:Lje;

.field private final a:Ljg;

.field private final a:Lji;

.field private final a:Lkd;

.field private final a:Llu;

.field private final a:Lmi;

.field private final b:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lck;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llu;LHW;LhB;Lid;Ljg;Lii;Lje;LanD;Lkd;LOC;LhM;Lji;LhG;LdE;Lmi;LLz;LQN;LanD;LeZ;LFX;)V
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llu;",
            "LHW;",
            "LhB;",
            "Lid;",
            "Ljg;",
            "Lii;",
            "Lje;",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lkd;",
            "LOC;",
            "LhM;",
            "Lji;",
            "LhG;",
            "LdE;",
            "Lmi;",
            "LLz;",
            "LQN;",
            "LanD",
            "<",
            "LdL;",
            ">;",
            "LeZ;",
            "LFX;",
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lke;->a:Llu;

    .line 119
    iput-object p2, p0, Lke;->a:LHW;

    .line 120
    iput-object p3, p0, Lke;->a:LhB;

    .line 121
    iput-object p4, p0, Lke;->a:Lid;

    .line 122
    iput-object p5, p0, Lke;->a:Ljg;

    .line 123
    iput-object p6, p0, Lke;->a:Lii;

    .line 124
    iput-object p7, p0, Lke;->a:Lje;

    .line 125
    iput-object p8, p0, Lke;->a:LanD;

    .line 126
    iput-object p9, p0, Lke;->a:Lkd;

    .line 127
    iput-object p10, p0, Lke;->a:LOC;

    .line 128
    iput-object p11, p0, Lke;->a:LhM;

    .line 129
    iput-object p12, p0, Lke;->a:Lji;

    .line 130
    iput-object p13, p0, Lke;->a:LhG;

    .line 131
    iput-object p14, p0, Lke;->a:LdE;

    .line 132
    move-object/from16 v0, p15

    iput-object v0, p0, Lke;->a:Lmi;

    .line 133
    move-object/from16 v0, p16

    iput-object v0, p0, Lke;->a:LLz;

    .line 134
    move-object/from16 v0, p17

    iput-object v0, p0, Lke;->a:LQN;

    .line 135
    move-object/from16 v0, p18

    iput-object v0, p0, Lke;->b:LanD;

    .line 136
    move-object/from16 v0, p19

    iput-object v0, p0, Lke;->a:LeZ;

    .line 137
    move-object/from16 v0, p20

    iput-object v0, p0, Lke;->a:LFX;

    .line 138
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    new-instance v0, LhX;

    invoke-direct {v0}, LhX;-><init>()V

    .line 609
    iget-object v1, p0, Lke;->a:LhM;

    invoke-interface {v1, p1}, LhM;->a(Ljava/lang/String;)LhK;

    move-result-object v1

    invoke-virtual {v0, v1}, LhX;->a(LhK;)LhX;

    .line 610
    iget-object v1, p0, Lke;->a:LhM;

    invoke-direct {p0}, Lke;->a()Lnk;

    move-result-object v2

    invoke-interface {v1, v2, p1}, LhM;->a(Lnk;Ljava/lang/String;)LhK;

    move-result-object v1

    invoke-virtual {v0, v1}, LhX;->a(LhK;)LhX;

    .line 612
    const/4 v1, 0x1

    new-array v1, v1, [LhW;

    const/4 v2, 0x0

    invoke-virtual {v0}, LhX;->a()LhW;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a()LkG;
    .registers 3

    .prologue
    .line 710
    iget-object v0, p0, Lke;->a:Llu;

    iget-object v1, p0, Lke;->a:LhB;

    invoke-interface {v1}, LhB;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 711
    if-nez v0, :cond_14

    .line 712
    const-string v0, "Failed to load account"

    invoke-direct {p0, v0}, Lke;->e(Ljava/lang/String;)V

    .line 713
    const/4 v0, 0x0

    .line 715
    :cond_14
    return-object v0
.end method

.method private a(Ljava/lang/String;)LkT;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 719
    iget-object v1, p0, Lke;->a:LhB;

    invoke-interface {v1}, LhB;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    invoke-direct {p0}, Lke;->a()LkG;

    move-result-object v1

    .line 722
    if-nez v1, :cond_11

    .line 731
    :goto_10
    return-object v0

    .line 725
    :cond_11
    iget-object v2, p0, Lke;->a:Llu;

    invoke-interface {v2, v1, p1}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v1

    .line 726
    if-nez v1, :cond_30

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load entry with resource ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lke;->e(Ljava/lang/String;)V

    goto :goto_10

    :cond_30
    move-object v0, v1

    .line 731
    goto :goto_10
.end method

.method private a()Lnk;
    .registers 2

    .prologue
    .line 787
    iget-object v0, p0, Lke;->b:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    invoke-virtual {v0}, LdL;->a()Lnk;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/os/Bundle;Z)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 402
    if-nez p1, :cond_a

    .line 406
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 410
    :cond_a
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_159

    .line 411
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    const-string v2, "app_data"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 413
    if-nez p1, :cond_25

    .line 414
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 418
    :cond_25
    :goto_25
    const-string v2, "accountName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8b

    .line 420
    iget-object v3, p0, Lke;->a:LhB;

    invoke-interface {v3, v2}, LhB;->a(Ljava/lang/String;)V

    .line 437
    :cond_36
    :goto_36
    iget-object v2, p0, Lke;->a:Lid;

    invoke-interface {v2, p1}, Lid;->a(Landroid/os/Bundle;)V

    .line 441
    :try_start_3b
    iget-object v2, p0, Lke;->a:Lji;

    invoke-interface {v2, p1}, Lji;->a(Landroid/os/Bundle;)Ljava/util/List;
    :try_end_40
    .catch Ljj; {:try_start_3b .. :try_end_40} :catch_bf

    move-result-object v1

    .line 448
    :goto_41
    if-nez p2, :cond_5b

    if-eqz v1, :cond_5b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5b

    .line 449
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhW;

    invoke-interface {v0}, LhW;->b()Ljava/lang/String;

    move-result-object v0

    .line 453
    :cond_5b
    const-string v2, "collectionResourceId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 461
    if-eqz v0, :cond_cb

    .line 462
    invoke-direct {p0, v0}, Lke;->c(Ljava/lang/String;)V

    .line 485
    :goto_66
    invoke-direct {p0}, Lke;->b()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 486
    iget-object v0, p0, Lke;->a:LHW;

    iget-object v1, p0, Lke;->a:LhB;

    invoke-interface {v1}, LhB;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LHW;->a(Ljava/lang/String;)V

    .line 489
    :cond_77
    if-eqz p2, :cond_8a

    invoke-direct {p0}, Lke;->b()Z

    move-result v0

    if-eqz v0, :cond_8a

    const-string v0, "triggerSync"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 491
    invoke-direct {p0}, Lke;->g()V

    .line 493
    :cond_8a
    return-void

    .line 422
    :cond_8b
    iget-object v2, p0, Lke;->a:LhB;

    invoke-interface {v2, p1}, LhB;->a(Landroid/os/Bundle;)V

    .line 424
    iget-object v2, p0, Lke;->a:LhB;

    invoke-interface {v2}, LhB;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 425
    iget-object v2, p0, Lke;->a:LHW;

    invoke-interface {v2}, LHW;->a()Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ae

    .line 427
    iget-object v3, p0, Lke;->a:LhB;

    invoke-interface {v3, v2}, LhB;->a(Ljava/lang/String;)V

    goto :goto_36

    .line 429
    :cond_ae
    iget-object v2, p0, Lke;->a:LHW;

    invoke-static {v2}, LHY;->b(LHW;)Landroid/accounts/Account;

    move-result-object v2

    .line 430
    if-eqz v2, :cond_36

    .line 431
    iget-object v3, p0, Lke;->a:LhB;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v3, v2}, LhB;->a(Ljava/lang/String;)V

    goto/16 :goto_36

    .line 442
    :catch_bf
    move-exception v2

    .line 443
    const-string v3, "TabletDocListController"

    invoke-virtual {v2}, Ljj;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 463
    :cond_cb
    if-eqz v1, :cond_d7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d7

    .line 464
    invoke-direct {p0, v1}, Lke;->c(Ljava/util/List;)V

    goto :goto_66

    .line 465
    :cond_d7
    if-eqz p2, :cond_115

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_115

    .line 466
    new-array v0, v4, [LhW;

    new-instance v1, LhX;

    invoke-direct {v1}, LhX;-><init>()V

    iget-object v3, p0, Lke;->a:LhM;

    iget-object v4, p0, Lke;->a:LhB;

    invoke-interface {v4}, LhB;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, LhM;->a(Ljava/lang/String;)LhK;

    move-result-object v3

    invoke-virtual {v1, v3}, LhX;->a(LhK;)LhX;

    move-result-object v1

    iget-object v3, p0, Lke;->a:LhM;

    iget-object v4, p0, Lke;->a:LhB;

    invoke-interface {v4}, LhB;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, LhM;->a(Ljava/lang/String;Ljava/lang/String;)LhK;

    move-result-object v2

    invoke-virtual {v1, v2}, LhX;->a(LhK;)LhX;

    move-result-object v1

    invoke-virtual {v1}, LhX;->a()LhW;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lke;->c(Ljava/util/List;)V

    goto/16 :goto_66

    .line 474
    :cond_115
    const-string v0, "mainFilter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lnk;

    .line 475
    if-nez v0, :cond_123

    .line 476
    invoke-direct {p0}, Lke;->a()Lnk;

    move-result-object v0

    .line 479
    :cond_123
    new-array v1, v4, [LhW;

    new-instance v2, LhX;

    invoke-direct {v2}, LhX;-><init>()V

    iget-object v3, p0, Lke;->a:LhM;

    iget-object v4, p0, Lke;->a:LhB;

    invoke-interface {v4}, LhB;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, LhM;->a(Ljava/lang/String;)LhK;

    move-result-object v3

    invoke-virtual {v2, v3}, LhX;->a(LhK;)LhX;

    move-result-object v2

    iget-object v3, p0, Lke;->a:LhM;

    iget-object v4, p0, Lke;->a:LhB;

    invoke-interface {v4}, LhB;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, LhM;->a(Lnk;Ljava/lang/String;)LhK;

    move-result-object v0

    invoke-virtual {v2, v0}, LhX;->a(LhK;)LhX;

    move-result-object v0

    invoke-virtual {v0}, LhX;->a()LhW;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lke;->c(Ljava/util/List;)V

    goto/16 :goto_66

    :cond_159
    move-object v0, v1

    goto/16 :goto_25
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 756
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lke;->e(Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lke;->a:Lid;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lid;->a(Ljava/util/Set;)V

    .line 324
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 571
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 572
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 575
    const-string v2, "accountName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v2, "triggerSync"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 577
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 579
    iget-object v1, p0, Lke;->a:Lkd;

    invoke-interface {v1, v0}, Lkd;->c(Landroid/content/Intent;)V

    .line 580
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 500
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lke;->a:Ljg;

    invoke-interface {v3}, Ljg;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-gt v0, v3, :cond_34

    move v0, v1

    :goto_18
    invoke-static {v0}, LafQ;->a(Z)V

    .line 504
    iget-object v0, p0, Lke;->a:Ljg;

    invoke-interface {v0}, Ljg;->a()Ljava/util/List;

    move-result-object v3

    .line 506
    iget-object v0, p0, Lke;->a:LhB;

    invoke-interface {v0}, LhB;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 536
    :goto_33
    return-void

    :cond_34
    move v0, v2

    .line 503
    goto :goto_18

    .line 511
    :cond_36
    iget-object v0, p0, Lke;->a:LhB;

    invoke-interface {v0}, LhB;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-direct {p0}, Lke;->b()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 513
    invoke-direct {p0, p1, p2}, Lke;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 514
    invoke-direct {p0, p2}, Lke;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2, v2}, Lke;->a(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_33

    .line 516
    :cond_56
    invoke-direct {p0, p1, p2, v2}, Lke;->a(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_33

    .line 521
    :cond_5a
    invoke-direct {p0}, Lke;->c()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_7a

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhW;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 522
    invoke-direct {p0, p1, p2, v2}, Lke;->a(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_33

    .line 526
    :cond_7a
    invoke-direct {p0}, Lke;->e()V

    .line 528
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_8b

    .line 529
    invoke-direct {p0, p1, p2}, Lke;->b(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_33

    .line 530
    :cond_8b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_99

    .line 531
    invoke-direct {p0, p1, p2, v2}, Lke;->a(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_33

    .line 533
    :cond_99
    invoke-direct {p0, p2}, Lke;->b(Ljava/lang/String;)V

    .line 534
    invoke-direct {p0, p1}, Lke;->c(Ljava/util/List;)V

    goto :goto_33
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 591
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 594
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 597
    const-string v2, "accountName"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v2, "triggerSync"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 599
    iget-object v2, p0, Lke;->a:Lji;

    invoke-interface {v2, v1, p1}, Lji;->a(Landroid/os/Bundle;Ljava/util/List;)V

    .line 600
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 602
    iget-object v1, p0, Lke;->a:Lkd;

    invoke-interface {v1, v0}, Lkd;->a(Landroid/content/Intent;)V

    .line 603
    return-void
.end method

.method private a()Z
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lke;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private a(Ljava/util/List;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 739
    iget-object v0, p0, Lke;->a:LhB;

    invoke-interface {v0}, LhB;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lke;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 743
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_22

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhW;

    invoke-interface {v0}, LhW;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhW;

    invoke-interface {v0}, LhW;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    move v0, v1

    :goto_21
    return v0

    :cond_22
    move v0, v2

    goto :goto_21
.end method

.method private b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 616
    iget-object v0, p0, Lke;->a:LhB;

    invoke-interface {v0}, LhB;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 618
    invoke-direct {p0}, Lke;->b()Z

    move-result v0

    .line 619
    iget-object v1, p0, Lke;->a:LhB;

    invoke-interface {v1, p1}, LhB;->a(Ljava/lang/String;)V

    .line 621
    if-eqz v0, :cond_1c

    .line 622
    iget-object v0, p0, Lke;->a:LHW;

    invoke-interface {v0, p1}, LHW;->a(Ljava/lang/String;)V

    .line 625
    :cond_1c
    invoke-direct {p0}, Lke;->g()V

    .line 627
    :cond_1f
    return-void
.end method

.method private b(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 496
    iget-object v0, p0, Lke;->a:LhB;

    invoke-interface {v0}, LhB;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lke;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method private b(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 547
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 548
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 551
    const-string v2, "accountName"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v2, p0, Lke;->a:Lji;

    invoke-interface {v2, v1, p1}, Lji;->a(Landroid/os/Bundle;Ljava/util/List;)V

    .line 553
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 555
    iget-object v1, p0, Lke;->a:Lkd;

    invoke-interface {v1, v0}, Lkd;->b(Landroid/content/Intent;)V

    .line 556
    return-void
.end method

.method private b()Z
    .registers 2

    .prologue
    .line 735
    iget-object v0, p0, Lke;->a:Ljg;

    invoke-interface {v0}, Ljg;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lke;->a(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/util/List;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 752
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_16

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhW;

    invoke-interface {v0}, LhW;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    move v0, v1

    :goto_15
    return v0

    :cond_16
    move v0, v2

    goto :goto_15
.end method

.method private c(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 641
    iget-object v0, p0, Lke;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 642
    new-instance v1, Landroid/provider/SearchRecentSuggestions;

    iget-object v0, p0, Lke;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget-object v2, Lcom/google/android/apps/docs/doclist/DocListAccountSuggestionProvider;->a:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v4}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 645
    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :cond_1c
    invoke-direct {p0}, Lke;->a()LkG;

    move-result-object v0

    .line 649
    if-nez v0, :cond_23

    .line 660
    :goto_22
    return-void

    .line 652
    :cond_23
    iget-object v1, p0, Lke;->a:LOC;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, p1, v2, v3}, LOC;->a(LkG;Ljava/lang/String;J)LOG;

    move-result-object v0

    .line 655
    new-instance v1, LhX;

    invoke-direct {v1}, LhX;-><init>()V

    iget-object v2, p0, Lke;->a:LhM;

    iget-object v3, p0, Lke;->a:LhB;

    invoke-interface {v3}, LhB;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, LhM;->a(Ljava/lang/String;)LhK;

    move-result-object v2

    invoke-virtual {v1, v2}, LhX;->a(LhK;)LhX;

    move-result-object v1

    iget-object v2, p0, Lke;->a:LhM;

    iget-object v3, p0, Lke;->a:LhB;

    invoke-interface {v3}, LhB;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, LhM;->a(Ljava/lang/String;LOG;)LhK;

    move-result-object v0

    invoke-virtual {v1, v0}, LhX;->a(LhK;)LhX;

    move-result-object v0

    invoke-virtual {v0}, LhX;->a()LhW;

    move-result-object v0

    .line 659
    new-array v1, v4, [LhW;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lke;->c(Ljava/util/List;)V

    goto :goto_22
.end method

.method private c(Ljava/lang/String;LeD;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lke;->a(Ljava/lang/String;)LkT;

    move-result-object v0

    .line 168
    if-nez v0, :cond_7

    .line 186
    :goto_6
    return-void

    .line 170
    :cond_7
    invoke-virtual {v0}, LkT;->o()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 171
    iget-object v0, p0, Lke;->a:LdE;

    if-eqz v0, :cond_1d

    .line 172
    iget-object v0, p0, Lke;->a:LdE;

    const-string v1, "tabletDoclist"

    const-string v2, "collections"

    const-string v3, "FromDoclist"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 176
    :cond_1d
    new-instance v0, LhX;

    invoke-direct {v0}, LhX;-><init>()V

    .line 177
    iget-object v1, p0, Lke;->a:LhM;

    iget-object v2, p0, Lke;->a:LhB;

    invoke-interface {v2}, LhB;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, LhM;->a(Ljava/lang/String;Ljava/lang/String;)LhK;

    move-result-object v1

    invoke-virtual {v0, v1}, LhX;->a(LhK;)LhX;

    .line 179
    iget-object v1, p0, Lke;->a:LhM;

    invoke-interface {v1}, LhM;->a()LhK;

    move-result-object v1

    invoke-virtual {v0, v1}, LhX;->a(LhK;)LhX;

    .line 181
    iget-object v1, p0, Lke;->a:Ljg;

    invoke-interface {v1}, Ljg;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, LhX;->a()LhW;

    move-result-object v0

    invoke-static {v1, v0}, Ljl;->a(Ljava/util/List;LhW;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lke;->b(Ljava/util/List;)V

    goto :goto_6

    .line 184
    :cond_4c
    iget-object v0, p0, Lke;->a:Lkd;

    invoke-interface {v0, p1, p2}, Lkd;->b(Ljava/lang/String;LeD;)V

    goto :goto_6
.end method

.method private c(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 672
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhW;

    .line 673
    invoke-interface {v0}, LhW;->a()V
    :try_end_13
    .catch LhL; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_4

    .line 676
    :catch_14
    move-exception v0

    .line 677
    invoke-direct {p0, v0}, Lke;->a(Ljava/lang/Exception;)V

    .line 686
    :goto_18
    return-void

    .line 675
    :cond_19
    :try_start_19
    invoke-direct {p0, p1}, Lke;->a(Ljava/util/List;)Z
    :try_end_1c
    .catch LhL; {:try_start_19 .. :try_end_1c} :catch_14

    move-result v1

    .line 681
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhW;

    .line 682
    iget-object v2, p0, Lke;->a:Lje;

    invoke-interface {v2, v1, p1, v0}, Lje;->a(ZLjava/util/List;LhW;)V

    .line 683
    iget-object v1, p0, Lke;->a:Ljg;

    invoke-interface {v1, p1}, Ljg;->a(Ljava/util/List;)V

    .line 684
    iget-object v1, p0, Lke;->a:Lii;

    invoke-interface {v1, v0}, Lii;->a(LhW;)V

    .line 685
    invoke-direct {p0, p1}, Lke;->d(Ljava/util/List;)V

    goto :goto_18
.end method

.method private c()Z
    .registers 2

    .prologue
    .line 748
    iget-object v0, p0, Lke;->a:Ljg;

    invoke-interface {v0}, Ljg;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lke;->b(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private d(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 690
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 691
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhW;

    invoke-interface {v0}, LhW;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_55

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhW;

    invoke-interface {v0}, LhW;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_55

    .line 694
    add-int/lit8 v0, v1, -0x1

    .line 696
    :goto_1f
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 698
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    .line 699
    :goto_2a
    if-ge v1, v3, :cond_4f

    .line 700
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    add-int v5, v0, v1

    .line 701
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhW;

    invoke-interface {v0}, LhW;->a()Ljava/lang/String;

    move-result-object v0

    .line 702
    add-int/lit8 v5, v5, 0x1

    invoke-interface {p1, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 704
    new-instance v6, LhI;

    invoke-direct {v6, v0, v5}, LhI;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    .line 706
    :cond_4f
    iget-object v0, p0, Lke;->a:LhG;

    invoke-interface {v0, v4}, LhG;->a(Ljava/util/List;)V

    .line 707
    return-void

    :cond_55
    move v0, v1

    goto :goto_1f
.end method

.method private e()V
    .registers 3

    .prologue
    .line 319
    iget-object v0, p0, Lke;->a:Lid;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lid;->a(Ljava/util/Set;)V

    .line 320
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 760
    const-string v0, "TabletDocListController"

    invoke-static {v0, p1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-direct {p0}, Lke;->h()V

    .line 762
    return-void
.end method

.method private f()V
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lke;->a:Lid;

    invoke-interface {v0}, Lid;->a()V

    .line 328
    return-void
.end method

.method private g()V
    .registers 3

    .prologue
    .line 357
    const-string v0, "TabletDocListController"

    const-string v1, "in resync"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lke;->a:Llu;

    iget-object v1, p0, Lke;->a:LhB;

    invoke-interface {v1}, LhB;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lke;->a:LHW;

    invoke-interface {v1, v0}, LHW;->a(LkG;)V

    .line 360
    return-void
.end method

.method private h()V
    .registers 3

    .prologue
    .line 562
    iget-object v0, p0, Lke;->a:LhB;

    invoke-interface {v0}, LhB;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lke;->a(Ljava/lang/String;Z)V

    .line 563
    return-void
.end method


# virtual methods
.method public a()LOD;
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lke;->a:LOC;

    invoke-interface {v0}, LOC;->a()LOD;

    move-result-object v0

    return-object v0
.end method

.method public a()LlQ;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 766
    invoke-direct {p0}, Lke;->a()Z

    move-result v1

    if-nez v1, :cond_8

    .line 776
    :cond_7
    :goto_7
    return-object v0

    .line 770
    :cond_8
    invoke-direct {p0}, Lke;->a()LkG;

    move-result-object v5

    .line 771
    if-eqz v5, :cond_7

    .line 775
    iget-object v0, p0, Lke;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    const/4 v0, 0x1

    :goto_1b
    invoke-static {v0}, LafQ;->b(Z)V

    .line 776
    iget-object v0, p0, Lke;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lke;->a:Lid;

    invoke-interface {v1}, Lid;->a()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lke;->a:Llu;

    iget-object v3, p0, Lke;->a:Lmi;

    iget-object v4, p0, Lke;->a:LLz;

    invoke-virtual {v5}, LkG;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lke;->a:LQN;

    iget-object v7, p0, Lke;->a:LeZ;

    iget-object v8, p0, Lke;->a:LFX;

    invoke-static/range {v0 .. v8}, LlQ;->a(Landroid/content/Context;Ljava/util/Set;Llu;Lmi;LLz;Ljava/lang/String;LQN;LeZ;LFX;)LlQ;

    move-result-object v0

    goto :goto_7

    .line 775
    :cond_41
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public a()V
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lke;->a:LOC;

    invoke-interface {v0}, LOC;->a()V

    .line 338
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 5
    .parameter

    .prologue
    .line 226
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_9

    .line 245
    :cond_8
    :goto_8
    return-void

    .line 230
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 233
    :try_start_d
    iget-object v1, p0, Lke;->a:Lji;

    invoke-interface {v1, v0}, Lji;->a(Landroid/os/Bundle;)Ljava/util/List;
    :try_end_12
    .catch Ljj; {:try_start_d .. :try_end_12} :catch_29

    move-result-object v1

    .line 238
    const-string v2, "accountName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 241
    iget-object v0, p0, Lke;->a:LhB;

    invoke-interface {v0}, LhB;->a()Ljava/lang/String;

    move-result-object v0

    .line 244
    :cond_25
    invoke-direct {p0, v1, v0}, Lke;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_8

    .line 234
    :catch_29
    move-exception v0

    .line 235
    const-string v1, "TabletDocListController"

    invoke-virtual {v0}, Ljj;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public a(Landroid/os/Bundle;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 143
    if-nez p1, :cond_f

    const/4 v0, 0x1

    .line 144
    :goto_3
    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :cond_b
    invoke-direct {p0, p1, v0}, Lke;->a(Landroid/os/Bundle;Z)V

    .line 146
    return-void

    .line 143
    :cond_f
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public a(Ljava/lang/String;LeD;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0}, Lke;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 151
    if-eqz p2, :cond_c

    sget-object v0, LeD;->a:LeD;

    if-ne p2, v0, :cond_10

    .line 152
    :cond_c
    invoke-direct {p0, p1}, Lke;->a(Ljava/lang/String;)V

    .line 159
    :goto_f
    return-void

    .line 154
    :cond_10
    iget-object v0, p0, Lke;->a:Lkd;

    invoke-interface {v0, p1, p2}, Lkd;->b(Ljava/lang/String;LeD;)V

    goto :goto_f

    .line 157
    :cond_16
    invoke-direct {p0, p1, p2}, Lke;->c(Ljava/lang/String;LeD;)V

    goto :goto_f
.end method

.method public a(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lke;->a:LdE;

    if-eqz v0, :cond_10

    .line 210
    iget-object v0, p0, Lke;->a:LdE;

    const-string v1, "tabletDoclist"

    const-string v2, "collections"

    const-string v3, "NotFromDoclist"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    :cond_10
    invoke-direct {p0, p1}, Lke;->b(Ljava/util/List;)V

    .line 215
    return-void
.end method

.method public a(Lnk;)V
    .registers 7
    .parameter

    .prologue
    .line 192
    invoke-virtual {p1}, Lnk;->a()Ljava/lang/String;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_13

    iget-object v1, p0, Lke;->a:LdE;

    if-eqz v1, :cond_13

    .line 194
    iget-object v1, p0, Lke;->a:LdE;

    const-string v2, "tabletDoclist"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v0, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 197
    :cond_13
    new-instance v0, LhX;

    invoke-direct {v0}, LhX;-><init>()V

    .line 199
    iget-object v1, p0, Lke;->a:LhM;

    iget-object v2, p0, Lke;->a:LhB;

    invoke-interface {v2}, LhB;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, LhM;->a(Ljava/lang/String;)LhK;

    move-result-object v1

    invoke-virtual {v0, v1}, LhX;->a(LhK;)LhX;

    .line 201
    iget-object v1, p0, Lke;->a:LhM;

    iget-object v2, p0, Lke;->a:LhB;

    invoke-interface {v2}, LhB;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, LhM;->a(Lnk;Ljava/lang/String;)LhK;

    move-result-object v1

    invoke-virtual {v0, v1}, LhX;->a(LhK;)LhX;

    .line 204
    const/4 v1, 0x1

    new-array v1, v1, [LhW;

    const/4 v2, 0x0

    invoke-virtual {v0}, LhX;->a()LhW;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lke;->b(Ljava/util/List;)V

    .line 205
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 295
    iget-object v0, p0, Lke;->a:Lii;

    invoke-interface {v0}, Lii;->a()V

    .line 296
    iget-object v0, p0, Lke;->a:Lje;

    invoke-interface {v0}, Lje;->a()V

    .line 298
    iget-object v0, p0, Lke;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 299
    invoke-direct {p0}, Lke;->a()LkG;

    move-result-object v1

    .line 300
    if-nez v1, :cond_1d

    .line 316
    :cond_1c
    :goto_1c
    return-void

    .line 304
    :cond_1d
    iget-object v0, p0, Lke;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 305
    iget-object v2, p0, Lke;->a:Llu;

    invoke-interface {v2, v1, v0}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v0

    .line 310
    if-nez v0, :cond_39

    .line 311
    invoke-direct {p0}, Lke;->e()V

    goto :goto_1c

    .line 313
    :cond_39
    invoke-direct {p0}, Lke;->f()V

    goto :goto_1c
.end method

.method public b(Landroid/content/Intent;)V
    .registers 7
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, Lke;->a:LdE;

    if-eqz v0, :cond_f

    .line 374
    iget-object v0, p0, Lke;->a:LdE;

    const-string v1, "tabletDoclist"

    const-string v2, "search"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 378
    :cond_f
    iget-object v0, p0, Lke;->a:Lkd;

    invoke-interface {v0, p1}, Lkd;->b(Landroid/content/Intent;)V

    .line 379
    return-void
.end method

.method public b(Ljava/lang/String;LeD;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lke;->c(Ljava/lang/String;LeD;)V

    .line 164
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 219
    invoke-direct {p0}, Lke;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lke;->a:Lkd;

    invoke-interface {v0}, Lkd;->e()Z

    move-result v0

    if-nez v0, :cond_11

    .line 220
    :cond_e
    invoke-direct {p0}, Lke;->h()V

    .line 222
    :cond_11
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 364
    invoke-static {}, Lkg;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 365
    invoke-direct {p0}, Lke;->e()V

    .line 369
    :goto_9
    return-void

    .line 367
    :cond_a
    iget-object v0, p0, Lke;->a:Lkd;

    invoke-interface {v0}, Lkd;->n()V

    goto :goto_9
.end method

.method public d(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lke;->a(Ljava/lang/String;)V

    .line 291
    return-void
.end method
