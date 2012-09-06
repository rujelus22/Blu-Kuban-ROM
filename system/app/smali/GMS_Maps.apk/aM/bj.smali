.class public LaM/bj;
.super LaM/m;
.source "SourceFile"

# interfaces
.implements Lat/m;
.implements Lax/z;
.implements Lcom/google/android/maps/driveabout/vector/i;
.implements Lcom/google/googlenav/aT;
.implements Lcom/google/googlenav/aY;


# instance fields
.field protected volatile B:Z

.field protected C:I

.field protected D:I

.field private E:Z

.field private F:J

.field private G:Lcom/google/googlenav/ui/view/d;

.field private H:J

.field private I:Lcom/google/googlenav/ui/view/d;

.field private J:J

.field private K:Lcom/google/googlenav/ui/view/d;

.field private L:Lat/H;

.field private M:Z

.field private N:Lcom/google/googlenav/ui/view/K;

.field private O:Ljava/lang/String;

.field private P:Lcom/google/googlenav/layer/m;

.field private Q:Lat/k;

.field private R:Lcom/google/googlenav/layer/s;

.field private S:Z

.field private T:LO/b;

.field private U:LO/b;

.field private V:Z

.field private W:LaT/h;

.field private X:LaM/ah;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 299
    invoke-direct {p0, p1, p2, p3, p4}, LaM/m;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;)V

    .line 160
    iput-boolean v0, p0, LaM/bj;->B:Z

    .line 256
    iput-boolean v0, p0, LaM/bj;->S:Z

    .line 271
    iput-boolean v0, p0, LaM/bj;->V:Z

    .line 300
    invoke-direct {p0, p5, p6, p7}, LaM/bj;->a(Lcom/google/googlenav/layer/m;Lat/k;I)V

    .line 301
    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/n;Lcom/google/googlenav/layer/m;Lat/k;I)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 310
    invoke-direct/range {p0 .. p5}, LaM/m;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V

    .line 160
    iput-boolean v0, p0, LaM/bj;->B:Z

    .line 256
    iput-boolean v0, p0, LaM/bj;->S:Z

    .line 271
    iput-boolean v0, p0, LaM/bj;->V:Z

    .line 311
    invoke-direct {p0, p6, p7, p8}, LaM/bj;->a(Lcom/google/googlenav/layer/m;Lat/k;I)V

    .line 312
    iget-object v0, p1, Lcom/google/googlenav/ui/v;->f:LaT/h;

    iput-object v0, p0, LaM/bj;->W:LaT/h;

    .line 313
    return-void
.end method

.method static synthetic a(LaM/bj;)LO/b;
    .registers 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, LaM/bj;->T:LO/b;

    return-object v0
.end method

.method private a(LaC/N;)V
    .registers 6
    .parameter

    .prologue
    .line 1572
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    .line 1574
    iget-object v1, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    new-instance v2, Lcom/google/googlenav/bd;

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->m()Lcom/google/googlenav/bc;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/googlenav/bd;-><init>(Lcom/google/googlenav/bc;)V

    invoke-virtual {p1}, LaC/N;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v2

    const/16 v3, 0x5f9

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v2

    const-string v3, "20"

    invoke-virtual {v2, v3}, Lcom/google/googlenav/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/aY;)Lcom/google/googlenav/bd;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->U()Lat/H;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->aA()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/bd;->c(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bd;->e(I)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/bc;)V

    .line 1584
    return-void
.end method

.method static synthetic a(LaM/bj;Lcom/google/googlenav/aW;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, LaM/bj;->a(Lcom/google/googlenav/aW;ZZ)V

    return-void
.end method

.method private a(Lcom/google/googlenav/aW;ZLjava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 617
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/c;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 619
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->aM()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 620
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 621
    new-instance v1, LO/b;

    new-instance v2, LaM/bk;

    invoke-direct {v2, p0, p1, p2}, LaM/bk;-><init>(LaM/bj;Lcom/google/googlenav/aW;Z)V

    invoke-direct {v1, v3, v0, v2}, LO/b;-><init>(ILcom/google/googlenav/common/io/protocol/ProtoBuf;LO/c;)V

    iput-object v1, p0, LaM/bj;->T:LO/b;

    .line 637
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    iget-object v1, p0, LaM/bj;->T:LO/b;

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 638
    return-void
.end method

.method private a(Lcom/google/googlenav/aW;ZZ)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 667
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->af()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 668
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->f()I

    move-result v1

    .line 671
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/aW;->a(Lcom/google/googlenav/aW;)V

    .line 673
    invoke-virtual {p0, v1}, LaM/bj;->b(I)V

    .line 675
    invoke-virtual {p0}, LaM/bj;->R()V

    .line 677
    invoke-virtual {p0}, LaM/bj;->ae()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 678
    iget-object v0, p0, LaM/bj;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/ce;

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Lcom/google/googlenav/aW;I)V

    .line 738
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, LaM/bj;->bE()V

    .line 741
    invoke-direct {p0}, LaM/bj;->bV()V

    .line 744
    iput-boolean v6, p0, LaM/bj;->B:Z

    .line 745
    return-void

    .line 681
    :cond_33
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->K()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 682
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    const/16 v1, 0x5c1

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->G()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 688
    :cond_79
    if-eqz p2, :cond_9b

    .line 689
    invoke-static {p1}, LaM/bj;->d(Lcom/google/googlenav/F;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 691
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ap()I

    move-result v0

    invoke-virtual {p0, v0}, LaM/bj;->b(I)V

    .line 696
    :cond_88
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-virtual {p0}, LaM/bj;->bJ()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 697
    :cond_98
    invoke-virtual {p0}, LaM/bj;->an()Z

    .line 703
    :cond_9b
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->H()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 704
    invoke-direct {p0}, LaM/bj;->ch()V

    .line 710
    :cond_a4
    iget-object v0, p0, LaM/bj;->K:Lcom/google/googlenav/ui/view/d;

    if-nez v0, :cond_ab

    .line 711
    invoke-direct {p0, p1}, LaM/bj;->i(Lcom/google/googlenav/aW;)V

    .line 718
    :cond_ab
    if-eqz p2, :cond_bb

    .line 723
    iput-boolean v7, p0, LaM/bj;->M:Z

    .line 725
    invoke-virtual {p0, p3}, LaM/bj;->k(Z)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 727
    invoke-direct {p0}, LaM/bj;->bU()Lat/H;

    move-result-object v0

    iput-object v0, p0, LaM/bj;->L:Lat/H;

    .line 731
    :cond_bb
    invoke-virtual {p0, p1}, LaM/bj;->c(Lcom/google/googlenav/aW;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 732
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LaM/bj;->c(ILjava/lang/Object;)V

    goto/16 :goto_2a
.end method

.method private a(Lcom/google/googlenav/bb;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1538
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    .line 1539
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->aK()Ljava/util/Set;

    move-result-object v0

    .line 1541
    if-nez v0, :cond_f

    .line 1542
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1545
    :cond_f
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 1546
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1551
    :goto_18
    if-eqz p2, :cond_5f

    .line 1553
    iget-object v2, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    new-instance v3, Lcom/google/googlenav/bd;

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->m()Lcom/google/googlenav/bc;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/bd;-><init>(Lcom/google/googlenav/bc;)V

    invoke-virtual {v3, v0}, Lcom/google/googlenav/bd;->a(Ljava/util/Set;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/16 v3, 0x5f9

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v0

    const-string v3, "20"

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/aY;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->U()Lat/H;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->aA()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->c(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->e(I)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/bc;)V

    .line 1564
    :cond_5f
    return-void

    .line 1548
    :cond_60
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18
.end method

.method private a(Lcom/google/googlenav/layer/m;Lat/k;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, LaM/bj;->P:Lcom/google/googlenav/layer/m;

    .line 317
    iput-object p2, p0, LaM/bj;->Q:Lat/k;

    .line 318
    iput p3, p0, LaM/bj;->C:I

    .line 320
    new-instance v0, Lcom/google/googlenav/layer/s;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/layer/s;-><init>(LaM/i;Lcom/google/googlenav/layer/m;)V

    iput-object v0, p0, LaM/bj;->R:Lcom/google/googlenav/layer/s;

    .line 322
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    if-eqz v0, :cond_1e

    .line 323
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->al()Lax/m;

    move-result-object v0

    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v0

    invoke-interface {v0, p0}, Lax/r;->a(Lax/z;)V

    .line 329
    :cond_1e
    iget-object v0, p0, LaM/bj;->t:LaO/a;

    check-cast v0, LaO/i;

    invoke-virtual {v0, p3}, LaO/i;->c(I)V

    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaM/bj;->i(Z)V

    .line 332
    invoke-direct {p0}, LaM/bj;->bS()V

    .line 333
    return-void
.end method

.method private b(ILcom/google/googlenav/ai;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 3132
    const/4 v5, 0x0

    .line 3134
    new-instance v2, LaM/bt;

    invoke-direct {v2, p0, p1}, LaM/bt;-><init>(LaM/bj;I)V

    .line 3153
    iget-object v0, p0, LaM/bj;->G:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_f

    .line 3154
    iget-object v0, p0, LaM/bj;->G:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 3156
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LaM/bj;->F:J

    .line 3157
    new-instance v0, Lcom/google/googlenav/ui/android/am;

    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/e;->d()Lcom/google/googlenav/ui/android/ButtonContainer;

    move-result-object v1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/am;-><init>(Lcom/google/googlenav/ui/android/ButtonContainer;Lcom/google/googlenav/ui/view/c;LaM/bj;Lcom/google/googlenav/ai;LS/f;)V

    iput-object v0, p0, LaM/bj;->G:Lcom/google/googlenav/ui/view/d;

    .line 3159
    return-void
.end method

.method static synthetic b(LaM/bj;)V
    .registers 1
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, LaM/bj;->bW()V

    return-void
.end method

.method private bS()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 346
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    if-nez v0, :cond_6

    .line 377
    :cond_5
    :goto_5
    return-void

    .line 350
    :cond_6
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v1

    .line 351
    instance-of v0, v1, LaN/b;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 355
    check-cast v0, LaN/b;

    invoke-virtual {v0}, LaN/b;->ad()Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->w()Lcom/google/android/maps/driveabout/vector/cy;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 363
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->w()Lcom/google/android/maps/driveabout/vector/cy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/cy;->o()Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v2

    .line 367
    if-eqz v2, :cond_5

    .line 372
    new-instance v3, LaM/ah;

    invoke-direct {v3, v0, v2}, LaM/ah;-><init>(Lcom/google/android/maps/driveabout/vector/VectorMapView;Lcom/google/android/maps/driveabout/vector/db;)V

    iput-object v3, p0, LaM/bj;->X:LaM/ah;

    .line 375
    iget-object v0, p0, LaM/bj;->X:LaM/ah;

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v4, v2, v4

    invoke-static {v2}, Lt/a;->a([I)Lt/a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, LaM/am;->a(LaM/au;Lt/a;)V

    goto :goto_5
.end method

.method private bT()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 756
    iget-object v1, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v1

    invoke-virtual {v1}, LaM/am;->I()LaM/i;

    move-result-object v1

    if-eq v1, p0, :cond_e

    .line 766
    :cond_d
    :goto_d
    return v0

    .line 762
    :cond_e
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-nez v1, :cond_d

    .line 766
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private bU()Lat/H;
    .registers 7

    .prologue
    .line 792
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    .line 796
    iget-object v1, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->D()V

    .line 801
    iget-object v1, p0, LaM/bj;->d:Lat/u;

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->S()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->T()I

    move-result v3

    invoke-virtual {p0}, LaM/bj;->bJ()Z

    move-result v4

    invoke-virtual {p0, v4}, LaM/bj;->c(Z)I

    move-result v4

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/actionbar/a;->k()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lat/u;->a(IIII)Lat/Y;

    move-result-object v1

    .line 805
    invoke-virtual {v0}, Lcom/google/googlenav/aW;->O()Lat/B;

    move-result-object v0

    .line 806
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->ar()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 808
    invoke-virtual {p0}, LaM/bj;->bJ()Z

    move-result v2

    invoke-virtual {p0, v2}, LaM/bj;->c(Z)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 809
    invoke-virtual {p0}, LaM/bj;->q()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 810
    neg-int v2, v2

    neg-int v3, v3

    invoke-virtual {v0, v2, v3, v1}, Lat/B;->a(IILat/Y;)Lat/B;

    move-result-object v0

    .line 816
    :cond_4b
    invoke-virtual {p0, v0, v1}, LaM/bj;->a(Lat/B;Lat/Y;)Lat/B;

    move-result-object v0

    .line 819
    iget-object v2, p0, LaM/bj;->d:Lat/u;

    invoke-virtual {v2, v0, v1}, Lat/u;->d(Lat/B;Lat/Y;)V

    .line 821
    iget-object v2, p0, LaM/bj;->d:Lat/u;

    invoke-virtual {v2}, Lat/u;->f()Lat/H;

    move-result-object v2

    invoke-virtual {v2, v1}, Lat/H;->a(Lat/Y;)Lat/H;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/H;->a(Lat/B;)Lat/H;

    move-result-object v0

    return-object v0
.end method

.method private bV()V
    .registers 6

    .prologue
    .line 859
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    .line 865
    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->f()I

    move-result v2

    :goto_9
    if-ge v0, v2, :cond_17

    .line 866
    invoke-virtual {v1, v0}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {p0, v3, v4}, LaM/bj;->a(Lcom/google/googlenav/E;I)V

    .line 865
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 870
    :cond_17
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->aG()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->aG()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_29

    .line 871
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, LaM/bj;->f(I)V

    .line 875
    :cond_29
    return-void
.end method

.method private bW()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    .line 1446
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    .line 1447
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->aJ()Ljava/util/Map;

    move-result-object v0

    .line 1448
    if-nez v0, :cond_10

    .line 1449
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1454
    :cond_10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1455
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 1456
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    :goto_21
    iget-object v2, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    new-instance v3, Lcom/google/googlenav/bd;

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->m()Lcom/google/googlenav/bc;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/bd;-><init>(Lcom/google/googlenav/bc;)V

    invoke-virtual {v3, v0}, Lcom/google/googlenav/bd;->a(Ljava/util/Map;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/16 v3, 0x5f9

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v0

    const-string v3, "20"

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/aY;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->U()Lat/H;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->aA()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->c(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/bc;)V

    .line 1471
    return-void

    .line 1458
    :cond_62
    new-instance v3, Lcom/google/googlenav/aZ;

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct {v3, v6, v4, v5}, Lcom/google/googlenav/aZ;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21
.end method

.method private bX()V
    .registers 4

    .prologue
    .line 1587
    invoke-virtual {p0}, LaM/bj;->ae()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1588
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, LaM/bj;->f(I)V

    .line 1595
    :goto_b
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {p0, v0}, LaM/bj;->f(Lcom/google/googlenav/aW;)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 1596
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, LaM/bj;->a(ILcom/google/googlenav/ai;)V

    .line 1599
    invoke-direct {p0, v0}, LaM/bj;->p(Lcom/google/googlenav/ai;)Lcom/google/googlenav/layer/m;

    move-result-object v0

    .line 1600
    iget-object v1, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, LaM/am;->c(Lcom/google/googlenav/layer/m;Z)LaM/y;

    .line 1601
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/v;->a(LaM/i;)V

    .line 1602
    invoke-virtual {p0}, LaM/bj;->ae()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p0}, LaM/bj;->af()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1603
    :cond_36
    invoke-virtual {p0}, LaM/bj;->n()V

    .line 1605
    :cond_39
    return-void

    .line 1589
    :cond_3a
    invoke-virtual {p0}, LaM/bj;->af()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1590
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, LaM/bj;->f(I)V

    goto :goto_b

    .line 1592
    :cond_46
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, LaM/bj;->f(I)V

    goto :goto_b
.end method

.method private bY()V
    .registers 2

    .prologue
    .line 1871
    iget-object v0, p0, LaM/bj;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    invoke-virtual {p0, v0}, LaM/bj;->b(I)V

    .line 1872
    invoke-virtual {p0}, LaM/bj;->an()Z

    .line 1873
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaM/bj;->b(Z)V

    .line 1874
    return-void
.end method

.method private bZ()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1884
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LaM/bj;->f:Lcom/google/googlenav/F;

    invoke-interface {v2}, Lcom/google/googlenav/F;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1887
    invoke-virtual {p0}, LaM/bj;->bt()Lcom/google/googlenav/ai;

    move-result-object v1

    .line 1888
    if-eqz v1, :cond_56

    .line 1889
    invoke-static {v1}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v1

    .line 1890
    if-eqz v1, :cond_56

    .line 1892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&gmmsmh=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1897
    :cond_56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(LaM/bj;)V
    .registers 1
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, LaM/bj;->cd()V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x4

    const/4 v2, 0x0

    .line 1495
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v4

    .line 1496
    iget-object v0, p0, LaM/bj;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->d()B

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_74

    move v0, v1

    .line 1497
    :goto_11
    invoke-virtual {v4}, Lcom/google/googlenav/aW;->aJ()Ljava/util/Map;

    move-result-object v3

    .line 1499
    if-nez v3, :cond_1c

    .line 1500
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1505
    :cond_1c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1506
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    if-nez v0, :cond_76

    .line 1507
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    :cond_2f
    :goto_2f
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    new-instance v1, Lcom/google/googlenav/bd;

    invoke-virtual {v4}, Lcom/google/googlenav/aW;->m()Lcom/google/googlenav/bc;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/google/googlenav/bd;-><init>(Lcom/google/googlenav/bc;)V

    invoke-virtual {v1, v3}, Lcom/google/googlenav/bd;->a(Ljava/util/Map;)Lcom/google/googlenav/bd;

    move-result-object v1

    const/16 v3, 0x5f9

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v1

    const-string v3, "20"

    invoke-virtual {v1, v3}, Lcom/google/googlenav/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/aY;)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/googlenav/aW;->U()Lat/H;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/googlenav/aW;->aA()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/googlenav/bd;->c(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->e(I)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/bc;)V

    .line 1527
    return-void

    :cond_74
    move v0, v2

    .line 1496
    goto :goto_11

    .line 1508
    :cond_76
    invoke-static {p2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1510
    new-instance v6, Lcom/google/googlenav/ba;

    const-string v7, ""

    invoke-direct {v6, v2, v7, p2}, Lcom/google/googlenav/ba;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1511
    new-instance v6, Lcom/google/googlenav/aZ;

    const/16 v7, 0x12c

    invoke-static {v7}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v7

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-static {v7, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v8, v1, v0}, Lcom/google/googlenav/aZ;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f
.end method

.method private ca()Z
    .registers 3

    .prologue
    .line 2002
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_29

    .line 2003
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 2004
    const/4 v0, 0x0

    .line 2007
    :goto_25
    return v0

    .line 2002
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 2007
    :cond_29
    const/4 v0, 0x1

    goto :goto_25
.end method

.method private cb()Z
    .registers 3

    .prologue
    .line 2021
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->c()I

    move-result v0

    .line 2022
    add-int/lit8 v0, v0, 0x1

    :goto_a
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->f()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 2023
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 2024
    const/4 v0, 0x0

    .line 2027
    :goto_23
    return v0

    .line 2022
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2027
    :cond_27
    const/4 v0, 0x1

    goto :goto_23
.end method

.method private cc()Lcom/google/googlenav/n;
    .registers 2

    .prologue
    .line 2246
    iget-object v0, p0, LaM/bj;->f:Lcom/google/googlenav/F;

    check-cast v0, Lcom/google/googlenav/n;

    return-object v0
.end method

.method private cd()V
    .registers 3

    .prologue
    .line 3172
    iget-object v0, p0, LaM/bj;->G:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_10

    .line 3173
    iget-object v0, p0, LaM/bj;->G:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 3174
    const/4 v0, 0x0

    iput-object v0, p0, LaM/bj;->G:Lcom/google/googlenav/ui/view/d;

    .line 3175
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaM/bj;->F:J

    .line 3177
    :cond_10
    return-void
.end method

.method private ce()V
    .registers 4

    .prologue
    .line 3180
    iget-object v0, p0, LaM/bj;->I:Lcom/google/googlenav/ui/view/d;

    if-nez v0, :cond_5

    .line 3191
    :goto_4
    return-void

    .line 3184
    :cond_5
    iget-object v0, p0, LaM/bj;->I:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 3185
    const/4 v0, 0x2

    const-string v1, "pubalerts"

    const-string v2, "d"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 3189
    const/4 v0, 0x0

    iput-object v0, p0, LaM/bj;->I:Lcom/google/googlenav/ui/view/d;

    .line 3190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaM/bj;->H:J

    goto :goto_4
.end method

.method private cf()V
    .registers 7

    .prologue
    .line 3197
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    .line 3198
    iget-wide v2, p0, LaM/bj;->F:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    .line 3199
    const/4 v0, 0x2

    const-string v1, "pubalerts"

    const-string v2, "dt"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 3202
    invoke-direct {p0}, LaM/bj;->cd()V

    .line 3204
    :cond_20
    return-void
.end method

.method private cg()V
    .registers 7

    .prologue
    .line 3210
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    .line 3211
    iget-wide v2, p0, LaM/bj;->H:J

    const-wide/16 v4, 0x3a98

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    .line 3213
    invoke-direct {p0}, LaM/bj;->ce()V

    .line 3215
    :cond_18
    return-void
.end method

.method private ch()V
    .registers 5

    .prologue
    .line 3218
    iget-object v0, p0, LaM/bj;->K:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_9

    .line 3219
    iget-object v0, p0, LaM/bj;->K:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 3223
    :cond_9
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->aq()I

    move-result v0

    if-nez v0, :cond_22

    .line 3224
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, LaM/am;->a(Lcom/google/googlenav/aW;I)V

    .line 3276
    :goto_21
    return-void

    .line 3229
    :cond_22
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    add-long/2addr v0, v2

    iput-wide v0, p0, LaM/bj;->J:J

    .line 3235
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->v()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 3236
    new-instance v1, LaM/bu;

    invoke-direct {v1, p0}, LaM/bu;-><init>(LaM/bj;)V

    .line 3248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe9

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/aW;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/aV;->ap:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    .line 3271
    :goto_67
    new-instance v2, Lcom/google/googlenav/ui/android/aw;

    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/view/e;->d()Lcom/google/googlenav/ui/android/ButtonContainer;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/google/googlenav/ui/android/aw;-><init>(Lcom/google/googlenav/ui/android/ButtonContainer;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/aW;)V

    iput-object v2, p0, LaM/bj;->K:Lcom/google/googlenav/ui/view/d;

    .line 3274
    const/16 v0, 0x38

    const-string v1, "v"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    goto :goto_21

    .line 3255
    :cond_7e
    new-instance v1, LaM/bm;

    invoke-direct {v1, p0}, LaM/bm;-><init>(LaM/bj;)V

    .line 3267
    const/16 v0, 0xea

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/aV;->ap:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    goto :goto_67
.end method

.method private ci()V
    .registers 3

    .prologue
    .line 3279
    iget-object v0, p0, LaM/bj;->K:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_10

    .line 3280
    iget-object v0, p0, LaM/bj;->K:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 3281
    const/4 v0, 0x0

    iput-object v0, p0, LaM/bj;->K:Lcom/google/googlenav/ui/view/d;

    .line 3282
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaM/bj;->J:J

    .line 3284
    :cond_10
    return-void
.end method

.method private cj()V
    .registers 5

    .prologue
    .line 3290
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, LaM/bj;->J:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    .line 3291
    invoke-direct {p0}, LaM/bj;->ci()V

    .line 3295
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->r()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3296
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->g(LaM/i;)V

    .line 3299
    :cond_28
    return-void
.end method

.method static synthetic d(LaM/bj;)V
    .registers 1
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, LaM/bj;->bX()V

    return-void
.end method

.method public static d(Lcom/google/googlenav/F;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1057
    move v1, v2

    :goto_2
    invoke-interface {p0}, Lcom/google/googlenav/F;->f()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 1058
    invoke-interface {p0, v1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 1059
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1060
    const/4 v2, 0x1

    .line 1063
    :cond_19
    return v2

    .line 1057
    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method static synthetic e(LaM/bj;)V
    .registers 1
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, LaM/bj;->ci()V

    return-void
.end method

.method private i(Lcom/google/googlenav/aW;)V
    .registers 3
    .parameter

    .prologue
    .line 2875
    invoke-direct {p0}, LaM/bj;->bT()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2889
    :goto_6
    return-void

    .line 2881
    :cond_7
    invoke-virtual {p0, p1}, LaM/bj;->f(Lcom/google/googlenav/aW;)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 2882
    if-eqz v0, :cond_11

    .line 2883
    invoke-direct {p0, v0}, LaM/bj;->o(Lcom/google/googlenav/ai;)V

    goto :goto_6

    .line 2884
    :cond_11
    invoke-virtual {p0, p1}, LaM/bj;->g(Lcom/google/googlenav/aW;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2885
    invoke-direct {p0, p1}, LaM/bj;->k(Lcom/google/googlenav/aW;)V

    goto :goto_6

    .line 2887
    :cond_1b
    invoke-direct {p0, p1}, LaM/bj;->j(Lcom/google/googlenav/aW;)Z

    goto :goto_6
.end method

.method private j(Lcom/google/googlenav/aW;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3051
    .line 3054
    invoke-virtual {p1, v0}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v3

    check-cast v3, Lcom/google/googlenav/ai;

    .line 3055
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->ab()Z

    move-result v1

    if-nez v1, :cond_10

    .line 3120
    :cond_f
    :goto_f
    return v0

    .line 3060
    :cond_10
    invoke-virtual {v3}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v1

    if-eqz v1, :cond_51

    invoke-virtual {p0, v3, v0}, LaM/bj;->c(Lcom/google/googlenav/ai;Z)LS/f;

    move-result-object v9

    .line 3062
    :goto_1a
    new-instance v2, LaM/bs;

    invoke-direct {v2, p0}, LaM/bs;-><init>(LaM/bj;)V

    .line 3108
    iget-object v0, p0, LaM/bj;->G:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_28

    .line 3109
    iget-object v0, p0, LaM/bj;->G:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 3111
    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LaM/bj;->F:J

    .line 3113
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aI()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 3114
    new-instance v0, Lcom/google/googlenav/ui/android/an;

    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/e;->d()Lcom/google/googlenav/ui/android/ButtonContainer;

    move-result-object v1

    invoke-virtual {p0, v3}, LaM/bj;->j(Lcom/google/googlenav/ai;)Z

    move-result v4

    invoke-virtual {p0, v3}, LaM/bj;->k(Lcom/google/googlenav/ai;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/an;-><init>(Lcom/google/googlenav/ui/android/ButtonContainer;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ai;ZZ)V

    iput-object v0, p0, LaM/bj;->G:Lcom/google/googlenav/ui/view/d;

    .line 3120
    :goto_4f
    const/4 v0, 0x1

    goto :goto_f

    .line 3060
    :cond_51
    const/4 v9, 0x0

    goto :goto_1a

    .line 3117
    :cond_53
    new-instance v4, Lcom/google/googlenav/ui/android/am;

    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/e;->d()Lcom/google/googlenav/ui/android/ButtonContainer;

    move-result-object v5

    move-object v6, v2

    move-object v7, p0

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/googlenav/ui/android/am;-><init>(Lcom/google/googlenav/ui/android/ButtonContainer;Lcom/google/googlenav/ui/view/c;LaM/bj;Lcom/google/googlenav/ai;LS/f;)V

    iput-object v4, p0, LaM/bj;->G:Lcom/google/googlenav/ui/view/d;

    goto :goto_4f
.end method

.method private k(Lcom/google/googlenav/aW;)V
    .registers 4
    .parameter

    .prologue
    .line 3162
    invoke-virtual {p0, p1}, LaM/bj;->h(Lcom/google/googlenav/aW;)I

    move-result v1

    .line 3163
    const/4 v0, -0x1

    if-ne v1, v0, :cond_8

    .line 3169
    :goto_7
    return-void

    .line 3167
    :cond_8
    invoke-virtual {p1, v1}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 3168
    invoke-direct {p0, v1, v0}, LaM/bj;->b(ILcom/google/googlenav/ai;)V

    goto :goto_7
.end method

.method private l(I)Lcom/google/googlenav/ai;
    .registers 3
    .parameter

    .prologue
    .line 1046
    iget-object v0, p0, LaM/bj;->f:Lcom/google/googlenav/F;

    invoke-interface {v0, p1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    return-object v0
.end method

.method private m(I)I
    .registers 5
    .parameter

    .prologue
    .line 2731
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    .line 2732
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->f()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 2733
    invoke-direct {p0, v0}, LaM/bj;->l(I)Lcom/google/googlenav/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->ab()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2734
    if-nez p1, :cond_18

    .line 2741
    :goto_17
    return v0

    .line 2737
    :cond_18
    add-int/lit8 p1, p1, -0x1

    .line 2732
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2741
    :cond_1d
    const/4 v0, -0x1

    goto :goto_17
.end method

.method private m(Lcom/google/googlenav/ai;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1844
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ah()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1866
    :goto_8
    :pswitch_8
    return v0

    .line 1849
    :cond_9
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->c()B

    move-result v2

    packed-switch v2, :pswitch_data_14

    :pswitch_10
    move v0, v1

    .line 1866
    goto :goto_8

    :pswitch_12
    move v0, v1

    .line 1851
    goto :goto_8

    .line 1849
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_12
        :pswitch_8
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_10
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private n(Lcom/google/googlenav/ai;)I
    .registers 5
    .parameter

    .prologue
    .line 2702
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    .line 2703
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->f()I

    move-result v2

    if-ge v0, v2, :cond_15

    .line 2704
    invoke-virtual {v1, v0}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v2

    if-ne v2, p1, :cond_12

    .line 2708
    :goto_11
    return v0

    .line 2703
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2708
    :cond_15
    const/4 v0, -0x1

    goto :goto_11
.end method

.method private o(Lcom/google/googlenav/ai;)V
    .registers 5
    .parameter

    .prologue
    .line 2938
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, LaM/bj;->f(I)V

    .line 2939
    new-instance v0, LaM/br;

    invoke-direct {v0, p0}, LaM/br;-><init>(LaM/bj;)V

    .line 2952
    iget-object v1, p0, LaM/bj;->G:Lcom/google/googlenav/ui/view/d;

    if-eqz v1, :cond_13

    .line 2953
    iget-object v1, p0, LaM/bj;->G:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 2955
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, LaM/bj;->F:J

    .line 2956
    new-instance v1, Lcom/google/googlenav/ui/android/ay;

    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/e;->d()Lcom/google/googlenav/ui/android/ButtonContainer;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0, p1}, Lcom/google/googlenav/ui/android/ay;-><init>(Lcom/google/googlenav/ui/android/ButtonContainer;Lcom/google/googlenav/ui/view/c;LaM/bj;Lcom/google/googlenav/ai;)V

    iput-object v1, p0, LaM/bj;->G:Lcom/google/googlenav/ui/view/d;

    .line 2958
    return-void
.end method

.method private p(Lcom/google/googlenav/ai;)Lcom/google/googlenav/layer/m;
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2961
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/dX;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 2963
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bM()Ljava/lang/String;

    move-result-object v1

    .line 2964
    invoke-virtual {v0, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2965
    invoke-virtual {v0, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2966
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bL()Ljava/lang/String;

    move-result-object v1

    .line 2967
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2968
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2969
    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2971
    const/16 v1, 0x11

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ao()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addBytes(I[B)V

    .line 2973
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/dX;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 2975
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2976
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2977
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2978
    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2979
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2980
    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 2982
    new-instance v1, Lcom/google/googlenav/layer/m;

    invoke-direct {v1, v0}, Lcom/google/googlenav/layer/m;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-object v1
.end method


# virtual methods
.method public M()Z
    .registers 2

    .prologue
    .line 1982
    invoke-direct {p0}, LaM/bj;->ca()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, LaM/bj;->ah()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public N()Z
    .registers 2

    .prologue
    .line 1989
    const/4 v0, 0x1

    return v0
.end method

.method protected O()Z
    .registers 2

    .prologue
    .line 1954
    const/4 v0, 0x0

    return v0
.end method

.method protected P()Z
    .registers 2

    .prologue
    .line 1959
    invoke-virtual {p0}, LaM/bj;->bJ()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-super {p0}, LaM/m;->P()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected T()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1964
    const/16 v0, 0x4fa

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected U()I
    .registers 2

    .prologue
    .line 1969
    const/16 v0, 0xf

    return v0
.end method

.method protected X()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1071
    invoke-super {p0}, LaM/m;->X()Z

    .line 1075
    invoke-virtual {p0}, LaM/bj;->bO()Lcom/google/googlenav/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/T;->h()[Lcom/google/googlenav/W;

    move-result-object v0

    if-eqz v0, :cond_30

    move v0, v1

    .line 1077
    :goto_10
    iget-boolean v3, p0, LaM/bj;->S:Z

    if-eqz v3, :cond_32

    if-nez v0, :cond_32

    .line 1078
    invoke-virtual {p0}, LaM/bj;->bO()Lcom/google/googlenav/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/T;->a()V

    .line 1081
    iput-boolean v2, p0, LaM/bj;->S:Z

    .line 1084
    invoke-virtual {p0}, LaM/bj;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 1085
    invoke-virtual {p0}, LaM/bj;->Z()V

    .line 1087
    :cond_2c
    invoke-virtual {p0}, LaM/bj;->R()V

    .line 1090
    :goto_2f
    return v1

    :cond_30
    move v0, v2

    .line 1075
    goto :goto_10

    :cond_32
    move v1, v2

    .line 1090
    goto :goto_2f
.end method

.method public Y()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1234
    iget-boolean v2, p0, LaM/bj;->M:Z

    if-eqz v2, :cond_9

    .line 1235
    iput-boolean v0, p0, LaM/bj;->M:Z

    .line 1266
    :goto_8
    return-void

    .line 1239
    :cond_9
    iget-object v2, p0, LaM/bj;->L:Lat/H;

    if-eqz v2, :cond_40

    iget-object v2, p0, LaM/bj;->L:Lat/H;

    invoke-virtual {v2}, Lat/H;->a()Lat/B;

    move-result-object v2

    iget-object v3, p0, LaM/bj;->d:Lat/u;

    invoke-virtual {v3}, Lat/u;->c()Lat/B;

    move-result-object v3

    iget-object v4, p0, LaM/bj;->L:Lat/H;

    invoke-virtual {v4}, Lat/H;->b()Lat/Y;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lat/B;->a(Lat/B;Lat/Y;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_40

    iget-object v2, p0, LaM/bj;->L:Lat/H;

    invoke-virtual {v2}, Lat/H;->b()Lat/Y;

    move-result-object v2

    invoke-virtual {v2}, Lat/Y;->a()I

    move-result v2

    iget-object v3, p0, LaM/bj;->d:Lat/u;

    invoke-virtual {v3}, Lat/u;->d()Lat/Y;

    move-result-object v3

    invoke-virtual {v3}, Lat/Y;->a()I

    move-result v3

    if-ge v2, v3, :cond_40

    move v0, v1

    .line 1247
    :cond_40
    const/4 v2, 0x0

    iput-object v2, p0, LaM/bj;->L:Lat/H;

    .line 1252
    invoke-virtual {p0}, LaM/bj;->b()Lcom/google/googlenav/layer/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1253
    invoke-virtual {p0, v1}, LaM/bj;->e(Z)V

    .line 1256
    :cond_50
    if-eqz v0, :cond_56

    .line 1259
    invoke-virtual {p0, v1}, LaM/bj;->b(Z)V

    goto :goto_8

    .line 1261
    :cond_56
    invoke-direct {p0}, LaM/bj;->cf()V

    .line 1262
    invoke-direct {p0}, LaM/bj;->cj()V

    .line 1263
    invoke-direct {p0}, LaM/bj;->cg()V

    .line 1264
    invoke-super {p0}, LaM/m;->Y()V

    goto :goto_8
.end method

.method public a()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3315
    iget-boolean v0, p0, LaM/bj;->V:Z

    if-nez v0, :cond_3e

    iget-object v0, p0, LaM/bj;->W:LaT/h;

    if-eqz v0, :cond_3e

    .line 3316
    iget-object v0, p0, LaM/bj;->W:LaT/h;

    invoke-virtual {v0}, LaT/h;->b()V

    .line 3317
    iget-object v0, p0, LaM/bj;->W:LaT/h;

    invoke-virtual {v0}, LaT/h;->g()I

    move-result v0

    .line 3318
    if-lez v0, :cond_3c

    .line 3319
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "s=a"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3323
    const-string v1, "stat"

    invoke-static {v5, v1, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 3326
    :cond_3c
    iput-boolean v4, p0, LaM/bj;->V:Z

    .line 3328
    :cond_3e
    return-void
.end method

.method protected a(Lcom/google/googlenav/F;)V
    .registers 3
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, LaM/bj;->f:Lcom/google/googlenav/F;

    .line 415
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->az()Z

    move-result v0

    if-nez v0, :cond_10

    .line 416
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaM/bj;->b(B)V

    .line 418
    :cond_10
    return-void
.end method

.method public a(Lcom/google/googlenav/R;Lcom/google/googlenav/E;I)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 2511
    invoke-super {p0, p1, p2, p3}, LaM/m;->a(Lcom/google/googlenav/R;Lcom/google/googlenav/E;I)V

    .line 2514
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    .line 2515
    if-eqz v1, :cond_fd

    .line 2516
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->U()Lat/H;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 2517
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->U()Lat/H;

    move-result-object v0

    invoke-virtual {v0}, Lat/H;->a()Lat/B;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->S()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->T()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->U()Lat/H;

    move-result-object v4

    invoke-virtual {v4}, Lat/H;->b()Lat/Y;

    move-result-object v4

    invoke-virtual {v4}, Lat/Y;->a()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lat/C;->a(Lat/B;III)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/R;

    .line 2522
    :cond_33
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 2523
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->d(Ljava/lang/String;)Lcom/google/googlenav/R;

    .line 2525
    :cond_40
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->L()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 2526
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->e(Ljava/lang/String;)Lcom/google/googlenav/R;

    .line 2528
    :cond_4d
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->M()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 2529
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->f(Ljava/lang/String;)Lcom/google/googlenav/R;

    .line 2532
    :cond_5a
    const/4 v0, 0x4

    if-eq p3, v0, :cond_61

    const/16 v0, 0xf

    if-ne p3, v0, :cond_76

    .line 2535
    :cond_61
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->aa()Lcom/google/googlenav/layer/a;

    move-result-object v0

    .line 2536
    if-eqz v0, :cond_127

    .line 2537
    invoke-virtual {v0}, Lcom/google/googlenav/layer/a;->a()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->a(Ljava/lang/String;)Lcom/google/googlenav/R;

    .line 2538
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->a(I)Lcom/google/googlenav/R;

    .line 2545
    :cond_76
    :goto_76
    const/16 v0, 0x19

    if-eq p3, v0, :cond_7e

    const/16 v0, 0x18

    if-ne p3, v0, :cond_97

    .line 2547
    :cond_7e
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->aG()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_97

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->aG()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_97

    .line 2548
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->aG()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->a(Ljava/lang/Integer;)Lcom/google/googlenav/R;

    .line 2553
    :cond_97
    const/16 v0, 0x1f

    if-ne p3, v0, :cond_fd

    if-eqz p2, :cond_fd

    move-object v0, p2

    .line 2555
    check-cast v0, Lcom/google/googlenav/ai;

    .line 2556
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "c="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->f()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->f()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->Y()I

    move-result v1

    sub-int v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    const/4 v1, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->N()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2562
    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->c(Ljava/lang/String;)Lcom/google/googlenav/R;

    .line 2566
    :cond_fd
    if-eqz p2, :cond_10e

    invoke-interface {p2}, Lcom/google/googlenav/E;->d()I

    move-result v0

    if-nez v0, :cond_10e

    .line 2567
    check-cast p2, Lcom/google/googlenav/ai;

    invoke-virtual {p2}, Lcom/google/googlenav/ai;->bO()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->a(Ljava/util/List;)Lcom/google/googlenav/R;

    .line 2572
    :cond_10e
    invoke-virtual {p0}, LaM/bj;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v0

    if-eqz v0, :cond_126

    .line 2573
    invoke-virtual {p0}, LaM/bj;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->a(Ljava/lang/String;)Lcom/google/googlenav/R;

    .line 2574
    invoke-virtual {p1, v6}, Lcom/google/googlenav/R;->b(Z)Lcom/google/googlenav/R;

    .line 2576
    :cond_126
    return-void

    .line 2541
    :cond_127
    invoke-virtual {p1, v6}, Lcom/google/googlenav/R;->a(Z)Lcom/google/googlenav/R;

    goto/16 :goto_76
.end method

.method public a(Lcom/google/googlenav/aS;)V
    .registers 5
    .parameter

    .prologue
    .line 2773
    invoke-virtual {p1}, Lcom/google/googlenav/aS;->i()I

    move-result v0

    if-nez v0, :cond_a

    .line 2774
    const/4 v0, 0x0

    iput-object v0, p0, LaM/bj;->O:Ljava/lang/String;

    .line 2784
    :cond_9
    :goto_9
    return-void

    .line 2777
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aS;->a(I)Lcom/google/googlenav/aU;

    move-result-object v0

    .line 2778
    invoke-virtual {v0}, Lcom/google/googlenav/aU;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaM/bj;->O:Ljava/lang/String;

    .line 2780
    iget-object v0, p0, LaM/bj;->r:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, LaM/bj;->ae()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2781
    iget-object v0, p0, LaM/bj;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/ce;

    iget-object v1, p0, LaM/bj;->O:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public a(Lcom/google/googlenav/aW;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2232
    return-void
.end method

.method public a(Lcom/google/googlenav/ai;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3012
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aC()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9e

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aC()Ljava/lang/String;

    move-result-object v0

    .line 3015
    :goto_10
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aI()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 3016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aJ()LO/d;

    move-result-object v1

    invoke-virtual {v1}, LO/d;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/ai;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3021
    :cond_39
    sget-object v1, Lcom/google/googlenav/ui/aV;->ai:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3023
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v0

    if-eqz v0, :cond_a4

    .line 3024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->aj:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3036
    :goto_68
    sget-object v0, Laf/j;->a:Laf/j;

    invoke-virtual {v0}, Laf/j;->d()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 3037
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aD()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->aj:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->aj:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3042
    :cond_9d
    return-void

    .line 3012
    :cond_9e
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 3026
    :cond_a4
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cf

    .line 3028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->ah:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    .line 3032
    :cond_cf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->ah:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_68
.end method

.method protected a(Lcom/google/googlenav/ui/aW;)V
    .registers 5
    .parameter

    .prologue
    .line 426
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ui/aW;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/e;->a(Ljava/util/List;)V

    .line 427
    return-void
.end method

.method protected a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 1009
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    .line 1010
    if-eqz v0, :cond_9

    .line 1011
    invoke-virtual {v0, p1}, Lcom/google/googlenav/aW;->b(Ljava/io/DataOutput;)V

    .line 1013
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;Lat/H;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2821
    new-instance v0, Lcom/google/googlenav/bd;

    invoke-direct {v0}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/bd;->c(I)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/bd;->d(I)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bd;->a(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    const-string v1, "20"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/aY;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->aA()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->c(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bd;->f(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    .line 2835
    invoke-virtual {p0}, LaM/bj;->bR()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 2836
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->q()Lan/h;

    move-result-object v0

    .line 2839
    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v0

    .line 2840
    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v0

    .line 2841
    :goto_53
    iget-object v2, p0, LaM/bj;->d:Lat/u;

    invoke-virtual {v2}, Lat/u;->f()Lat/H;

    move-result-object v2

    invoke-virtual {v2, v0}, Lat/H;->a(Lat/B;)Lat/H;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    .line 2843
    :cond_60
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/bc;)V

    .line 2844
    return-void

    .line 2840
    :cond_6a
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->O()Lat/B;

    move-result-object v0

    goto :goto_53
.end method

.method public a(Ljava/lang/String;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 392
    iget-object v0, p0, LaM/bj;->P:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 393
    iget-object v0, p0, LaM/bj;->P:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/layer/m;->a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 395
    :cond_11
    return-void
.end method

.method public a(Ljava/util/Vector;Lat/B;I)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1117
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v3

    .line 1118
    const/4 v0, 0x0

    invoke-virtual {v3}, Lcom/google/googlenav/aW;->f()I

    move-result v1

    :goto_9
    if-ge v0, v1, :cond_29

    .line 1119
    invoke-virtual {v3, v0}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v2

    .line 1122
    invoke-interface {v2}, Lcom/google/googlenav/E;->c()B

    move-result v4

    if-nez v4, :cond_18

    .line 1118
    :cond_15
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1125
    :cond_18
    invoke-virtual {p0, v2, p2}, LaM/bj;->a(Lcom/google/googlenav/E;Lat/B;)J

    move-result-wide v4

    .line 1126
    int-to-long v6, p3

    cmp-long v6, v4, v6

    if-gez v6, :cond_15

    .line 1127
    invoke-static {p0, v2, v0, v4, v5}, LaM/ai;->a(LaM/i;Lcom/google/googlenav/E;IJ)LaM/ai;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 1132
    :cond_29
    invoke-virtual {p0}, LaM/bj;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1162
    :cond_33
    return-void

    .line 1138
    :cond_34
    invoke-virtual {v3}, Lcom/google/googlenav/aW;->f()I

    move-result v4

    .line 1139
    invoke-virtual {p0}, LaM/bj;->bO()Lcom/google/googlenav/T;

    move-result-object v5

    .line 1140
    invoke-virtual {v5, p2}, Lcom/google/googlenav/T;->a(Lat/B;)Ljava/util/Enumeration;

    move-result-object v6

    .line 1141
    if-eqz v6, :cond_33

    .line 1144
    :cond_42
    :goto_42
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1145
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/W;

    .line 1146
    invoke-virtual {v0}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/googlenav/aW;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 1149
    invoke-virtual {p0, v0, p2}, LaM/bj;->a(Lcom/google/googlenav/E;Lat/B;)J

    move-result-wide v1

    .line 1150
    int-to-long v7, p3

    cmp-long v7, v1, v7

    if-gez v7, :cond_42

    .line 1152
    iget-boolean v7, p0, LaM/bj;->o:Z

    if-eqz v7, :cond_69

    .line 1153
    sget v7, LaM/am;->j:I

    int-to-long v7, v7

    add-long/2addr v1, v7

    .line 1155
    :cond_69
    invoke-virtual {v0}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/googlenav/T;->a(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v4

    .line 1157
    invoke-static {p0, v0, v7, v1, v2}, LaM/ai;->a(LaM/i;Lcom/google/googlenav/E;IJ)LaM/ai;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_42
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 2285
    const/4 v0, 0x0

    invoke-super {p0, v0}, LaM/m;->a(Z)V

    .line 2286
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->aF()V

    .line 2287
    invoke-virtual {p0}, LaM/bj;->bO()Lcom/google/googlenav/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/T;->g()V

    .line 2288
    iget-object v0, p0, LaM/bj;->y:Lah/s;

    invoke-virtual {v0}, Lah/s;->a()V

    .line 2289
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x7

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 1270
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    .line 1271
    sparse-switch p1, :sswitch_data_172

    .line 1439
    :cond_c
    :goto_c
    invoke-super {p0, p1, p2, p3}, LaM/m;->a(IILjava/lang/Object;)Z

    move-result v5

    :cond_10
    :goto_10
    return v5

    .line 1284
    :sswitch_11
    iput-boolean v9, p0, LaM/bj;->B:Z

    .line 1285
    iput p2, p0, LaM/bj;->D:I

    .line 1286
    const-string v0, "d"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, LaM/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p0, p2}, LaM/bj;->j(I)V

    goto :goto_10

    .line 1292
    :sswitch_20
    iget-object v1, p0, LaM/bj;->U:LO/b;

    invoke-virtual {v1}, LO/b;->i()[Lcom/google/googlenav/ai;

    move-result-object v1

    .line 1293
    if-eqz v1, :cond_10

    array-length v2, v1

    if-ge p2, v2, :cond_10

    .line 1300
    iget-object v2, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/wizard/A;

    invoke-direct {v3, v0}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 1301
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ai;BZ)V

    goto :goto_10

    .line 1306
    :sswitch_41
    iget-object v0, p0, LaM/bj;->f:Lcom/google/googlenav/F;

    invoke-interface {v0, p2}, Lcom/google/googlenav/F;->a(I)V

    .line 1307
    iput p2, p0, LaM/bj;->D:I

    .line 1310
    invoke-virtual {p0}, LaM/bj;->an()Z

    .line 1311
    invoke-virtual {p0, v5}, LaM/bj;->b(Z)V

    goto :goto_10

    .line 1315
    :sswitch_4f
    invoke-virtual {p0}, LaM/bj;->bL()V

    goto :goto_10

    .line 1319
    :sswitch_53
    invoke-direct {p0}, LaM/bj;->bX()V

    .line 1320
    const/16 v0, 0x54

    const-string v1, "ac"

    const-string v2, "sl"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1326
    :sswitch_60
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "20"

    invoke-virtual {v0, v1, v2, v6, v9}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_10

    .line 1331
    :sswitch_70
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    const-string v2, "b"

    invoke-static {v0, v1, p2, p0, v2}, Lcom/google/googlenav/ui/wizard/hx;->a(Lcom/google/googlenav/J;Lcom/google/googlenav/aW;ILcom/google/googlenav/aY;Ljava/lang/String;)V

    goto :goto_10

    .line 1336
    :sswitch_78
    const/16 v0, 0x59

    const-string v2, "m"

    const-string v3, "1"

    invoke-static {v0, v2, v3}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1339
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0, v1, p0, v9}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/aW;Lcom/google/googlenav/aY;Z)V

    goto :goto_10

    .line 1343
    :sswitch_8b
    const/16 v0, 0x59

    const-string v2, "m"

    const-string v3, "2"

    invoke-static {v0, v2, v3}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0, v1, p0, v5}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/aW;Lcom/google/googlenav/aY;Z)V

    goto/16 :goto_10

    .line 1350
    :sswitch_9f
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0, v1, p0, v9}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/aW;Lcom/google/googlenav/aY;I)V

    goto/16 :goto_10

    .line 1353
    :sswitch_aa
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0, v1, p0, v4}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/aW;Lcom/google/googlenav/aY;I)V

    goto/16 :goto_10

    .line 1356
    :sswitch_b5
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/aW;Lcom/google/googlenav/aY;I)V

    goto/16 :goto_10

    .line 1364
    :sswitch_c1
    iget-object v0, p0, LaM/bj;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->f()I

    move-result v0

    if-ge v0, v4, :cond_cf

    .line 1365
    invoke-super {p0, p1, p2, p3}, LaM/m;->a(IILjava/lang/Object;)Z

    move-result v5

    goto/16 :goto_10

    .line 1367
    :cond_cf
    if-eqz p3, :cond_de

    .line 1368
    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    .line 1369
    aget-object v0, p3, v9

    aget-object v1, p3, v5

    invoke-direct {p0, v0, v1}, LaM/bj;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1371
    :cond_de
    invoke-direct {p0, v6, v6}, LaM/bj;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1375
    :sswitch_e3
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v8

    .line 1376
    const-string v0, "OpenNowNotification"

    invoke-interface {v8, v0}, Lcom/google/googlenav/common/io/j;->a_(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_127

    .line 1377
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    const/16 v1, 0x36a

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x369

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x363

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x6c

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, LaM/bp;

    invoke-direct {v7, p0}, LaM/bp;-><init>(LaM/bj;)V

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/bn;)V

    .line 1399
    const-string v0, "OpenNowNotification"

    new-array v1, v5, [B

    aput-byte v5, v1, v9

    invoke-interface {v8, v0, v1}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 1401
    invoke-interface {v8}, Lcom/google/googlenav/common/io/j;->a()V

    goto/16 :goto_10

    .line 1403
    :cond_127
    invoke-direct {p0}, LaM/bj;->bW()V

    goto/16 :goto_10

    .line 1408
    :sswitch_12c
    if-eqz p3, :cond_10

    .line 1409
    check-cast p3, Lcom/google/googlenav/bb;

    .line 1410
    invoke-direct {p0, p3, v5}, LaM/bj;->a(Lcom/google/googlenav/bb;Z)V

    goto/16 :goto_10

    .line 1415
    :sswitch_135
    if-eqz p3, :cond_10

    .line 1416
    check-cast p3, Lcom/google/googlenav/bb;

    .line 1417
    invoke-direct {p0, p3, v9}, LaM/bj;->a(Lcom/google/googlenav/bb;Z)V

    goto/16 :goto_10

    .line 1422
    :sswitch_13e
    if-eqz p3, :cond_c

    move-object v0, p3

    .line 1423
    check-cast v0, LaC/N;

    .line 1424
    invoke-direct {p0, v0}, LaM/bj;->a(LaC/N;)V

    goto/16 :goto_c

    .line 1428
    :sswitch_148
    iget-object v1, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    invoke-virtual {p0}, LaM/bj;->af()Z

    move-result v2

    if-eqz v2, :cond_160

    :goto_154
    invoke-virtual {p0, v0, v6}, LaM/bj;->d(ILjava/lang/Object;)Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 1431
    invoke-virtual {p0}, LaM/bj;->W()V

    goto/16 :goto_10

    .line 1428
    :cond_160
    const/16 v0, 0x8

    goto :goto_154

    .line 1434
    :sswitch_163
    invoke-super {p0, p1, p2, p3}, LaM/m;->a(IILjava/lang/Object;)Z

    move-result v5

    goto/16 :goto_10

    .line 1436
    :sswitch_169
    invoke-virtual {p0}, LaM/bj;->bD()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->g()V

    goto/16 :goto_10

    .line 1271
    :sswitch_data_172
    .sparse-switch
        0x2 -> :sswitch_41
        0x2bc -> :sswitch_11
        0x2c4 -> :sswitch_53
        0x2c5 -> :sswitch_4f
        0x2c6 -> :sswitch_70
        0x2c7 -> :sswitch_78
        0x2c8 -> :sswitch_9f
        0x2ca -> :sswitch_aa
        0x2cd -> :sswitch_e3
        0x2d0 -> :sswitch_8b
        0x2d1 -> :sswitch_c1
        0x2d3 -> :sswitch_b5
        0x2d4 -> :sswitch_20
        0x2d5 -> :sswitch_135
        0x2d6 -> :sswitch_12c
        0x2d7 -> :sswitch_13e
        0x2ef -> :sswitch_60
        0x3f9 -> :sswitch_148
        0x6a4 -> :sswitch_163
        0x713 -> :sswitch_c1
        0x76e -> :sswitch_169
    .end sparse-switch
.end method

.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2477
    iget-object v0, p0, LaM/bj;->g:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_2c

    iget-object v0, p0, LaM/bj;->g:Lcom/google/googlenav/ui/view/d;

    if-ne p1, v0, :cond_2c

    .line 2479
    sget-object v0, LaM/bj;->z:Lcom/google/googlenav/ui/view/android/aD;

    if-eqz v0, :cond_14

    .line 2480
    sget-object v0, LaM/bj;->z:Lcom/google/googlenav/ui/view/android/aD;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aD;->dismiss()V

    .line 2481
    sput-object v1, LaM/bj;->z:Lcom/google/googlenav/ui/view/android/aD;

    .line 2485
    :cond_14
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v1}, LaM/bj;->a(ILjava/lang/Object;)V

    .line 2486
    iget-object v0, p0, LaM/bj;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    const-string v1, "s"

    const-string v2, "c"

    invoke-virtual {p0}, LaM/bj;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, LaM/bj;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2489
    const/4 v0, 0x1

    .line 2491
    :goto_2b
    return v0

    :cond_2c
    invoke-super {p0, p1}, LaM/m;->a(Lcom/google/googlenav/ui/view/J;)Z

    move-result v0

    goto :goto_2b
.end method

.method protected a(Ljava/io/DataInput;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 1023
    invoke-static {p1}, Lcom/google/googlenav/aW;->b(Ljava/io/DataInput;)Lcom/google/googlenav/aW;

    move-result-object v0

    .line 1024
    invoke-virtual {v0, v7}, Lcom/google/googlenav/aW;->b(Z)V

    .line 1025
    invoke-virtual {v0}, Lcom/google/googlenav/aW;->ac()Lcom/google/googlenav/layer/m;

    move-result-object v1

    iput-object v1, p0, LaM/bj;->P:Lcom/google/googlenav/layer/m;

    .line 1026
    new-instance v1, Lcom/google/googlenav/n;

    new-instance v2, Lcom/google/googlenav/T;

    iget-object v3, p0, LaM/bj;->P:Lcom/google/googlenav/layer/m;

    iget-object v4, p0, LaM/bj;->Q:Lat/k;

    iget-object v5, p0, LaM/bj;->c:Lat/p;

    iget-object v6, p0, LaM/bj;->d:Lat/u;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/googlenav/T;-><init>(Lcom/google/googlenav/layer/m;Lat/o;Lat/p;Lat/u;)V

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/n;-><init>(Lcom/google/googlenav/F;Lcom/google/googlenav/F;)V

    iput-object v1, p0, LaM/bj;->f:Lcom/google/googlenav/F;

    .line 1028
    invoke-virtual {v0}, Lcom/google/googlenav/aW;->ab()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1032
    iget-object v1, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, LaM/bo;

    invoke-direct {v2, p0, v0}, LaM/bo;-><init>(LaM/bj;Lcom/google/googlenav/aW;)V

    invoke-virtual {v1, v2, v7}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 1041
    :cond_36
    return v7
.end method

.method public aB()Z
    .registers 2

    .prologue
    .line 2357
    const/4 v0, 0x1

    return v0
.end method

.method public aC()Z
    .registers 2

    .prologue
    .line 2362
    invoke-virtual {p0}, LaM/bj;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->ar()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->ao()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public aD()Z
    .registers 2

    .prologue
    .line 2370
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->ar()Z

    move-result v0

    return v0
.end method

.method public aF()I
    .registers 3

    .prologue
    .line 575
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 578
    iget-object v0, p0, LaM/bj;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->f()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_17

    const v0, 0x7f110013

    .line 581
    :goto_16
    return v0

    .line 578
    :cond_17
    const v0, 0x7f110014

    goto :goto_16

    .line 581
    :cond_1b
    invoke-super {p0}, LaM/m;->aF()I

    move-result v0

    goto :goto_16
.end method

.method public aJ()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 587
    const/16 v0, 0x4fc

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aK()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2326
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    .line 2328
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->ao()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2329
    invoke-virtual {p0, v1}, LaM/bj;->d(Lcom/google/googlenav/aW;)Ljava/lang/String;

    move-result-object v0

    .line 2337
    :cond_e
    :goto_e
    return-object v0

    .line 2332
    :cond_f
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->f()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    .line 2333
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 2336
    :cond_22
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->L()Ljava/lang/String;

    move-result-object v0

    .line 2337
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0, v1}, LaM/bj;->d(Lcom/google/googlenav/aW;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public aL()LS/f;
    .registers 3

    .prologue
    .line 2342
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->ar()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2343
    iget-object v0, p0, LaM/bj;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->p()LS/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bn;->ad:C

    invoke-interface {v0, v1}, LS/g;->e(C)LS/f;

    move-result-object v0

    .line 2345
    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, LaM/bj;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->p()LS/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bn;->ae:C

    invoke-interface {v0, v1}, LS/g;->e(C)LS/f;

    move-result-object v0

    goto :goto_16
.end method

.method public aM()Z
    .registers 2

    .prologue
    .line 2380
    const/4 v0, 0x1

    return v0
.end method

.method protected aN()Z
    .registers 2

    .prologue
    .line 2385
    const/4 v0, 0x1

    return v0
.end method

.method public aT()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2398
    iget v0, p0, LaM/bj;->C:I

    invoke-static {v0, v2}, LaM/am;->a(IZ)V

    .line 2399
    invoke-static {p0}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/h;)V

    .line 2406
    iget-object v0, p0, LaM/bj;->P:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2407
    invoke-virtual {p0}, LaM/bj;->f()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2408
    iget-object v0, p0, LaM/bj;->Q:Lat/k;

    invoke-virtual {v0, p0}, Lat/k;->a(Lat/m;)V

    .line 2410
    :cond_1c
    iget-object v0, p0, LaM/bj;->c:Lat/p;

    iget-object v1, p0, LaM/bj;->Q:Lat/k;

    invoke-virtual {v0, v1}, Lat/p;->a(Lat/k;)V

    .line 2413
    :cond_23
    return v2
.end method

.method public aU()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2445
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    if-eqz v0, :cond_13

    .line 2446
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->al()Lax/m;

    move-result-object v0

    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v0

    invoke-interface {v0, p0}, Lax/r;->b(Lax/z;)V

    .line 2448
    :cond_13
    invoke-direct {p0}, LaM/bj;->cd()V

    .line 2449
    invoke-direct {p0}, LaM/bj;->ci()V

    .line 2450
    invoke-direct {p0}, LaM/bj;->ce()V

    .line 2452
    invoke-static {p0}, Lcom/google/googlenav/common/j;->c(Lcom/google/googlenav/common/h;)V

    .line 2453
    iget v0, p0, LaM/bj;->C:I

    invoke-static {v0, v1}, LaM/am;->a(IZ)V

    .line 2458
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/aW;->a(ILcom/google/googlenav/aY;)Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {p0, v0}, LaM/bj;->e(Lcom/google/googlenav/aW;)V

    .line 2459
    invoke-virtual {p0}, LaM/bj;->bO()Lcom/google/googlenav/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/T;->g()V

    .line 2461
    iget-object v0, p0, LaM/bj;->Q:Lat/k;

    invoke-virtual {v0, p0}, Lat/k;->b(Lat/m;)V

    .line 2462
    iget-object v0, p0, LaM/bj;->Q:Lat/k;

    invoke-virtual {v0}, Lat/k;->b()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 2463
    iget-object v0, p0, LaM/bj;->c:Lat/p;

    iget-object v1, p0, LaM/bj;->Q:Lat/k;

    invoke-virtual {v0, v1}, Lat/p;->b(Lat/k;)V

    .line 2467
    :cond_4a
    iget-object v0, p0, LaM/bj;->X:LaM/ah;

    if-eqz v0, :cond_5d

    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    if-eqz v0, :cond_5d

    .line 2468
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    iget-object v1, p0, LaM/bj;->X:LaM/ah;

    invoke-virtual {v0, v1}, LaM/am;->a(LaM/au;)V

    .line 2471
    :cond_5d
    iput-object v2, p0, LaM/bj;->r:Lcom/google/googlenav/ui/view/android/bb;

    .line 2472
    invoke-super {p0}, LaM/m;->aU()V

    .line 2473
    return-void
.end method

.method public aW()V
    .registers 3

    .prologue
    .line 2418
    invoke-super {p0}, LaM/m;->aW()V

    .line 2420
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aq()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2422
    :cond_17
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2423
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-static {v0}, Laa/b;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 2424
    sget-object v1, Lcom/google/googlenav/ui/aV;->bG:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {p0, v0}, LaM/bj;->a(Lcom/google/googlenav/ui/aW;)V

    .line 2427
    :cond_38
    return-void
.end method

.method public aX()V
    .registers 3

    .prologue
    .line 2431
    invoke-super {p0}, LaM/m;->aX()V

    .line 2432
    invoke-direct {p0}, LaM/bj;->cd()V

    .line 2433
    invoke-direct {p0}, LaM/bj;->ci()V

    .line 2434
    invoke-direct {p0}, LaM/bj;->ce()V

    .line 2436
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aq()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2438
    :cond_20
    const/16 v0, 0x4f9

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->bF:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {p0, v0}, LaM/bj;->a(Lcom/google/googlenav/ui/aW;)V

    .line 2441
    :cond_2f
    return-void
.end method

.method protected am()V
    .registers 9

    .prologue
    .line 522
    invoke-virtual {p0}, LaM/bj;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 523
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->h()Z

    move-result v1

    if-eqz v1, :cond_5d

    move-object v1, v0

    .line 524
    check-cast v1, Lcom/google/googlenav/W;

    .line 525
    const/16 v2, 0x43

    const-string v3, "o"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "l="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/googlenav/W;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v4}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, LaM/bj;->R:Lcom/google/googlenav/layer/s;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/layer/s;->b(Lcom/google/googlenav/ai;)Lac/g;

    .line 534
    :goto_5c
    return-void

    .line 532
    :cond_5d
    invoke-super {p0}, LaM/m;->am()V

    goto :goto_5c
.end method

.method public ao()Z
    .registers 3

    .prologue
    .line 538
    invoke-virtual {p0}, LaM/bj;->bt()Lcom/google/googlenav/ai;

    move-result-object v0

    .line 539
    if-eqz v0, :cond_1c

    invoke-virtual {p0}, LaM/bj;->aj()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->h()Z

    move-result v1

    if-eqz v1, :cond_1c

    check-cast v0, Lcom/google/googlenav/W;

    invoke-virtual {v0}, Lcom/google/googlenav/W;->q()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method protected aq()V
    .registers 2

    .prologue
    .line 549
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaM/bj;->d(Z)V

    .line 551
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/ce;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/ce;-><init>(LaM/bj;)V

    iput-object v0, p0, LaM/bj;->r:Lcom/google/googlenav/ui/view/android/bb;

    .line 559
    invoke-virtual {p0}, LaM/bj;->bE()V

    .line 560
    return-void
.end method

.method public au()Z
    .registers 2

    .prologue
    .line 2091
    invoke-virtual {p0}, LaM/bj;->ae()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2092
    const/4 v0, 0x0

    .line 2094
    :goto_7
    return v0

    :cond_8
    invoke-super {p0}, LaM/m;->au()Z

    move-result v0

    goto :goto_7
.end method

.method public av()I
    .registers 2

    .prologue
    .line 2375
    const/4 v0, 0x0

    return v0
.end method

.method public ay()Z
    .registers 2

    .prologue
    .line 2352
    iget-boolean v0, p0, LaM/bj;->p:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->ar()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public b(Lat/B;)I
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, -0x1

    .line 1175
    iget-object v0, p0, LaM/bj;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    .line 1176
    if-ltz v0, :cond_17

    iget-object v2, p0, LaM/bj;->f:Lcom/google/googlenav/F;

    invoke-interface {v2, v0}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v6}, LaM/bj;->a(Lcom/google/googlenav/E;Lat/B;LS/e;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1211
    :cond_16
    :goto_16
    return v0

    .line 1182
    :cond_17
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v2

    .line 1183
    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/google/googlenav/aW;->f()I

    move-result v3

    :goto_20
    if-ge v0, v3, :cond_2f

    .line 1184
    invoke-virtual {v2, v0}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v4

    invoke-virtual {p0, v4, p1, v6}, LaM/bj;->a(Lcom/google/googlenav/E;Lat/B;LS/e;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1183
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1190
    :cond_2f
    invoke-virtual {p0}, LaM/bj;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v0

    if-nez v0, :cond_3b

    move v0, v1

    .line 1191
    goto :goto_16

    .line 1195
    :cond_3b
    invoke-virtual {v2}, Lcom/google/googlenav/aW;->f()I

    move-result v2

    .line 1196
    invoke-virtual {p0}, LaM/bj;->bO()Lcom/google/googlenav/T;

    move-result-object v3

    .line 1197
    invoke-virtual {v3, p1}, Lcom/google/googlenav/T;->a(Lat/B;)Ljava/util/Enumeration;

    move-result-object v4

    .line 1198
    if-nez v4, :cond_4b

    move v0, v1

    .line 1199
    goto :goto_16

    .line 1201
    :cond_4b
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1202
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/W;

    .line 1203
    invoke-virtual {p0, v0, p1, v6}, LaM/bj;->a(Lcom/google/googlenav/E;Lat/B;LS/e;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 1204
    invoke-virtual {v0}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/T;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_16

    :cond_67
    move v0, v1

    .line 1211
    goto :goto_16
.end method

.method public b(Lcom/google/googlenav/E;)I
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2032
    invoke-interface {p1}, Lcom/google/googlenav/E;->c()B

    move-result v1

    packed-switch v1, :pswitch_data_24

    .line 2045
    :cond_8
    :goto_8
    return v0

    .line 2034
    :pswitch_9
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->aI()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2040
    iget-object v0, p0, LaM/bj;->a:Lcom/google/googlenav/ui/bn;

    invoke-interface {p1}, Lcom/google/googlenav/E;->c()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->d(B)I

    move-result v0

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x8

    goto :goto_8

    .line 2032
    nop

    :pswitch_data_24
    .packed-switch 0xc
        :pswitch_9
    .end packed-switch
.end method

.method public b()Lcom/google/googlenav/layer/m;
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, LaM/bj;->P:Lcom/google/googlenav/layer/m;

    return-object v0
.end method

.method protected b(ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2103
    invoke-super {p0, p1, p2}, LaM/m;->b(ILjava/lang/Object;)V

    .line 2109
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->n()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->d()V

    .line 2110
    return-void
.end method

.method public b(Lcom/google/googlenav/aW;)V
    .registers 3
    .parameter

    .prologue
    .line 2236
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/bj;->B:Z

    .line 2237
    return-void
.end method

.method public b(Lcom/google/googlenav/aW;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 601
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 602
    invoke-virtual {p1, v2}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 603
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bT()Ljava/lang/String;

    move-result-object v0

    .line 604
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ad()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 605
    if-eqz v0, :cond_21

    sget-boolean v1, Lcom/google/googlenav/aW;->a:Z

    if-eqz v1, :cond_21

    .line 606
    invoke-direct {p0, p1, p2, v0}, LaM/bj;->a(Lcom/google/googlenav/aW;ZLjava/lang/String;)V

    .line 612
    :cond_21
    invoke-direct {p0, p1, p2, v2}, LaM/bj;->a(Lcom/google/googlenav/aW;ZZ)V

    .line 613
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2588
    invoke-virtual {p0, v0}, LaM/bj;->e(Z)V

    .line 2589
    invoke-virtual {p0, v0}, LaM/bj;->d(Z)V

    .line 2590
    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 1916
    const/4 v0, 0x5

    const-string v1, "v"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1920
    return-void
.end method

.method protected b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 1220
    invoke-direct {p0}, LaM/bj;->cf()V

    .line 1221
    invoke-direct {p0}, LaM/bj;->cj()V

    .line 1222
    invoke-direct {p0}, LaM/bj;->cg()V

    .line 1223
    invoke-super {p0, p1}, LaM/m;->b(Z)V

    .line 1224
    return-void
.end method

.method public b(Lcom/google/googlenav/ai;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2688
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ab()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2697
    :cond_7
    :goto_7
    return v0

    .line 2692
    :cond_8
    invoke-virtual {p0, p1}, LaM/bj;->l(Lcom/google/googlenav/ai;)I

    move-result v1

    .line 2693
    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 2697
    const/4 v0, 0x1

    goto :goto_7
.end method

.method protected bB()I
    .registers 2

    .prologue
    .line 2185
    iget v0, p0, LaM/bj;->D:I

    return v0
.end method

.method protected bE()V
    .registers 4

    .prologue
    .line 831
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->aj()LY/c;

    move-result-object v0

    .line 832
    if-eqz v0, :cond_10

    .line 833
    new-instance v1, LaM/bn;

    invoke-direct {v1, p0, v0}, LaM/bn;-><init>(LaM/bj;LY/c;)V

    invoke-virtual {v1}, LaM/bn;->g()V

    .line 842
    :cond_10
    invoke-virtual {p0}, LaM/bj;->bR()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->aL()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 846
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->U()Lat/H;

    move-result-object v0

    invoke-virtual {v0}, Lat/H;->a()Lat/B;

    move-result-object v0

    .line 847
    new-instance v1, Lcom/google/googlenav/aS;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/aS;-><init>(Lat/B;I)V

    .line 848
    invoke-virtual {v1, p0}, Lcom/google/googlenav/aS;->a(Lcom/google/googlenav/aT;)V

    .line 849
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 853
    :goto_3c
    return-void

    .line 851
    :cond_3d
    const/4 v0, 0x0

    iput-object v0, p0, LaM/bj;->O:Ljava/lang/String;

    goto :goto_3c
.end method

.method public bF()LaM/ah;
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, LaM/bj;->X:LaM/ah;

    return-object v0
.end method

.method public bG()V
    .registers 5

    .prologue
    .line 882
    const/4 v0, 0x0

    .line 883
    iget-object v1, p0, LaM/bj;->r:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v1, v1, Lah/p;

    if-eqz v1, :cond_b

    .line 884
    iget-object v0, p0, LaM/bj;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lah/p;

    .line 886
    :cond_b
    iget-object v1, p0, LaM/bj;->y:Lah/s;

    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/aW;->aE()[Lcom/google/googlenav/ai;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, LaM/bj;->u:Lcom/google/common/base/D;

    invoke-virtual {v1, v2, v3, v0}, Lah/s;->a(Ljava/lang/Iterable;Lcom/google/common/base/D;Lah/p;)V

    .line 888
    return-void
.end method

.method public bH()V
    .registers 7

    .prologue
    .line 956
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    .line 957
    new-instance v2, LaM/bv;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, LaM/bv;-><init>(LaM/bk;)V

    .line 958
    iget-object v3, p0, LaM/bj;->y:Lah/s;

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->aE()[Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, LaM/bj;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lah/p;

    invoke-virtual {v3, v4, v2, v0}, Lah/s;->b(Ljava/lang/Iterable;Lcom/google/common/base/D;Lah/p;)V

    .line 961
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "c="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->f()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, LaM/bv;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, LaM/bv;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, LaM/bv;->c()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 969
    const/16 v1, 0x5e

    const-string v2, "r"

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 971
    return-void
.end method

.method protected bI()V
    .registers 4

    .prologue
    .line 1878
    const/4 v0, 0x5

    const-string v1, "0"

    invoke-direct {p0}, LaM/bj;->bZ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1881
    return-void
.end method

.method protected bJ()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1977
    iget-object v1, p0, LaM/bj;->f:Lcom/google/googlenav/F;

    if-eqz v1, :cond_e

    iget-object v1, p0, LaM/bj;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->f()I

    move-result v1

    if-le v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bK()V
    .registers 3

    .prologue
    .line 2189
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LaM/bj;->b(Lcom/google/googlenav/aW;Z)V

    .line 2190
    return-void
.end method

.method protected bL()V
    .registers 5

    .prologue
    .line 2197
    iget-boolean v0, p0, LaM/bj;->B:Z

    if-eqz v0, :cond_5

    .line 2210
    :goto_4
    return-void

    .line 2203
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/bj;->B:Z

    .line 2207
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->aq()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/google/googlenav/aW;->a(ILcom/google/googlenav/aY;)Lcom/google/googlenav/aW;

    move-result-object v0

    .line 2209
    iget-object v1, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/aW;IZ)V

    goto :goto_4
.end method

.method public bM()Z
    .registers 3

    .prologue
    .line 2213
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->ao()Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x12c

    .line 2215
    :goto_c
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->am()I

    move-result v1

    if-lez v1, :cond_25

    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->aq()I

    move-result v1

    if-ge v1, v0, :cond_25

    const/4 v0, 0x1

    :goto_21
    return v0

    .line 2213
    :cond_22
    const/16 v0, 0x64

    goto :goto_c

    .line 2215
    :cond_25
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public bN()Lcom/google/googlenav/aW;
    .registers 2

    .prologue
    .line 2257
    invoke-direct {p0}, LaM/bj;->cc()Lcom/google/googlenav/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/n;->a()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aW;

    return-object v0
.end method

.method public bO()Lcom/google/googlenav/T;
    .registers 2

    .prologue
    .line 2280
    invoke-direct {p0}, LaM/bj;->cc()Lcom/google/googlenav/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/n;->b()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/T;

    return-object v0
.end method

.method public bP()I
    .registers 2

    .prologue
    .line 2579
    iget v0, p0, LaM/bj;->C:I

    return v0
.end method

.method public bQ()Lcom/google/googlenav/ui/view/K;
    .registers 2

    .prologue
    .line 2749
    iget-object v0, p0, LaM/bj;->N:Lcom/google/googlenav/ui/view/K;

    if-nez v0, :cond_b

    .line 2750
    new-instance v0, LaM/bq;

    invoke-direct {v0, p0}, LaM/bq;-><init>(LaM/bj;)V

    iput-object v0, p0, LaM/bj;->N:Lcom/google/googlenav/ui/view/K;

    .line 2762
    :cond_b
    iget-object v0, p0, LaM/bj;->N:Lcom/google/googlenav/ui/view/K;

    return-object v0
.end method

.method public bR()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2803
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v3

    .line 2804
    invoke-virtual {v3}, Lcom/google/googlenav/aW;->aA()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {v3}, Lcom/google/googlenav/aW;->aB()Lat/B;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/googlenav/aW;->U()Lat/H;

    move-result-object v4

    invoke-virtual {v4}, Lat/H;->a()Lat/B;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/aT;->a(Lat/B;Lat/B;)Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v1

    .line 2807
    :goto_1f
    invoke-virtual {v3}, Lcom/google/googlenav/aW;->M()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-virtual {v3}, Lcom/google/googlenav/aW;->aL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    if-eqz v0, :cond_38

    :cond_35
    :goto_35
    return v1

    :cond_36
    move v0, v2

    .line 2804
    goto :goto_1f

    :cond_38
    move v1, v2

    .line 2807
    goto :goto_35
.end method

.method public bf()Z
    .registers 3

    .prologue
    .line 2594
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->z()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bg()Z
    .registers 2

    .prologue
    .line 2602
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->n()Z

    move-result v0

    return v0
.end method

.method public bh()Z
    .registers 2

    .prologue
    .line 2612
    const/4 v0, 0x1

    return v0
.end method

.method public bk()Z
    .registers 3

    .prologue
    .line 2624
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->z()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bl()Z
    .registers 2

    .prologue
    .line 2630
    const/4 v0, 0x0

    return v0
.end method

.method protected bm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1609
    const-string v0, "p"

    return-object v0
.end method

.method protected bn()V
    .registers 3

    .prologue
    .line 1645
    invoke-virtual {p0}, LaM/bj;->bt()Lcom/google/googlenav/ai;

    move-result-object v0

    .line 1646
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ae()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1647
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->a(B)V

    .line 1648
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aW;->a(Lcom/google/googlenav/ai;)V

    .line 1650
    :cond_17
    return-void
.end method

.method public c(Lcom/google/googlenav/E;)I
    .registers 4
    .parameter

    .prologue
    .line 2051
    invoke-interface {p1}, Lcom/google/googlenav/E;->c()B

    move-result v0

    sparse-switch v0, :sswitch_data_60

    move-object v0, p1

    .line 2078
    check-cast v0, Lcom/google/googlenav/ai;

    .line 2080
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bo()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bp()Lcom/google/googlenav/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/e;->f()I

    move-result v0

    .line 2082
    :goto_18
    rsub-int/lit8 v0, v0, 0x1

    :goto_1a
    return v0

    .line 2054
    :sswitch_1b
    const/4 v0, 0x0

    goto :goto_1a

    .line 2056
    :sswitch_1d
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aI()Z

    move-result v0

    if-nez v0, :cond_33

    .line 2058
    iget-object v0, p0, LaM/bj;->a:Lcom/google/googlenav/ui/bn;

    invoke-interface {p1}, Lcom/google/googlenav/E;->c()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->c(B)I

    move-result v0

    neg-int v0, v0

    goto :goto_1a

    .line 2064
    :cond_33
    invoke-virtual {p0, p1}, LaM/bj;->f(Lcom/google/googlenav/E;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 2069
    :sswitch_3a
    invoke-virtual {p0, p1}, LaM/bj;->f(Lcom/google/googlenav/E;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :sswitch_43
    move-object v0, p1

    .line 2074
    check-cast v0, Lcom/google/googlenav/ai;

    iget-object v1, p0, LaM/bj;->t:LaO/a;

    check-cast v1, LaO/i;

    invoke-virtual {v1}, LaO/i;->b()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->a(B)V

    .line 2076
    invoke-virtual {p0, p1}, LaM/bj;->f(Lcom/google/googlenav/E;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 2080
    :cond_5a
    invoke-virtual {p0, p1}, LaM/bj;->f(Lcom/google/googlenav/E;)I

    move-result v0

    goto :goto_18

    .line 2051
    nop

    :sswitch_data_60
    .sparse-switch
        0x0 -> :sswitch_1b
        0xc -> :sswitch_1d
        0xf -> :sswitch_3a
        0x10 -> :sswitch_43
        0x11 -> :sswitch_43
        0x12 -> :sswitch_43
        0x13 -> :sswitch_43
    .end sparse-switch
.end method

.method public c()V
    .registers 2

    .prologue
    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/bj;->S:Z

    .line 400
    return-void
.end method

.method public c(Lcom/google/googlenav/F;)V
    .registers 5
    .parameter

    .prologue
    .line 440
    invoke-virtual {p0, p1}, LaM/bj;->a(Lcom/google/googlenav/F;)V

    .line 441
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LaM/bj;->b(B)V

    .line 442
    invoke-virtual {p0}, LaM/bj;->R()V

    .line 444
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Lcom/google/googlenav/aW;->W()I

    move-result v1

    .line 448
    invoke-virtual {p0}, LaM/bj;->bO()Lcom/google/googlenav/T;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/T;->g()V

    .line 451
    const/4 v2, 0x0

    iput-boolean v2, p0, LaM/bj;->B:Z

    .line 454
    invoke-virtual {v0}, Lcom/google/googlenav/aW;->ac()Lcom/google/googlenav/layer/m;

    move-result-object v0

    iput-object v0, p0, LaM/bj;->P:Lcom/google/googlenav/layer/m;

    .line 456
    iget-object v0, p0, LaM/bj;->Q:Lat/k;

    invoke-virtual {v0, p0}, Lat/k;->b(Lat/m;)V

    .line 457
    iget-object v0, p0, LaM/bj;->Q:Lat/k;

    invoke-virtual {v0}, Lat/k;->b()Z

    move-result v0

    if-nez v0, :cond_36

    .line 458
    iget-object v0, p0, LaM/bj;->c:Lat/p;

    iget-object v2, p0, LaM/bj;->Q:Lat/k;

    invoke-virtual {v0, v2}, Lat/p;->b(Lat/k;)V

    .line 466
    :cond_36
    iget-object v0, p0, LaM/bj;->P:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 467
    invoke-virtual {p0}, LaM/bj;->f()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 468
    iget-object v0, p0, LaM/bj;->Q:Lat/k;

    invoke-virtual {v0, p0}, Lat/k;->a(Lat/m;)V

    .line 470
    :cond_49
    iget-object v0, p0, LaM/bj;->c:Lat/p;

    iget-object v2, p0, LaM/bj;->Q:Lat/k;

    invoke-virtual {v0, v2}, Lat/p;->a(Lat/k;)V

    .line 474
    :cond_50
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->ap()I

    move-result v0

    invoke-virtual {p0, v0}, LaM/bj;->b(I)V

    .line 476
    invoke-virtual {p0}, LaM/bj;->ae()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 480
    const/16 v0, 0xa

    if-eq v1, v0, :cond_6c

    .line 481
    iget-object v0, p0, LaM/bj;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/ce;->l()V

    .line 483
    :cond_6c
    iget-object v0, p0, LaM/bj;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/ce;->m()V

    .line 484
    iget-object v0, p0, LaM/bj;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/ce;->i()V

    .line 488
    :cond_7a
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aq()Z

    move-result v0

    if-nez v0, :cond_8e

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 490
    :cond_8e
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->bG:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {p0, v0}, LaM/bj;->a(Lcom/google/googlenav/ui/aW;)V

    .line 495
    :cond_a3
    invoke-direct {p0}, LaM/bj;->bU()Lat/H;

    .line 498
    invoke-direct {p0}, LaM/bj;->bV()V

    .line 499
    return-void
.end method

.method protected c(LZ/a;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1711
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_19

    invoke-virtual {p0}, LaM/bj;->aa()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-boolean v1, p0, LaM/bj;->E:Z

    if-eqz v1, :cond_19

    .line 1713
    iput-boolean v0, p0, LaM/bj;->E:Z

    .line 1714
    invoke-virtual {p0}, LaM/bj;->h()V

    .line 1715
    const/4 v0, 0x1

    .line 1718
    :cond_19
    return v0
.end method

.method protected c(Lcom/google/googlenav/aW;)Z
    .registers 4
    .parameter

    .prologue
    .line 659
    const-string v0, "19"

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "20"

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, LaM/bj;->bJ()Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_28
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->H()Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public d(Lcom/google/googlenav/aW;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 1930
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1931
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->Q()Ljava/lang/String;

    move-result-object v0

    .line 1944
    :goto_e
    return-object v0

    .line 1932
    :cond_f
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1937
    const/16 v0, 0x214

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 1938
    :cond_20
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->W()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_37

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1942
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->C()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 1944
    :cond_37
    const/16 v0, 0x47e

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public d()[Lcom/google/googlenav/ui/aH;
    .registers 2

    .prologue
    .line 2297
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->ai()[Lcom/google/googlenav/ui/aG;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 2583
    invoke-virtual {p0}, LaM/bj;->bP()I

    move-result v0

    return v0
.end method

.method protected e(Lcom/google/googlenav/aW;)V
    .registers 4
    .parameter

    .prologue
    .line 2269
    new-instance v0, Lcom/google/googlenav/n;

    invoke-virtual {p0}, LaM/bj;->bO()Lcom/google/googlenav/T;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/n;-><init>(Lcom/google/googlenav/F;Lcom/google/googlenav/F;)V

    iput-object v0, p0, LaM/bj;->f:Lcom/google/googlenav/F;

    .line 2270
    return-void
.end method

.method protected e(Lcom/google/googlenav/ui/u;)V
    .registers 3
    .parameter

    .prologue
    .line 1101
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LaM/bj;->a(Lcom/google/googlenav/ui/u;Lcom/google/googlenav/F;)V

    .line 1102
    return-void
.end method

.method public e(LZ/a;)Z
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x36

    const/16 v6, 0x34

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 1732
    invoke-virtual {p1}, LZ/a;->e()C

    move-result v5

    .line 1735
    invoke-virtual {p0}, LaM/bj;->ae()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1796
    :cond_11
    :goto_11
    return v1

    .line 1740
    :cond_12
    if-eq v5, v7, :cond_16

    if-ne v5, v6, :cond_11

    .line 1741
    :cond_16
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->c()I

    move-result v0

    .line 1746
    invoke-virtual {p0}, LaM/bj;->ah()Z

    move-result v4

    if-eqz v4, :cond_58

    if-eq v0, v3, :cond_58

    .line 1779
    :cond_26
    if-ltz v0, :cond_32

    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/aW;->f()I

    move-result v3

    if-ne v0, v3, :cond_33

    :cond_32
    move v0, v1

    .line 1783
    :cond_33
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/aW;->f()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1786
    if-ltz v0, :cond_11

    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/aW;->f()I

    move-result v3

    if-ge v0, v3, :cond_11

    .line 1789
    invoke-virtual {p0, v0}, LaM/bj;->b(I)V

    .line 1790
    invoke-virtual {p0}, LaM/bj;->an()Z

    .line 1791
    invoke-virtual {p0, v2}, LaM/bj;->b(Z)V

    move v1, v2

    .line 1792
    goto :goto_11

    .line 1751
    :cond_58
    invoke-virtual {p0}, LaM/bj;->ah()Z

    move-result v4

    if-nez v4, :cond_9b

    .line 1757
    if-ne v5, v6, :cond_9d

    invoke-direct {p0}, LaM/bj;->ca()Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 1758
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->f()I

    move-result v0

    move v4, v0

    .line 1771
    :goto_6f
    if-ne v5, v6, :cond_a7

    move v0, v3

    :goto_72
    add-int/2addr v0, v4

    .line 1773
    if-ltz v0, :cond_26

    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/aW;->f()I

    move-result v4

    if-ge v0, v4, :cond_26

    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v4

    if-eqz v4, :cond_9b

    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/googlenav/E;->c()B

    move-result v4

    if-nez v4, :cond_26

    :cond_9b
    move v4, v0

    goto :goto_6f

    .line 1759
    :cond_9d
    if-ne v5, v7, :cond_9b

    invoke-direct {p0}, LaM/bj;->cb()Z

    move-result v4

    if-eqz v4, :cond_9b

    move v4, v3

    .line 1760
    goto :goto_6f

    :cond_a7
    move v0, v2

    .line 1771
    goto :goto_72
.end method

.method public f(Lcom/google/googlenav/aW;)Lcom/google/googlenav/ai;
    .registers 5
    .parameter

    .prologue
    .line 2928
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->f()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 2929
    invoke-virtual {p1, v1}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 2930
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 2934
    :goto_18
    return-object v0

    .line 2928
    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 2934
    :cond_1d
    const/4 v0, 0x0

    goto :goto_18
.end method

.method protected f()Z
    .registers 2

    .prologue
    .line 2393
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->at()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected f(LZ/a;)Z
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/16 v2, 0x23

    const/4 v0, 0x1

    .line 1659
    invoke-virtual {p1}, LZ/a;->e()C

    move-result v1

    if-ne v1, v2, :cond_4b

    .line 1660
    invoke-virtual {p0}, LaM/bj;->ae()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1661
    const-string v1, "m"

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, LaM/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    invoke-direct {p0}, LaM/bj;->bY()V

    .line 1665
    invoke-virtual {p0, v4, v3}, LaM/bj;->b(ILjava/lang/Object;)V

    .line 1699
    :cond_21
    :goto_21
    return v0

    .line 1667
    :cond_22
    invoke-virtual {p0}, LaM/bj;->af()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1668
    const-string v1, "l"

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, LaM/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v3}, LaM/bj;->b(ILjava/lang/Object;)V

    goto :goto_21

    .line 1672
    :cond_36
    invoke-virtual {p0}, LaM/bj;->bJ()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1673
    const-string v1, "l"

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, LaM/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v3}, LaM/bj;->c(ILjava/lang/Object;)V

    goto :goto_21

    .line 1681
    :cond_4b
    invoke-virtual {p0, p1}, LaM/bj;->g(LZ/a;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1685
    invoke-virtual {p0, p1}, LaM/bj;->d(LZ/a;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1691
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v1

    if-ne v1, v4, :cond_66

    invoke-virtual {p0}, LaM/bj;->aa()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1695
    iput-boolean v0, p0, LaM/bj;->E:Z

    goto :goto_21

    .line 1699
    :cond_66
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public g(I)Z
    .registers 3
    .parameter

    .prologue
    .line 2497
    packed-switch p1, :pswitch_data_16

    .line 2504
    invoke-super {p0, p1}, LaM/m;->g(I)Z

    move-result v0

    :goto_7
    return v0

    .line 2501
    :pswitch_8
    invoke-virtual {p0}, LaM/bj;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->k()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    goto :goto_7

    .line 2497
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method protected final g(LZ/a;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1808
    invoke-virtual {p0}, LaM/bj;->s()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 1811
    if-nez v0, :cond_d

    move v0, v1

    .line 1833
    :goto_c
    return v0

    .line 1815
    :cond_d
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_20

    invoke-virtual {p0}, LaM/bj;->af()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1816
    invoke-virtual {p0, v1, v5}, LaM/bj;->b(ILjava/lang/Object;)V

    move v0, v2

    .line 1817
    goto :goto_c

    .line 1820
    :cond_20
    invoke-direct {p0, v0}, LaM/bj;->m(Lcom/google/googlenav/ai;)Z

    move-result v3

    if-nez v3, :cond_28

    move v0, v1

    .line 1822
    goto :goto_c

    .line 1825
    :cond_28
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_4d

    invoke-virtual {p0}, LaM/bj;->ag()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1827
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v5}, LaM/bj;->a(ILjava/lang/Object;)V

    .line 1828
    invoke-static {v0}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v0

    .line 1829
    iget-object v1, p0, LaM/bj;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->c()I

    move-result v1

    const-string v3, "s"

    const-string v4, "k"

    invoke-virtual {p0, v1, v3, v4, v0}, LaM/bj;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 1831
    goto :goto_c

    :cond_4d
    move v0, v1

    .line 1833
    goto :goto_c
.end method

.method public g(Lcom/google/googlenav/aW;)Z
    .registers 4
    .parameter

    .prologue
    .line 2986
    invoke-virtual {p0, p1}, LaM/bj;->h(Lcom/google/googlenav/aW;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public h(Lcom/google/googlenav/aW;)I
    .registers 4
    .parameter

    .prologue
    .line 2997
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->f()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 2998
    invoke-virtual {p1, v1}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 2999
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aH()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3003
    :goto_14
    return v1

    .line 2997
    :cond_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 3003
    :cond_19
    const/4 v1, -0x1

    goto :goto_14
.end method

.method public h()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2114
    invoke-virtual {p0}, LaM/bj;->by()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2181
    :cond_8
    :goto_8
    return-void

    .line 2118
    :cond_9
    iput-boolean v2, p0, LaM/bj;->B:Z

    .line 2120
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    .line 2121
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_b8

    .line 2180
    invoke-virtual {p0, v0}, LaM/bj;->b(Lcom/google/googlenav/ui/wizard/A;)Z

    goto :goto_8

    .line 2123
    :sswitch_20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaM/bj;->i(Z)V

    .line 2124
    invoke-virtual {p0, v2, v3}, LaM/bj;->c(ILjava/lang/Object;)V

    .line 2125
    invoke-virtual {p0, v2}, LaM/bj;->i(Z)V

    goto :goto_8

    .line 2129
    :sswitch_2b
    invoke-virtual {p0, v2, v3}, LaM/bj;->b(ILjava/lang/Object;)V

    goto :goto_8

    .line 2133
    :sswitch_2f
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->b()Ljava/lang/Object;

    move-result-object v0

    .line 2134
    if-eqz v0, :cond_42

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_42

    .line 2135
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LaM/bj;->b(I)V

    .line 2137
    :cond_42
    invoke-virtual {p0, v2, v3}, LaM/bj;->a(ILjava/lang/Object;)V

    goto :goto_8

    .line 2142
    :sswitch_46
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->g(LaM/i;)V

    .line 2145
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 2146
    if-eqz v0, :cond_8

    .line 2147
    invoke-virtual {v0}, LaM/i;->aR()V

    goto :goto_8

    .line 2152
    :sswitch_5f
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->g(LaM/i;)V

    .line 2153
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    const-string v1, "15"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->i(Ljava/lang/String;)V

    goto :goto_8

    .line 2157
    :sswitch_70
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->g(LaM/i;)V

    .line 2158
    invoke-virtual {p0, v2, v3}, LaM/bj;->b(ILjava/lang/Object;)V

    .line 2159
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->X()V

    goto :goto_8

    .line 2163
    :sswitch_82
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->b(I)V

    .line 2164
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->g(LaM/i;)V

    goto/16 :goto_8

    .line 2168
    :sswitch_93
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->g(LaM/i;)V

    .line 2169
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    check-cast v0, LaM/bx;

    .line 2170
    if-eqz v0, :cond_8

    .line 2171
    invoke-virtual {v0}, LaM/bx;->bE()V

    goto/16 :goto_8

    .line 2176
    :sswitch_af
    iget-object v0, p0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 2121
    :sswitch_data_b8
    .sparse-switch
        0x0 -> :sswitch_46
        0x6 -> :sswitch_5f
        0x7 -> :sswitch_2f
        0x8 -> :sswitch_20
        0x9 -> :sswitch_2b
        0xf -> :sswitch_70
        0x10 -> :sswitch_82
        0x11 -> :sswitch_46
        0x1a -> :sswitch_93
        0x1c -> :sswitch_af
    .end sparse-switch
.end method

.method protected h(Lcom/google/googlenav/ai;)Z
    .registers 3
    .parameter

    .prologue
    .line 510
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->h()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, LaM/bj;->R:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/layer/s;->a(Lcom/google/googlenav/ai;)Lac/g;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected i()LaO/a;
    .registers 2

    .prologue
    .line 1704
    new-instance v0, LaO/i;

    invoke-direct {v0, p0}, LaO/i;-><init>(LaM/i;)V

    return-object v0
.end method

.method protected j(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1614
    const-string v0, "m"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LaM/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    iget-object v0, p0, LaM/bj;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    .line 1616
    invoke-virtual {p0, p1}, LaM/bj;->b(I)V

    .line 1622
    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    invoke-virtual {p0}, LaM/bj;->af()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1623
    const/4 v1, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, LaM/bj;->a(ILjava/lang/Object;)V

    .line 1636
    :cond_24
    :goto_24
    return-void

    .line 1625
    :cond_25
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v2}, LaM/bj;->a(ILjava/lang/Object;)V

    .line 1632
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, LaM/bj;->g:Lcom/google/googlenav/ui/view/d;

    if-nez v0, :cond_24

    .line 1633
    invoke-virtual {p0, v2}, LaM/bj;->a(Ljava/lang/Object;)V

    goto :goto_24
.end method

.method public k(I)V
    .registers 4
    .parameter

    .prologue
    .line 2307
    iget v0, p0, LaM/bj;->C:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, LaM/am;->a(IZ)V

    .line 2308
    iput p1, p0, LaM/bj;->C:I

    .line 2309
    iget v0, p0, LaM/bj;->C:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, LaM/am;->a(IZ)V

    .line 2313
    iget-object v0, p0, LaM/bj;->t:LaO/a;

    check-cast v0, LaO/i;

    invoke-virtual {v0, p1}, LaO/i;->c(I)V

    .line 2314
    return-void
.end method

.method protected k(Z)Z
    .registers 3
    .parameter

    .prologue
    .line 651
    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public l(Lcom/google/googlenav/ai;)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2716
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    .line 2717
    invoke-direct {p0, p1}, LaM/bj;->n(Lcom/google/googlenav/ai;)I

    move-result v2

    .line 2718
    if-eq v2, v0, :cond_15

    .line 2720
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->ap()I

    move-result v0

    .line 2721
    sub-int v0, v2, v0

    invoke-direct {p0, v0}, LaM/bj;->m(I)I

    move-result v0

    .line 2723
    :cond_15
    return v0
.end method

.method protected m()V
    .registers 1

    .prologue
    .line 2767
    invoke-super {p0}, LaM/m;->m()V

    .line 2768
    invoke-virtual {p0}, LaM/bj;->bI()V

    .line 2769
    return-void
.end method

.method public q()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 990
    invoke-super {p0}, LaM/m;->q()I

    move-result v0

    .line 991
    iget-object v1, p0, LaM/bj;->G:Lcom/google/googlenav/ui/view/d;

    if-eqz v1, :cond_20

    .line 992
    iget-object v1, p0, LaM/bj;->G:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/d;->f()[I

    move-result-object v1

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 997
    :cond_12
    :goto_12
    iget-object v1, p0, LaM/bj;->I:Lcom/google/googlenav/ui/view/d;

    if-eqz v1, :cond_1f

    .line 998
    iget-object v1, p0, LaM/bj;->I:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/d;->f()[I

    move-result-object v1

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 1000
    :cond_1f
    return v0

    .line 993
    :cond_20
    iget-object v1, p0, LaM/bj;->K:Lcom/google/googlenav/ui/view/d;

    if-eqz v1, :cond_12

    .line 994
    iget-object v1, p0, LaM/bj;->K:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/d;->f()[I

    move-result-object v1

    aget v1, v1, v2

    add-int/2addr v0, v1

    goto :goto_12
.end method

.method protected t()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3332
    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/aW;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SearchLayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->A()Ljava/lang/String;

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

.method protected v()V
    .registers 3

    .prologue
    .line 570
    invoke-virtual {p0}, LaM/bj;->bO()Lcom/google/googlenav/T;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/T;->b(Lat/B;)V

    .line 571
    return-void
.end method
