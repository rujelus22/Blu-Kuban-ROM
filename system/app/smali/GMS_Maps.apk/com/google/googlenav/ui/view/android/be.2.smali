.class public Lcom/google/googlenav/ui/view/android/bE;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"

# interfaces
.implements Lah/p;


# static fields
.field private static final a:Ljava/lang/CharSequence;


# instance fields
.field private b:Lcom/google/googlenav/ui/bd;

.field c:Lcom/google/googlenav/ai;

.field protected final d:LaM/m;

.field protected final e:Lcom/google/googlenav/ui/bw;

.field protected m:Lcom/google/googlenav/ui/view/android/L;

.field protected n:Landroid/view/View;

.field protected o:Z

.field p:Landroid/view/View;

.field private q:Landroid/widget/ListView;

.field private r:Lcom/google/googlenav/ui/view/dialog/bh;

.field private s:Lcom/google/googlenav/common/a;

.field private t:J

.field private final u:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 132
    const/16 v0, 0x606

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/view/android/bE;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ai;LaM/m;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 188
    const v0, 0x7f0f0018

    invoke-direct {p0, p2, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bE;->o:Z

    .line 168
    new-instance v0, Lcom/google/googlenav/ui/view/android/bF;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/bF;-><init>(Lcom/google/googlenav/ui/view/android/bE;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->u:Ljava/lang/Runnable;

    .line 189
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    .line 190
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    .line 191
    invoke-virtual {p2}, LaM/m;->bd()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->e:Lcom/google/googlenav/ui/bw;

    .line 192
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->s:Lcom/google/googlenav/common/a;

    .line 193
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->s:Lcom/google/googlenav/common/a;

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/bE;->t:J

    .line 196
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->cc()LaS/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, LaS/o;->b(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method private J()V
    .registers 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->r:Lcom/google/googlenav/ui/view/dialog/bh;

    if-eqz v0, :cond_c

    .line 475
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->r:Lcom/google/googlenav/ui/view/dialog/bh;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bh;->b()V

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->r:Lcom/google/googlenav/ui/view/dialog/bh;

    .line 478
    :cond_c
    return-void
.end method

.method private K()LaQ/H;
    .registers 14

    .prologue
    .line 704
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .line 705
    invoke-direct {p0, v4}, Lcom/google/googlenav/ui/view/android/bE;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 707
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->I()Ljava/lang/String;

    move-result-object v6

    .line 708
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    invoke-virtual {v0}, LaM/m;->ba()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/aA;->e()Z

    move-result v7

    .line 711
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-static {v0}, LaM/m;->f(Lcom/google/googlenav/ai;)Z

    move-result v8

    .line 712
    if-eqz v8, :cond_2a

    .line 713
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->o(I)V

    .line 717
    :cond_2a
    const/4 v0, 0x0

    .line 718
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->bw()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 719
    const/16 v0, 0x5f5

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 723
    :cond_39
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->bx()Z

    move-result v9

    .line 727
    if-nez v9, :cond_5a

    .line 728
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ai;->d(Z)Ljava/lang/String;

    .line 729
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->bb()Ljava/lang/String;

    move-result-object v1

    .line 730
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 731
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ai;->o(I)V

    .line 737
    :cond_5a
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v10

    .line 739
    const/4 v1, 0x0

    .line 740
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->B()Ljava/lang/String;

    move-result-object v2

    .line 741
    if-eqz v2, :cond_84

    .line 742
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    invoke-virtual {v1}, LaM/m;->ba()Lcom/google/googlenav/ui/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->al()Lax/m;

    move-result-object v1

    invoke-interface {v1}, Lax/m;->g()Lax/r;

    move-result-object v1

    .line 744
    invoke-interface {v1, v2}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v1

    .line 745
    if-eqz v1, :cond_13f

    invoke-virtual {v1}, Lax/A;->n()Z

    move-result v1

    if-eqz v1, :cond_13f

    const/4 v1, 0x1

    .line 749
    :cond_84
    :goto_84
    const/4 v3, 0x0

    .line 750
    const/4 v2, 0x0

    .line 751
    iget-object v11, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v11}, Lcom/google/googlenav/ai;->ai()Z

    move-result v11

    if-eqz v11, :cond_9a

    .line 752
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->aN()Ljava/lang/String;

    move-result-object v3

    .line 753
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->aO()Ljava/lang/String;

    move-result-object v2

    .line 756
    :cond_9a
    new-instance v11, Lcom/google/googlenav/ui/view/android/bK;

    invoke-direct {v11}, Lcom/google/googlenav/ui/view/android/bK;-><init>()V

    sget-object v12, Lcom/google/googlenav/ui/aV;->aP:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v11, v5, v12}, Lcom/google/googlenav/ui/view/android/bK;->a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/googlenav/ui/view/android/bK;->a([Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Lcom/google/googlenav/ui/view/android/bK;->a(Ljava/lang/String;Z)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v5

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->aI()Z

    move-result v4

    if-eqz v4, :cond_142

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->aJ()LO/d;

    move-result-object v4

    :goto_bb
    invoke-virtual {v5, v4}, Lcom/google/googlenav/ui/view/android/bK;->a(LO/d;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/googlenav/ui/view/android/bK;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/view/android/bK;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/view/android/bK;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/googlenav/ui/view/android/bK;->a(Lat/B;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/googlenav/ui/view/android/bK;->a(Z)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/bK;->a(Lcom/google/googlenav/ai;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bK;->b(Z)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/googlenav/ui/view/android/bK;->c(Z)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bK;->a(Lcom/google/googlenav/ui/g;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    invoke-virtual {v1}, LaM/m;->bd()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bK;->a(Lcom/google/googlenav/ui/bw;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    const v1, 0x7f0400d0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bK;->c(I)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bK;->d(Z)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bK;->d(I)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    .line 775
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->cg()Lcom/google/googlenav/ar;

    move-result-object v0

    .line 776
    if-eqz v0, :cond_10d

    .line 777
    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/bK;->a(Lcom/google/googlenav/ar;)Lcom/google/googlenav/ui/view/android/bK;

    .line 781
    :cond_10d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ax()Lcom/google/googlenav/ap;

    move-result-object v2

    .line 782
    if-eqz v2, :cond_13a

    .line 783
    invoke-virtual {v2}, Lcom/google/googlenav/ap;->b()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_145

    const/4 v0, 0x1

    .line 785
    :goto_11d
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, LaM/aR;->b(Lcom/google/googlenav/ai;ZZ)Lcom/google/googlenav/ui/view/a;

    move-result-object v3

    .line 787
    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-static {v4, v0}, LaM/aR;->b(Lcom/google/googlenav/ai;Z)V

    .line 788
    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->L()Z

    move-result v4

    if-nez v4, :cond_133

    if-nez v0, :cond_13a

    .line 789
    :cond_133
    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/bK;->a(Lcom/google/googlenav/ap;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/view/android/bK;->a(Lcom/google/googlenav/ui/view/a;)Lcom/google/googlenav/ui/view/android/bK;

    .line 794
    :cond_13a
    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bK;->a()Lcom/google/googlenav/ui/view/android/bJ;

    move-result-object v0

    return-object v0

    .line 745
    :cond_13f
    const/4 v1, 0x0

    goto/16 :goto_84

    .line 756
    :cond_142
    const/4 v4, 0x0

    goto/16 :goto_bb

    .line 783
    :cond_145
    const/4 v0, 0x0

    goto :goto_11d
.end method

.method private a([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v1

    .line 664
    new-instance v2, Ljava/util/Vector;

    const/4 v0, 0x3

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(I)V

    .line 666
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    invoke-virtual {v0}, LaM/m;->bk()Z

    move-result v0

    if-nez v0, :cond_87

    .line 667
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v0

    .line 673
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/K;->ar()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 674
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 675
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v0

    .line 676
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 697
    :goto_39
    if-eqz p1, :cond_3e

    .line 698
    invoke-virtual {v2, p1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 700
    :cond_3e
    return-object v0

    .line 679
    :cond_3f
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 680
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 686
    :cond_52
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 687
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 688
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_39

    .line 690
    :cond_6c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 691
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 692
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_87
    move-object v0, v1

    goto :goto_39
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 5
    .parameter

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->r:Lcom/google/googlenav/ui/view/dialog/bh;

    if-nez v0, :cond_13

    .line 462
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/bh;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->au()Lcom/google/googlenav/ca;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/googlenav/ui/view/dialog/bh;-><init>(Lcom/google/googlenav/ca;LaM/i;Lcom/google/googlenav/ui/view/android/bE;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->r:Lcom/google/googlenav/ui/view/dialog/bh;

    .line 465
    :cond_13
    return-void
.end method

.method private e(Ljava/util/List;)V
    .registers 12
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x1

    .line 845
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->az()Ljava/lang/String;

    move-result-object v5

    .line 846
    invoke-static {v5}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 847
    sget-object v0, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v5, v0}, LaM/aR;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 849
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    sget-object v2, Lcom/google/googlenav/ui/view/android/bE;->a:Ljava/lang/CharSequence;

    new-instance v6, Lcom/google/googlenav/ui/view/a;

    const/16 v7, 0x19

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8, v5}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    sget-object v7, Lcom/google/googlenav/ui/aV;->M:Lcom/google/googlenav/ui/aV;

    sget-object v8, Lcom/google/googlenav/ui/aV;->aY:Lcom/google/googlenav/ui/aV;

    move-object v5, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/view/android/a;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ai;->o(I)V

    .line 857
    :cond_3d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bx()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 858
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ba()Lcom/google/googlenav/ac;

    move-result-object v0

    .line 859
    if-eqz v0, :cond_5a

    .line 860
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-static {v2, v1, v9}, LaM/aR;->a(Lcom/google/googlenav/ai;ZZ)Ljava/util/Vector;

    move-result-object v2

    .line 862
    invoke-static {v0}, LaM/aR;->a(Lcom/google/googlenav/ac;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 863
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/googlenav/ui/view/android/bE;->a(Ljava/util/List;Ljava/lang/CharSequence;Ljava/util/Vector;)V

    .line 868
    :cond_5a
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 869
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-static {v2, v0, v9}, LaM/aR;->a(Lcom/google/googlenav/ai;Ljava/util/Vector;Z)V

    .line 870
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_68
    :goto_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/aS;

    .line 871
    invoke-static {v0, v1}, LaM/aR;->a(LaM/aS;I)Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    .line 873
    if-eqz v0, :cond_68

    .line 874
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    .line 877
    :cond_7e
    return-void
.end method

.method private f(Ljava/util/List;)Z
    .registers 3
    .parameter

    .prologue
    .line 904
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->av()Z

    move-result v0

    if-nez v0, :cond_d

    .line 905
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bE;->J()V

    .line 906
    const/4 v0, 0x0

    .line 915
    :goto_c
    return v0

    .line 909
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->i:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bE;->a(Landroid/view/ViewGroup;)V

    .line 910
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bE;->v()V

    .line 911
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->r:Lcom/google/googlenav/ui/view/dialog/bh;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/dialog/bh;->a(Ljava/util/List;)Ljava/util/List;

    .line 915
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private n()Z
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->av()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private v()V
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->r:Lcom/google/googlenav/ui/view/dialog/bh;

    if-eqz v0, :cond_9

    .line 469
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->r:Lcom/google/googlenav/ui/view/dialog/bh;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bh;->c()V

    .line 471
    :cond_9
    return-void
.end method


# virtual methods
.method protected A()LaQ/H;
    .registers 5

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aH()Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x57a

    .line 627
    :goto_a
    new-instance v1, LaQ/bv;

    const/16 v2, 0x1b

    const v3, 0x7f04012d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, LaQ/bv;-><init>(IILjava/lang/String;)V

    return-object v1

    .line 623
    :cond_19
    const/16 v0, 0x578

    goto :goto_a
.end method

.method protected B()Ljava/util/List;
    .registers 3

    .prologue
    .line 645
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 646
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bE;->K()LaQ/H;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->o()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/bE;->a(Ljava/util/List;Z)V

    .line 649
    return-object v0
.end method

.method C()Z
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ai()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->K()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected D()I
    .registers 2

    .prologue
    .line 826
    const v0, 0x7f04012c

    return v0
.end method

.method protected E()I
    .registers 2

    .prologue
    .line 945
    const v0, 0x7f04012a

    return v0
.end method

.method protected F()Z
    .registers 2

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bV()Z

    move-result v0

    return v0
.end method

.method protected G()Z
    .registers 3

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-static {v0}, LaM/aQ;->a(Lcom/google/googlenav/ai;)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-static {v1}, LaM/aQ;->b(Lcom/google/googlenav/ai;)I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public H()V
    .registers 3

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1154
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->s:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/bE;->t:J

    .line 1156
    :cond_10
    return-void
.end method

.method public I()V
    .registers 9

    .prologue
    const-wide/high16 v6, -0x8000

    .line 1164
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-wide v0, p0, Lcom/google/googlenav/ui/view/android/bE;->t:J

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->s:Lcom/google/googlenav/common/a;

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2a

    .line 1167
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aB()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->s:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/googlenav/ui/view/android/bE;->t:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, LO/a;->a(Ljava/lang/String;IJ)Z

    .line 1169
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->s:Lcom/google/googlenav/common/a;

    iput-wide v6, p0, Lcom/google/googlenav/ui/view/android/bE;->t:J

    .line 1171
    :cond_2a
    return-void
.end method

.method public I_()V
    .registers 3

    .prologue
    .line 223
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 224
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 226
    :cond_17
    return-void
.end method

.method protected N_()V
    .registers 2

    .prologue
    .line 287
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_e

    .line 288
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bE;->requestWindowFeature(I)Z

    .line 290
    :cond_e
    return-void
.end method

.method public P_()V
    .registers 3

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    invoke-virtual {v1}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v1

    if-ne v0, v1, :cond_d

    .line 1082
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->i()V

    .line 1084
    :cond_d
    return-void
.end method

.method protected a(LaM/aP;)LaQ/H;
    .registers 9
    .parameter

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-static {v0}, LaM/aQ;->c(Lcom/google/googlenav/ai;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 1027
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-static {v0}, LaM/aQ;->d(Lcom/google/googlenav/ai;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 1028
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->o()Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/view/android/bE;->a(LaM/aP;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;IZZ)LaQ/H;

    move-result-object v0

    return-object v0
.end method

.method protected a(LaM/aP;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;IZZ)LaQ/H;
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1035
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 1036
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 1037
    invoke-static {p2, v4, v3}, LaM/aQ;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Ljava/util/List;)V

    .line 1040
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->o(I)V

    .line 1043
    new-instance v0, LaQ/aE;

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/bE;->e:Lcom/google/googlenav/ui/bw;

    move-object v1, p2

    move-object v2, p3

    move-object v6, p1

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, LaQ/aE;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Ljava/util/List;Lcom/google/googlenav/ui/af;LaM/aP;IZZ)V

    .line 1049
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    .line 1050
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->e:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->b()Lah/s;

    move-result-object v1

    invoke-static {v3}, Lcom/google/common/collect/bT;->d(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/view/android/bH;

    invoke-direct {v3, p0, v0}, Lcom/google/googlenav/ui/view/android/bH;-><init>(Lcom/google/googlenav/ui/view/android/bE;LaQ/aE;)V

    invoke-virtual {v1, v2, v3}, Lah/s;->a(Ljava/lang/Iterable;Lah/p;)V

    .line 1058
    :cond_38
    return-object v0
.end method

.method protected a(LaM/aP;Ljava/util/List;Z)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->cc()LaS/o;

    move-result-object v0

    invoke-virtual {v0}, LaS/o;->j()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1072
    new-instance v0, LaQ/ao;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    const/16 v4, 0xe

    new-instance v5, Lcom/google/googlenav/be;

    invoke-direct {v5}, Lcom/google/googlenav/be;-><init>()V

    move-object v2, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, LaQ/ao;-><init>(Lcom/google/googlenav/ai;LaM/aP;LaM/m;ILcom/google/googlenav/be;Z)V

    .line 1075
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1077
    :cond_21
    return-void
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 3
    .parameter

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 279
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const v2, 0x7f100226

    .line 494
    const v0, 0x7f1001e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->n:Landroid/view/View;

    .line 495
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->n:Landroid/view/View;

    const v1, 0x7f1001e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x1bd

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 498
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    :goto_3b
    return-void

    .line 501
    :cond_3c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3b
.end method

.method public a(Lcom/google/googlenav/ai;)V
    .registers 4
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    if-eq p1, v0, :cond_18

    .line 202
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->cc()LaS/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, LaS/o;->c(Ljava/lang/Runnable;)V

    .line 203
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->cc()LaS/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, LaS/o;->b(Ljava/lang/Runnable;)V

    .line 206
    :cond_18
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->b:Lcom/google/googlenav/ui/bd;

    .line 210
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 7
    .parameter

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ch()Lcom/google/googlenav/ao;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ch()Lcom/google/googlenav/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ao;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2e

    .line 602
    new-instance v0, LaQ/B;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    const/16 v2, 0x19

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    invoke-virtual {v3}, LaM/m;->ba()Lcom/google/googlenav/ui/v;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->o()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, LaQ/B;-><init>(Lcom/google/googlenav/ai;ILcom/google/googlenav/J;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_2e
    return-void
.end method

.method protected a(Ljava/util/List;LaM/aP;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 921
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-static {v0}, LaM/m;->c(Lcom/google/googlenav/ai;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 922
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->o(I)V

    .line 925
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aX()I

    move-result v1

    .line 926
    invoke-static {v1}, Lcom/google/common/collect/cx;->c(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 927
    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v1, :cond_28

    .line 928
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ai;->k(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 931
    :cond_28
    invoke-virtual {p2}, LaM/aP;->a()Z

    move-result v5

    .line 932
    new-instance v0, LaQ/bc;

    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->o()Z

    move-result v2

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bE;->e:Lcom/google/googlenav/ui/bw;

    invoke-direct/range {v0 .. v5}, LaQ/bc;-><init>(IZLjava/util/List;Lcom/google/googlenav/ui/bw;Z)V

    .line 935
    invoke-virtual {v0}, LaQ/bc;->d()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 936
    new-instance v1, LaQ/bv;

    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->E()I

    move-result v3

    const/16 v4, 0x323

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, LaQ/bv;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    :cond_5a
    return-void
.end method

.method protected a(Ljava/util/List;LaM/aP;Z)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 952
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/cv;->b()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 953
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lbm/O;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 954
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/cv;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 955
    invoke-virtual {v2, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 957
    const/4 v0, 0x3

    invoke-static {v2, v0}, Lcom/google/googlenav/common/io/protocol/b;->j(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 959
    const/16 v1, 0x61f

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 964
    const/4 v3, 0x0

    const/16 v4, 0x14

    move-object v0, p0

    move-object v1, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/view/android/bE;->a(LaM/aP;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;IZZ)LaQ/H;

    move-result-object v0

    .line 966
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    :cond_3c
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/CharSequence;Ljava/util/Vector;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 888
    const/4 v0, 0x0

    .line 889
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 891
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ai;->o(I)V

    move v0, v1

    .line 894
    :cond_11
    if-nez p2, :cond_33

    const/16 v2, 0x602

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 896
    :goto_19
    if-eqz v0, :cond_32

    .line 897
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    new-instance v6, Lcom/google/googlenav/ui/view/a;

    const/16 v3, 0xf

    const/16 v5, 0x14

    invoke-direct {v6, v3, v5, v4}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    sget-object v7, Lcom/google/googlenav/ui/aV;->M:Lcom/google/googlenav/ui/aV;

    sget-object v8, Lcom/google/googlenav/ui/aV;->aY:Lcom/google/googlenav/ui/aV;

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/view/android/a;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    :cond_32
    return-void

    .line 894
    :cond_33
    const/16 v2, 0x1ef

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_19
.end method

.method protected a(Ljava/util/List;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 802
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bE;->n()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 803
    new-instance v0, LaQ/bA;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    invoke-direct {v0, v1, v2, v3, p2}, LaQ/bA;-><init>(Lcom/google/googlenav/ai;LaM/i;IZ)V

    .line 810
    :goto_10
    invoke-virtual {v0}, LaQ/aR;->d()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 811
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    :cond_19
    return-void

    .line 806
    :cond_1a
    new-instance v0, LaQ/aR;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    invoke-direct {v0, v1, v2, v3, p2}, LaQ/aR;-><init>(Lcom/google/googlenav/ai;LaM/i;IZ)V

    goto :goto_10
.end method

.method protected a(ILandroid/view/MenuItem;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 418
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 419
    sparse-switch v0, :sswitch_data_76

    .line 451
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 421
    :sswitch_c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, v3, v4}, LaM/m;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_b

    .line 424
    :sswitch_15
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    const/16 v2, 0x258

    invoke-virtual {v0, v2, v3, v4}, LaM/m;->a(IILjava/lang/Object;)Z

    move v0, v1

    .line 425
    goto :goto_b

    .line 427
    :sswitch_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3, v4}, LaM/m;->a(IILjava/lang/Object;)Z

    move v0, v1

    .line 428
    goto :goto_b

    .line 430
    :sswitch_26
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->z()I

    move-result v0

    if-ne v0, v1, :cond_37

    const/16 v0, 0x4b1

    .line 431
    :goto_30
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    invoke-virtual {v2, v0, v3, v4}, LaM/m;->a(IILjava/lang/Object;)Z

    move v0, v1

    .line 432
    goto :goto_b

    .line 430
    :cond_37
    const/16 v0, 0x4b0

    goto :goto_30

    .line 434
    :sswitch_3a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    const/16 v2, 0x909

    invoke-virtual {v0, v2, v3, v4}, LaM/m;->a(IILjava/lang/Object;)Z

    move v0, v1

    .line 435
    goto :goto_b

    .line 437
    :sswitch_43
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    const/16 v2, 0x2bf

    invoke-virtual {v0, v2, v3, v4}, LaM/m;->a(IILjava/lang/Object;)Z

    move v0, v1

    .line 438
    goto :goto_b

    .line 440
    :sswitch_4c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v3, v4}, LaM/m;->a(IILjava/lang/Object;)Z

    move v0, v1

    .line 441
    goto :goto_b

    .line 443
    :sswitch_55
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->Z()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 444
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    const/16 v2, 0x2c0

    invoke-virtual {v0, v2, v3, v4}, LaM/m;->a(IILjava/lang/Object;)Z

    :cond_64
    :goto_64
    move v0, v1

    .line 449
    goto :goto_b

    .line 445
    :cond_66
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->Y()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 446
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    const/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3, v4}, LaM/m;->a(IILjava/lang/Object;)Z

    goto :goto_64

    .line 419
    :sswitch_data_76
    .sparse-switch
        0x7f1002bb -> :sswitch_3a
        0x7f1004c8 -> :sswitch_c
        0x7f1004ce -> :sswitch_15
        0x7f1004cf -> :sswitch_1e
        0x7f1004d0 -> :sswitch_43
        0x7f1004d1 -> :sswitch_4c
        0x7f1004d2 -> :sswitch_55
        0x7f1004e4 -> :sswitch_26
    .end sparse-switch
.end method

.method protected b(Landroid/view/Menu;)V
    .registers 5
    .parameter

    .prologue
    .line 322
    const v0, 0x7f1004ce

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 323
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bE;->n()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 325
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 335
    :cond_11
    :goto_11
    return-void

    .line 328
    :cond_12
    const/16 v1, 0x59b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 329
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v1, v2}, LaM/m;->d(Lcom/google/googlenav/ai;)Z

    move-result v1

    .line 330
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 331
    if-eqz v1, :cond_11

    .line 332
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->o(I)V

    goto :goto_11
.end method

.method protected b(Ljava/util/List;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 632
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 633
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-static {v0}, LaM/aR;->g(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v0

    .line 634
    new-instance v1, LaM/aS;

    const/4 v2, 0x0

    const/16 v3, 0x2c4

    invoke-direct {v1, v0, v2, v3, v4}, LaM/aS;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 636
    invoke-static {v1, v4}, LaM/aR;->a(LaM/aS;I)Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    .line 638
    if-eqz v0, :cond_24

    .line 639
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_24
    return-void
.end method

.method protected b(Ljava/util/List;LaM/aP;Z)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 972
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bf()Ljava/util/List;

    move-result-object v0

    .line 973
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f

    .line 987
    :goto_e
    return-void

    .line 976
    :cond_f
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbm/O;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 977
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 979
    const/4 v0, 0x3

    invoke-static {v2, v0}, Lcom/google/googlenav/common/io/protocol/b;->j(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 981
    const/16 v1, 0x123

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 984
    const/4 v3, 0x0

    const/16 v4, 0x16

    move-object v0, p0

    move-object v1, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/view/android/bE;->a(LaM/aP;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;IZZ)LaQ/H;

    move-result-object v0

    .line 986
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/bE;->o:Z

    .line 214
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->l()V

    .line 215
    return-void
.end method

.method public c()Landroid/view/View;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    if-nez v0, :cond_6

    .line 272
    :goto_5
    return-object v1

    .line 238
    :cond_6
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040128

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 239
    const v0, 0x7f100367

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->p:Landroid/view/View;

    .line 242
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/bE;->a(Landroid/view/View;)V

    .line 245
    invoke-static {}, Lcom/google/googlenav/aC;->a()Lcom/google/googlenav/aC;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/aC;->c(Lcom/google/googlenav/ai;)Z

    .line 246
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-static {v0}, LaM/aR;->e(Lcom/google/googlenav/ai;)V

    .line 247
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-static {v0}, LaM/aR;->f(Lcom/google/googlenav/ai;)V

    .line 249
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bE;->n()Z

    move-result v0

    if-eqz v0, :cond_92

    move-object v0, v1

    .line 251
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bE;->a(Landroid/view/ViewGroup;)V

    .line 257
    :goto_3c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->m()Ljava/util/List;

    move-result-object v2

    .line 260
    const v0, 0x7f100026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->q:Landroid/widget/ListView;

    .line 261
    new-instance v0, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    const/16 v5, 0x24

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->m:Lcom/google/googlenav/ui/view/android/L;

    .line 262
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->q:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->m:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 263
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->q:Landroid/widget/ListView;

    new-instance v2, Lcom/google/googlenav/ui/view/android/bI;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/android/bI;-><init>(Lcom/google/googlenav/ui/view/android/bE;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 264
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->q:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 265
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->q:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 266
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->C()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 267
    new-instance v0, LaQ/aV;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-direct {v0, v2}, LaQ/aV;-><init>(Lcom/google/googlenav/ai;)V

    .line 268
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->p:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, LaQ/aV;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 271
    :cond_8d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->l()V

    goto/16 :goto_5

    .line 253
    :cond_92
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bE;->J()V

    goto :goto_3c
.end method

.method protected c(Landroid/view/Menu;)V
    .registers 4
    .parameter

    .prologue
    .line 338
    const v0, 0x7f1004cf

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 339
    const/16 v0, 0x531

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 340
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    .line 341
    :goto_19
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 342
    if-eqz v0, :cond_25

    .line 343
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->o(I)V

    .line 346
    :cond_25
    return-void

    .line 340
    :cond_26
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected c(Ljava/util/List;)V
    .registers 6
    .parameter

    .prologue
    .line 816
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LaM/aR;->a(Lcom/google/googlenav/ai;Z)Ljava/lang/String;

    move-result-object v0

    .line 817
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 818
    new-instance v1, LaQ/bv;

    const/16 v2, 0x1d

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->D()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, LaQ/bv;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->o(I)V

    .line 823
    :cond_22
    return-void
.end method

.method protected c(Ljava/util/List;LaM/aP;Z)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 991
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lbm/O;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 992
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bg()Ljava/util/List;

    move-result-object v0

    .line 993
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_15

    .line 1008
    :goto_14
    return-void

    .line 996
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 997
    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_19

    .line 1000
    :cond_29
    const/4 v0, 0x3

    invoke-static {v2, v0}, Lcom/google/googlenav/common/io/protocol/b;->j(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1002
    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1005
    const/4 v3, 0x0

    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/view/android/bE;->a(LaM/aP;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;IZZ)LaQ/H;

    move-result-object v0

    .line 1007
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14
.end method

.method public d()V
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->r:Lcom/google/googlenav/ui/view/dialog/bh;

    if-eqz v0, :cond_9

    .line 300
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->r:Lcom/google/googlenav/ui/view/dialog/bh;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bh;->a()V

    .line 302
    :cond_9
    return-void
.end method

.method protected d(Landroid/view/Menu;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 349
    .line 350
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->D()Lat/g;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->y()Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_12
    move v0, v2

    .line 356
    :goto_13
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->z()I

    move-result v3

    if-ne v3, v1, :cond_30

    .line 357
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->A()[Lcom/google/googlenav/ai;

    move-result-object v1

    aget-object v1, v1, v2

    .line 358
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_2f
    move v0, v2

    .line 363
    :cond_30
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    invoke-virtual {v1}, LaM/m;->bl()Z

    move-result v1

    if-eqz v1, :cond_55

    const/16 v1, 0x260

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 367
    :goto_3e
    const v2, 0x7f1004e4

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 368
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 369
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 370
    if-eqz v0, :cond_54

    .line 371
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->o(I)V

    .line 374
    :cond_54
    return-void

    .line 363
    :cond_55
    const/16 v1, 0x262

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    :cond_5c
    move v0, v1

    goto :goto_13
.end method

.method protected d(Ljava/util/List;)V
    .registers 9
    .parameter

    .prologue
    .line 830
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bd()Lcom/google/googlenav/cy;

    move-result-object v2

    .line 831
    if-eqz v2, :cond_2a

    .line 832
    new-instance v0, LaQ/bq;

    const/16 v1, 0x1a

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->bc()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->bb()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v5}, Lcom/google/googlenav/ai;->T()I

    move-result v5

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v6}, Lcom/google/googlenav/ai;->be()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, LaQ/bq;-><init>(ILcom/google/googlenav/cy;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    :cond_2a
    return-void
.end method

.method protected e(Landroid/view/Menu;)V
    .registers 4
    .parameter

    .prologue
    .line 377
    const v0, 0x7f1004d0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 378
    const/16 v1, 0x23

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 379
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-static {v1}, LaM/aR;->b(Lcom/google/googlenav/ai;)Z

    move-result v1

    .line 380
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 382
    if-eqz v1, :cond_22

    .line 383
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->o(I)V

    .line 386
    :cond_22
    return-void
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method protected f(Landroid/view/Menu;)V
    .registers 4
    .parameter

    .prologue
    .line 389
    const v0, 0x7f1004d1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 390
    const/16 v1, 0x350

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 394
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 395
    return-void
.end method

.method protected g(Landroid/view/Menu;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 398
    const v1, 0x7f1004d2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 399
    const/16 v1, 0x43c

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 401
    const/4 v1, 0x0

    .line 402
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->by()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 403
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->Z()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/K;->r()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 409
    :cond_2c
    :goto_2c
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 410
    if-eqz v0, :cond_38

    .line 411
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->o(I)V

    .line 414
    :cond_38
    return-void

    .line 405
    :cond_39
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->Y()Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v4

    invoke-virtual {v3, v4}, LaM/m;->c(Lat/B;)Z

    move-result v3

    if-nez v3, :cond_2c

    :cond_4f
    move v0, v1

    goto :goto_2c
.end method

.method public i()V
    .registers 4

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->m:Lcom/google/googlenav/ui/view/android/L;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    invoke-virtual {v0}, LaM/m;->af()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1094
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->f()Ljava/lang/Object;

    .line 1095
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->m()Ljava/util/List;

    move-result-object v0

    .line 1096
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->m:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/L;->a(Ljava/util/List;)V

    .line 1101
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->C()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1102
    new-instance v0, LaQ/aV;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-direct {v0, v1}, LaQ/aV;-><init>(Lcom/google/googlenav/ai;)V

    .line 1103
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->p:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaQ/aV;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 1106
    :cond_30
    return-void
.end method

.method protected l()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 509
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->n:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 510
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bE;->o:Z

    if-eqz v0, :cond_16

    .line 511
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->q:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 518
    :cond_15
    :goto_15
    return-void

    .line 514
    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->q:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15
.end method

.method protected m()Ljava/util/List;
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 522
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->z()Ljava/util/List;

    move-result-object v0

    .line 526
    :goto_c
    return-object v0

    .line 523
    :cond_d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->C()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 524
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->B()Ljava/util/List;

    move-result-object v0

    goto :goto_c

    .line 526
    :cond_18
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->y()Ljava/util/List;

    move-result-object v0

    goto :goto_c
.end method

.method protected o()Z
    .registers 2

    .prologue
    .line 1118
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 306
    sget-object v0, Lcom/google/googlenav/ui/view/android/bE;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f11001c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 308
    const v0, 0x7f1004c8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 309
    const/16 v1, 0x37

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 310
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->x()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 312
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/bE;->b(Landroid/view/Menu;)V

    .line 313
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/bE;->c(Landroid/view/Menu;)V

    .line 314
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/bE;->d(Landroid/view/Menu;)V

    .line 315
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/bE;->e(Landroid/view/Menu;)V

    .line 316
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/bE;->f(Landroid/view/Menu;)V

    .line 317
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/bE;->g(Landroid/view/Menu;)V

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public w()Z
    .registers 2

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bE;->o:Z

    return v0
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected x()Z
    .registers 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->av()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->au()Lcom/google/googlenav/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ca;->m()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected y()Ljava/util/List;
    .registers 9

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->f()Ljava/lang/Object;

    move-result-object v0

    .line 532
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    invoke-virtual {v2}, LaM/m;->br()Ljava/util/Hashtable;

    move-result-object v2

    invoke-static {v1, v2, v0}, LaM/aR;->a(Lcom/google/googlenav/ai;Ljava/util/Hashtable;Ljava/lang/Object;)LaM/aP;

    move-result-object v0

    .line 536
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v6

    .line 537
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bE;->K()LaQ/H;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->o()Z

    move-result v5

    .line 540
    invoke-virtual {p0, v6, v5}, Lcom/google/googlenav/ui/view/android/bE;->a(Ljava/util/List;Z)V

    .line 541
    invoke-virtual {p0, v0, v6, v5}, Lcom/google/googlenav/ui/view/android/bE;->a(LaM/aP;Ljava/util/List;Z)V

    .line 544
    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/view/android/bE;->f(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2f

    move-object v0, v6

    .line 595
    :goto_2e
    return-object v0

    .line 548
    :cond_2f
    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/view/android/bE;->c(Ljava/util/List;)V

    .line 549
    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/view/android/bE;->d(Ljava/util/List;)V

    .line 550
    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/view/android/bE;->e(Ljava/util/List;)V

    .line 551
    invoke-virtual {p0, v6, v0}, Lcom/google/googlenav/ui/view/android/bE;->a(Ljava/util/List;LaM/aP;)V

    .line 552
    invoke-virtual {p0, v6, v0, v5}, Lcom/google/googlenav/ui/view/android/bE;->b(Ljava/util/List;LaM/aP;Z)V

    .line 553
    invoke-virtual {p0, v6, v0, v5}, Lcom/google/googlenav/ui/view/android/bE;->a(Ljava/util/List;LaM/aP;Z)V

    .line 554
    invoke-virtual {p0, v6, v0, v5}, Lcom/google/googlenav/ui/view/android/bE;->c(Ljava/util/List;LaM/aP;Z)V

    .line 556
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->b:Lcom/google/googlenav/ui/bd;

    if-eqz v1, :cond_6b

    .line 557
    new-instance v1, LaQ/bv;

    const/16 v2, 0x1c

    const v3, 0x7f04012a

    const/16 v4, 0x238

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, LaQ/bv;-><init>(IILjava/lang/String;)V

    .line 560
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    new-instance v1, LaQ/bx;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->b:Lcom/google/googlenav/ui/bd;

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, LaQ/bx;-><init>(Lcom/google/googlenav/ui/bd;I)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_6b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->F()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 565
    new-instance v1, LaQ/aX;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3, v5}, LaQ/aX;-><init>(Lcom/google/googlenav/ai;IZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_7d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->G()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 570
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bE;->a(LaM/aP;)LaQ/H;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_8a
    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/view/android/bE;->a(Ljava/util/List;)V

    .line 575
    new-instance v0, LaQ/bm;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->e:Lcom/google/googlenav/ui/bw;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    iget-object v7, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v4, v7}, LaM/m;->d(Lcom/google/googlenav/ai;)Z

    move-result v4

    invoke-direct/range {v0 .. v5}, LaQ/bm;-><init>(ILcom/google/googlenav/ui/bw;Lcom/google/googlenav/ai;ZZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    new-instance v0, LaQ/bi;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, LaQ/bi;-><init>(Lcom/google/googlenav/ai;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    new-instance v0, LaQ/al;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-direct {v0, v1, v2, v5}, LaQ/al;-><init>(ILcom/google/googlenav/ai;Z)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v1}, LaM/m;->b(Lcom/google/googlenav/ai;)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 584
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    check-cast v3, LaM/bj;

    .line 585
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v3, v0}, LaM/bj;->l(Lcom/google/googlenav/ai;)I

    move-result v2

    .line 586
    invoke-virtual {v3}, LaM/bj;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    const/16 v1, 0x578

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x13

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/g;->a(Lcom/google/googlenav/ai;Ljava/lang/String;ILaM/bj;IZ)Lcom/google/googlenav/ui/view/android/g;

    move-result-object v0

    .line 590
    if-eqz v0, :cond_e9

    .line 591
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e9
    move-object v0, v6

    .line 595
    goto/16 :goto_2e
.end method

.method protected z()Ljava/util/List;
    .registers 4

    .prologue
    .line 609
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 610
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->A()LaQ/H;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bE;->K()LaQ/H;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bE;->o()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/bE;->a(Ljava/util/List;Z)V

    .line 613
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bE;->c:Lcom/google/googlenav/ai;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    invoke-static {v1, v2, v0}, LaM/aR;->a(Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/g;Ljava/util/List;)V

    .line 614
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bE;->b(Ljava/util/List;)V

    .line 615
    return-object v0
.end method
