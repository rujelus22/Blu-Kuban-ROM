.class public Lcom/google/googlenav/ui/view/dialog/ao;
.super Lbd/ai;


# static fields
.field private static final m:Lbb/a;

.field private static final s:[I

.field private static final t:[I


# instance fields
.field protected final d:LaY/aG;

.field protected final k:Lcom/google/googlenav/ui/bw;

.field protected l:Landroid/widget/ListView;

.field private n:Lcom/google/googlenav/ui/android/FlowLayout;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/ViewGroup;

.field private r:LaQ/e;

.field private u:Lcom/google/googlenav/ui/android/LoadingFooterView;

.field private v:Landroid/widget/TextView;

.field private w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x4

    new-instance v0, Lbb/a;

    const/16 v1, 0x2c5

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lbb/a;-><init>(II)V

    sput-object v0, Lcom/google/googlenav/ui/view/dialog/ao;->m:Lbb/a;

    new-array v0, v3, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/google/googlenav/ui/view/dialog/ao;->s:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/google/googlenav/ui/view/dialog/ao;->t:[I

    return-void

    :array_1a
    .array-data 0x4
        0x5dt 0x2t 0xft 0x7ft
        0x5et 0x2t 0xft 0x7ft
        0x5ft 0x2t 0xft 0x7ft
        0x60t 0x2t 0xft 0x7ft
    .end array-data

    :array_26
    .array-data 0x4
        0x61t 0x2t 0xft 0x7ft
        0x62t 0x2t 0xft 0x7ft
        0x63t 0x2t 0xft 0x7ft
        0x64t 0x2t 0xft 0x7ft
    .end array-data
.end method

.method public constructor <init>(LaY/aG;)V
    .registers 4

    const/4 v1, 0x0

    const v0, 0x7f0d001b

    invoke-direct {p0, p1, v0}, Lbd/ai;-><init>(LaY/m;I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->w:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->k:Lcom/google/googlenav/ui/bw;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->v:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/ao;)LaY/m;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->b:LaY/m;

    return-object v0
.end method

.method protected static a(Ljava/lang/String;Lah/g;)Lai/f;
    .registers 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_c
    invoke-interface {p1, v0}, Lah/g;->e(C)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    return-object v0

    :cond_13
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_c
.end method

.method private a(Lcom/google/googlenav/ah;ILcom/google/googlenav/aV;)Lbd/k;
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_10

    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, v2, p3}, Lcom/google/googlenav/ui/view/dialog/ao;->a(ILcom/google/googlenav/aV;)Lcom/google/googlenav/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->af()Z

    move-result v2

    if-nez v2, :cond_2d

    :cond_10
    invoke-virtual {p3}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_34

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0, p3}, Lcom/google/googlenav/ui/view/dialog/ao;->a(ILcom/google/googlenav/aV;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->af()Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v1

    :goto_25
    if-eqz v0, :cond_36

    const/16 v0, 0x484

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_2d
    :goto_2d
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    invoke-static {p1, v0, p2, v2, v1}, Lcom/google/googlenav/ui/view/android/c;->a(Lcom/google/googlenav/ah;Ljava/lang/String;ILaY/aG;I)Lcom/google/googlenav/ui/view/android/c;

    move-result-object v0

    return-object v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_25

    :cond_36
    const/16 v0, 0x483

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d
.end method

.method private a(Lcom/google/googlenav/ah;ZII)Lbd/k;
    .registers 11

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bQ()Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bV()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bU()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_23
    new-array v4, v0, [Ljava/lang/String;

    move v3, v2

    :goto_26
    array-length v0, v4

    if-ge v3, v0, :cond_3d

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bV()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aq;

    invoke-virtual {v0}, Lcom/google/googlenav/aq;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_26

    :cond_3d
    new-array v1, v1, [Ljava/lang/String;

    :goto_3f
    array-length v0, v1

    if-ge v2, v0, :cond_55

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bU()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ap;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_55
    new-instance v0, Lcom/google/googlenav/ui/view/android/bO;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/android/bO;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/bO;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/view/android/bO;->b([Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bO;->c([Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bO;->a(LaJ/B;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-static {p1}, LaY/m;->f(Lcom/google/googlenav/ah;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bO;->a(Z)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/view/android/bO;->b(Z)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/view/android/bO;->b(I)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/googlenav/ui/view/android/bO;->c(I)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->b:LaY/m;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bO;->a(Lcom/google/googlenav/ui/p;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bO;->b()Lcom/google/googlenav/ui/view/android/bN;

    move-result-object v0

    return-object v0

    :cond_91
    move v1, v2

    move v0, v2

    goto :goto_23
.end method

.method private a(ILcom/google/googlenav/aV;)Lcom/google/googlenav/ah;
    .registers 4

    invoke-virtual {p2, p1}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 7

    const/4 v3, 0x0

    invoke-static {p2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v1, Lcom/google/googlenav/ui/bw;->bi:C

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

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

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x17

    if-le v1, v2, :cond_63

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

    :cond_63
    return-object v0
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/View;Ljava/lang/String;)V
    .registers 9

    const/4 v4, 0x0

    const v1, 0x7f03009a

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f016e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/aq;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/aq;-><init>(Lcom/google/googlenav/ui/view/dialog/ao;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0f01f8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->o:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/google/googlenav/aV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->bN:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->o:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->o:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v1, 0x7f0f0170

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/ar;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/ar;-><init>(Lcom/google/googlenav/ui/view/dialog/ao;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/widget/ListView;)V
    .registers 6

    const v0, 0x7f030089

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/LoadingFooterView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    const v1, 0x7f0f01f6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/LoadingFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x233

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/ao;->m()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/widget/ListView;Lcom/google/googlenav/aV;)V
    .registers 9

    const/4 v4, 0x0

    const v0, 0x7f030091

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f0006

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    invoke-virtual {v2, p3}, LaY/aG;->c(Lcom/google/googlenav/aV;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->aL:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0f0211

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->v:Landroid/widget/TextView;

    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Lcom/google/googlenav/aV;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;I)V
    .registers 5

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_14

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method

.method private a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZ)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZLcom/google/googlenav/ba;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZLcom/google/googlenav/ba;)V
    .registers 11

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->ao:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/as;

    invoke-direct {v1, p0, p4, p5, p7}, Lcom/google/googlenav/ui/view/dialog/as;-><init>(Lcom/google/googlenav/ui/view/dialog/ao;IILcom/google/googlenav/ba;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private a(Lcom/google/googlenav/aV;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_7e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->P()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    const/16 v2, 0x1dd

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_41

    invoke-static {v1}, Las/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    const/16 v1, 0x3a8

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->ah()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->ah()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->f()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->ai()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->v:Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/bg;->aM:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    :cond_7e
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/android/FlowLayout;Lcom/google/googlenav/aV;Z)V
    .registers 16

    invoke-virtual {p2}, Lcom/google/googlenav/aV;->aD()[Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x0

    const/4 v7, 0x0

    if-eqz v10, :cond_82

    array-length v2, v10

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_2b

    aget-object v3, v10, v1

    const-string v4, " loc:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4d

    sget-object v1, Lcom/google/googlenav/ui/view/dialog/ao;->t:[I

    aget v2, v1, v0

    const/16 v0, 0x41d

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2d0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZ)V

    const/4 v0, 0x1

    :cond_2b
    const/4 v5, 0x0

    array-length v11, v10

    const/4 v1, 0x0

    move v9, v1

    move v8, v0

    :goto_30
    if-ge v9, v11, :cond_ad

    aget-object v0, v10, v9

    const/4 v1, 0x3

    if-lt v8, v1, :cond_3c

    array-length v1, v10

    add-int/lit8 v1, v1, -0x1

    if-ne v5, v1, :cond_6c

    :cond_3c
    const-string v1, " loc:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_50

    move v0, v7

    move v1, v8

    :goto_47
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v7, v0

    move v8, v1

    goto :goto_30

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_50
    const/4 v7, 0x1

    invoke-virtual {p2}, Lcom/google/googlenav/aV;->J()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v0, Lcom/google/googlenav/ui/view/dialog/ao;->t:[I

    aget v2, v0, v8

    const/16 v4, 0x2c6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZ)V

    add-int/lit8 v0, v8, 0x1

    add-int/lit8 v5, v5, 0x1

    move v1, v0

    move v0, v7

    goto :goto_47

    :cond_6c
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/ao;->t:[I

    add-int/lit8 v9, v8, 0x1

    aget v2, v0, v8

    const/16 v0, 0x41e

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c7

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZ)V

    move v0, v9

    :cond_82
    :goto_82
    if-eqz p3, :cond_9a

    const/4 v1, 0x3

    if-ge v0, v1, :cond_9a

    :goto_87
    const/4 v1, 0x3

    if-ge v0, v1, :cond_9a

    sget-object v1, Lcom/google/googlenav/ui/view/dialog/ao;->t:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/google/googlenav/ui/android/FlowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    :cond_9a
    if-eqz p3, :cond_ac

    if-nez v7, :cond_ac

    sget-object v0, Lcom/google/googlenav/ui/view/dialog/ao;->t:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_ac
    return-void

    :cond_ad
    move v0, v8

    goto :goto_82
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/ao;)LaY/m;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->b:LaY/m;

    return-object v0
.end method

.method private b(Lcom/google/googlenav/ah;ILcom/google/googlenav/aV;)Lbd/k;
    .registers 12

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return-object v4

    :cond_c
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/googlenav/aV;->ap()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aO()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4f

    :goto_20
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    invoke-virtual {v0}, LaY/aG;->bi()Z

    move-result v0

    if-eqz v0, :cond_4d

    const/16 v0, 0x1e2

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    :goto_2e
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bh()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bi()Lcom/google/googlenav/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/e;->a()Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    move-object v4, v0

    :cond_3f
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v5

    new-instance v0, Lcom/google/googlenav/ui/view/android/bt;

    iget-object v7, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/ui/view/android/bt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/f;LaJ/B;ILaY/aG;)V

    move-object v4, v0

    goto :goto_b

    :cond_4d
    move-object v3, v4

    goto :goto_2e

    :cond_4f
    move-object v2, v0

    goto :goto_20
.end method

.method private b(Lcom/google/googlenav/ah;IZI)Lbd/k;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Lcom/google/googlenav/ah;IZI)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bO;->b()Lcom/google/googlenav/ui/view/android/bN;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/view/LayoutInflater;Landroid/widget/ListView;Lcom/google/googlenav/aV;)V
    .registers 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v0, 0x7f0300cc

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f025c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/FlowLayout;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->n:Lcom/google/googlenav/ui/android/FlowLayout;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->n:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-direct {p0, v1, p3, v5}, Lcom/google/googlenav/ui/view/dialog/ao;->b(Lcom/google/googlenav/ui/android/FlowLayout;Lcom/google/googlenav/aV;Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->n:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-direct {p0, v1, p3, v5}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Lcom/google/googlenav/ui/android/FlowLayout;Lcom/google/googlenav/aV;Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->n:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-virtual {v1, v5}, Lcom/google/googlenav/ui/android/FlowLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->n:Lcom/google/googlenav/ui/android/FlowLayout;

    new-instance v2, Lcom/google/googlenav/ui/android/L;

    const/4 v3, 0x2

    sget-object v4, Lcom/google/googlenav/ui/android/K;->b:Lcom/google/googlenav/ui/android/K;

    invoke-direct {v2, v3, v6, v4}, Lcom/google/googlenav/ui/android/L;-><init>(IILcom/google/googlenav/ui/android/K;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/android/FlowLayout;->a(Lcom/google/googlenav/ui/android/L;)V

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p2, v6}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    return-void
.end method

.method private b(Lcom/google/googlenav/ui/android/FlowLayout;Lcom/google/googlenav/aV;Z)V
    .registers 16

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/google/googlenav/aV;->aE()[Lcom/google/googlenav/aY;

    move-result-object v10

    invoke-virtual {p2}, Lcom/google/googlenav/aV;->aF()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_9d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    :goto_11
    if-eqz v10, :cond_5a

    array-length v11, v10

    const/4 v0, 0x0

    move v8, v0

    :goto_16
    if-ge v8, v11, :cond_5a

    aget-object v1, v10, v8

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/google/googlenav/aY;->a()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aY;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->d()Z

    move-result v2

    if-nez v2, :cond_53

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->f()Ljava/lang/String;

    move-result-object v3

    :goto_35
    array-length v2, v10

    if-ge v7, v2, :cond_9b

    const/4 v2, 0x4

    if-ge v7, v2, :cond_9b

    if-eqz v0, :cond_58

    const/4 v6, 0x1

    :goto_3e
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/ao;->s:[I

    aget v2, v0, v7

    invoke-virtual {v1}, Lcom/google/googlenav/aY;->g()I

    move-result v4

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZ)V

    add-int/lit8 v0, v7, 0x1

    :goto_4e
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v7, v0

    goto :goto_16

    :cond_53
    invoke-virtual {v1}, Lcom/google/googlenav/aY;->e()Ljava/lang/String;

    move-result-object v3

    goto :goto_35

    :cond_58
    const/4 v6, 0x0

    goto :goto_3e

    :cond_5a
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aY;

    if-eqz v0, :cond_99

    const/4 v1, 0x4

    if-ge v7, v1, :cond_99

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->e()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/google/googlenav/ui/view/dialog/ao;->s:[I

    add-int/lit8 v8, v7, 0x1

    aget v2, v1, v7

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->g()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZ)V

    move v0, v8

    :goto_80
    if-eqz p3, :cond_98

    const/4 v1, 0x4

    if-ge v0, v1, :cond_98

    :goto_85
    const/4 v1, 0x4

    if-ge v0, v1, :cond_98

    sget-object v1, Lcom/google/googlenav/ui/view/dialog/ao;->s:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/google/googlenav/ui/android/FlowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    :cond_98
    return-void

    :cond_99
    move v0, v7

    goto :goto_80

    :cond_9b
    move v0, v7

    goto :goto_4e

    :cond_9d
    move-object v9, v0

    goto/16 :goto_11
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    invoke-virtual {v1}, LaY/aG;->bQ()Z

    move-result v1

    if-eqz v1, :cond_3a

    move v1, v2

    :goto_11
    if-eqz v1, :cond_3c

    :goto_13
    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/ao;->q:Landroid/view/ViewGroup;

    if-eqz v3, :cond_23

    if-eqz v1, :cond_1e

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/ao;->r:LaQ/e;

    invoke-virtual {v3, p1, v2, v2}, LaQ/e;->a(Ljava/lang/String;ZZ)V

    :cond_1e
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/ao;->q:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v0}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Landroid/view/ViewGroup;I)V

    :cond_23
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/ao;->p:Landroid/widget/TextView;

    if-eqz v2, :cond_39

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->p:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->ar:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    :cond_34
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_39
    return-void

    :cond_3a
    move v1, v0

    goto :goto_11

    :cond_3c
    const/16 v0, 0x8

    goto :goto_13
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/dialog/ao;)LaY/m;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->b:LaY/m;

    return-object v0
.end method

.method private m()V
    .registers 6

    const/4 v4, 0x0

    const/16 v2, 0x8

    const/16 v3, 0xf

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    invoke-virtual {v0}, LaY/aG;->bK()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/LoadingFooterView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_32

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    invoke-virtual {v1}, LaY/aG;->bO()Lbb/F;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/view/dialog/ao;->m:Lbb/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/android/LoadingFooterView;->a(Lbb/F;Lbb/a;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/google/googlenav/ui/android/LoadingFooterView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Landroid/view/ViewGroup;I)V

    :cond_32
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/LoadingFooterView;->requestLayout()V

    :cond_37
    :goto_37
    return-void

    :cond_38
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/LoadingFooterView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0, v4, v4}, Lcom/google/googlenav/ui/android/LoadingFooterView;->a(Lbb/F;Lbb/a;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/google/googlenav/ui/android/LoadingFooterView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->u:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Landroid/view/ViewGroup;I)V

    goto :goto_37
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ah;I)Lai/f;
    .registers 6

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bi()Lcom/google/googlenav/e;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bi()Lcom/google/googlenav/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/e;->a()Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->ai()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p2, -0x1

    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->b:LaY/m;

    invoke-virtual {v0}, LaY/m;->be()Lba/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->c()B

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lba/a;->a(ZBI)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->k:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->i()Lah/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Ljava/lang/String;Lah/g;)Lai/f;

    move-result-object v0

    goto :goto_10
.end method

.method public a(Lcom/google/googlenav/ah;IZLcom/google/googlenav/aV;)Lbd/k;
    .registers 7

    const/16 v1, 0x2bc

    invoke-virtual {p4}, Lcom/google/googlenav/aV;->ay()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p1, p3, p2, v1}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Lcom/google/googlenav/ah;ZII)Lbd/k;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p4}, Lcom/google/googlenav/aV;->aq()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bF()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->af()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->am()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/googlenav/ui/view/dialog/ao;->b(Lcom/google/googlenav/ah;IZI)Lbd/k;

    move-result-object v0

    goto :goto_c

    :cond_2a
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->af()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-direct {p0, p1, p2, p4}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Lcom/google/googlenav/ah;ILcom/google/googlenav/aV;)Lbd/k;

    move-result-object v0

    goto :goto_c

    :cond_35
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->am()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-direct {p0, p1, p2, p4}, Lcom/google/googlenav/ui/view/dialog/ao;->b(Lcom/google/googlenav/ah;ILcom/google/googlenav/aV;)Lbd/k;

    move-result-object v0

    goto :goto_c

    :cond_40
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected a(Lcom/google/googlenav/ah;IZI)Lcom/google/googlenav/ui/view/android/bO;
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Lbd/ai;->a(Lcom/google/googlenav/ah;IZI)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_1b

    const v1, 0x7f0300b8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bO;->d(I)Lcom/google/googlenav/ui/view/android/bO;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Lcom/google/googlenav/ah;I)Lai/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bO;->a(Lai/f;)Lcom/google/googlenav/ui/view/android/bO;

    :cond_1b
    return-object v0
.end method

.method protected a(Lcom/google/googlenav/E;)Ljava/util/List;
    .registers 10

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->as()LaM/f;

    move-result-object v0

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v6

    move v1, v2

    :goto_12
    invoke-interface {p1}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-ge v1, v0, :cond_5a

    invoke-interface {p1, v1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->A()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5b

    invoke-interface {v6, v3}, LaM/i;->a(Ljava/lang/String;)LaM/m;

    move-result-object v3

    if-eqz v3, :cond_54

    invoke-virtual {v3}, LaM/m;->h()Z

    move-result v3

    if-eqz v3, :cond_54

    move v3, v4

    :goto_31
    iget-object v7, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    invoke-virtual {v7}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v7

    invoke-virtual {p0, v0, v1, v3, v7}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Lcom/google/googlenav/ah;IZLcom/google/googlenav/aV;)Lbd/k;

    move-result-object v3

    if-eqz v3, :cond_50

    sget-object v7, Lav/a;->a:Lav/a;

    invoke-virtual {v7}, Lav/a;->d()Z

    move-result v7

    if-eqz v7, :cond_56

    if-ne v1, v4, :cond_56

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->af()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {v5, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_50
    :goto_50
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    :cond_54
    move v3, v2

    goto :goto_31

    :cond_56
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_5a
    return-object v5

    :cond_5b
    move v3, v2

    goto :goto_31
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    if-eqz v0, :cond_1c

    const-string v0, "19"

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    invoke-virtual {v1}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const v0, 0x7f02029f

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    :cond_1c
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->b:LaY/m;

    invoke-virtual {v0}, LaY/m;->ae()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/ao;->b(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public aa_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->b:LaY/m;

    invoke-virtual {v0}, LaY/m;->ae()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->c:Lcom/google/googlenav/ui/view/android/R;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->c:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/R;->a()V

    :cond_11
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 7

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/ao;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030087

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    invoke-virtual {v2}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/aV;->am()Z

    move-result v2

    if-nez v2, :cond_99

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ao()Z

    move-result v2

    if-nez v2, :cond_99

    move v2, v3

    :goto_2d
    const v1, 0x7f0f005a

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->l:Landroid/widget/ListView;

    invoke-virtual {v5}, Lcom/google/googlenav/aV;->am()Z

    move-result v1

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->l:Landroid/widget/ListView;

    invoke-direct {p0, v0, v1, v5}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Landroid/view/LayoutInflater;Landroid/widget/ListView;Lcom/google/googlenav/aV;)V

    :goto_43
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->w:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->w:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/dialog/ao;->setTitle(Ljava/lang/CharSequence;)V

    :cond_50
    invoke-virtual {v5}, Lcom/google/googlenav/aV;->am()Z

    move-result v1

    if-nez v1, :cond_5b

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->l:Landroid/widget/ListView;

    invoke-direct {p0, v0, v1, v5}, Lcom/google/googlenav/ui/view/dialog/ao;->b(Landroid/view/LayoutInflater;Landroid/widget/ListView;Lcom/google/googlenav/aV;)V

    :cond_5b
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->l:Landroid/widget/ListView;

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Landroid/view/LayoutInflater;Landroid/widget/ListView;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/ao;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->c:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    invoke-virtual {v1}, LaY/aG;->E()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->l:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->l:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    const v0, 0x7f0f0071

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    invoke-virtual {v0}, LaY/aG;->bP()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/ao;->b(Ljava/lang/String;)V

    return-object v4

    :cond_99
    move v2, v1

    goto :goto_2d

    :cond_9b
    if-eqz v2, :cond_a5

    invoke-virtual {v5}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v4, v1}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Landroid/view/LayoutInflater;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_43

    :cond_a5
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    invoke-virtual {v1, v5}, LaY/aG;->c(Lcom/google/googlenav/aV;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->w:Ljava/lang/String;

    goto :goto_43
.end method

.method protected e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->w:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .registers 3

    invoke-super {p0}, Lbd/ai;->h()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->l:Landroid/widget/ListView;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    invoke-virtual {v0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->am()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Lcom/google/googlenav/aV;)V

    :cond_16
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/ao;->m()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    invoke-virtual {v1}, LaY/aG;->E()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_24
    return-void
.end method

.method public i()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    invoke-virtual {v0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->b:LaY/m;

    invoke-virtual {v1}, LaY/m;->ae()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->o:Landroid/widget/TextView;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->bN:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    :cond_21
    return-void
.end method

.method public k()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->b:LaY/m;

    invoke-virtual {v0}, LaY/m;->ae()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->n:Lcom/google/googlenav/ui/android/FlowLayout;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    invoke-virtual {v0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/ao;->n:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/googlenav/ui/view/dialog/ao;->b(Lcom/google/googlenav/ui/android/FlowLayout;Lcom/google/googlenav/aV;Z)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/ao;->n:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Lcom/google/googlenav/ui/android/FlowLayout;Lcom/google/googlenav/aV;Z)V

    :cond_1d
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Lbd/ai;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0f0428

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x25c

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const v0, 0x7f0f040d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/view/dialog/ap;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/view/dialog/ap;-><init>(Lcom/google/googlenav/ui/view/dialog/ao;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Landroid/view/MenuItem;Lcom/google/googlenav/actionbar/b;)V

    const/4 v0, 0x1

    goto :goto_e
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ao()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-super {p0, p1, p2}, Lbd/ai;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1f

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->f:Lcom/google/googlenav/ui/p;

    invoke-interface {v1}, Lcom/google/googlenav/ui/p;->o()V

    goto :goto_f

    :cond_1f
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0f0428

    if-ne v1, v2, :cond_30

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->b:LaY/m;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, LaY/m;->a(IILjava/lang/Object;)Z

    goto :goto_f

    :cond_30
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Lbd/ai;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const v0, 0x7f0f040d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ao;->d:LaY/aG;

    invoke-virtual {v1}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_e
.end method
