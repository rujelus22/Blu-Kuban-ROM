.class public Lcom/google/googlenav/mylocationnotifier/d;
.super Lcom/google/googlenav/mylocationnotifier/a;
.source "SourceFile"

# interfaces
.implements Lah/p;


# instance fields
.field private f:Lcom/google/googlenav/ai;

.field private g:Lcom/google/googlenav/ui/view/android/L;

.field private h:Lcom/google/googlenav/mylocationnotifier/l;

.field private i:Z

.field private j:Z

.field private final k:Lah/s;

.field private final l:Lcom/google/googlenav/ui/bw;

.field private m:Lcom/google/googlenav/ui/bx;

.field private n:LS/f;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ai;Lcom/google/googlenav/mylocationnotifier/k;Lcom/google/googlenav/mylocationnotifier/l;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p2}, Lcom/google/googlenav/mylocationnotifier/a;-><init>(Lcom/google/googlenav/mylocationnotifier/k;)V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->j:Z

    .line 118
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/d;->f:Lcom/google/googlenav/ai;

    .line 119
    iput-object p3, p0, Lcom/google/googlenav/mylocationnotifier/d;->h:Lcom/google/googlenav/mylocationnotifier/l;

    .line 120
    iput-boolean p4, p0, Lcom/google/googlenav/mylocationnotifier/d;->i:Z

    .line 121
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->k()Lah/o;

    move-result-object v0

    invoke-virtual {v0}, Lah/o;->b()Lah/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->k:Lah/s;

    .line 122
    new-instance v0, Lcom/google/googlenav/ui/bw;

    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/d;->k:Lah/s;

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bn;->q()LS/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/bw;-><init>(Lah/s;LS/f;)V

    iput-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->l:Lcom/google/googlenav/ui/bw;

    .line 124
    return-void
.end method

.method private a(Ljava/lang/CharSequence;II)LaQ/H;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    new-instance v0, Lcom/google/googlenav/mylocationnotifier/g;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/google/googlenav/mylocationnotifier/g;-><init>(Lcom/google/googlenav/mylocationnotifier/d;ILjava/lang/CharSequence;I)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/ai;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->f:Lcom/google/googlenav/ai;

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .registers 11
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 259
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/d;->f:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v5

    .line 260
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/d;->f:Lcom/google/googlenav/ai;

    invoke-static {v1, v4}, LaM/aR;->a(Lcom/google/googlenav/ai;Z)Ljava/lang/String;

    move-result-object v6

    .line 267
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/d;->f:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->ax()Lcom/google/googlenav/ap;

    move-result-object v1

    .line 268
    invoke-static {v1}, LaM/m;->a(Lcom/google/googlenav/ap;)Lcom/google/googlenav/ui/bx;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_28

    .line 270
    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/d;->k:Lah/s;

    invoke-virtual {v2, v1}, Lah/s;->c(Lcom/google/googlenav/ui/bx;)Z

    move-result v2

    if-nez v2, :cond_9a

    .line 271
    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/d;->k:Lah/s;

    invoke-virtual {v2, v1, p0}, Lah/s;->a(Lcom/google/googlenav/ui/bx;Lah/p;)V

    .line 277
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/d;->f:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->bx()Z

    move-result v1

    if-nez v1, :cond_a5

    .line 278
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->f:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ai;->d(Z)Ljava/lang/String;

    move-result-object v2

    .line 279
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->f:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bb()Ljava/lang/String;

    move-result-object v1

    .line 280
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->f:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bd()Lcom/google/googlenav/cy;

    move-result-object v0

    .line 283
    :goto_42
    new-instance v7, Lcom/google/googlenav/ui/view/android/bK;

    invoke-direct {v7}, Lcom/google/googlenav/ui/view/android/bK;-><init>()V

    invoke-virtual {v7, v3}, Lcom/google/googlenav/ui/view/android/bK;->d(I)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v7

    const v8, 0x7f040131

    invoke-virtual {v7, v8}, Lcom/google/googlenav/ui/view/android/bK;->c(I)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/googlenav/ui/view/android/bK;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/googlenav/ui/view/android/bK;->e(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/view/android/bK;->f(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/googlenav/ui/view/android/bK;->i(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/d;->n:LS/f;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/bK;->a(LS/f;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/bK;->b(I)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/d;->l:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/bK;->a(Lcom/google/googlenav/ui/bw;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/bK;->a(Lcom/google/googlenav/cy;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->f:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->c()B

    move-result v0

    if-nez v0, :cond_a3

    move v0, v3

    :goto_80
    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/bK;->e(Z)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/d;->f:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->T()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bK;->e(I)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/view/android/bK;->d(Z)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bK;->a()Lcom/google/googlenav/ui/view/android/bJ;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    return-void

    .line 273
    :cond_9a
    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/d;->k:Lah/s;

    invoke-virtual {v2, v1}, Lah/s;->a(Lcom/google/googlenav/ui/bx;)LS/f;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/mylocationnotifier/d;->n:LS/f;

    goto :goto_28

    :cond_a3
    move v0, v4

    .line 283
    goto :goto_80

    :cond_a5
    move-object v1, v0

    move-object v2, v0

    goto :goto_42
.end method

.method static synthetic a(Lcom/google/googlenav/mylocationnotifier/d;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/google/googlenav/mylocationnotifier/d;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/ui/view/android/L;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->g:Lcom/google/googlenav/ui/view/android/L;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/mylocationnotifier/l;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->h:Lcom/google/googlenav/mylocationnotifier/l;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/mylocationnotifier/d;)Z
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->i:Z

    return v0
.end method

.method private m()Ljava/util/List;
    .registers 7

    .prologue
    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    invoke-direct {p0, v1}, Lcom/google/googlenav/mylocationnotifier/d;->a(Ljava/util/List;)V

    .line 228
    const/16 v0, 0x2d3

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f020265

    const/4 v3, 0x2

    invoke-direct {p0, v0, v2, v3}, Lcom/google/googlenav/mylocationnotifier/d;->a(Ljava/lang/CharSequence;II)LaQ/H;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const/16 v0, 0x72

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f02020b

    const/4 v3, 0x3

    invoke-direct {p0, v0, v2, v3}, Lcom/google/googlenav/mylocationnotifier/d;->a(Ljava/lang/CharSequence;II)LaQ/H;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->f:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_53

    .line 237
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->f:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/cv;->b()Z

    move-result v0

    if-nez v0, :cond_86

    const/16 v0, 0x41b

    .line 239
    :goto_44
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f02026c

    const/4 v3, 0x4

    invoke-direct {p0, v0, v2, v3}, Lcom/google/googlenav/mylocationnotifier/d;->a(Ljava/lang/CharSequence;II)LaQ/H;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_53
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->f:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->br()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 245
    const/16 v0, 0x1f2

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f020274

    const/4 v3, 0x5

    invoke-direct {p0, v0, v2, v3}, Lcom/google/googlenav/mylocationnotifier/d;->a(Ljava/lang/CharSequence;II)LaQ/H;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_6c
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->f:Lcom/google/googlenav/ai;

    invoke-static {v0}, LaM/m;->c(Lcom/google/googlenav/ai;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 251
    const/16 v0, 0x323

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f020267

    const/4 v3, 0x6

    invoke-direct {p0, v0, v2, v3}, Lcom/google/googlenav/mylocationnotifier/d;->a(Ljava/lang/CharSequence;II)LaQ/H;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_85
    return-object v1

    .line 237
    :cond_86
    const/16 v0, 0x3f2

    goto :goto_44
.end method


# virtual methods
.method public P_()V
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->g:Lcom/google/googlenav/ui/view/android/L;

    if-eqz v0, :cond_1b

    .line 188
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->m:Lcom/google/googlenav/ui/bx;

    if-eqz v0, :cond_12

    .line 189
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->k:Lah/s;

    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/d;->m:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0, v1}, Lah/s;->a(Lcom/google/googlenav/ui/bx;)LS/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->n:LS/f;

    .line 191
    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->g:Lcom/google/googlenav/ui/view/android/L;

    invoke-direct {p0}, Lcom/google/googlenav/mylocationnotifier/d;->m()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->a(Ljava/util/List;)V

    .line 193
    :cond_1b
    return-void
.end method

.method public a(Lcom/google/googlenav/ai;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 405
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/d;->f:Lcom/google/googlenav/ai;

    .line 408
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->b:Lcom/google/googlenav/mylocationnotifier/k;

    iput-object p1, v0, Lcom/google/googlenav/mylocationnotifier/k;->c:Lcom/google/googlenav/ai;

    .line 411
    iput-object v1, p0, Lcom/google/googlenav/mylocationnotifier/d;->m:Lcom/google/googlenav/ui/bx;

    .line 412
    iput-object v1, p0, Lcom/google/googlenav/mylocationnotifier/d;->n:LS/f;

    .line 414
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->g:Lcom/google/googlenav/ui/view/android/L;

    if-eqz v0, :cond_18

    .line 416
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->g:Lcom/google/googlenav/ui/view/android/L;

    invoke-direct {p0}, Lcom/google/googlenav/mylocationnotifier/d;->m()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->a(Ljava/util/List;)V

    .line 418
    :cond_18
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 202
    iput-boolean v2, p0, Lcom/google/googlenav/mylocationnotifier/d;->j:Z

    .line 207
    new-instance v0, Lcom/google/googlenav/mylocationnotifier/l;

    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/d;->b:Lcom/google/googlenav/mylocationnotifier/k;

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/google/googlenav/mylocationnotifier/l;-><init>(Ljava/util/List;Lcom/google/googlenav/mylocationnotifier/k;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->h:Lcom/google/googlenav/mylocationnotifier/l;

    .line 210
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    if-eqz v0, :cond_22

    .line 211
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    const v1, 0x7f1001ab

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/mylocationnotifier/d;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x2dc

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_22
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->g:Lcom/google/googlenav/ui/view/android/L;

    if-eqz v0, :cond_2f

    .line 217
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->g:Lcom/google/googlenav/ui/view/android/L;

    invoke-direct {p0}, Lcom/google/googlenav/mylocationnotifier/d;->m()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->a(Ljava/util/List;)V

    .line 219
    :cond_2f
    return-void
.end method

.method protected b()V
    .registers 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    if-nez v0, :cond_55

    .line 146
    sget-object v0, Lcom/google/googlenav/mylocationnotifier/d;->a:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/mylocationnotifier/HeaderView;

    iput-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    .line 148
    iget-boolean v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->i:Z

    if-eqz v0, :cond_60

    const/16 v0, 0x2cf

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_20
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/d;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    const v2, 0x7f1001ab

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/mylocationnotifier/d;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    const v1, 0x7f10001e

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/mylocationnotifier/d;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->i:Z

    if-eqz v0, :cond_6b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/d;->f:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_52
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_55
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    new-instance v1, Lcom/google/googlenav/mylocationnotifier/e;

    invoke-direct {v1, p0}, Lcom/google/googlenav/mylocationnotifier/e;-><init>(Lcom/google/googlenav/mylocationnotifier/d;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/mylocationnotifier/HeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-void

    .line 148
    :cond_60
    const/16 v0, 0x2d1

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_20

    .line 152
    :cond_6b
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->f:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v0

    goto :goto_52
.end method

.method protected c()Landroid/widget/ListAdapter;
    .registers 6

    .prologue
    .line 172
    new-instance v0, Lcom/google/googlenav/ui/view/android/L;

    sget-object v1, Lcom/google/googlenav/mylocationnotifier/d;->a:Lcom/google/android/maps/MapsActivity;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/mylocationnotifier/d;->m()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->g:Lcom/google/googlenav/ui/view/android/L;

    .line 174
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->g:Lcom/google/googlenav/ui/view/android/L;

    return-object v0
.end method

.method protected d()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 303
    new-instance v0, Lcom/google/googlenav/mylocationnotifier/f;

    invoke-direct {v0, p0}, Lcom/google/googlenav/mylocationnotifier/f;-><init>(Lcom/google/googlenav/mylocationnotifier/d;)V

    return-object v0
.end method

.method protected f()V
    .registers 3

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->i:Z

    if-nez v0, :cond_7

    .line 129
    invoke-virtual {p0}, Lcom/google/googlenav/mylocationnotifier/d;->k()V

    .line 136
    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/d;->h:Lcom/google/googlenav/mylocationnotifier/l;

    invoke-virtual {v0}, Lcom/google/googlenav/mylocationnotifier/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 137
    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/d;->b:Lcom/google/googlenav/mylocationnotifier/k;

    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/mylocationnotifier/k;->a(Lan/s;)Z

    .line 140
    :cond_1c
    return-void
.end method
