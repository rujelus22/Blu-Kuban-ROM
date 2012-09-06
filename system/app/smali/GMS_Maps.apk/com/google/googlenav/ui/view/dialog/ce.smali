.class public Lcom/google/googlenav/ui/view/dialog/ce;
.super Lcom/google/googlenav/ui/view/dialog/bC;
.source "SourceFile"


# static fields
.field private static final n:Lcom/google/googlenav/ui/view/a;

.field private static final s:[I

.field private static final t:[I


# instance fields
.field protected final d:LaM/bj;

.field protected final e:Lcom/google/googlenav/ui/bn;

.field protected m:Landroid/widget/ListView;

.field private o:Lcom/google/googlenav/ui/android/FlowLayout;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/ViewGroup;

.field private r:LaC/e;

.field private u:Lcom/google/googlenav/ui/android/LoadingFooterView;

.field private v:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x4

    .line 94
    new-instance v0, Lcom/google/googlenav/ui/view/a;

    const/16 v1, 0x2c5

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/a;-><init>(II)V

    sput-object v0, Lcom/google/googlenav/ui/view/dialog/ce;->n:Lcom/google/googlenav/ui/view/a;

    .line 128
    new-array v0, v3, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/google/googlenav/ui/view/dialog/ce;->s:[I

    .line 132
    new-array v0, v3, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/google/googlenav/ui/view/dialog/ce;->t:[I

    return-void

    .line 128
    :array_1a
    .array-data 0x4
        0x1t 0x0t 0x10t 0x7ft
        0x2t 0x0t 0x10t 0x7ft
        0x3t 0x0t 0x10t 0x7ft
        0x4t 0x0t 0x10t 0x7ft
    .end array-data

    .line 132
    :array_26
    .array-data 0x4
        0x5t 0x0t 0x10t 0x7ft
        0x6t 0x0t 0x10t 0x7ft
        0x7t 0x0t 0x10t 0x7ft
        0x8t 0x0t 0x10t 0x7ft
    .end array-data
.end method

.method public constructor <init>(LaM/bj;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 148
    const v0, 0x7f0f001a

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/dialog/bC;-><init>(LaM/m;I)V

    .line 149
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    .line 150
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->e:Lcom/google/googlenav/ui/bn;

    .line 151
    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    .line 152
    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->v:Landroid/widget/TextView;

    .line 153
    return-void
.end method

.method protected static a(Ljava/lang/String;LS/g;)LT/f;
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 979
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 980
    :goto_c
    invoke-interface {p1, v0}, LS/g;->e(C)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    return-object v0

    .line 979
    :cond_13
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_c
.end method

.method private a(Lcom/google/googlenav/ai;ILcom/google/googlenav/aW;)LaQ/H;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1039
    const/4 v1, 0x0

    .line 1043
    if-eqz p2, :cond_f

    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0, p3}, Lcom/google/googlenav/ui/view/dialog/ce;->a(ILcom/google/googlenav/aW;)Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1044
    :cond_f
    const/16 v0, 0x34

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 1047
    :cond_15
    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/g;->a(Lcom/google/googlenav/ai;Ljava/lang/String;ILaM/bj;IZ)Lcom/google/googlenav/ui/view/android/g;

    move-result-object v0

    return-object v0
.end method

.method private a(ILcom/google/googlenav/aW;)Lcom/google/googlenav/ai;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1096
    invoke-virtual {p2, p1}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 699
    invoke-static {p2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 700
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 701
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 702
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 703
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 707
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v1, Lcom/google/googlenav/ui/bn;->bf:C

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x17

    if-le v1, v2, :cond_63

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 715
    :cond_63
    return-object v0
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/View;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 489
    const v1, 0x7f0400b5

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 492
    const v1, 0x7f10019c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 493
    new-instance v2, Lcom/google/googlenav/ui/view/dialog/cg;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/cg;-><init>(Lcom/google/googlenav/ui/view/dialog/ce;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 501
    const v2, 0x7f100243

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->p:Landroid/widget/TextView;

    .line 502
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->p:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/aV;->bG:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 504
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 505
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->p:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 507
    const v1, 0x7f10019e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 508
    new-instance v2, Lcom/google/googlenav/ui/view/dialog/ch;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/ch;-><init>(Lcom/google/googlenav/ui/view/dialog/ce;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 516
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 517
    return-void
.end method

.method private a(Landroid/view/ViewGroup;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 931
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 932
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 933
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 932
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 935
    :cond_14
    return-void
.end method

.method private a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 833
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZLcom/google/googlenav/bb;Landroid/graphics/drawable/Drawable;)V

    .line 835
    return-void
.end method

.method private a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZLcom/google/googlenav/bb;Landroid/graphics/drawable/Drawable;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 854
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 856
    invoke-static {p3}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/aV;->aq:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 859
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/ci;

    invoke-direct {v1, p0, p4, p5, p7}, Lcom/google/googlenav/ui/view/dialog/ci;-><init>(Lcom/google/googlenav/ui/view/dialog/ce;IILcom/google/googlenav/bb;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 866
    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 867
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 868
    invoke-virtual {v0, p8, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 869
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 870
    return-void
.end method

.method private a(Lcom/google/googlenav/aW;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 539
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_7e

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->R()Ljava/lang/String;

    move-result-object v1

    .line 543
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 544
    const/16 v2, 0x20e

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    :cond_2b
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ag()Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 550
    invoke-static {v1}, Laa/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :cond_41
    const/16 v1, 0x47d

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->aj()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->aj()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->f()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ak()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->v:Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/aV;->aO:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 562
    :cond_7e
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/android/FlowLayout;Lcom/google/googlenav/aW;Z)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 627
    invoke-virtual {p2}, Lcom/google/googlenav/aW;->aG()[Ljava/lang/String;

    move-result-object v10

    .line 628
    const/4 v0, 0x0

    .line 629
    const/4 v7, 0x0

    .line 631
    if-eqz v10, :cond_82

    .line 634
    array-length v2, v10

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_2b

    aget-object v3, v10, v1

    .line 635
    const-string v4, " loc:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4d

    .line 636
    sget-object v1, Lcom/google/googlenav/ui/view/dialog/ce;->t:[I

    aget v2, v1, v0

    const/16 v0, 0x509

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2d0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZ)V

    .line 639
    const/4 v0, 0x1

    .line 648
    :cond_2b
    const/4 v5, 0x0

    .line 649
    array-length v11, v10

    const/4 v1, 0x0

    move v9, v1

    move v8, v0

    :goto_30
    if-ge v9, v11, :cond_ad

    aget-object v0, v10, v9

    .line 650
    const/4 v1, 0x3

    if-lt v8, v1, :cond_3c

    array-length v1, v10

    add-int/lit8 v1, v1, -0x1

    if-ne v5, v1, :cond_6c

    .line 652
    :cond_3c
    const-string v1, " loc:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_50

    move v0, v7

    move v1, v8

    .line 649
    :goto_47
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v7, v0

    move v8, v1

    goto :goto_30

    .line 634
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 655
    :cond_50
    const/4 v7, 0x1

    .line 656
    invoke-virtual {p2}, Lcom/google/googlenav/aW;->L()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 658
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/ce;->t:[I

    aget v2, v0, v8

    const/16 v4, 0x2c6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZ)V

    .line 660
    add-int/lit8 v0, v8, 0x1

    .line 667
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    move v0, v7

    goto :goto_47

    .line 662
    :cond_6c
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/ce;->t:[I

    add-int/lit8 v9, v8, 0x1

    aget v2, v0, v8

    const/16 v0, 0x50a

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c7

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZ)V

    move v0, v9

    .line 676
    :cond_82
    :goto_82
    if-eqz p3, :cond_9a

    const/4 v1, 0x3

    if-ge v0, v1, :cond_9a

    .line 677
    :goto_87
    const/4 v1, 0x3

    if-ge v0, v1, :cond_9a

    .line 678
    sget-object v1, Lcom/google/googlenav/ui/view/dialog/ce;->t:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/google/googlenav/ui/android/FlowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    .line 684
    :cond_9a
    if-eqz p3, :cond_ac

    if-nez v7, :cond_ac

    .line 685
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/ce;->t:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 688
    :cond_ac
    return-void

    :cond_ad
    move v0, v8

    goto :goto_82
.end method

.method private b(Lcom/google/googlenav/ai;ILcom/google/googlenav/aW;)LaQ/H;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1061
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v1

    .line 1062
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1088
    :goto_b
    return-object v4

    .line 1068
    :cond_c
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bn()Ljava/lang/String;

    move-result-object v0

    .line 1069
    invoke-virtual {p3}, Lcom/google/googlenav/aW;->ar()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1071
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aO()Ljava/lang/String;

    move-result-object v2

    .line 1072
    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 1077
    :goto_20
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    invoke-virtual {v0}, LaM/bj;->bf()Z

    move-result v0

    if-eqz v0, :cond_4d

    const/16 v0, 0x213

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 1081
    :goto_2e
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bo()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1084
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bp()Lcom/google/googlenav/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/e;->a()LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    move-object v4, v0

    .line 1087
    :cond_3f
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v5

    .line 1088
    new-instance v0, Lcom/google/googlenav/ui/view/android/bc;

    iget-object v7, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/ui/view/android/bc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LT/f;Lat/B;ILaM/bj;)V

    move-object v4, v0

    goto :goto_b

    :cond_4d
    move-object v3, v4

    .line 1077
    goto :goto_2e

    :cond_4f
    move-object v2, v0

    goto :goto_20
.end method

.method private b(Landroid/view/LayoutInflater;Landroid/widget/ListView;Lcom/google/googlenav/aW;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 524
    const v0, 0x7f0400ac

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 526
    const v1, 0x7f10001e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 527
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    invoke-virtual {v2, p3}, LaM/bj;->d(Lcom/google/googlenav/aW;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/aV;->aN:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 529
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    const v1, 0x7f100261

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->v:Landroid/widget/TextView;

    .line 532
    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Lcom/google/googlenav/aW;)V

    .line 533
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 536
    return-void
.end method

.method private b(Lcom/google/googlenav/ui/android/FlowLayout;Lcom/google/googlenav/aW;Z)V
    .registers 22
    .parameter
    .parameter
    .parameter

    .prologue
    .line 724
    const/4 v8, 0x0

    .line 725
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 726
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 728
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlenav/aW;->aH()[Lcom/google/googlenav/aZ;

    move-result-object v10

    .line 729
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlenav/aW;->aJ()Ljava/util/Map;

    move-result-object v1

    .line 730
    if-nez v1, :cond_185

    .line 731
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v12, v1

    .line 733
    :goto_1b
    if-eqz v10, :cond_68

    .line 734
    array-length v11, v10

    const/4 v1, 0x0

    move v9, v1

    :goto_20
    if-ge v9, v11, :cond_68

    aget-object v15, v10, v9

    .line 735
    invoke-virtual {v15}, Lcom/google/googlenav/aZ;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/aZ;

    .line 737
    if-eqz v1, :cond_61

    invoke-virtual {v1}, Lcom/google/googlenav/aZ;->d()Z

    move-result v2

    if-nez v2, :cond_61

    .line 738
    invoke-virtual {v1}, Lcom/google/googlenav/aZ;->e()Ljava/lang/String;

    move-result-object v4

    .line 742
    :goto_3e
    array-length v2, v10

    if-ge v8, v2, :cond_182

    const/4 v2, 0x4

    if-ge v8, v2, :cond_182

    .line 743
    if-eqz v1, :cond_66

    const/4 v7, 0x1

    .line 744
    :goto_47
    sget-object v1, Lcom/google/googlenav/ui/view/dialog/ce;->s:[I

    aget v3, v1, v8

    invoke-virtual {v15}, Lcom/google/googlenav/aZ;->f()I

    move-result v5

    const/4 v6, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZ)V

    .line 746
    add-int/lit8 v1, v8, 0x1

    .line 747
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    :goto_5c
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v8, v1

    goto :goto_20

    .line 740
    :cond_61
    invoke-virtual {v15}, Lcom/google/googlenav/aZ;->b()Ljava/lang/String;

    move-result-object v4

    goto :goto_3e

    .line 743
    :cond_66
    const/4 v7, 0x0

    goto :goto_47

    .line 754
    :cond_68
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 755
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlenav/aW;->aK()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_7a

    .line 756
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlenav/aW;->aK()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 759
    :cond_7a
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlenav/aW;->aI()[Lcom/google/googlenav/bb;

    move-result-object v1

    if-eqz v1, :cond_17f

    .line 760
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlenav/aW;->aI()[Lcom/google/googlenav/bb;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v1, 0x0

    move v11, v1

    move v1, v8

    :goto_8c
    move/from16 v0, v17

    if-ge v11, v0, :cond_f8

    aget-object v8, v16, v11

    .line 761
    const/4 v2, 0x4

    if-ge v1, v2, :cond_9c

    .line 762
    invoke-virtual {v8}, Lcom/google/googlenav/bb;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_188

    .line 760
    :cond_9c
    :goto_9c
    :pswitch_9c
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_8c

    .line 764
    :pswitch_a0
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/ui/view/dialog/ce;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 766
    sget-object v2, Lcom/google/googlenav/ui/view/dialog/ce;->s:[I

    add-int/lit8 v10, v1, 0x1

    aget v3, v2, v1

    invoke-virtual {v8}, Lcom/google/googlenav/bb;->b()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2d6

    const/4 v6, -0x1

    invoke-interface {v15, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZLcom/google/googlenav/bb;Landroid/graphics/drawable/Drawable;)V

    .line 770
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v10

    .line 771
    goto :goto_9c

    .line 774
    :pswitch_cc
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/ui/view/dialog/ce;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 776
    sget-object v2, Lcom/google/googlenav/ui/view/dialog/ce;->s:[I

    add-int/lit8 v10, v1, 0x1

    aget v3, v2, v1

    invoke-virtual {v8}, Lcom/google/googlenav/bb;->b()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2d6

    const/4 v6, -0x1

    invoke-interface {v15, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZLcom/google/googlenav/bb;Landroid/graphics/drawable/Drawable;)V

    .line 780
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v10

    goto :goto_9c

    :cond_f8
    move v2, v1

    .line 787
    :goto_f9
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/googlenav/aZ;

    .line 788
    if-eqz v8, :cond_17d

    const/4 v1, 0x4

    if-ge v2, v1, :cond_17d

    .line 789
    invoke-virtual {v8}, Lcom/google/googlenav/aZ;->b()Ljava/lang/String;

    move-result-object v4

    .line 790
    sget-object v1, Lcom/google/googlenav/ui/view/dialog/ce;->s:[I

    add-int/lit8 v9, v2, 0x1

    aget v3, v1, v2

    invoke-virtual {v8}, Lcom/google/googlenav/aZ;->f()I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZ)V

    .line 792
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v9

    .line 799
    :goto_125
    if-eqz p3, :cond_13f

    const/4 v2, 0x4

    if-ge v1, v2, :cond_13f

    .line 800
    :goto_12a
    const/4 v2, 0x4

    if-ge v1, v2, :cond_13f

    .line 801
    sget-object v2, Lcom/google/googlenav/ui/view/dialog/ce;->s:[I

    aget v2, v2, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/FlowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 800
    add-int/lit8 v1, v1, 0x1

    goto :goto_12a

    .line 807
    :cond_13f
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    .line 808
    const/4 v1, 0x0

    const-string v3, "df"

    invoke-static {v3, v13}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 810
    const/4 v1, 0x1

    const-string v3, "do"

    invoke-static {v3, v14}, Lcom/google/googlenav/aW;->b(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 812
    const/4 v3, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "u"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_17a

    const-string v1, "=1"

    :goto_164
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 815
    const/16 v1, 0x6f

    const-string v3, "fi"

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 818
    return-void

    .line 812
    :cond_17a
    const-string v1, "=0"

    goto :goto_164

    :cond_17d
    move v1, v2

    goto :goto_125

    :cond_17f
    move v2, v8

    goto/16 :goto_f9

    :cond_182
    move v1, v8

    goto/16 :goto_5c

    :cond_185
    move-object v12, v1

    goto/16 :goto_1b

    .line 762
    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_9c
        :pswitch_cc
    .end packed-switch
.end method

.method private b(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 941
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    invoke-virtual {v1}, LaM/bj;->bR()Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v2

    .line 942
    :goto_11
    if-eqz v1, :cond_26

    .line 944
    :goto_13
    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/ce;->q:Landroid/view/ViewGroup;

    if-eqz v3, :cond_23

    .line 945
    if-eqz v1, :cond_1e

    .line 946
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->r:LaC/e;

    invoke-virtual {v1, p1, v2, v2}, LaC/e;->a(Ljava/lang/String;ZZ)V

    .line 948
    :cond_1e
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->q:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Landroid/view/ViewGroup;I)V

    .line 950
    :cond_23
    return-void

    :cond_24
    move v1, v0

    .line 941
    goto :goto_11

    .line 942
    :cond_26
    const/16 v0, 0x8

    goto :goto_13
.end method

.method private n()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0x8

    const/16 v3, 0xf

    const/4 v1, 0x1

    .line 903
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    if-eqz v0, :cond_37

    .line 904
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    invoke-virtual {v0}, LaM/bj;->bM()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 907
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/LoadingFooterView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_32

    .line 908
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    invoke-virtual {v1}, LaM/bj;->bQ()Lcom/google/googlenav/ui/view/K;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/view/dialog/ce;->n:Lcom/google/googlenav/ui/view/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/android/LoadingFooterView;->setViewportListener(Lcom/google/googlenav/ui/view/K;Lcom/google/googlenav/ui/view/a;)V

    .line 910
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/google/googlenav/ui/android/LoadingFooterView;->setPadding(IIII)V

    .line 911
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Landroid/view/ViewGroup;I)V

    .line 916
    :cond_32
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/LoadingFooterView;->requestLayout()V

    .line 924
    :cond_37
    :goto_37
    return-void

    .line 917
    :cond_38
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/LoadingFooterView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_37

    .line 918
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0, v4, v4}, Lcom/google/googlenav/ui/android/LoadingFooterView;->setViewportListener(Lcom/google/googlenav/ui/view/K;Lcom/google/googlenav/ui/view/a;)V

    .line 919
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/google/googlenav/ui/android/LoadingFooterView;->setPadding(IIII)V

    .line 921
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Landroid/view/ViewGroup;I)V

    goto :goto_37
.end method


# virtual methods
.method public P_()V
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->b:LaM/m;

    invoke-virtual {v0}, LaM/m;->ae()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->c:Lcom/google/googlenav/ui/view/android/L;

    if-eqz v0, :cond_11

    .line 343
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->c:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/L;->a()V

    .line 345
    :cond_11
    return-void
.end method

.method protected a(Lcom/google/googlenav/ai;I)LT/f;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1013
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bp()Lcom/google/googlenav/e;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1016
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bp()Lcom/google/googlenav/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/e;->a()LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 1027
    :goto_10
    return-object v0

    .line 1021
    :cond_11
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ae()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p2, -0x1

    .line 1022
    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->b:LaM/m;

    invoke-virtual {v0}, LaM/m;->bb()LaO/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->c()B

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, LaO/a;->a(ZBI)C

    move-result v0

    .line 1024
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->e:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bn;->i()LS/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Ljava/lang/String;LS/g;)LT/f;

    move-result-object v0

    goto :goto_10
.end method

.method protected a(Lcom/google/googlenav/ai;IZ)LaQ/H;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 985
    const/16 v0, 0x2bc

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/googlenav/ui/view/dialog/ce;->b(Lcom/google/googlenav/ai;IZI)LaQ/H;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ai;IZLcom/google/googlenav/aW;)LaQ/H;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 965
    invoke-virtual {p4}, Lcom/google/googlenav/aW;->as()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bK()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ai()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 967
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Lcom/google/googlenav/ai;IZ)LaQ/H;

    move-result-object v0

    .line 973
    :goto_1c
    return-object v0

    .line 968
    :cond_1d
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 969
    invoke-direct {p0, p1, p2, p4}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Lcom/google/googlenav/ai;ILcom/google/googlenav/aW;)LaQ/H;

    move-result-object v0

    goto :goto_1c

    .line 970
    :cond_28
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ai()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 971
    invoke-direct {p0, p1, p2, p4}, Lcom/google/googlenav/ui/view/dialog/ce;->b(Lcom/google/googlenav/ai;ILcom/google/googlenav/aW;)LaQ/H;

    move-result-object v0

    goto :goto_1c

    .line 973
    :cond_33
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method protected a(Lcom/google/googlenav/ai;IZI)Lcom/google/googlenav/ui/view/android/bK;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1001
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/googlenav/ui/view/dialog/bC;->a(Lcom/google/googlenav/ai;IZI)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    .line 1003
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1005
    const v1, 0x7f0400d6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bK;->c(I)Lcom/google/googlenav/ui/view/android/bK;

    .line 1006
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Lcom/google/googlenav/ai;I)LT/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bK;->a(LT/f;)Lcom/google/googlenav/ui/view/android/bK;

    .line 1008
    :cond_1b
    return-object v0
.end method

.method protected a(Lcom/google/googlenav/F;)Ljava/util/List;
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 349
    invoke-interface {p1}, Lcom/google/googlenav/F;->f()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Lcom/google/googlenav/F;III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/googlenav/F;III)Ljava/util/List;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 370
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 373
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->al()Lax/m;

    move-result-object v0

    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v5

    .line 375
    :goto_11
    if-ge p2, p3, :cond_56

    .line 376
    invoke-interface {p1, p2}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 378
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->B()Ljava/lang/String;

    move-result-object v1

    .line 379
    if-eqz v1, :cond_57

    .line 380
    invoke-interface {v5, v1}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v1

    .line 381
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Lax/A;->n()Z

    move-result v1

    if-eqz v1, :cond_50

    move v1, v2

    .line 384
    :goto_2c
    add-int v6, p2, p4

    .line 385
    iget-object v7, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    invoke-virtual {v7}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v7

    invoke-virtual {p0, v0, v6, v1, v7}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Lcom/google/googlenav/ai;IZLcom/google/googlenav/aW;)LaQ/H;

    move-result-object v1

    .line 387
    if-eqz v1, :cond_4d

    .line 391
    sget-object v6, Laf/a;->a:Laf/a;

    invoke-virtual {v6}, Laf/a;->d()Z

    move-result v6

    if-eqz v6, :cond_52

    if-ne p2, v2, :cond_52

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 392
    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 375
    :cond_4d
    :goto_4d
    add-int/lit8 p2, p2, 0x1

    goto :goto_11

    :cond_50
    move v1, v3

    .line 381
    goto :goto_2c

    .line 394
    :cond_52
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 398
    :cond_56
    return-object v4

    :cond_57
    move v1, v3

    goto :goto_2c
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 4
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    if-eqz v0, :cond_1c

    const-string v0, "19"

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    invoke-virtual {v1}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 234
    const v0, 0x7f020310

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    .line 236
    :cond_1c
    return-void
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/widget/ListView;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 889
    const v0, 0x7f0400a3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/LoadingFooterView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    .line 891
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    const v1, 0x7f100241

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/LoadingFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 892
    const/16 v1, 0x268

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 894
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/ce;->n()V

    .line 895
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 896
    return-void
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/widget/ListView;Lcom/google/googlenav/aW;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 575
    .line 576
    const v0, 0x7f0400e7

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 584
    const v1, 0x7f1002a7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/FlowLayout;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->o:Lcom/google/googlenav/ui/android/FlowLayout;

    .line 585
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->o:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-direct {p0, v1, p3, v2}, Lcom/google/googlenav/ui/view/dialog/ce;->b(Lcom/google/googlenav/ui/android/FlowLayout;Lcom/google/googlenav/aW;Z)V

    .line 586
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->o:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-direct {p0, v1, p3, v2}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Lcom/google/googlenav/ui/android/FlowLayout;Lcom/google/googlenav/aW;Z)V

    move v1, v2

    .line 591
    :goto_21
    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/ce;->o:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_55

    .line 592
    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/ce;->o:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-virtual {v4, v1}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_52

    move v1, v3

    .line 598
    :goto_36
    if-eqz v1, :cond_51

    .line 599
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->o:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/android/FlowLayout;->setVisibility(I)V

    .line 602
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->o:Lcom/google/googlenav/ui/android/FlowLayout;

    new-instance v4, Lcom/google/googlenav/ui/android/Z;

    const/4 v5, 0x2

    sget-object v6, Lcom/google/googlenav/ui/android/Y;->b:Lcom/google/googlenav/ui/android/Y;

    invoke-direct {v4, v5, v3, v6}, Lcom/google/googlenav/ui/android/Z;-><init>(IILcom/google/googlenav/ui/android/Y;)V

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/android/FlowLayout;->setParams(Lcom/google/googlenav/ui/android/Z;)V

    .line 608
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 609
    invoke-virtual {p2, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 611
    :cond_51
    return-void

    .line 591
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_55
    move v1, v2

    goto :goto_36
.end method

.method protected a(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/ce;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 185
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    invoke-virtual {v0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v2

    .line 187
    invoke-virtual {v2}, Lcom/google/googlenav/aW;->ao()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x1

    .line 193
    :goto_1b
    invoke-virtual {v2}, Lcom/google/googlenav/aW;->ao()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 194
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->m:Landroid/widget/ListView;

    invoke-direct {p0, v1, v0, v2}, Lcom/google/googlenav/ui/view/dialog/ce;->b(Landroid/view/LayoutInflater;Landroid/widget/ListView;Lcom/google/googlenav/aW;)V

    .line 200
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/ce;->w_()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 202
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/ce;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    :cond_33
    return-void

    .line 187
    :cond_34
    const/4 v0, 0x0

    goto :goto_1b

    .line 195
    :cond_36
    if-eqz v0, :cond_26

    .line 196
    invoke-virtual {v2}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, p1, v0}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Landroid/view/LayoutInflater;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_26
.end method

.method public a(Lcom/google/googlenav/aW;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->b:LaM/m;

    invoke-virtual {v0}, LaM/m;->ae()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->c:Lcom/google/googlenav/ui/view/android/L;

    if-eqz v0, :cond_42

    .line 428
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->f()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Lcom/google/googlenav/F;III)Ljava/util/List;

    move-result-object v0

    .line 430
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    .line 431
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/ce;->c:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_19

    .line 434
    :cond_2b
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    invoke-virtual {v0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lcom/google/googlenav/aW;->ao()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 436
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Lcom/google/googlenav/aW;)V

    .line 439
    :cond_3a
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/ce;->n()V

    .line 440
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->c:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/L;->notifyDataSetChanged()V

    .line 442
    :cond_42
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->b:LaM/m;

    invoke-virtual {v0}, LaM/m;->ae()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 480
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/ce;->b(Ljava/lang/String;)V

    .line 482
    :cond_b
    return-void
.end method

.method protected a(ILandroid/view/MenuItem;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 322
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->as()Z

    move-result v2

    if-nez v2, :cond_d

    .line 331
    :cond_c
    :goto_c
    return v0

    .line 327
    :cond_d
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f1004ca

    if-ne v2, v3, :cond_c

    .line 328
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->b:LaM/m;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaM/m;->a(IILjava/lang/Object;)Z

    move v0, v1

    .line 329
    goto :goto_c
.end method

.method public a(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 307
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_c

    .line 309
    const/4 v0, 0x0

    .line 317
    :goto_b
    return v0

    .line 313
    :cond_c
    const v0, 0x7f1004b2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 314
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 315
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    invoke-virtual {v1}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x1

    goto :goto_b
.end method

.method protected b(Lcom/google/googlenav/ai;IZI)LaQ/H;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 990
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Lcom/google/googlenav/ai;IZI)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    .line 992
    if-nez v0, :cond_8

    .line 993
    const/4 v0, 0x0

    .line 995
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bK;->a()Lcom/google/googlenav/ui/view/android/bJ;

    move-result-object v0

    goto :goto_7
.end method

.method protected b(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 211
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/ce;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->m:Landroid/widget/ListView;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Landroid/view/LayoutInflater;Landroid/widget/ListView;)V

    .line 215
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/ce;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Landroid/content/Context;I)V

    .line 216
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->c:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    invoke-virtual {v1}, LaM/bj;->F()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 221
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 225
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 226
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 5

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/ce;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 163
    const v0, 0x7f0400a1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 164
    const v0, 0x7f100026

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->m:Landroid/widget/ListView;

    .line 166
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Landroid/view/View;)V

    .line 167
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    invoke-virtual {v0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/google/googlenav/aW;->ao()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 171
    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/ce;->m:Landroid/widget/ListView;

    invoke-virtual {p0, v1, v3, v0}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Landroid/view/LayoutInflater;Landroid/widget/ListView;Lcom/google/googlenav/aW;)V

    .line 174
    :cond_2c
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/view/dialog/ce;->b(Landroid/view/View;)V

    .line 177
    const v0, 0x7f10002e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 178
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    return-object v2
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method protected h()Z
    .registers 2

    .prologue
    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .registers 3

    .prologue
    .line 403
    invoke-super {p0}, Lcom/google/googlenav/ui/view/dialog/bC;->i()V

    .line 405
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->m:Landroid/widget/ListView;

    if-eqz v0, :cond_24

    .line 406
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    invoke-virtual {v0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lcom/google/googlenav/aW;->ao()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 408
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Lcom/google/googlenav/aW;)V

    .line 411
    :cond_16
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/ce;->n()V

    .line 412
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    invoke-virtual {v1}, LaM/bj;->F()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 414
    :cond_24
    return-void
.end method

.method public l()V
    .registers 4

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    invoke-virtual {v0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->b:LaM/m;

    invoke-virtual {v1}, LaM/m;->ae()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->p:Landroid/widget/TextView;

    if-eqz v1, :cond_21

    .line 452
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/aV;->bG:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 455
    :cond_21
    return-void
.end method

.method public m()V
    .registers 4

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->b:LaM/m;

    invoke-virtual {v0}, LaM/m;->ae()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->o:Lcom/google/googlenav/ui/android/FlowLayout;

    if-eqz v0, :cond_1d

    .line 463
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    invoke-virtual {v0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    .line 464
    const/4 v1, 0x1

    .line 468
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/ce;->o:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/googlenav/ui/view/dialog/ce;->b(Lcom/google/googlenav/ui/android/FlowLayout;Lcom/google/googlenav/aW;Z)V

    .line 469
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/ce;->o:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/googlenav/ui/view/dialog/ce;->a(Lcom/google/googlenav/ui/android/FlowLayout;Lcom/google/googlenav/aW;Z)V

    .line 472
    :cond_1d
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter

    .prologue
    .line 245
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_c

    .line 247
    const/4 v0, 0x0

    .line 302
    :goto_b
    return v0

    .line 250
    :cond_c
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/ce;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 251
    const v1, 0x7f11001f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 252
    const v0, 0x7f1004ca

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 253
    const/16 v1, 0x2b6

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 256
    const v0, 0x7f1004b2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 257
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 258
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/view/dialog/cf;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/view/dialog/cf;-><init>(Lcom/google/googlenav/ui/view/dialog/ce;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Landroid/view/MenuItem;Lcom/google/googlenav/actionbar/b;)V

    .line 302
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public w_()Ljava/lang/String;
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    invoke-virtual {v1}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v0, v1}, LaM/bj;->d(Lcom/google/googlenav/aW;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
