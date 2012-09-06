.class public Lcom/google/android/apps/docs/fragment/DocListFragment;
.super Lcom/google/android/apps/docs/view/RoboFragment;
.source "DocListFragment.java"

# interfaces
.implements LQ;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements LhC;
.implements Lie;
.implements Lih;
.implements LpF;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/view/RoboFragment;",
        "LQ",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "LhC;",
        "Lie;",
        "Lih;",
        "LpF;"
    }
.end annotation


# instance fields
.field public a:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LGZ;

.field public a:LLz;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LQN;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LTx;

.field public a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lck;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lcom/google/android/apps/docs/view/DocListView;

.field public a:Ldg;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LeZ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:Lek;

.field private a:LhB;

.field private a:Lid;

.field private a:Lig;

.field public a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lmi;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LsO;

.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 215
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/RoboFragment;-><init>()V

    .line 184
    iput-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Z

    .line 185
    iput-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->b:Z

    .line 186
    iput-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->c:Z

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lid;

    .line 216
    new-instance v0, Lek;

    invoke-direct {v0}, Lek;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lek;

    .line 217
    return-void
.end method

.method private a()LHa;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 669
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lig;

    if-nez v0, :cond_39

    .line 670
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lek;

    invoke-virtual {v0}, Lek;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    .line 671
    new-instance v0, LHa;

    sget-object v1, Lnk;->u:Lnk;

    invoke-virtual {v1}, Lnk;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lnk;->u:Lnk;

    invoke-virtual {v2}, Lnk;->a()LsO;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, LHa;-><init>(Ljava/lang/String;LsO;LGW;)V

    .line 694
    :goto_22
    return-object v0

    .line 674
    :cond_23
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lek;

    invoke-virtual {v0}, Lek;->a()Lnk;

    move-result-object v1

    .line 675
    if-eqz v1, :cond_6d

    .line 676
    new-instance v0, LHa;

    invoke-virtual {v1}, Lnk;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lnk;->a()LsO;

    move-result-object v1

    invoke-direct {v0, v2, v1, v4}, LHa;-><init>(Ljava/lang/String;LsO;LGW;)V

    goto :goto_22

    .line 680
    :cond_39
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lig;

    invoke-interface {v0}, Lig;->a()LhW;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_6d

    .line 682
    invoke-interface {v0}, LhW;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 683
    new-instance v0, LHa;

    sget-object v1, Lnk;->u:Lnk;

    invoke-virtual {v1}, Lnk;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lnk;->u:Lnk;

    invoke-virtual {v2}, Lnk;->a()LsO;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, LHa;-><init>(Ljava/lang/String;LsO;LGW;)V

    goto :goto_22

    .line 686
    :cond_59
    invoke-interface {v0}, LhW;->a()Lnk;

    move-result-object v1

    .line 687
    if-eqz v1, :cond_6d

    .line 688
    new-instance v0, LHa;

    invoke-virtual {v1}, Lnk;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lnk;->a()LsO;

    move-result-object v1

    invoke-direct {v0, v2, v1, v4}, LHa;-><init>(Ljava/lang/String;LsO;LGW;)V

    goto :goto_22

    .line 694
    :cond_6d
    new-instance v0, LHa;

    const-string v1, "default"

    sget-object v2, LsO;->b:LsO;

    invoke-direct {v0, v1, v2, v4}, LHa;-><init>(Ljava/lang/String;LsO;LGW;)V

    goto :goto_22
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/DocListFragment;)Lcom/google/android/apps/docs/view/DocListView;
    .registers 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    return-object v0
.end method

.method private a()Lnk;
    .registers 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lig;

    if-eqz v0, :cond_f

    .line 526
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lig;

    invoke-interface {v0}, Lig;->a()LhW;

    move-result-object v0

    invoke-interface {v0}, LhW;->a()Lnk;

    move-result-object v0

    .line 528
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lek;

    invoke-virtual {v0}, Lek;->a()Lnk;

    move-result-object v0

    goto :goto_e
.end method

.method private a(Ljava/lang/String;LsO;)LsO;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 698
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lek;

    invoke-virtual {v0}, Lek;->a()Ljava/lang/String;

    move-result-object v0

    .line 699
    if-nez v0, :cond_9

    .line 718
    :cond_8
    :goto_8
    return-object p2

    .line 705
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Ldg;

    invoke-interface {v1, v0}, Ldg;->a(Ljava/lang/String;)Lde;
    :try_end_e
    .catch Ldh; {:try_start_9 .. :try_end_e} :catch_33

    move-result-object v0

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sorting-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lde;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    sget-object v1, LsO;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LsO;

    .line 714
    if-eqz v0, :cond_8

    move-object p2, v0

    goto :goto_8

    .line 706
    :catch_33
    move-exception v0

    .line 707
    const-string v1, "DocListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while trying to load sorting preference - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ldh;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private a(Ljava/lang/String;LsO;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lek;

    invoke-virtual {v0}, Lek;->a()Ljava/lang/String;

    move-result-object v0

    .line 723
    if-nez v0, :cond_9

    .line 736
    :goto_8
    return-void

    .line 728
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Ldg;

    invoke-interface {v1, v0}, Ldg;->a(Ljava/lang/String;)Lde;

    move-result-object v0

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sorting-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, LsO;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lde;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Ldg;

    invoke-interface {v1, v0}, Ldg;->a(Lde;)V
    :try_end_2e
    .catch Ldh; {:try_start_9 .. :try_end_2e} :catch_2f

    goto :goto_8

    .line 732
    :catch_2f
    move-exception v0

    .line 733
    const-string v1, "DocListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while trying to save sorting preference - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ldh;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private a(LkT;)V
    .registers 5
    .parameter

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, LkT;->a()Lld;

    move-result-object v1

    invoke-virtual {p1}, LkT;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a(Landroid/content/Context;Lld;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 746
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a(Landroid/content/Intent;)V

    .line 747
    return-void
.end method

.method private b()LsO;
    .registers 3

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()LHa;

    move-result-object v0

    .line 659
    invoke-static {v0}, LHa;->a(LHa;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, LHa;->a(LHa;)LsO;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a(Ljava/lang/String;LsO;)LsO;

    move-result-object v0

    return-object v0
.end method

.method private c(LsO;)V
    .registers 3
    .parameter

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lek;

    invoke-virtual {v0, p1}, Lek;->a(LsO;)V

    .line 648
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    if-eqz v0, :cond_e

    .line 649
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/view/DocListView;->setSorting(LsO;)V

    .line 651
    :cond_e
    return-void
.end method

.method private d(LsO;)V
    .registers 3
    .parameter

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()LHa;

    move-result-object v0

    .line 665
    invoke-static {v0}, LHa;->a(LHa;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a(Ljava/lang/String;LsO;)V

    .line 666
    return-void
.end method

.method private s()V
    .registers 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lek;

    invoke-virtual {v0}, Lek;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lek;

    invoke-virtual {v0}, Lek;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a(J)V

    .line 281
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lek;

    invoke-virtual {v0}, Lek;->a()Lnk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a(Lnk;)V

    .line 282
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lek;

    invoke-virtual {v0}, Lek;->a()LOG;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a(LOG;)V

    .line 283
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->b()LsO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->c(LsO;)V

    .line 284
    return-void
.end method

.method private t()V
    .registers 4

    .prologue
    .line 766
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->c:Z

    .line 767
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/view/DocListView;->a()Z

    move-result v0

    if-nez v0, :cond_14

    .line 780
    :cond_13
    :goto_13
    return-void

    .line 771
    :cond_14
    const-string v0, "DocListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggering doclist cursor fillData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->c:Z

    .line 773
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lig;

    if-eqz v0, :cond_49

    .line 774
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lig;

    invoke-interface {v0}, Lig;->a()LhW;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 775
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lig;

    invoke-interface {v1}, Lig;->a()LhW;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/view/DocListView;->a(LhW;)V

    goto :goto_13

    .line 778
    :cond_49
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/view/DocListView;->a()V

    goto :goto_13
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/view/DocListView;->a()I

    move-result v0

    return v0
.end method

.method public a(ILandroid/os/Bundle;)LX;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "LX",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 819
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 820
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, LafQ;->b(Z)V

    .line 821
    new-instance v0, Lni;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Llu;

    iget-object v3, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v3}, Lcom/google/android/apps/docs/view/DocListView;->a()Lnj;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lni;-><init>(Landroid/content/Context;Llu;Lnj;Ljava/lang/String;)V

    return-object v0

    .line 820
    :cond_25
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 222
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 223
    const-string v0, "DocListFragment"

    const-string v1, "in DLF.onCreateView"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    sget v0, LcU;->doc_list_view:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 226
    sget v0, LcS;->doc_list_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/DocListView;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/docs/view/DocListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/view/DocListView;->setTagName(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/docs/view/DocListView;->setVisibility(I)V

    .line 235
    iget-boolean v2, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Z

    .line 236
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->p()V

    .line 237
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->s()V

    .line 239
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/view/DocListView;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a(Landroid/view/View;)V

    .line 241
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LhB;

    if-eqz v0, :cond_51

    .line 242
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LhB;

    invoke-interface {v0, p0}, LhB;->a(LhC;)V

    .line 245
    :cond_51
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lig;

    if-eqz v0, :cond_5a

    .line 246
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lig;

    invoke-interface {v0, p0}, Lig;->a(Lih;)V

    .line 249
    :cond_5a
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lid;

    if-eqz v0, :cond_63

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lid;

    invoke-interface {v0, p0}, Lid;->a(Lie;)V

    .line 253
    :cond_63
    if-eqz p3, :cond_6f

    .line 254
    const-string v0, "sortKind"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, LsO;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LsO;

    .line 257
    :cond_6f
    if-eqz v2, :cond_74

    .line 258
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->q()V

    .line 261
    :cond_74
    return-object v1
.end method

.method public a(IZI)Landroid/view/animation/Animation;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 901
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 904
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcQ;->navigation_panel_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 905
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v0

    .line 906
    const/16 v0, 0x2002

    if-ne p1, v0, :cond_3a

    .line 907
    iget-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->d:Z

    if-eqz v0, :cond_33

    .line 908
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-float v1, v2

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 922
    :goto_2d
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 923
    :goto_32
    return-object v0

    .line 910
    :cond_33
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-float v1, v1

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_2d

    .line 912
    :cond_3a
    const/16 v0, 0x1001

    if-ne p1, v0, :cond_4f

    .line 913
    iget-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->d:Z

    if-eqz v0, :cond_49

    .line 914
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-float v1, v2

    invoke-direct {v0, v3, v1, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_2d

    .line 916
    :cond_49
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_2d

    .line 919
    :cond_4f
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public a()Lcom/google/android/apps/docs/view/DocListView;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    return-object v0
.end method

.method public a()Ljava/util/EnumSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "LsO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Lnk;

    move-result-object v0

    .line 511
    const-class v1, LsO;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 512
    if-eqz v0, :cond_23

    .line 513
    invoke-virtual {v0}, Lnk;->a()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    .line 518
    :goto_13
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    .line 519
    invoke-virtual {v0}, LdL;->a()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    .line 521
    return-object v1

    .line 515
    :cond_23
    sget-object v0, Lnk;->a:Lnk;

    invoke-virtual {v0}, Lnk;->a()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    goto :goto_13
.end method

.method public a()LsO;
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lek;

    invoke-virtual {v0}, Lek;->a()LsO;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->r()V

    .line 757
    return-void
.end method

.method public a(J)V
    .registers 4
    .parameter

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lek;

    invoke-virtual {v0, p1, p2}, Lek;->a(J)V

    .line 499
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    if-eqz v0, :cond_11

    .line 500
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/docs/view/DocListView;->setCollectionId(J)V

    .line 501
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->t()V

    .line 503
    :cond_11
    return-void
.end method

.method public a(LOG;)V
    .registers 3
    .parameter

    .prologue
    .line 553
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lek;

    invoke-virtual {v0, p1}, Lek;->a(LOG;)V

    .line 555
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    if-eqz v0, :cond_14

    .line 556
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/view/DocListView;->setSearchTerm(LOG;)V

    .line 557
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->t()V

    .line 559
    :cond_14
    return-void
.end method

.method public a(LX;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 833
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 834
    const-string v0, "DocListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in onLoaderReset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    if-eqz v0, :cond_34

    .line 836
    const-string v0, "DocListFragment"

    const-string v1, "calling doclistView.swapCursor(null)"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/view/DocListView;->a(Landroid/database/Cursor;)V

    .line 839
    :cond_34
    return-void
.end method

.method public a(LX;Landroid/database/Cursor;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 826
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 827
    const-string v0, "DocListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in onLoadFinished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/docs/view/DocListView;->a(Landroid/database/Cursor;)V

    .line 829
    return-void
.end method

.method public bridge synthetic a(LX;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 85
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a(LX;Landroid/database/Cursor;)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 784
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->a(Landroid/app/Activity;)V

    .line 786
    instance-of v0, p1, LgT;

    invoke-static {v0}, LafQ;->a(Z)V

    .line 788
    check-cast p1, LgT;

    .line 790
    const-class v0, LGZ;

    invoke-interface {p1, v0, v1}, LgT;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGZ;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LGZ;

    .line 792
    const-class v0, Ljb;

    invoke-interface {p1, v0, v1}, LgT;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljb;

    .line 794
    if-eqz v0, :cond_31

    .line 795
    invoke-interface {v0}, Ljb;->a()LhB;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LhB;

    .line 796
    invoke-interface {v0}, Ljb;->a()Lig;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lig;

    .line 797
    invoke-interface {v0}, Ljb;->a()Lid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lid;

    .line 799
    :cond_31
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 848
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->a(Landroid/os/Bundle;)V

    .line 849
    new-instance v0, LGW;

    invoke-direct {v0, p0}, LGW;-><init>(Lcom/google/android/apps/docs/fragment/DocListFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LTx;

    .line 877
    return-void
.end method

.method a(Landroid/view/ContextMenu;Ljava/lang/String;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Llu;

    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lek;

    invoke-virtual {v1}, Lek;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Llu;

    invoke-interface {v1, v0, p2}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v9

    .line 332
    if-nez v9, :cond_15

    .line 381
    :goto_14
    return-void

    .line 336
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 337
    sget v1, LcV;->menu_doclist_context:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 339
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Llu;

    iget-object v3, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lmi;

    iget-object v4, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LLz;

    iget-object v5, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lek;

    invoke-virtual {v5}, Lek;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LQN;

    iget-object v7, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LeZ;

    iget-object v8, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LFX;

    invoke-static/range {v0 .. v8}, LlQ;->a(Landroid/content/Context;Ljava/util/Set;Llu;Lmi;LLz;Ljava/lang/String;LQN;LeZ;LFX;)LlQ;

    move-result-object v0

    .line 343
    sget v1, LcS;->menu_delete:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 344
    invoke-virtual {v0}, LlQ;->j()Z

    move-result v2

    if-nez v2, :cond_51

    .line 345
    sget v2, LcY;->menu_remove:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 348
    :cond_51
    invoke-virtual {v0}, LlQ;->i()Z

    move-result v1

    if-eqz v1, :cond_5f

    sget-object v1, LlR;->a:LlR;

    invoke-virtual {v1, v0}, LlR;->a(LlQ;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 349
    :cond_5f
    sget v1, LcS;->menu_comments:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 351
    :cond_64
    sget-object v1, LlR;->h:LlR;

    invoke-virtual {v1, v0}, LlR;->a(LlQ;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 352
    sget v1, LcS;->menu_rename:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 354
    :cond_71
    sget-object v1, LlR;->b:LlR;

    invoke-virtual {v1, v0}, LlR;->a(LlQ;)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 355
    sget v1, LcS;->menu_delete:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 357
    :cond_7e
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lkg;->a(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_90

    sget-object v1, LlR;->c:LlR;

    invoke-virtual {v1, v0}, LlR;->a(LlQ;)Z

    move-result v1

    if-nez v1, :cond_95

    .line 358
    :cond_90
    sget v1, LcS;->menu_sharing:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 360
    :cond_95
    sget-object v1, LlR;->d:LlR;

    invoke-virtual {v1, v0}, LlR;->a(LlQ;)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 361
    sget v1, LcS;->menu_open_with:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 363
    :cond_a2
    sget-object v1, LlR;->e:LlR;

    invoke-virtual {v1, v0}, LlR;->a(LlQ;)Z

    move-result v1

    if-nez v1, :cond_af

    .line 364
    sget v1, LcS;->menu_send:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 366
    :cond_af
    sget-object v1, LlR;->f:LlR;

    invoke-virtual {v1, v0}, LlR;->a(LlQ;)Z

    move-result v1

    if-nez v1, :cond_bc

    .line 367
    sget v1, LcS;->menu_send_link:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 369
    :cond_bc
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 370
    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LeZ;

    sget-object v3, LeV;->j:LeV;

    invoke-interface {v2, v3}, LeZ;->a(LeV;)Z

    move-result v2

    if-eqz v2, :cond_fd

    sget-object v2, LlR;->i:LlR;

    invoke-virtual {v2, v0}, LlR;->a(LlQ;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 371
    sget v0, LcS;->menu_pin:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 372
    sget v2, LcY;->menu_offline:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 373
    invoke-virtual {v9}, LkT;->h()Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 374
    sget v2, LcY;->menu_unpin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 380
    :cond_f4
    :goto_f4
    invoke-virtual {v9}, LkT;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_14

    .line 377
    :cond_fd
    sget v0, LcS;->menu_pin:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_f4
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lek;

    invoke-virtual {v0, p1}, Lek;->a(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    if-eqz v0, :cond_1b

    .line 467
    if-eqz p1, :cond_1b

    .line 468
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Llu;

    invoke-interface {v0, p1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_1b

    .line 470
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/view/DocListView;->setAccount(LkG;)V

    .line 471
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->t()V

    .line 475
    :cond_1b
    return-void
.end method

.method public a(Lnk;)V
    .registers 3
    .parameter

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lek;

    invoke-virtual {v0, p1}, Lek;->a(Lnk;)V

    .line 485
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    if-eqz v0, :cond_b

    if-nez p1, :cond_c

    .line 490
    :cond_b
    :goto_b
    return-void

    .line 488
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/view/DocListView;->setMainFilter(Lnk;)V

    .line 489
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->t()V

    goto :goto_b
.end method

.method public a(LsO;)V
    .registers 2
    .parameter

    .prologue
    .line 928
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/fragment/DocListFragment;->d(LsO;)V

    .line 929
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/fragment/DocListFragment;->b(LsO;)V

    .line 930
    return-void
.end method

.method public a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 566
    const-string v0, "DocListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in DLF.setSyncing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    if-eqz v0, :cond_23

    .line 568
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/view/DocListView;->setSyncing(Z)V

    .line 570
    :cond_23
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LhB;

    invoke-interface {v0}, LhB;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a(Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method public b(LsO;)V
    .registers 3
    .parameter

    .prologue
    .line 538
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()LsO;

    move-result-object v0

    invoke-virtual {p1, v0}, LsO;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 545
    :goto_d
    return-void

    .line 543
    :cond_e
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/fragment/DocListFragment;->c(LsO;)V

    .line 544
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->t()V

    goto :goto_d
.end method

.method public b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    if-eqz v0, :cond_9

    .line 803
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/view/DocListView;->setSelectionMode(Z)V

    .line 805
    :cond_9
    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 385
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 386
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 391
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/view/DocListView;->a()Landroid/widget/ListView;

    move-result-object v1

    iget-object v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_21

    move v0, v2

    .line 448
    :goto_20
    return v0

    .line 396
    :cond_21
    iget-wide v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    .line 397
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Llu;

    invoke-interface {v0, v3, v4}, Llu;->a(J)Ljava/lang/String;

    move-result-object v5

    .line 398
    if-nez v5, :cond_34

    .line 399
    const-string v0, "DocListFragment"

    const-string v1, "Failed to retrieve the resourceId matching this contextmenu command."

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 400
    goto :goto_20

    .line 403
    :cond_34
    const-string v0, "DocListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in onContextItemSelected for "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v0, "DocListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectedEntryResourceId = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Llu;

    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Llu;

    iget-object v6, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lek;

    invoke-virtual {v6}, Lek;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v1

    .line 408
    if-nez v1, :cond_96

    .line 409
    const-string v0, "DocListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entry does not exist anymore for resourceId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 410
    goto :goto_20

    .line 413
    :cond_96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v6, LcS;->menu_comments:I

    if-ne v0, v6, :cond_ab

    .line 414
    const-string v0, "DocListFragment"

    const-string v2, "Discussions from context menu"

    invoke-static {v0, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a(LkT;)V

    .line 448
    :cond_a8
    :goto_a8
    const/4 v0, 0x1

    goto/16 :goto_20

    .line 416
    :cond_ab
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v6, LcS;->menu_sharing:I

    if-ne v0, v6, :cond_c4

    .line 417
    const-string v0, "DocListFragment"

    const-string v2, "Sharing from context menu"

    invoke-static {v0, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v1}, LkT;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/google/android/apps/docs/view/DocListView;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a8

    .line 419
    :cond_c4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v6, LcS;->menu_rename:I

    if-ne v0, v6, :cond_d9

    .line 420
    const-string v0, "DocListFragment"

    const-string v1, "Rename entry"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LGZ;

    invoke-interface {v0, v5}, LGZ;->a(Ljava/lang/String;)V

    goto :goto_a8

    .line 422
    :cond_d9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v6, LcS;->menu_delete:I

    if-ne v0, v6, :cond_ee

    .line 423
    const-string v0, "DocListFragment"

    const-string v1, "Delete entry"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LGZ;

    invoke-interface {v0, v5}, LGZ;->b(Ljava/lang/String;)V

    goto :goto_a8

    .line 425
    :cond_ee
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v6, LcS;->menu_open_with:I

    if-ne v0, v6, :cond_105

    .line 426
    const-string v0, "DocListFragment"

    const-string v1, "Open with from context menu"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    sget-object v1, LeD;->b:LeD;

    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/apps/docs/view/DocListView;->a(JLeD;)V

    goto :goto_a8

    .line 428
    :cond_105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v6, LcS;->menu_send:I

    if-ne v0, v6, :cond_11c

    .line 429
    const-string v0, "DocListFragment"

    const-string v1, "Send from context menu"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    sget-object v1, LeD;->c:LeD;

    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/apps/docs/view/DocListView;->a(JLeD;)V

    goto :goto_a8

    .line 431
    :cond_11c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v3, LcS;->menu_send_link:I

    if-ne v0, v3, :cond_13e

    .line 432
    const-string v0, "DocListFragment"

    const-string v2, "Send Link from context menu"

    invoke-static {v0, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    if-eqz v0, :cond_a8

    .line 435
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(LkT;)V

    goto/16 :goto_a8

    .line 437
    :cond_13e
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v3, LcS;->menu_pin:I

    if-ne v0, v3, :cond_15f

    .line 438
    const-string v0, "DocListFragment"

    const-string v2, "Pin from context menu"

    invoke-static {v0, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 441
    check-cast v0, LkR;

    .line 442
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/view/DocListView;->a(LkR;)V

    .line 443
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LGZ;

    invoke-interface {v0, v5}, LGZ;->c(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->r()V

    goto/16 :goto_a8

    :cond_15f
    move v0, v2

    .line 446
    goto/16 :goto_20
.end method

.method public b_()V
    .registers 3

    .prologue
    .line 809
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    if-eqz v0, :cond_16

    .line 811
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    .line 813
    :goto_11
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/view/DocListView;->setSelectedResourceId(Ljava/lang/String;)V

    .line 815
    :cond_16
    return-void

    .line 811
    :cond_17
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_11
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 934
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->c(Landroid/os/Bundle;)V

    .line 935
    const-string v0, "sortKind"

    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/view/DocListView;->a()LsO;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 936
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 761
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->c:Z

    .line 762
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->r()V

    .line 763
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 881
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->f()V

    .line 883
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->b()LsO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->b(LsO;)V

    .line 884
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->q()V

    .line 885
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LTx;

    invoke-static {v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a(LTx;)V

    .line 886
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 890
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->g()V

    .line 891
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LTx;

    invoke-static {v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->b(LTx;)V

    .line 892
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->p()V

    .line 893
    return-void
.end method

.method public g(Z)V
    .registers 2
    .parameter

    .prologue
    .line 896
    iput-boolean p1, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->d:Z

    .line 897
    return-void
.end method

.method public g_()V
    .registers 1

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->r()V

    .line 844
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 309
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-static {v0}, LafQ;->a(Z)V

    .line 310
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 312
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Llu;

    iget-wide v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-interface {v0, v1, v2}, Llu;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 313
    if-nez v0, :cond_1b

    .line 318
    :goto_1a
    return-void

    .line 317
    :cond_1b
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a(Landroid/view/ContextMenu;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Llu;

    invoke-interface {v0, p4, p5}, Llu;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 269
    sget v2, LcS;->preview_button:I

    if-ne v0, v2, :cond_29

    .line 270
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    if-eqz v0, :cond_28

    .line 271
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->d(Ljava/lang/String;)V

    .line 276
    :cond_28
    :goto_28
    return-void

    .line 273
    :cond_29
    sget v1, LcS;->doc_entry_row_root:I

    if-ne v0, v1, :cond_28

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    sget-object v1, LeD;->a:LeD;

    invoke-virtual {v0, p4, p5, v1}, Lcom/google/android/apps/docs/view/DocListView;->a(JLeD;)V

    goto :goto_28
.end method

.method public p()V
    .registers 4

    .prologue
    .line 576
    const-string v0, "DocListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in DLF.deActivate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Z

    .line 578
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    if-eqz v0, :cond_26

    .line 579
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/view/DocListView;->b()V

    .line 581
    :cond_26
    return-void
.end method

.method public q()V
    .registers 4

    .prologue
    .line 600
    const-string v0, "DocListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in DLF.activate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Z

    .line 602
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->r()V

    .line 603
    return-void
.end method

.method public r()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 619
    const-string v2, "DocListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in attemptPopulateOrRefresh "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " isDelayed="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->b:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " isActive="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " queryHasChanged="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->c:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is doclistView null="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    if-nez v0, :cond_58

    const/4 v0, 0x1

    :goto_44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->b:Z

    if-nez v0, :cond_57

    iget-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Z

    if-nez v0, :cond_5a

    .line 644
    :cond_57
    :goto_57
    return-void

    :cond_58
    move v0, v1

    .line 619
    goto :goto_44

    .line 629
    :cond_5a
    iget-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->c:Z

    if-eqz v0, :cond_75

    .line 630
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LsO;

    if-eqz v0, :cond_6d

    .line 631
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LsO;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->c(LsO;)V

    .line 632
    iput-object v4, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:LsO;

    .line 636
    :goto_69
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->t()V

    goto :goto_57

    .line 634
    :cond_6d
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->b()LsO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->c(LsO;)V

    goto :goto_69

    .line 640
    :cond_75
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Lcom/google/android/apps/docs/view/DocListView;

    if-eqz v0, :cond_57

    iget-boolean v0, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->a:Z

    if-eqz v0, :cond_57

    .line 641
    const-string v0, "DocListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggering doclist cursor refresh "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()LP;

    move-result-object v0

    invoke-virtual {v0, v1, v4, p0}, LP;->a(ILandroid/os/Bundle;LQ;)LX;

    goto :goto_57
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/DocListFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
