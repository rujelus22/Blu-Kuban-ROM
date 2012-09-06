.class public Lcom/google/android/maps/driveabout/app/DirectionsListItem;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lr/ae;


# instance fields
.field private a:Lo/I;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:I

.field private g:Lcom/google/android/maps/driveabout/app/dp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private a()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 111
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a:Lo/I;

    invoke-static {v1, v2}, Lo/k;->a(Landroid/content/Context;Lo/I;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->g:Lcom/google/android/maps/driveabout/app/dp;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a:Lo/I;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/maps/driveabout/app/dp;->b(Lo/I;Lr/ae;)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 115
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a:Lo/I;

    invoke-virtual {v0}, Lo/I;->j()Lo/I;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 116
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->g:Lcom/google/android/maps/driveabout/app/dp;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a:Lo/I;

    invoke-virtual {v2}, Lo/I;->j()Lo/I;

    move-result-object v2

    invoke-virtual {v2}, Lo/I;->e()I

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->f:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/app/dp;->a(II)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 119
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :goto_43
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 124
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a:Lo/I;

    invoke-virtual {v0}, Lo/I;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/L;

    .line 125
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_69

    .line 126
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 128
    :cond_69
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->g:Lcom/google/android/maps/driveabout/app/dp;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/app/dp;->a(Lo/L;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_52

    .line 121
    :cond_73
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_43

    .line 130
    :cond_79
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_8a

    .line 131
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->d:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 132
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :goto_89
    return-void

    .line 134
    :cond_8a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_89
.end method

.method private a(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 95
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 97
    const v1, 0x7f040034

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 99
    const v0, 0x7f1000e4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->b:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f1000e5

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->c:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f1000e6

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->d:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f1000e2

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->e:Landroid/widget/ImageView;

    .line 103
    invoke-static {}, Lcom/google/android/maps/driveabout/app/dp;->a()Lcom/google/android/maps/driveabout/app/dp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->g:Lcom/google/android/maps/driveabout/app/dp;

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DirectionsListItem;)V
    .registers 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a()V

    return-void
.end method


# virtual methods
.method public a(Lr/ac;)V
    .registers 3
    .parameter

    .prologue
    .line 140
    new-instance v0, Lcom/google/android/maps/driveabout/app/aG;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aG;-><init>(Lcom/google/android/maps/driveabout/app/DirectionsListItem;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method

.method public setDistanceUnits(I)V
    .registers 3
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->f:I

    if-eq p1, v0, :cond_9

    .line 79
    iput p1, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->f:I

    .line 80
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a()V

    .line 82
    :cond_9
    return-void
.end method

.method public setHighlighted(Z)V
    .registers 4
    .parameter

    .prologue
    .line 85
    if-eqz p1, :cond_15

    .line 86
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->setBackgroundColor(I)V

    .line 92
    :goto_14
    return-void

    .line 90
    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_14
.end method

.method public setStep(Lo/I;)V
    .registers 3
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a:Lo/I;

    if-eq p1, v0, :cond_9

    .line 69
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a:Lo/I;

    .line 70
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a()V

    .line 72
    :cond_9
    return-void
.end method
