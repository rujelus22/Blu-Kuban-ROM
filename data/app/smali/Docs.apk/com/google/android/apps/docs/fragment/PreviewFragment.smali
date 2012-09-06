.class public Lcom/google/android/apps/docs/fragment/PreviewFragment;
.super Lcom/google/android/apps/docs/view/RoboFragment;
.source "PreviewFragment.java"

# interfaces
.implements LOT;
.implements LhC;
.implements Lie;


# static fields
.field private static final a:I

.field private static b:I


# instance fields
.field private a:LGZ;

.field private a:LHS;

.field public a:LHT;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LQm;

.field public a:LQo;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LZU;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Laac;

.field public a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Laac;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/graphics/Bitmap;

.field private a:Landroid/widget/CheckBox;

.field private a:Landroid/widget/ImageView;

.field a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/ProgressBar;

.field a:Landroid/widget/TextView;

.field private a:Lcom/google/android/apps/docs/view/ThumbnailView;

.field public a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LeZ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LhB;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lid;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lkc;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Z

.field private b:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private e:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    sget v0, LcR;->ic_contact_list_picture:I

    sput v0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:I

    .line 906
    const/4 v0, 0x0

    sput v0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->b:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/RoboFragment;-><init>()V

    .line 98
    sget-object v0, LHS;->b:LHS;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LHS;

    .line 153
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/PreviewFragment;)LGZ;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LGZ;

    return-object v0
.end method

.method private a(Ldv;Ljava/lang/String;)LQC;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 652
    new-instance v0, Ldt;

    invoke-direct {v0}, Ldt;-><init>()V

    invoke-virtual {v0, p1}, Ldt;->a(Ldv;)Ldt;

    move-result-object v0

    invoke-virtual {v0, p2}, Ldt;->b(Ljava/lang/String;)Ldt;

    move-result-object v0

    invoke-virtual {v0}, Ldt;->a()Ldq;

    move-result-object v0

    .line 656
    new-instance v1, LQC;

    const/4 v2, 0x0

    new-instance v3, LQl;

    invoke-direct {v3, v0}, LQl;-><init>(Ldq;)V

    invoke-direct {v1, v2, v3}, LQC;-><init>(LPh;LQl;)V

    return-object v1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/PreviewFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private a(LQC;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;LPm;)Landroid/view/View;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 661
    sget v1, LcU;->preview_fragment_sharing_entry:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 664
    invoke-virtual {p1}, LQC;->a()LQl;

    move-result-object v1

    invoke-virtual {v1}, LQl;->a()Ldw;

    move-result-object v1

    sget-object v2, Ldw;->a:Ldw;

    if-eq v1, v2, :cond_14

    const/4 v0, 0x1

    .line 666
    :cond_14
    if-eqz v0, :cond_1e

    .line 667
    new-instance v1, LHO;

    invoke-direct {v1, p0, p1}, LHO;-><init>(Lcom/google/android/apps/docs/fragment/PreviewFragment;LQC;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    :cond_1e
    invoke-virtual {v4, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 677
    sget v0, LcS;->share_name:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 678
    sget v1, LcS;->share_description:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 679
    sget v2, LcS;->share_role:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 680
    sget v3, LcS;->share_badge:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/QuickContactBadge;

    .line 682
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(LQC;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->b(LQC;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    invoke-virtual {p1}, LQC;->a()LQl;

    move-result-object v0

    invoke-virtual {v0}, LQl;->a()Ldw;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldw;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    invoke-virtual {p1}, LQC;->a()LPh;

    move-result-object v0

    invoke-direct {p0, v3, p4, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Landroid/widget/QuickContactBadge;LPm;LPh;)V

    .line 687
    return-object v4
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 691
    sget v0, LcU;->preview_fragment_sharing_add_entry:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 692
    new-instance v1, LHP;

    invoke-direct {v1, p0}, LHP;-><init>(Lcom/google/android/apps/docs/fragment/PreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 701
    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/PreviewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/PreviewFragment;)Lcom/google/android/apps/docs/view/ThumbnailView;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    return-object v0
.end method

.method private a(LQC;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 731
    invoke-virtual {p1}, LQC;->a()Ldq;

    move-result-object v0

    .line 732
    invoke-virtual {p1}, LQC;->a()LPh;

    move-result-object v2

    .line 736
    if-eqz v2, :cond_2d

    .line 737
    invoke-interface {v2}, LPh;->b()Ljava/lang/String;

    move-result-object v1

    .line 738
    invoke-interface {v2}, LPh;->a()Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 742
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 743
    if-lez v1, :cond_2c

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 765
    :cond_2c
    :goto_2c
    return-object v0

    .line 746
    :cond_2d
    invoke-virtual {v0}, Ldq;->a()Ldx;

    move-result-object v1

    .line 747
    sget-object v2, Ldx;->d:Ldx;

    if-ne v1, v2, :cond_49

    .line 748
    invoke-virtual {v0}, Ldq;->a()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 749
    sget v0, LcY;->sharing_option_anyone_with_link:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    .line 751
    :cond_42
    sget v0, LcY;->sharing_option_anyone:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    .line 753
    :cond_49
    sget-object v2, Ldx;->c:Ldx;

    if-ne v1, v2, :cond_6d

    .line 754
    invoke-virtual {v0}, Ldq;->b()Ljava/lang/String;

    move-result-object v1

    .line 756
    invoke-virtual {v0}, Ldq;->a()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 757
    sget v0, LcY;->sharing_option_anyone_from_with_link:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    .line 759
    :cond_62
    sget v0, LcY;->sharing_option_anyone_from:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    .line 762
    :cond_6d
    invoke-virtual {v0}, Ldq;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_72
    move-object v0, v1

    goto :goto_2c
.end method

.method private a(LkT;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    .line 383
    invoke-virtual {p1}, LkT;->e()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 385
    invoke-virtual {p1}, LkT;->b()Ljava/util/Date;

    move-result-object v2

    .line 386
    sget v3, LcY;->preview_general_info_modified:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 389
    return-object v0
.end method

.method private a()LkT;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 835
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LhB;

    invoke-interface {v0}, LhB;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_19
    move-object v0, v1

    .line 854
    :cond_1a
    :goto_1a
    return-object v0

    .line 840
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Llu;

    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LhB;

    invoke-interface {v2}, LhB;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v2

    .line 841
    if-nez v2, :cond_32

    .line 842
    const-string v0, "PreviewFragment"

    const-string v2, "Failed to load the account object"

    invoke-static {v0, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 843
    goto :goto_1a

    .line 847
    :cond_32
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    .line 848
    iget-object v3, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Llu;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v2, v0}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v0

    .line 849
    if-nez v0, :cond_1a

    .line 850
    const-string v0, "PreviewFragment"

    const-string v2, "Failed to load the Entry"

    invoke-static {v0, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 851
    goto :goto_1a
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/PreviewFragment;)LkT;
    .registers 2
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()LkT;

    move-result-object v0

    return-object v0
.end method

.method private a(LHS;)V
    .registers 2
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LHS;

    .line 553
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->q()V

    .line 554
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 270
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 271
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    return-void
.end method

.method private a(Landroid/widget/QuickContactBadge;LPm;LPh;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 816
    if-eqz p3, :cond_23

    invoke-interface {p3}, LPh;->a()Ljava/lang/String;

    move-result-object v0

    .line 818
    :goto_6
    sget v1, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:I

    invoke-virtual {p1, v1}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 819
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 820
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 822
    :cond_15
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/QuickContactBadge;->setMode(I)V

    .line 823
    if-eqz p3, :cond_22

    .line 824
    invoke-interface {p3}, LPh;->a()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, LPm;->a(Landroid/widget/ImageView;J)V

    .line 826
    :cond_22
    return-void

    .line 816
    :cond_23
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private a(Landroid/widget/TextView;ILjava/util/Date;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 405
    if-eqz p3, :cond_25

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    if-eqz p3, :cond_27

    .line 407
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    :goto_24
    return-void

    .line 405
    :cond_25
    const/4 v0, 0x4

    goto :goto_4

    .line 413
    :cond_27
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_24
.end method

.method static synthetic a(Lcom/google/android/apps/docs/fragment/PreviewFragment;)V
    .registers 1
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->r()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/PreviewFragment;LHS;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(LHS;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/PreviewFragment;LkT;Z)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->b(LkT;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/PreviewFragment;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->g(Z)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 625
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 626
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 627
    check-cast v0, Lcom/google/android/apps/docs/fragment/CustomFocusRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/fragment/CustomFocusRelativeLayout;->setNextFocusLeftEnabled(Z)V

    goto :goto_5

    .line 629
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/CheckBox;

    move-object v1, v0

    .line 630
    :goto_25
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_53

    .line 631
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 632
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 633
    invoke-static {p1}, LaiT;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/fragment/CustomFocusRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/fragment/CustomFocusRelativeLayout;->setNextFocusDownEnabled(Z)V

    .line 637
    :goto_4e
    return-void

    .line 629
    :cond_4f
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    move-object v1, v0

    goto :goto_25

    .line 635
    :cond_53
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setNextFocusDownId(I)V

    goto :goto_4e
.end method

.method private static a(Ljava/util/List;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 640
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 641
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    :cond_9
    return-void
.end method

.method private a(LkT;)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 396
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LeZ;

    sget-object v2, LeV;->j:LeV;

    invoke-interface {v1, v2}, LeZ;->a(LeV;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p1}, LkT;->i()Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    .line 397
    :goto_12
    if-eqz v1, :cond_2a

    .line 398
    :goto_14
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 400
    invoke-virtual {p1}, LkT;->g()Z

    move-result v0

    .line 401
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 402
    return-void

    :cond_28
    move v1, v0

    .line 396
    goto :goto_12

    .line 397
    :cond_2a
    const/16 v0, 0x8

    goto :goto_14
.end method

.method private a(LkT;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 422
    if-eqz p2, :cond_6

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/graphics/Bitmap;

    .line 425
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/view/ThumbnailView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/view/ThumbnailView;->setEntry(LkT;)V

    .line 428
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(LkT;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 429
    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->b(LkT;Z)V

    .line 435
    :goto_19
    return-void

    .line 430
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_28

    if-nez p2, :cond_28

    .line 431
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/view/ThumbnailView;->setImage(Landroid/graphics/Bitmap;Z)V

    goto :goto_19

    .line 433
    :cond_28
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->b(LkT;)V

    goto :goto_19
.end method

.method private a(LkT;)Z
    .registers 3
    .parameter

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, LXH;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {p1}, LkT;->o()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/fragment/PreviewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lck;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 909
    sget v0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->b:I

    .line 910
    sget v1, Lcom/google/android/apps/docs/fragment/PreviewFragment;->b:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/apps/docs/fragment/PreviewFragment;->b:I

    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddCollaboratorTextDialogFragment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(LQC;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 776
    invoke-virtual {p1}, LQC;->a()Ldq;

    move-result-object v0

    .line 779
    sget-object v1, LHR;->a:[I

    invoke-virtual {v0}, Ldq;->a()Ldx;

    move-result-object v2

    invoke-virtual {v2}, Ldx;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_6a

    .line 806
    sget v0, LcY;->sharing_option_unknown:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 809
    :goto_1b
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(LQC;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 810
    const-string v0, ""

    .line 812
    :cond_27
    return-object v0

    .line 781
    :pswitch_28
    invoke-virtual {v0}, Ldq;->a()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 782
    sget v0, LcY;->sharing_option_anyone_with_link_description:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 784
    :cond_35
    sget v0, LcY;->sharing_option_anyone_description:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 788
    :pswitch_3c
    invoke-virtual {v0}, Ldq;->b()Ljava/lang/String;

    move-result-object v1

    .line 790
    invoke-virtual {v0}, Ldq;->a()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 791
    sget v0, LcY;->sharing_option_anyone_from_with_link_description:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 793
    :cond_51
    sget v0, LcY;->sharing_option_anyone_from_description:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 798
    :pswitch_5c
    invoke-virtual {p1}, LQC;->a()LPh;

    move-result-object v0

    .line 799
    if-eqz v0, :cond_67

    .line 800
    invoke-interface {v0}, LPh;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 802
    :cond_67
    const-string v0, ""

    goto :goto_1b

    .line 779
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_28
        :pswitch_3c
        :pswitch_5c
        :pswitch_5c
    .end packed-switch
.end method

.method private b(LkT;)V
    .registers 8
    .parameter

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->p()V

    .line 448
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/view/ThumbnailView;->a()V

    .line 450
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 452
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laac;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Laac;

    .line 453
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Laac;

    invoke-virtual {p1}, LkT;->a()Lld;

    move-result-object v2

    new-instance v3, LXu;

    iget-object v4, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    invoke-virtual {v4}, Lcom/google/android/apps/docs/view/ThumbnailView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    invoke-virtual {v5}, Lcom/google/android/apps/docs/view/ThumbnailView;->getMeasuredHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, LXu;-><init>(II)V

    new-instance v4, LHK;

    invoke-direct {v4, p0, v1, p1}, LHK;-><init>(Lcom/google/android/apps/docs/fragment/PreviewFragment;Landroid/os/Handler;LkT;)V

    invoke-interface {v0, v2, v3, v4}, Laac;->a(Lld;LXu;Laad;)V

    .line 478
    return-void
.end method

.method private b(LkT;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 438
    if-nez p1, :cond_3

    .line 444
    :goto_2
    return-void

    .line 441
    :cond_3
    invoke-virtual {p1}, LkT;->a()LkU;

    move-result-object v0

    invoke-virtual {v0}, LkU;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LkT;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LkT;->d()Z

    move-result v2

    invoke-static {v0, v1, v2}, LkT;->b(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 443
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/apps/docs/view/ThumbnailView;->setIcon(IZ)V

    goto :goto_2
.end method

.method private b(Z)V
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 349
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()LkT;

    move-result-object v1

    .line 350
    if-nez v1, :cond_8

    .line 380
    :goto_7
    return-void

    .line 354
    :cond_8
    if-eqz p1, :cond_14

    .line 355
    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LdE;

    const-string v3, "tabletDoclist"

    const-string v4, "previewEntryEvent"

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v0, v5}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 359
    :cond_14
    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->c:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(LkT;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    invoke-virtual {v1}, LkT;->b()Ljava/lang/Long;

    move-result-object v2

    .line 362
    if-nez v2, :cond_66

    .line 364
    :goto_23
    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->d:Landroid/widget/TextView;

    sget v3, LcY;->preview_general_info_modified_by_me:I

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Landroid/widget/TextView;ILjava/util/Date;)V

    .line 367
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->e:Landroid/widget/TextView;

    sget v2, LcY;->preview_general_info_opened_by_me:I

    invoke-virtual {v1}, LkT;->c()Ljava/util/Date;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Landroid/widget/TextView;ILjava/util/Date;)V

    .line 370
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, LkT;->a()LkU;

    move-result-object v2

    invoke-virtual {v2}, LkU;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, LkT;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, LkT;->d()Z

    move-result v4

    invoke-static {v2, v3, v4}, LkT;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, LkT;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(LkT;)V

    .line 376
    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(LkT;Z)V

    .line 377
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->g(Z)V

    .line 379
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/view/ThumbnailView;->requestFocus()Z

    goto :goto_7

    .line 362
    :cond_66
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_23
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/fragment/PreviewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic d(Lcom/google/android/apps/docs/fragment/PreviewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic e(Lcom/google/android/apps/docs/fragment/PreviewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic f(Lcom/google/android/apps/docs/fragment/PreviewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic g(Lcom/google/android/apps/docs/fragment/PreviewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lck;

    return-object v0
.end method

.method private g(Z)V
    .registers 6
    .parameter

    .prologue
    .line 492
    if-nez p1, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    invoke-interface {v0}, LQm;->c()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 493
    sget-object v0, LHS;->b:LHS;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(LHS;)V

    .line 549
    :cond_13
    :goto_13
    return-void

    .line 497
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    if-eqz v0, :cond_1d

    .line 498
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    invoke-interface {v0}, LQm;->a()V

    .line 501
    :cond_1d
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()LkT;

    move-result-object v1

    .line 502
    if-eqz v1, :cond_13

    .line 506
    sget-object v0, LHS;->c:LHS;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(LHS;)V

    .line 508
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LhB;

    invoke-interface {v0}, LhB;->a()Ljava/lang/String;

    move-result-object v2

    .line 510
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 511
    invoke-virtual {v1}, LkT;->c()Ljava/lang/String;

    move-result-object v1

    .line 514
    iget-object v3, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQo;

    invoke-interface {v3, v2, v0, v1}, LQo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LQm;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    .line 517
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    new-instance v2, LHN;

    invoke-direct {v2, p0, v0}, LHN;-><init>(Lcom/google/android/apps/docs/fragment/PreviewFragment;Ljava/lang/String;)V

    invoke-interface {v1, v2}, LQm;->a(LQn;)V

    goto :goto_13
.end method

.method private g()Z
    .registers 2

    .prologue
    .line 829
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()LkT;

    move-result-object v0

    .line 831
    if-eqz v0, :cond_e

    invoke-virtual {v0}, LkT;->k()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static synthetic h(Lcom/google/android/apps/docs/fragment/PreviewFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lck;

    return-object v0
.end method

.method private p()V
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Laac;

    if-eqz v0, :cond_c

    .line 482
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Laac;

    invoke-interface {v0}, Laac;->a()V

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Laac;

    .line 485
    :cond_c
    return-void
.end method

.method private q()V
    .registers 10

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 557
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 559
    new-instance v6, LPm;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v4, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:I

    invoke-direct {v6, v1, v4}, LPm;-><init>(Landroid/content/Context;I)V

    .line 562
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->g()Z

    move-result v1

    if-nez v1, :cond_9a

    move v1, v2

    .line 563
    :goto_22
    iget-object v4, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    if-nez v4, :cond_9c

    const/4 v4, 0x0

    .line 565
    :goto_27
    if-nez v4, :cond_f4

    .line 566
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 571
    :goto_2d
    iget-object v4, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 573
    iget-object v4, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LHS;

    sget-object v7, LHS;->b:LHS;

    if-ne v4, v7, :cond_bc

    .line 574
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 576
    iget-object v7, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    if-eqz v7, :cond_7b

    iget-object v7, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    invoke-interface {v7}, LQm;->a()Ldv;

    move-result-object v7

    if-eqz v7, :cond_7b

    iget-object v7, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    invoke-interface {v7}, LQm;->a()Ldv;

    move-result-object v7

    sget-object v8, Ldv;->m:Ldv;

    if-eq v7, v8, :cond_7b

    iget-object v7, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    invoke-interface {v7}, LQm;->a()Ldv;

    move-result-object v7

    sget-object v8, Ldv;->n:Ldv;

    if-eq v7, v8, :cond_7b

    .line 579
    iget-object v7, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    invoke-interface {v7}, LQm;->a()Ldv;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    invoke-interface {v8}, LQm;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Ldv;Ljava/lang/String;)LQC;

    move-result-object v7

    .line 581
    iget-object v8, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v0, v8, v6}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(LQC;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;LPm;)Landroid/view/View;

    move-result-object v7

    .line 583
    iget-object v8, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 584
    invoke-static {v4, v7}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Ljava/util/List;Landroid/view/View;)V

    .line 587
    :cond_7b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQC;

    .line 588
    iget-object v8, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0, v8, v6}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(LQC;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;LPm;)Landroid/view/View;

    move-result-object v1

    .line 590
    iget-object v8, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 591
    invoke-static {v4, v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Ljava/util/List;Landroid/view/View;)V

    goto :goto_7f

    :cond_9a
    move v1, v3

    .line 562
    goto :goto_22

    .line 563
    :cond_9c
    iget-object v4, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    invoke-interface {v4}, LQm;->a()Ljava/util/List;

    move-result-object v4

    goto :goto_27

    .line 594
    :cond_a3
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    invoke-interface {v1}, LQm;->b()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 595
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 596
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 597
    invoke-static {v4, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Ljava/util/List;Landroid/view/View;)V

    .line 600
    :cond_b9
    invoke-direct {p0, v4}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Ljava/util/List;)V

    .line 603
    :cond_bc
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LHS;

    sget-object v4, LHS;->c:LHS;

    if-ne v0, v4, :cond_e7

    move v0, v3

    :goto_c5
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 606
    const/4 v0, -0x1

    .line 607
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LHS;

    sget-object v4, LHS;->b:LHS;

    if-ne v1, v4, :cond_e9

    if-eqz v2, :cond_e9

    .line 608
    sget v0, LcY;->sharing_list_may_not_be_completed:I

    .line 613
    :cond_d3
    :goto_d3
    if-ltz v0, :cond_da

    .line 614
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 616
    :cond_da
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->b:Landroid/widget/TextView;

    if-ltz v0, :cond_f2

    :goto_de
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->requestLayout()V

    .line 622
    return-void

    :cond_e7
    move v0, v5

    .line 603
    goto :goto_c5

    .line 609
    :cond_e9
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LHS;

    sget-object v2, LHS;->a:LHS;

    if-ne v1, v2, :cond_d3

    .line 610
    sget v0, LcY;->sharing_list_offline:I

    goto :goto_d3

    :cond_f2
    move v3, v5

    .line 616
    goto :goto_de

    :cond_f4
    move v2, v1

    move-object v1, v4

    goto/16 :goto_2d
.end method

.method private r()V
    .registers 3

    .prologue
    .line 863
    sget-object v0, LHS;->c:LHS;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(LHS;)V

    .line 865
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    new-instance v1, LHQ;

    invoke-direct {v1, p0}, LHQ;-><init>(Lcom/google/android/apps/docs/fragment/PreviewFragment;)V

    invoke-interface {v0, v1}, LQm;->b(LQn;)V

    .line 887
    return-void
.end method


# virtual methods
.method public a()LQm;
    .registers 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    sget v0, LcU;->preview_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 237
    sget v0, LcS;->doc_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/ImageView;

    .line 238
    sget v0, LcS;->thumbnail:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/ThumbnailView;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lcom/google/android/apps/docs/view/ThumbnailView;

    .line 239
    sget v0, LcS;->share_list_progress_bar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/ProgressBar;

    .line 240
    sget v0, LcS;->share_list_warning:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->b:Landroid/widget/TextView;

    .line 241
    sget v0, LcS;->last_modified:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->c:Landroid/widget/TextView;

    .line 242
    sget v0, LcS;->last_modified_by_me:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->d:Landroid/widget/TextView;

    .line 243
    sget v0, LcS;->last_opened_by_me:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->e:Landroid/widget/TextView;

    .line 244
    sget v0, LcS;->preview_close_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->d:Landroid/view/View;

    .line 245
    sget v0, LcS;->pin:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->b:Landroid/widget/LinearLayout;

    .line 246
    sget v0, LcS;->pin_checkbox:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/CheckBox;

    .line 247
    sget v0, LcS;->title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/TextView;

    .line 248
    sget v0, LcS;->title_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->e:Landroid/view/View;

    .line 249
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->e:Landroid/view/View;

    new-instance v2, LHH;

    invoke-direct {v2, p0}, LHH;-><init>(Lcom/google/android/apps/docs/fragment/PreviewFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    sget v0, LcS;->share_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/LinearLayout;

    .line 262
    sget v0, LcS;->offline_title:I

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Landroid/view/View;I)V

    .line 263
    sget v0, LcS;->sharing_title:I

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Landroid/view/View;I)V

    .line 264
    sget v0, LcS;->general_info_title:I

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Landroid/view/View;I)V

    .line 266
    return-object v1
.end method

.method public a(IZI)Landroid/view/animation/Animation;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 942
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 945
    iget-boolean v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Z

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    move v1, v0

    .line 948
    :goto_1a
    const/16 v0, 0x1001

    if-ne p1, v0, :cond_35

    .line 949
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 956
    :goto_23
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 957
    :goto_28
    return-object v0

    .line 945
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcQ;->preview_panel_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    move v1, v0

    goto :goto_1a

    .line 950
    :cond_35
    const/16 v0, 0x2002

    if-ne p1, v0, :cond_3f

    .line 951
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_23

    .line 953
    :cond_3f
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public a()V
    .registers 4

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    invoke-interface {v0}, LQm;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_d

    .line 342
    :cond_c
    :goto_c
    return-void

    .line 340
    :cond_d
    new-instance v0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;-><init>()V

    .line 341
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->a()Lx;

    move-result-object v1

    invoke-static {}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lx;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public a(LQC;)V
    .registers 5
    .parameter

    .prologue
    .line 710
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 711
    invoke-virtual {p1}, LQC;->a()LPh;

    move-result-object v1

    .line 712
    if-nez v1, :cond_c

    .line 721
    :goto_b
    return-void

    .line 715
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v1}, LPh;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;)V

    .line 717
    new-instance v1, Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;

    invoke-direct {v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;-><init>()V

    .line 718
    invoke-virtual {v1, p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;->a(Lcom/google/android/apps/docs/fragment/PreviewFragment;)V

    .line 719
    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;->d(Landroid/os/Bundle;)V

    .line 720
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->a()Lx;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;->a(Lx;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public a(Landroid/app/Activity;)V
    .registers 6
    .parameter

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->a(Landroid/app/Activity;)V

    .line 226
    :try_start_3
    move-object v0, p1

    check-cast v0, LGZ;

    move-object v1, v0

    iput-object v1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LGZ;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_a

    .line 230
    return-void

    .line 227
    :catch_a
    move-exception v1

    .line 228
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement EntryModificationsListener."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 962
    const-string v0, "PreviewFragment"

    const-string v1, "in onCreate"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->a(Landroid/os/Bundle;)V

    .line 964
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->d(Z)V

    .line 965
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 937
    iput-boolean p1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Z

    .line 938
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->b(Z)V

    .line 320
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->b(Landroid/os/Bundle;)V

    .line 280
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->d:Landroid/view/View;

    new-instance v1, LHI;

    invoke-direct {v1, p0}, LHI;-><init>(Lcom/google/android/apps/docs/fragment/PreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lid;

    invoke-interface {v0, p0}, Lid;->a(Lie;)V

    .line 289
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LhB;

    invoke-interface {v0, p0}, LhB;->a(LhC;)V

    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->b(Z)V

    .line 293
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/CheckBox;

    new-instance v1, LHJ;

    invoke-direct {v1, p0}, LHJ;-><init>(Lcom/google/android/apps/docs/fragment/PreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Landroid/widget/CheckBox;

    sget v1, LcR;->state_selector_background:I

    invoke-static {v0, v1}, Laam;->a(Landroid/view/View;I)V

    .line 315
    return-void
.end method

.method public b_()V
    .registers 2

    .prologue
    .line 324
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->b(Z)V

    .line 325
    return-void
.end method

.method public e()V
    .registers 1

    .prologue
    .line 903
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->r()V

    .line 904
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 916
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->f()V

    .line 917
    const-string v0, "PreviewFragment"

    const-string v1, "in onResume"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LHS;

    sget-object v1, LHS;->a:LHS;

    if-ne v0, v1, :cond_14

    .line 921
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->g(Z)V

    .line 923
    :cond_14
    return-void
.end method

.method public f_()V
    .registers 3

    .prologue
    .line 969
    const-string v0, "PreviewFragment"

    const-string v1, "in onDestroyView"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->p()V

    .line 971
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->f_()V

    .line 972
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    .line 927
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 929
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    if-eqz v0, :cond_12

    .line 930
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a:LQm;

    invoke-interface {v0}, LQm;->a()V

    .line 933
    :cond_12
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->g()V

    .line 934
    return-void
.end method

.method public g_()V
    .registers 2

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->b(Z)V

    .line 330
    return-void
.end method
