.class public Lcom/google/googlenav/ui/view/dialog/cu;
.super Lcom/google/googlenav/ui/view/dialog/cn;
.source "SourceFile"


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final m:Ljava/lang/String;

.field private n:Z


# direct methods
.method public constructor <init>(IIIILjava/lang/String;Lcom/google/googlenav/ui/wizard/ja;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p6}, Lcom/google/googlenav/ui/view/dialog/cn;-><init>(Lcom/google/googlenav/ui/wizard/ja;)V

    .line 38
    iput p1, p0, Lcom/google/googlenav/ui/view/dialog/cu;->b:I

    .line 39
    iput p2, p0, Lcom/google/googlenav/ui/view/dialog/cu;->c:I

    .line 40
    iput p3, p0, Lcom/google/googlenav/ui/view/dialog/cu;->d:I

    .line 41
    iput p4, p0, Lcom/google/googlenav/ui/view/dialog/cu;->e:I

    .line 43
    invoke-static {p5}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/cu;->n:Z

    .line 44
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/cu;->n:Z

    if-eqz v0, :cond_1e

    .line 45
    const/16 v0, 0x54f

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cu;->m:Ljava/lang/String;

    .line 49
    :goto_1d
    return-void

    .line 47
    :cond_1e
    iput-object p5, p0, Lcom/google/googlenav/ui/view/dialog/cu;->m:Ljava/lang/String;

    goto :goto_1d
.end method

.method private a(Landroid/view/View;II)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    const v0, 0x7f100406

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    const v1, 0x7f100407

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 112
    const/16 v4, 0x54a

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x54b

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v4, v5}, Lcom/google/googlenav/ui/wizard/ja;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 115
    invoke-static {v5}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_54

    move v4, v3

    .line 116
    :goto_2d
    if-eqz v4, :cond_56

    .line 117
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_32
    const/16 v0, 0x548

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x549

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v0, v5}, Lcom/google/googlenav/ui/wizard/ja;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-static {v5}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    move v0, v3

    .line 125
    :goto_49
    if-eqz v0, :cond_5c

    .line 126
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_4e
    if-nez v4, :cond_52

    if-eqz v0, :cond_60

    :cond_52
    move v0, v3

    :goto_53
    return v0

    :cond_54
    move v4, v2

    .line 115
    goto :goto_2d

    .line 119
    :cond_56
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_32

    :cond_5a
    move v0, v2

    .line 124
    goto :goto_49

    .line 128
    :cond_5c
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4e

    :cond_60
    move v0, v2

    .line 131
    goto :goto_53
.end method

.method private i()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/cu;->d:I

    iget v3, p0, Lcom/google/googlenav/ui/view/dialog/cu;->e:I

    add-int/2addr v0, v3

    if-lez v0, :cond_21

    move v0, v1

    .line 140
    :goto_a
    iget v3, p0, Lcom/google/googlenav/ui/view/dialog/cu;->b:I

    iget v4, p0, Lcom/google/googlenav/ui/view/dialog/cu;->c:I

    add-int/2addr v3, v4

    if-lez v3, :cond_23

    move v3, v1

    .line 142
    :goto_12
    if-eqz v3, :cond_3e

    .line 144
    iget-boolean v3, p0, Lcom/google/googlenav/ui/view/dialog/cu;->n:Z

    if-eqz v3, :cond_28

    .line 145
    if-eqz v0, :cond_25

    const/16 v0, 0x562

    :goto_1c
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_20
    return-object v0

    :cond_21
    move v0, v2

    .line 139
    goto :goto_a

    :cond_23
    move v3, v2

    .line 140
    goto :goto_12

    .line 145
    :cond_25
    const/16 v0, 0x55b

    goto :goto_1c

    .line 148
    :cond_28
    if-eqz v0, :cond_3b

    const/16 v0, 0x561

    :goto_2c
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/cu;->m:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_3b
    const/16 v0, 0x55a

    goto :goto_2c

    .line 154
    :cond_3e
    if-eqz v0, :cond_47

    .line 156
    const/16 v0, 0x55e

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 160
    :cond_47
    const/4 v0, 0x0

    goto :goto_20
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 12

    .prologue
    const/16 v10, 0x8

    .line 53
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/cu;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040192

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 54
    const v0, 0x7f100408

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    const v1, 0x7f100418

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    const v2, 0x7f10041a

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 57
    const v3, 0x7f100419

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 58
    const v3, 0x7f10041b

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 59
    const v4, 0x7f10041c

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 60
    const v4, 0x7f10041d

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 62
    const/16 v8, 0x563

    invoke-static {v8}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/google/googlenav/ui/view/dialog/cu;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/cu;->i()Ljava/lang/String;

    move-result-object v8

    .line 64
    if-nez v8, :cond_b6

    .line 65
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    :goto_5b
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/cu;->b:I

    iget v8, p0, Lcom/google/googlenav/ui/view/dialog/cu;->c:I

    invoke-direct {p0, v6, v0, v8}, Lcom/google/googlenav/ui/view/dialog/cu;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 72
    const/16 v0, 0x560

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cu;->m:Ljava/lang/String;

    sget-object v1, Lcom/google/googlenav/ui/aV;->aR:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v0, v1}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 80
    :goto_75
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/cu;->d:I

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/cu;->e:I

    invoke-direct {p0, v7, v0, v1}, Lcom/google/googlenav/ui/view/dialog/cu;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 81
    const/16 v0, 0x55f

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_88
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/cu;->n:Z

    if-eqz v0, :cond_ce

    const/16 v0, 0x55d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_92
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v4, v0, v1}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 95
    const v0, 0x7f10041e

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 96
    const/16 v1, 0x559

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/cv;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/cv;-><init>(Lcom/google/googlenav/ui/view/dialog/cu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-object v5

    .line 67
    :cond_b6
    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    sget-object v9, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v8, v9}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    goto :goto_5b

    .line 76
    :cond_c0
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_75

    .line 83
    :cond_c7
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_88

    .line 87
    :cond_ce
    const/16 v0, 0x55c

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/cu;->m:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_92
.end method
