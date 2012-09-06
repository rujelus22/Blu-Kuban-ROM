.class public Lcom/google/googlenav/ui/view/dialog/az;
.super Lcom/google/googlenav/ui/view/android/bb;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/friend/aK;

.field private b:Z

.field private final c:Lcom/google/googlenav/ui/view/dialog/aD;

.field private d:Z

.field private final e:Ljava/lang/CharSequence;

.field private f:Lah/a;

.field private g:Lcom/google/googlenav/ui/friend/D;

.field private h:Lah/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/google/googlenav/friend/aK;ZLah/a;Lcom/google/googlenav/ui/friend/D;Lcom/google/googlenav/ui/view/dialog/aD;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    const v0, 0x7f0f001b

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/bb;-><init>(Landroid/content/Context;I)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/az;->b:Z

    .line 121
    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/az;->e:Ljava/lang/CharSequence;

    .line 122
    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/az;->a:Lcom/google/googlenav/friend/aK;

    .line 124
    iput-object p7, p0, Lcom/google/googlenav/ui/view/dialog/az;->c:Lcom/google/googlenav/ui/view/dialog/aD;

    .line 125
    iput-boolean p4, p0, Lcom/google/googlenav/ui/view/dialog/az;->d:Z

    .line 126
    iput-object p5, p0, Lcom/google/googlenav/ui/view/dialog/az;->f:Lah/a;

    .line 127
    iput-object p6, p0, Lcom/google/googlenav/ui/view/dialog/az;->g:Lcom/google/googlenav/ui/friend/D;

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/az;->setCancelable(Z)V

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/az;)Lcom/google/googlenav/friend/aK;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/az;->a:Lcom/google/googlenav/friend/aK;

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 257
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 258
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/az;->e:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/az;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    :goto_b
    return-void

    .line 260
    :cond_c
    const v0, 0x7f100025

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/az;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 261
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/az;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b
.end method

.method private a(Landroid/widget/ImageView;)V
    .registers 6
    .parameter

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/az;->b(Landroid/widget/ImageView;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/az;->b:Z

    if-nez v0, :cond_40

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/az;->b:Z

    .line 203
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 204
    new-instance v1, Lah/n;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/az;->a:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v2}, Lcom/google/googlenav/friend/aK;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/az;->a:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v3}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lah/n;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 206
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 208
    new-instance v2, Lcom/google/googlenav/ui/view/dialog/aB;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/googlenav/ui/view/dialog/aB;-><init>(Lcom/google/googlenav/ui/view/dialog/az;Landroid/os/Handler;Landroid/widget/ImageView;)V

    iput-object v2, p0, Lcom/google/googlenav/ui/view/dialog/az;->h:Lah/p;

    .line 221
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/az;->f:Lah/a;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/az;->h:Lah/p;

    invoke-virtual {v1, v2}, Lah/a;->a(Lah/p;)V

    .line 222
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/az;->f:Lah/a;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/az;->h:Lah/p;

    invoke-virtual {v1, v0, v2}, Lah/a;->a(Ljava/util/Vector;Lah/p;)Z

    .line 224
    :cond_40
    return-void
.end method

.method private a(Landroid/widget/ListView;)V
    .registers 6
    .parameter

    .prologue
    .line 159
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    const/4 v1, 0x0

    const/16 v2, 0x172

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 162
    const/4 v1, 0x1

    const/16 v2, 0x173

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 164
    const/4 v1, 0x2

    const/16 v2, 0x174

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 165
    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/dialog/az;->d:Z

    if-eqz v1, :cond_30

    .line 166
    const/4 v1, 0x3

    const/16 v2, 0x170

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 169
    :cond_30
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/az;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04009a

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aA;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/aA;-><init>(Lcom/google/googlenav/ui/view/dialog/az;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 190
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/az;Landroid/widget/ImageView;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/az;->b(Landroid/widget/ImageView;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/az;)Lcom/google/googlenav/ui/view/dialog/aD;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/az;->c:Lcom/google/googlenav/ui/view/dialog/aD;

    return-object v0
.end method

.method private b(Landroid/widget/ImageView;)Z
    .registers 5
    .parameter

    .prologue
    .line 238
    new-instance v0, Lcom/google/googlenav/ui/friend/E;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/az;->a:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/friend/E;-><init>(Ljava/lang/Long;I)V

    .line 240
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/az;->g:Lcom/google/googlenav/ui/friend/D;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/friend/D;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 241
    if-eqz v0, :cond_22

    .line 242
    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 243
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 244
    const/4 v0, 0x1

    .line 246
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/dialog/az;)Lah/p;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/az;->h:Lah/p;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/dialog/az;)Lah/a;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/az;->f:Lah/a;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/az;->c:Lcom/google/googlenav/ui/view/dialog/aD;

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/aD;->a()V

    .line 229
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 134
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_a

    .line 135
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/view/dialog/az;->requestWindowFeature(I)Z

    .line 138
    :cond_a
    const v0, 0x7f040099

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/az;->setContentView(I)V

    .line 140
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/az;->a()V

    .line 142
    const v0, 0x7f10022b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/az;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    const/16 v1, 0x175

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/az;->a:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v4}, Lcom/google/googlenav/friend/aK;->s()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const v0, 0x7f1001b6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/az;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/az;->a(Landroid/widget/ImageView;)V

    .line 148
    const v0, 0x7f100127

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/az;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/az;->a(Landroid/widget/ListView;)V

    .line 149
    return-void
.end method
