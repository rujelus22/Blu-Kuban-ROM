.class public Lcom/anddoes/launcher/Hotseat;
.super Lcom/anddoes/launcher/PagedView;
.source "SourceFile"


# instance fields
.field private a:Lcom/anddoes/launcher/Launcher;

.field private b:Z

.field private c:I

.field private d:I

.field private e:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anddoes/launcher/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/anddoes/launcher/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_22

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lcom/anddoes/launcher/Hotseat;->b:Z

    .line 50
    iget-boolean v0, p0, Lcom/anddoes/launcher/Hotseat;->b:Z

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v0

    if-nez v0, :cond_24

    :goto_1f
    iput-boolean v1, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    .line 51
    return-void

    :cond_22
    move v0, v2

    .line 49
    goto :goto_13

    :cond_24
    move v1, v2

    .line 50
    goto :goto_1f
.end method

.method public static f()Z
    .registers 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final a(I)I
    .registers 3
    .parameter

    .prologue
    .line 131
    if-ltz p1, :cond_d

    invoke-virtual {p0}, Lcom/anddoes/launcher/Hotseat;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_d

    .line 132
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    aget v0, v0, p1

    .line 134
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method final a(II)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/anddoes/launcher/Hotseat;->e()Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->i()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x1

    :cond_f
    return p1
.end method

.method final a(Lcom/anddoes/launcher/CellLayout;II)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Hotseat;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 139
    if-ltz v0, :cond_16

    invoke-virtual {p0}, Lcom/anddoes/launcher/Hotseat;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 140
    iget-object v1, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    aget v0, v1, v0

    invoke-virtual {p0, p2, p3}, Lcom/anddoes/launcher/Hotseat;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final a(IZ)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 259
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/Launcher;)V
    .registers 11
    .parameter

    .prologue
    const/16 v4, 0x3e8

    const/4 v5, 0x2

    const/16 v1, 0x64

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/anddoes/launcher/dr;

    invoke-direct {v0}, Lcom/anddoes/launcher/dr;-><init>()V

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Hotseat;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 55
    iput-object p1, p0, Lcom/anddoes/launcher/Hotseat;->a:Lcom/anddoes/launcher/Launcher;

    .line 56
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->W:Z

    iput-boolean v0, p0, Lcom/anddoes/launcher/Hotseat;->ag:Z

    .line 57
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->X:Z

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Hotseat;->a(Z)V

    .line 58
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget v0, v0, Lcom/anddoes/launcher/preference/f;->Y:I

    iput v0, p0, Lcom/anddoes/launcher/Hotseat;->aj:I

    .line 59
    iput-boolean v2, p0, Lcom/anddoes/launcher/Hotseat;->U:Z

    .line 60
    invoke-virtual {p0}, Lcom/anddoes/launcher/Hotseat;->u()V

    .line 62
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    .line 63
    iget-boolean v0, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v0, :cond_73

    .line 64
    iput v3, p0, Lcom/anddoes/launcher/Hotseat;->c:I

    .line 65
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget v0, v0, Lcom/anddoes/launcher/preference/f;->S:I

    iput v0, p0, Lcom/anddoes/launcher/Hotseat;->d:I

    .line 70
    :goto_43
    invoke-virtual {p0}, Lcom/anddoes/launcher/Hotseat;->removeAllViews()V

    .line 72
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget v0, v0, Lcom/anddoes/launcher/preference/f;->R:I

    packed-switch v0, :pswitch_data_15e

    move v5, v2

    :goto_50
    move v1, v2

    .line 109
    :goto_51
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget v0, v0, Lcom/anddoes/launcher/preference/f;->R:I

    if-lt v1, v0, :cond_140

    .line 115
    invoke-virtual {p0}, Lcom/anddoes/launcher/Hotseat;->h()V

    .line 116
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget v0, v0, Lcom/anddoes/launcher/preference/f;->R:I

    if-le v0, v3, :cond_15b

    :goto_64
    iput-boolean v3, p0, Lcom/anddoes/launcher/Hotseat;->ae:Z

    .line 117
    iput v5, p0, Lcom/anddoes/launcher/Hotseat;->m:I

    .line 118
    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/Hotseat;->m(I)V

    .line 119
    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/Hotseat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 120
    return-void

    .line 67
    :cond_73
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget v0, v0, Lcom/anddoes/launcher/preference/f;->S:I

    iput v0, p0, Lcom/anddoes/launcher/Hotseat;->c:I

    .line 68
    iput v3, p0, Lcom/anddoes/launcher/Hotseat;->d:I

    goto :goto_43

    .line 74
    :pswitch_7e
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    .line 75
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    aput v2, v0, v2

    move v5, v2

    .line 77
    goto :goto_50

    .line 79
    :pswitch_88
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    .line 80
    iget-object v4, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    iget-boolean v0, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v0, :cond_a5

    move v0, v1

    :goto_93
    aput v0, v4, v2

    .line 81
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    iget-boolean v4, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v4, :cond_9c

    move v1, v2

    :cond_9c
    aput v1, v0, v3

    .line 82
    iget-boolean v0, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v0, :cond_a7

    move v0, v3

    :goto_a3
    move v5, v0

    .line 83
    goto :goto_50

    :cond_a5
    move v0, v2

    .line 80
    goto :goto_93

    :cond_a7
    move v0, v2

    .line 82
    goto :goto_a3

    .line 85
    :pswitch_a9
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    .line 86
    iget-object v7, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    iget-boolean v0, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v0, :cond_c5

    move v0, v1

    :goto_b5
    aput v0, v7, v2

    .line 87
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    aput v2, v0, v3

    .line 88
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    iget-boolean v7, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v7, :cond_c7

    :goto_c1
    aput v4, v0, v5

    move v5, v3

    .line 90
    goto :goto_50

    :cond_c5
    move v0, v4

    .line 86
    goto :goto_b5

    :cond_c7
    move v4, v1

    .line 88
    goto :goto_c1

    .line 92
    :pswitch_c9
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    .line 93
    iget-object v7, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    iget-boolean v0, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v0, :cond_fb

    const/16 v0, 0xc8

    :goto_d6
    aput v0, v7, v2

    .line 94
    iget-object v7, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    iget-boolean v0, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v0, :cond_fd

    move v0, v1

    :goto_df
    aput v0, v7, v3

    .line 95
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    iget-boolean v7, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v7, :cond_e8

    move v1, v2

    :cond_e8
    aput v1, v0, v5

    .line 96
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    const/4 v1, 0x3

    iget-boolean v7, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v7, :cond_ff

    :goto_f1
    aput v4, v0, v1

    .line 97
    iget-boolean v0, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v0, :cond_102

    move v0, v5

    :goto_f8
    move v5, v0

    .line 98
    goto/16 :goto_50

    :cond_fb
    move v0, v4

    .line 93
    goto :goto_d6

    :cond_fd
    move v0, v2

    .line 94
    goto :goto_df

    .line 96
    :cond_ff
    const/16 v4, 0xc8

    goto :goto_f1

    :cond_102
    move v0, v3

    .line 97
    goto :goto_f8

    .line 100
    :pswitch_104
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    .line 101
    iget-object v7, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    iget-boolean v0, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v0, :cond_136

    const/16 v0, 0xc8

    :goto_111
    aput v0, v7, v2

    .line 102
    iget-object v7, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    iget-boolean v0, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v0, :cond_139

    move v0, v1

    :goto_11a
    aput v0, v7, v3

    .line 103
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    aput v2, v0, v5

    .line 104
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    const/4 v7, 0x3

    iget-boolean v8, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v8, :cond_13b

    :goto_127
    aput v4, v0, v7

    .line 105
    iget-object v1, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    const/4 v4, 0x4

    iget-boolean v0, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v0, :cond_13d

    const/16 v0, 0x44c

    :goto_132
    aput v0, v1, v4

    goto/16 :goto_50

    .line 101
    :cond_136
    const/16 v0, 0x44c

    goto :goto_111

    :cond_139
    move v0, v4

    .line 102
    goto :goto_11a

    :cond_13b
    move v4, v1

    .line 104
    goto :goto_127

    .line 105
    :cond_13d
    const/16 v0, 0xc8

    goto :goto_132

    .line 110
    :cond_140
    const v0, 0x7f030016

    invoke-virtual {v6, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 111
    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/CellLayout;->a(Z)V

    .line 112
    iget v4, p0, Lcom/anddoes/launcher/Hotseat;->c:I

    iget v7, p0, Lcom/anddoes/launcher/Hotseat;->d:I

    invoke-virtual {v0, v4, v7}, Lcom/anddoes/launcher/CellLayout;->a(II)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Hotseat;->addView(Landroid/view/View;)V

    .line 109
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_51

    :cond_15b
    move v3, v2

    .line 116
    goto/16 :goto_64

    .line 72
    :pswitch_data_15e
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_88
        :pswitch_a9
        :pswitch_c9
        :pswitch_104
    .end packed-switch
.end method

.method final a(Landroid/view/View;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/anddoes/launcher/Hotseat;->getChildCount()I

    move-result v2

    move v1, v0

    .line 178
    :goto_6
    if-lt v1, v2, :cond_9

    .line 183
    :goto_8
    return v0

    .line 179
    :cond_9
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Hotseat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_11

    .line 180
    const/4 v0, 0x1

    goto :goto_8

    .line 178
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method protected final a_(Landroid/view/MotionEvent;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    const/4 v3, 0x0

    const v4, 0x3f060a92

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 212
    iget v2, p0, Lcom/anddoes/launcher/Hotseat;->r:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 213
    iget v0, p0, Lcom/anddoes/launcher/Hotseat;->t:F

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 215
    iget-boolean v0, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v0, :cond_29

    .line 216
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2f

    .line 251
    :cond_28
    :goto_28
    return-void

    .line 220
    :cond_29
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_28

    .line 225
    :cond_2f
    div-float v0, v1, v2

    .line 226
    iget-boolean v3, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v3, :cond_37

    .line 227
    div-float v0, v2, v1

    .line 229
    :cond_37
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 231
    const v1, 0x3f860a92

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_28

    .line 233
    cmpl-float v1, v0, v4

    if-lez v1, :cond_58

    .line 241
    sub-float/2addr v0, v4

    .line 243
    div-float/2addr v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 244
    const/high16 v1, 0x4080

    .line 245
    mul-float/2addr v0, v1

    add-float/2addr v0, v5

    .line 244
    invoke-super {p0, p1, v0, v6}, Lcom/anddoes/launcher/PagedView;->a(Landroid/view/MotionEvent;FZ)V

    goto :goto_28

    .line 249
    :cond_58
    invoke-super {p0, p1, v5, v6}, Lcom/anddoes/launcher/PagedView;->a(Landroid/view/MotionEvent;FZ)V

    goto :goto_28
.end method

.method final d()V
    .registers 4

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/anddoes/launcher/Hotseat;->getChildCount()I

    move-result v2

    .line 124
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-lt v1, v2, :cond_9

    .line 128
    return-void

    .line 125
    :cond_9
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Hotseat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 126
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->removeAllViewsInLayout()V

    .line 124
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method final e()Lcom/anddoes/launcher/CellLayout;
    .registers 3

    .prologue
    .line 146
    iget v0, p0, Lcom/anddoes/launcher/Hotseat;->o:I

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/anddoes/launcher/Hotseat;->o:I

    .line 147
    :goto_8
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Hotseat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    return-object v0

    .line 146
    :cond_f
    iget v0, p0, Lcom/anddoes/launcher/Hotseat;->n:I

    goto :goto_8
.end method

.method final f(I)Lcom/anddoes/launcher/CellLayout;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 151
    move v0, v1

    .line 153
    :goto_2
    invoke-virtual {p0}, Lcom/anddoes/launcher/Hotseat;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_c

    .line 161
    :goto_8
    if-nez v1, :cond_1f

    .line 162
    const/4 v0, 0x0

    .line 164
    :goto_b
    return-object v0

    .line 154
    :cond_c
    iget-object v2, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    aget v2, v2, v0

    if-lt p1, v2, :cond_1c

    iget-object v2, p0, Lcom/anddoes/launcher/Hotseat;->e:[I

    aget v2, v2, v0

    add-int/lit8 v2, v2, 0x64

    if-ge p1, v2, :cond_1c

    .line 155
    const/4 v1, 0x1

    .line 156
    goto :goto_8

    .line 158
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 164
    :cond_1f
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Hotseat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    goto :goto_b
.end method

.method public final g()V
    .registers 1

    .prologue
    .line 255
    return-void
.end method

.method public final h()V
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->Z:Z

    iput-boolean v0, p0, Lcom/anddoes/launcher/Hotseat;->f:Z

    .line 274
    return-void
.end method

.method final i(I)Lcom/anddoes/launcher/CellLayout;
    .registers 4
    .parameter

    .prologue
    .line 168
    iget v0, p0, Lcom/anddoes/launcher/Hotseat;->o:I

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_1c

    iget v0, p0, Lcom/anddoes/launcher/Hotseat;->o:I

    move v1, v0

    .line 169
    :goto_9
    if-nez p1, :cond_20

    const/4 v0, -0x1

    :goto_c
    add-int/2addr v0, v1

    .line 170
    if-ltz v0, :cond_22

    invoke-virtual {p0}, Lcom/anddoes/launcher/Hotseat;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 171
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Hotseat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 173
    :goto_1b
    return-object v0

    .line 168
    :cond_1c
    iget v0, p0, Lcom/anddoes/launcher/Hotseat;->n:I

    move v1, v0

    goto :goto_9

    .line 169
    :cond_20
    const/4 v0, 0x1

    goto :goto_c

    .line 173
    :cond_22
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method final j(I)I
    .registers 3
    .parameter

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    :cond_5
    return p1
.end method

.method final k(I)I
    .registers 4
    .parameter

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/anddoes/launcher/Hotseat;->af:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/anddoes/launcher/Hotseat;->e()Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->i()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, v1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected onMeasure(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-super {p0, p1, p2}, Lcom/anddoes/launcher/PagedView;->onMeasure(II)V

    .line 265
    iget-boolean v0, p0, Lcom/anddoes/launcher/Hotseat;->b:Z

    if-eqz v0, :cond_13

    .line 266
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Hotseat;->al:I

    .line 268
    :cond_13
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    iget v0, v0, Lcom/anddoes/launcher/Workspace;->ac:I

    iput v0, p0, Lcom/anddoes/launcher/Hotseat;->ac:I

    .line 269
    iget-object v0, p0, Lcom/anddoes/launcher/Hotseat;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    iget v0, v0, Lcom/anddoes/launcher/Workspace;->ad:I

    iput v0, p0, Lcom/anddoes/launcher/Hotseat;->ad:I

    .line 270
    return-void
.end method
