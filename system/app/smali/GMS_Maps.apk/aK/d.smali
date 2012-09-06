.class public LaK/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;
.implements Lah/p;


# instance fields
.field private final a:Lcom/google/googlenav/friend/aK;

.field private final b:Lcom/google/googlenav/ui/af;

.field private final c:LaM/ag;

.field private final d:Lcom/google/googlenav/ui/friend/E;

.field private final e:I

.field private f:Landroid/graphics/Bitmap;

.field private final g:Lcom/google/googlenav/friend/L;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/aK;Lcom/google/googlenav/ui/af;LaM/ag;Lcom/google/googlenav/friend/L;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, LaK/d;->a:Lcom/google/googlenav/friend/aK;

    .line 99
    iput-object p2, p0, LaK/d;->b:Lcom/google/googlenav/ui/af;

    .line 100
    iput-object p3, p0, LaK/d;->c:LaM/ag;

    .line 101
    iput-object p4, p0, LaK/d;->g:Lcom/google/googlenav/friend/L;

    .line 102
    iput p5, p0, LaK/d;->e:I

    .line 103
    new-instance v0, Lcom/google/googlenav/ui/friend/E;

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/friend/E;-><init>(Ljava/lang/Long;I)V

    iput-object v0, p0, LaK/d;->d:Lcom/google/googlenav/ui/friend/E;

    .line 105
    invoke-virtual {p0}, LaK/d;->P_()V

    .line 106
    return-void
.end method

.method private a(LaK/e;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 228
    .line 229
    iget-object v0, p0, LaK/d;->a:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->l()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 230
    const v0, 0x7f0201b7

    .line 234
    :goto_c
    iget-object v2, p1, LaK/e;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 235
    return-void

    .line 231
    :cond_12
    iget-object v0, p0, LaK/d;->a:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->k()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 232
    const v0, 0x7f0201b8

    goto :goto_c

    :cond_1e
    move v0, v1

    goto :goto_c
.end method


# virtual methods
.method public P_()V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, LaK/d;->b:Lcom/google/googlenav/ui/af;

    iget-object v1, p0, LaK/d;->d:Lcom/google/googlenav/ui/friend/E;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/af;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LaK/d;->f:Landroid/graphics/Bitmap;

    .line 112
    return-void
.end method

.method public a(Landroid/view/View;)LaQ/bE;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 131
    new-instance v1, LaK/e;

    invoke-direct {v1}, LaK/e;-><init>()V

    .line 132
    const v0, 0x7f100052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, LaK/e;->h:Landroid/widget/LinearLayout;

    .line 133
    const v0, 0x7f10026a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, LaK/e;->i:Landroid/widget/ImageView;

    .line 134
    const v0, 0x7f1001b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, v1, LaK/e;->a:Landroid/widget/QuickContactBadge;

    .line 135
    const v0, 0x7f100090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaK/e;->b:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f10002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaK/e;->c:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f10026c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaK/e;->d:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f10026b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, LaK/e;->j:Landroid/widget/ProgressBar;

    .line 140
    const v0, 0x7f100427

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, LaK/e;->e:Landroid/widget/LinearLayout;

    .line 142
    const v0, 0x7f100194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DistanceView;

    iput-object v0, v1, LaK/e;->f:Lcom/google/googlenav/ui/view/android/DistanceView;

    .line 143
    iget-object v0, v1, LaK/e;->f:Lcom/google/googlenav/ui/view/android/DistanceView;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/DistanceView;->setVisibility(I)V

    .line 144
    const v0, 0x7f100195

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/HeadingView;

    iput-object v0, v1, LaK/e;->g:Lcom/google/googlenav/ui/view/android/HeadingView;

    .line 145
    iget-object v0, v1, LaK/e;->g:Lcom/google/googlenav/ui/view/android/HeadingView;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/HeadingView;->setVisibility(I)V

    .line 146
    new-instance v0, LaK/f;

    iget-object v2, p0, LaK/d;->g:Lcom/google/googlenav/friend/L;

    invoke-direct {v0, v2}, LaK/f;-><init>(Lcom/google/googlenav/friend/L;)V

    iput-object v0, v1, LaK/e;->k:LaK/f;

    .line 147
    iget-object v0, v1, LaK/e;->h:Landroid/widget/LinearLayout;

    iget-object v2, v1, LaK/e;->k:LaK/f;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 154
    check-cast p2, LaK/e;

    .line 156
    iget-object v0, p0, LaK/d;->a:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->b()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 157
    iget-object v0, p2, LaK/e;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v0, p2, LaK/e;->a:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v5}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 159
    iget-object v0, p2, LaK/e;->i:Landroid/widget/ImageView;

    iget-object v3, p0, LaK/d;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 171
    :goto_1f
    iget-object v0, p2, LaK/e;->b:Landroid/widget/TextView;

    iget-object v3, p0, LaK/d;->a:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v3}, Lcom/google/googlenav/friend/aK;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-direct {p0, p2}, LaK/d;->a(LaK/e;)V

    .line 179
    iget-object v0, p0, LaK/d;->a:Lcom/google/googlenav/friend/aK;

    invoke-static {v0, v1, v2, v1, v2}, Lcom/google/googlenav/friend/M;->a(Lcom/google/googlenav/friend/aK;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 183
    iget-object v0, p0, LaK/d;->a:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->C()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 184
    const v0, 0x7f02027e

    .line 186
    :goto_3e
    iget-object v3, p2, LaK/e;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 187
    iget-object v0, p2, LaK/e;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, LaK/d;->a:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->H()Z

    move-result v0

    if-eqz v0, :cond_c6

    iget-object v0, p0, LaK/d;->c:LaM/ag;

    invoke-interface {v0}, LaM/ag;->bN()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 191
    iget-object v0, p2, LaK/e;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 199
    :goto_5d
    iget-object v0, p0, LaK/d;->a:Lcom/google/googlenav/friend/aK;

    iget-object v1, p0, LaK/d;->c:LaM/ag;

    invoke-interface {v1}, LaM/ag;->bH()J

    move-result-wide v3

    invoke-static {v0, v3, v4, v2, v2}, Lcom/google/googlenav/friend/M;->a(Lcom/google/googlenav/friend/aK;JZZ)Ljava/lang/String;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_cc

    .line 203
    iget-object v1, p2, LaK/e;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v1, p2, LaK/e;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :goto_75
    iget-object v0, p0, LaK/d;->a:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->b()Z

    move-result v0

    if-nez v0, :cond_d2

    iget-object v0, p0, LaK/d;->a:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->c()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 210
    iget-object v0, p2, LaK/e;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    iget-object v0, p2, LaK/e;->f:Lcom/google/googlenav/ui/view/android/DistanceView;

    iget-object v1, p2, LaK/e;->g:Lcom/google/googlenav/ui/view/android/HeadingView;

    iget-object v2, p0, LaK/d;->a:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v2}, Lcom/google/googlenav/friend/aK;->d()Lat/B;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaB/g;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;Lat/B;)V

    .line 217
    :goto_97
    iget-object v0, p2, LaK/e;->k:LaK/f;

    iget-object v1, p0, LaK/d;->a:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0, v1}, LaK/f;->a(Lcom/google/googlenav/friend/aK;)V

    .line 218
    return-void

    .line 161
    :cond_9f
    iget-object v0, p2, LaK/e;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p2, LaK/e;->a:Landroid/widget/QuickContactBadge;

    iget-object v3, p0, LaK/d;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 163
    iget-object v0, p2, LaK/e;->a:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v2}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 168
    iget-object v3, p2, LaK/e;->a:Landroid/widget/QuickContactBadge;

    iget-object v0, p0, LaK/d;->a:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->s()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_c4

    move v0, v1

    :goto_bf
    invoke-virtual {v3, v4, v0}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto/16 :goto_1f

    :cond_c4
    move v0, v2

    goto :goto_bf

    .line 193
    :cond_c6
    iget-object v0, p2, LaK/e;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_5d

    .line 206
    :cond_cc
    iget-object v0, p2, LaK/e;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_75

    .line 214
    :cond_d2
    iget-object v0, p2, LaK/e;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_97

    :cond_d8
    move v0, v2

    goto/16 :goto_3e
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, LaK/d;->e:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 116
    const v0, 0x7f0400c6

    return v0
.end method
