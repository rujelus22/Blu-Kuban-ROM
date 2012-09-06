.class public Lcom/google/googlenav/ui/friend/CircleListItem;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040023

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    const v0, 0x7f100033

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/friend/CircleListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->a:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f1000b6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/friend/CircleListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->b:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f1000b5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/friend/CircleListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->c:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f1000b4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/friend/CircleListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->d:Landroid/widget/CheckBox;

    .line 52
    return-void
.end method

.method private a(Lah/s;Lcom/google/googlenav/friend/aF;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/googlenav/friend/aF;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/googlenav/friend/aF;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p2}, Lcom/google/googlenav/friend/aF;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 93
    new-instance v0, Lcom/google/googlenav/friend/aH;

    invoke-virtual {p2}, Lcom/google/googlenav/friend/aF;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/friend/aH;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lah/s;->a(Lcom/google/googlenav/ui/bx;)LS/f;

    move-result-object v0

    .line 96
    :cond_2d
    if-eqz v0, :cond_42

    .line 97
    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    :goto_3a
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 104
    return-void

    .line 100
    :cond_42
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->a:Landroid/widget/ImageView;

    const v1, 0x7f02034f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3a
.end method

.method private a(Lcom/google/googlenav/friend/aF;)V
    .registers 8
    .parameter

    .prologue
    .line 107
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->e()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4c

    .line 109
    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 110
    const/16 v1, 0x3c9

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 113
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, -0x777778

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 117
    :cond_4c
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 123
    return-void
.end method

.method private b(Lcom/google/googlenav/friend/aF;)V
    .registers 4
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 133
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setCheckBoxVisible(Z)V
    .registers 4
    .parameter

    .prologue
    .line 55
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->d:Landroid/widget/CheckBox;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 56
    return-void

    .line 55
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    return-void
.end method

.method public setPostTarget(Lah/s;Lcom/google/googlenav/friend/aF;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-virtual {p2}, Lcom/google/googlenav/friend/aF;->d()Lcom/google/googlenav/friend/aI;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/friend/aI;->a:Lcom/google/googlenav/friend/aI;

    if-ne v0, v1, :cond_c

    .line 78
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/friend/CircleListItem;->a(Lcom/google/googlenav/friend/aF;)V

    .line 84
    :goto_b
    return-void

    .line 79
    :cond_c
    invoke-virtual {p2}, Lcom/google/googlenav/friend/aF;->d()Lcom/google/googlenav/friend/aI;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/friend/aI;->c:Lcom/google/googlenav/friend/aI;

    if-ne v0, v1, :cond_18

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/friend/CircleListItem;->a(Lah/s;Lcom/google/googlenav/friend/aF;)V

    goto :goto_b

    .line 82
    :cond_18
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/friend/CircleListItem;->b(Lcom/google/googlenav/friend/aF;)V

    goto :goto_b
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/CircleListItem;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 61
    return-void
.end method
