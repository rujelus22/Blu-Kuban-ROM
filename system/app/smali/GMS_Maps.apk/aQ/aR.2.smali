.class public LaQ/aR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field protected final a:Lcom/google/googlenav/ai;

.field final b:Ljava/lang/CharSequence;

.field final c:Z

.field final d:Ljava/lang/CharSequence;

.field final e:Z

.field final f:I

.field final g:I

.field final h:LaQ/aS;

.field final i:Z

.field private final j:Lcom/google/googlenav/ui/g;

.field private final k:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ai;LaM/i;IZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, LaQ/aR;->a:Lcom/google/googlenav/ai;

    .line 96
    iput-object p2, p0, LaQ/aR;->j:Lcom/google/googlenav/ui/g;

    .line 97
    iput p3, p0, LaQ/aR;->k:I

    .line 98
    iput-boolean p4, p0, LaQ/aR;->i:Z

    .line 100
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->D()Lat/g;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_5f

    invoke-virtual {p2}, LaM/i;->au()Z

    move-result v0

    if-eqz v0, :cond_5f

    const/4 v0, 0x1

    :goto_18
    iput-boolean v0, p0, LaQ/aR;->c:Z

    .line 104
    const/16 v0, 0x50c

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaQ/aR;->b:Ljava/lang/CharSequence;

    .line 105
    iget-boolean v0, p0, LaQ/aR;->c:Z

    if-eqz v0, :cond_2a

    .line 106
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ai;->o(I)V

    .line 111
    :cond_2a
    invoke-virtual {p2, v1}, LaM/i;->a(Lat/g;)Z

    move-result v0

    iput-boolean v0, p0, LaQ/aR;->e:Z

    .line 112
    const/16 v0, 0xef

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaQ/aR;->d:Ljava/lang/CharSequence;

    .line 113
    invoke-virtual {p2, v1}, LaM/i;->b(Lat/g;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p2, v1}, LaM/i;->c(Lat/g;)Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_44
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 115
    const/16 v0, 0xf

    iput v0, p0, LaQ/aR;->f:I

    .line 116
    const/4 v0, 0x4

    iput v0, p0, LaQ/aR;->g:I

    .line 121
    invoke-static {p1, p2}, LaM/aR;->a(Lcom/google/googlenav/ai;LaM/i;)Ljava/util/List;

    .line 132
    :cond_58
    :goto_58
    invoke-virtual {p0, p2}, LaQ/aR;->a(LaM/i;)LaQ/aS;

    move-result-object v0

    iput-object v0, p0, LaQ/aR;->h:LaQ/aS;

    .line 133
    return-void

    .line 103
    :cond_5f
    const/4 v0, 0x0

    goto :goto_18

    .line 123
    :cond_61
    const/16 v0, 0x25b

    iput v0, p0, LaQ/aR;->f:I

    .line 124
    const/4 v0, -0x1

    iput v0, p0, LaQ/aR;->g:I

    .line 125
    iget-boolean v0, p0, LaQ/aR;->e:Z

    if-eqz v0, :cond_58

    .line 126
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ai;->o(I)V

    goto :goto_58
.end method

.method static synthetic a(LaQ/aR;)Lcom/google/googlenav/ui/g;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, LaQ/aR;->j:Lcom/google/googlenav/ui/g;

    return-object v0
.end method

.method private a(LaQ/aS;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iget-object v1, p1, LaQ/aS;->a:Ljava/lang/CharSequence;

    iget-object v2, p1, LaQ/aS;->b:Ljava/lang/String;

    iget-char v3, p1, LaQ/aS;->c:C

    iget v4, p1, LaQ/aS;->e:I

    iget v5, p1, LaQ/aS;->f:I

    iget-boolean v6, p1, LaQ/aS;->d:Z

    move-object v0, p0

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, LaQ/aR;->a(Ljava/lang/CharSequence;Ljava/lang/String;CIIZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 178
    return-void
.end method

.method private a(Landroid/widget/ImageView;ZC)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    if-eqz p2, :cond_18

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->n()LS/g;

    move-result-object v0

    .line 197
    :goto_a
    invoke-interface {v0, p3}, LS/g;->e(C)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 198
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    return-void

    .line 194
    :cond_18
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->o()LS/g;

    move-result-object v0

    goto :goto_a
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/String;CIIZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-virtual {p8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-static {p2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 184
    invoke-virtual {p7, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 186
    :cond_c
    if-eqz p6, :cond_16

    .line 187
    new-instance v0, LaQ/aU;

    invoke-direct {v0, p0, p4, p5}, LaQ/aU;-><init>(LaQ/aR;II)V

    invoke-virtual {p7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    :cond_16
    invoke-virtual {p7, p6}, Landroid/view/View;->setEnabled(Z)V

    .line 190
    invoke-direct {p0, p9, p6, p3}, LaQ/aR;->a(Landroid/widget/ImageView;ZC)V

    .line 191
    return-void
.end method


# virtual methods
.method protected a(LaM/i;)LaQ/aS;
    .registers 9
    .parameter

    .prologue
    .line 137
    const/16 v0, 0x6a

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    iget-object v0, p0, LaQ/aR;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->I()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 140
    invoke-virtual {p1}, LaM/i;->ba()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/aA;->e()Z

    move-result v4

    .line 141
    if-eqz v4, :cond_26

    .line 142
    iget-object v0, p0, LaQ/aR;->a:Lcom/google/googlenav/ai;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ai;->o(I)V

    .line 148
    :cond_26
    :goto_26
    new-instance v0, LaQ/aS;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-char v3, Lcom/google/googlenav/ui/bn;->aV:C

    const/16 v5, 0x10

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, LaQ/aS;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;CZII)V

    return-object v0

    .line 146
    :cond_35
    const/4 v4, 0x0

    goto :goto_26
.end method

.method public a(Landroid/view/View;)LaQ/bE;
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f100428

    const v4, 0x7f100022

    const/4 v3, 0x0

    .line 203
    new-instance v1, LaQ/aT;

    invoke-direct {v1}, LaQ/aT;-><init>()V

    .line 204
    iget-boolean v0, p0, LaQ/aR;->i:Z

    if-eqz v0, :cond_13

    .line 205
    invoke-static {p1}, LaM/aR;->a(Landroid/view/View;)V

    .line 207
    :cond_13
    const v0, 0x7f100024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, LaQ/aT;->a:Landroid/view/View;

    .line 209
    iget-object v0, v1, LaQ/aT;->a:Landroid/view/View;

    const v2, 0x7f10019c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, LaQ/aT;->b:Landroid/view/View;

    .line 210
    iget-object v0, v1, LaQ/aT;->a:Landroid/view/View;

    const v2, 0x7f10019e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, LaQ/aT;->c:Landroid/view/View;

    .line 211
    iget-object v0, v1, LaQ/aT;->a:Landroid/view/View;

    const v2, 0x7f1001a0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, LaQ/aT;->d:Landroid/view/View;

    .line 213
    iget-object v0, v1, LaQ/aT;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/aT;->e:Landroid/widget/TextView;

    .line 214
    iget-object v0, v1, LaQ/aT;->c:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/aT;->f:Landroid/widget/TextView;

    .line 215
    iget-object v0, v1, LaQ/aT;->d:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/aT;->g:Landroid/widget/TextView;

    .line 217
    iget-object v0, v1, LaQ/aT;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, LaQ/aT;->h:Landroid/widget/ImageView;

    .line 218
    iget-object v0, v1, LaQ/aT;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, LaQ/aT;->i:Landroid/widget/ImageView;

    .line 219
    iget-object v0, v1, LaQ/aT;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, LaQ/aT;->j:Landroid/widget/ImageView;

    .line 221
    iget-object v0, v1, LaQ/aT;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v0, v1, LaQ/aT;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, v1, LaQ/aT;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, v1, LaQ/aT;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v0, v1, LaQ/aT;->a:Landroid/view/View;

    const v2, 0x7f100246

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_9b

    .line 228
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :cond_9b
    iget-object v0, v1, LaQ/aT;->a:Landroid/view/View;

    const v2, 0x7f100247

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_a9

    .line 232
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :cond_a9
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_c5

    .line 238
    const v0, 0x7f10002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    const v0, 0x7f100245

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :cond_c5
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 163
    check-cast p2, LaQ/aT;

    .line 164
    iget-object v1, p0, LaQ/aR;->b:Ljava/lang/CharSequence;

    const/16 v0, 0x50b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-char v3, Lcom/google/googlenav/ui/bn;->aX:C

    const/4 v4, 0x1

    const/4 v5, -0x1

    iget-boolean v6, p0, LaQ/aR;->c:Z

    iget-object v7, p2, LaQ/aT;->b:Landroid/view/View;

    iget-object v8, p2, LaQ/aT;->e:Landroid/widget/TextView;

    iget-object v9, p2, LaQ/aT;->h:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, LaQ/aR;->a(Ljava/lang/CharSequence;Ljava/lang/String;CIIZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 167
    iget-object v1, p0, LaQ/aR;->d:Ljava/lang/CharSequence;

    const/16 v0, 0x1c7

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-char v3, Lcom/google/googlenav/ui/bn;->aW:C

    iget v4, p0, LaQ/aR;->f:I

    iget v5, p0, LaQ/aR;->g:I

    iget-boolean v6, p0, LaQ/aR;->e:Z

    iget-object v7, p2, LaQ/aT;->c:Landroid/view/View;

    iget-object v8, p2, LaQ/aT;->f:Landroid/widget/TextView;

    iget-object v9, p2, LaQ/aT;->i:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, LaQ/aR;->a(Ljava/lang/CharSequence;Ljava/lang/String;CIIZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 171
    iget-object v0, p0, LaQ/aR;->h:LaQ/aS;

    iget-object v1, p2, LaQ/aT;->d:Landroid/view/View;

    iget-object v2, p2, LaQ/aT;->g:Landroid/widget/TextView;

    iget-object v3, p2, LaQ/aT;->j:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2, v3}, LaQ/aR;->a(LaQ/aS;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 172
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 247
    iget v0, p0, LaQ/aR;->k:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 252
    const v0, 0x7f0400bd

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 158
    iget-boolean v0, p0, LaQ/aR;->c:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, LaQ/aR;->e:Z

    if-nez v0, :cond_e

    iget-object v0, p0, LaQ/aR;->h:LaQ/aS;

    iget-boolean v0, v0, LaQ/aS;->d:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
