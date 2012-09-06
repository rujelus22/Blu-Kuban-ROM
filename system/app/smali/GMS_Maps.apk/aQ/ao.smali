.class public LaQ/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field a:Ljava/util/List;

.field b:Ljava/util/List;

.field private c:Lcom/google/googlenav/ai;

.field private d:LaM/aP;

.field private e:LaM/m;

.field private f:I

.field private final g:Lcom/google/googlenav/be;

.field private final h:Z

.field private i:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ai;LaM/aP;LaM/m;ILcom/google/googlenav/be;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaQ/ao;->a:Ljava/util/List;

    .line 196
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaQ/ao;->b:Ljava/util/List;

    .line 201
    iput-object p1, p0, LaQ/ao;->c:Lcom/google/googlenav/ai;

    .line 202
    iput-object p2, p0, LaQ/ao;->d:LaM/aP;

    .line 203
    iput-object p3, p0, LaQ/ao;->e:LaM/m;

    .line 204
    iput p4, p0, LaQ/ao;->f:I

    .line 205
    iput-object p5, p0, LaQ/ao;->g:Lcom/google/googlenav/be;

    .line 206
    iput-boolean p6, p0, LaQ/ao;->h:Z

    .line 207
    return-void
.end method

.method static synthetic a(LaQ/ao;)Lcom/google/googlenav/ai;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, LaQ/ao;->c:Lcom/google/googlenav/ai;

    return-object v0
.end method

.method static synthetic a(LaQ/ao;Landroid/content/Context;LaS/h;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, LaQ/ao;->a(Landroid/content/Context;LaS/h;)V

    return-void
.end method

.method static synthetic a(LaQ/ao;Landroid/content/Context;LaS/h;LaS/c;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, LaQ/ao;->a(Landroid/content/Context;LaS/h;LaS/c;)V

    return-void
.end method

.method private a(Landroid/content/Context;LaS/h;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 374
    invoke-virtual {p2}, LaS/h;->m()Ljava/lang/String;

    move-result-object v0

    .line 376
    new-instance v1, LaQ/aq;

    invoke-direct {v1, p0, p2, v0}, LaQ/aq;-><init>(LaQ/ao;LaS/h;Ljava/lang/String;)V

    .line 409
    new-instance v0, LaQ/at;

    invoke-direct {v0, p0, p2}, LaQ/at;-><init>(LaQ/ao;LaS/h;)V

    .line 417
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 418
    invoke-virtual {p2}, LaS/h;->n()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 419
    invoke-virtual {p2}, LaS/h;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 421
    :cond_20
    invoke-virtual {p2}, LaS/h;->o()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 422
    invoke-virtual {p2}, LaS/h;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 426
    :cond_2d
    const-string v3, "Call"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Cancel"

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, LaQ/au;

    invoke-direct {v4, p0, p2}, LaQ/au;-><init>(LaQ/ao;LaS/h;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 439
    iget-object v3, p0, LaQ/ao;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v1, p0, LaQ/ao;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_51
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, LaQ/ao;->i:Landroid/app/AlertDialog;

    .line 448
    return-void
.end method

.method private a(Landroid/content/Context;LaS/h;LaS/c;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 497
    invoke-virtual {p3}, LaS/c;->d()Ljava/util/List;

    move-result-object v0

    new-instance v1, LaQ/aw;

    invoke-direct {v1, p0}, LaQ/aw;-><init>(LaQ/ao;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/cx;->a(Ljava/util/List;Lcom/google/common/base/D;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, LaS/c;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 505
    new-instance v1, LaQ/ax;

    invoke-direct {v1, p0, p3, p2, p1}, LaQ/ax;-><init>(LaQ/ao;LaS/c;LaS/h;Landroid/content/Context;)V

    .line 525
    new-instance v2, LaQ/ay;

    invoke-direct {v2, p0, p2, p1}, LaQ/ay;-><init>(LaQ/ao;LaS/h;Landroid/content/Context;)V

    .line 535
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 536
    invoke-virtual {p3}, LaS/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 540
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 541
    iget-object v0, p0, LaQ/ao;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_46
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, LaQ/ao;->i:Landroid/app/AlertDialog;

    .line 551
    return-void
.end method

.method static synthetic b(LaQ/ao;)Lcom/google/googlenav/be;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, LaQ/ao;->g:Lcom/google/googlenav/be;

    return-object v0
.end method

.method static synthetic b(LaQ/ao;Landroid/content/Context;LaS/h;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, LaQ/ao;->b(Landroid/content/Context;LaS/h;)V

    return-void
.end method

.method private b(Landroid/content/Context;LaS/h;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 458
    iget-object v0, p0, LaQ/ao;->e:LaM/m;

    if-eqz v0, :cond_4b

    .line 459
    const/16 v0, 0x6a

    const-string v1, "el"

    const-string v2, ""

    invoke-static {v0, v1, v2}, LaT/p;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 462
    iget-object v1, p0, LaQ/ao;->e:LaM/m;

    iget-object v2, p0, LaQ/ao;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/wizard/dO;

    invoke-direct {v3}, Lcom/google/googlenav/ui/wizard/dO;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/wizard/dO;->a(I)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v3

    const/16 v4, 0x45d

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/wizard/dO;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v3

    invoke-virtual {p2}, LaS/h;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/wizard/dO;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/googlenav/ui/wizard/dO;->b(I)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/googlenav/ui/wizard/dO;->a(B)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    new-instance v3, LaQ/av;

    invoke-direct {v3, p0, p2}, LaQ/av;-><init>(LaQ/ao;LaS/h;)V

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/ui/wizard/dG;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, LaM/m;->a(Lat/B;Lcom/google/googlenav/ui/wizard/dO;)V

    .line 492
    :cond_4b
    return-void
.end method

.method static synthetic c(LaQ/ao;)LaM/aP;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, LaQ/ao;->d:LaM/aP;

    return-object v0
.end method

.method static synthetic d(LaQ/ao;)LaM/m;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, LaQ/ao;->e:LaM/m;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 215
    iget-boolean v0, p0, LaQ/ao;->h:Z

    if-eqz v0, :cond_7

    .line 216
    invoke-static {p1}, LaM/aR;->a(Landroid/view/View;)V

    .line 218
    :cond_7
    new-instance v1, LaQ/aC;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaQ/aC;-><init>(LaQ/ap;)V

    .line 220
    const v0, 0x7f100298

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, LaQ/aC;->a:Landroid/view/ViewGroup;

    .line 222
    const v0, 0x7f10029a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, LaQ/aC;->b:Landroid/view/ViewGroup;

    .line 224
    const v0, 0x7f10029b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, LaQ/aC;->c:Landroid/view/ViewGroup;

    .line 225
    const v0, 0x7f10029e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/aC;->e:Landroid/widget/TextView;

    .line 226
    const v0, 0x7f10029f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/aC;->f:Landroid/widget/TextView;

    .line 227
    const v0, 0x7f10029c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, LaQ/aC;->d:Landroid/widget/ImageView;

    .line 228
    const v0, 0x7f1002a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, LaQ/aC;->g:Landroid/view/ViewGroup;

    .line 229
    const v0, 0x7f1002a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, LaQ/aC;->h:Landroid/view/View;

    .line 231
    iget-object v0, p0, LaQ/ao;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->cc()LaS/o;

    move-result-object v0

    invoke-virtual {v0}, LaS/o;->k()LaS/h;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_89

    invoke-virtual {v0}, LaS/h;->k()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 233
    const v0, 0x7f1002a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, LaQ/aC;->g:Landroid/view/ViewGroup;

    .line 234
    const v0, 0x7f1002a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, LaQ/aC;->h:Landroid/view/View;

    .line 237
    :cond_89
    const v0, 0x7f1002a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, LaQ/aC;->i:Landroid/view/View;

    .line 238
    return-object v1
.end method

.method public a(Landroid/view/View;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 210
    if-eqz p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 211
    return-void

    .line 210
    :cond_7
    const/16 v0, 0x8

    goto :goto_3
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 243
    check-cast p2, LaQ/aC;

    .line 248
    iget-object v0, p0, LaQ/ao;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->cc()LaS/o;

    move-result-object v0

    invoke-virtual {v0}, LaS/o;->k()LaS/h;

    move-result-object v4

    .line 251
    if-eqz v4, :cond_1c1

    .line 254
    iget-object v0, p2, LaQ/aC;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 255
    iget-object v0, p2, LaQ/aC;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 256
    iget-object v0, p2, LaQ/aC;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v3}, LaQ/ao;->a(Landroid/view/View;Z)V

    .line 261
    invoke-virtual {v4}, LaS/h;->k()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 262
    iget-object v0, p2, LaQ/aC;->a:Landroid/view/ViewGroup;

    const v1, 0x7f1002a2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p2, LaQ/aC;->g:Landroid/view/ViewGroup;

    .line 264
    iget-object v0, p2, LaQ/aC;->a:Landroid/view/ViewGroup;

    const v1, 0x7f1002a1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, LaQ/aC;->h:Landroid/view/View;

    :goto_3d
    move v2, v3

    .line 273
    :goto_3e
    invoke-virtual {v4}, LaS/h;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_af

    .line 274
    new-instance v5, LaQ/aD;

    invoke-virtual {v4}, LaS/h;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaS/c;

    invoke-direct {v5, v0}, LaQ/aD;-><init>(LaS/c;)V

    .line 276
    invoke-virtual {v4}, LaS/h;->k()Z

    move-result v0

    if-nez v0, :cond_93

    .line 277
    const v0, 0x7f040155

    iget-object v1, p2, LaQ/aC;->g:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v3}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v5, LaQ/aD;->a:Landroid/widget/TextView;

    .line 279
    iget-object v0, p2, LaQ/aC;->g:Landroid/view/ViewGroup;

    iget-object v1, v5, LaQ/aD;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 287
    :goto_71
    iget-object v0, p2, LaQ/aC;->j:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3e

    .line 267
    :cond_7a
    iget-object v0, p2, LaQ/aC;->a:Landroid/view/ViewGroup;

    const v1, 0x7f1002a0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p2, LaQ/aC;->g:Landroid/view/ViewGroup;

    .line 269
    iget-object v0, p2, LaQ/aC;->a:Landroid/view/ViewGroup;

    const v1, 0x7f1002a4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, LaQ/aC;->h:Landroid/view/View;

    goto :goto_3d

    .line 281
    :cond_93
    const v0, 0x7f040156

    iget-object v1, p2, LaQ/aC;->g:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v3}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 283
    const v1, 0x7f100382

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v5, LaQ/aD;->a:Landroid/widget/TextView;

    .line 284
    iget-object v1, p2, LaQ/aC;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_71

    .line 290
    :cond_af
    iget-object v0, p2, LaQ/aC;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v7}, LaQ/ao;->a(Landroid/view/View;Z)V

    .line 292
    iget-object v0, p2, LaQ/aC;->c:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v7}, LaQ/ao;->a(Landroid/view/View;Z)V

    .line 293
    iget-object v0, p2, LaQ/aC;->b:Landroid/view/ViewGroup;

    new-instance v1, LaQ/ap;

    invoke-direct {v1, p0, p1}, LaQ/ap;-><init>(LaQ/ao;Lcom/google/googlenav/ui/g;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v0, p2, LaQ/aC;->e:Landroid/widget/TextView;

    invoke-virtual {v4}, LaS/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p2, LaQ/aC;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v7}, LaQ/ao;->a(Landroid/view/View;Z)V

    .line 305
    iget-object v0, p2, LaQ/aC;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v3}, LaQ/ao;->a(Landroid/view/View;Z)V

    .line 306
    const/4 v0, 0x0

    .line 309
    sget-object v1, LaS/e;->c:LaS/e;

    invoke-virtual {v4, v1}, LaS/h;->a(LaS/e;)Z

    move-result v1

    if-eqz v1, :cond_181

    invoke-virtual {v4}, LaS/h;->g()Z

    move-result v1

    if-eqz v1, :cond_181

    .line 311
    invoke-virtual {v4}, LaS/h;->h()LaS/g;

    move-result-object v0

    const-string v1, "Called"

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    iget-object v3, p2, LaQ/aC;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LaS/g;->a(Ljava/lang/String;Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 319
    :cond_fe
    :goto_fe
    if-eqz v0, :cond_10a

    .line 321
    iget-object v1, p2, LaQ/aC;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p2, LaQ/aC;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v7}, LaQ/ao;->a(Landroid/view/View;Z)V

    .line 325
    :cond_10a
    iget-object v0, p2, LaQ/aC;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v7}, LaQ/ao;->a(Landroid/view/View;Z)V

    .line 326
    iget-object v1, p2, LaQ/aC;->d:Landroid/widget/ImageView;

    iget-object v0, p0, LaQ/ao;->d:LaM/aP;

    invoke-virtual {v0}, LaM/aP;->d()Z

    move-result v0

    if-eqz v0, :cond_1aa

    const v0, 0x7f020466

    :goto_11c
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 329
    iget-object v0, p2, LaQ/aC;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, LaQ/ao;->d:LaM/aP;

    invoke-virtual {v1}, LaM/aP;->d()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, LaQ/ao;->a(Landroid/view/View;Z)V

    .line 330
    iget-object v0, p2, LaQ/aC;->h:Landroid/view/View;

    if-eqz v0, :cond_139

    .line 331
    iget-object v0, p2, LaQ/aC;->h:Landroid/view/View;

    iget-object v1, p0, LaQ/ao;->d:LaM/aP;

    invoke-virtual {v1}, LaM/aP;->d()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, LaQ/ao;->a(Landroid/view/View;Z)V

    .line 333
    :cond_139
    iget-object v0, p2, LaQ/aC;->i:Landroid/view/View;

    invoke-virtual {p0, v0, v7}, LaQ/ao;->a(Landroid/view/View;Z)V

    .line 335
    iget-object v0, p2, LaQ/aC;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_144
    :goto_144
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/aD;

    .line 336
    iget-object v2, v0, LaQ/aD;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v7}, LaQ/ao;->a(Landroid/view/View;Z)V

    .line 337
    invoke-virtual {v4}, LaS/h;->k()Z

    move-result v2

    if-eqz v2, :cond_1af

    .line 338
    iget-object v2, v0, LaQ/aD;->a:Landroid/widget/TextView;

    iget-object v3, v0, LaQ/aD;->b:LaS/c;

    invoke-virtual {v3}, LaS/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :goto_166
    iget-object v2, v0, LaQ/aD;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 346
    new-instance v2, LaQ/aA;

    invoke-direct {v2, p0, v0, v4, p2}, LaQ/aA;-><init>(LaQ/ao;LaQ/aD;LaS/h;LaQ/aC;)V

    .line 349
    iget-object v0, v0, LaQ/aD;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 353
    iget-object v0, p0, LaQ/ao;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_144

    .line 313
    :cond_181
    sget-object v1, LaS/e;->f:LaS/e;

    invoke-virtual {v4, v1}, LaS/h;->a(LaS/e;)Z

    move-result v1

    if-eqz v1, :cond_fe

    invoke-virtual {v4}, LaS/h;->i()Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 316
    invoke-virtual {v4}, LaS/h;->j()LaS/f;

    move-result-object v0

    const-string v1, "Got directions"

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    iget-object v3, p2, LaQ/aC;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LaS/f;->a(Ljava/lang/String;Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_fe

    .line 326
    :cond_1aa
    const v0, 0x7f020467

    goto/16 :goto_11c

    .line 340
    :cond_1af
    iget-object v2, v0, LaQ/aD;->b:LaS/c;

    invoke-virtual {v2}, LaS/c;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/aV;->q:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 342
    iget-object v3, v0, LaQ/aD;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_166

    .line 357
    :cond_1c1
    iget-object v0, p2, LaQ/aC;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v3}, LaQ/ao;->a(Landroid/view/View;Z)V

    .line 358
    iget-object v0, p2, LaQ/aC;->c:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v3}, LaQ/ao;->a(Landroid/view/View;Z)V

    .line 359
    iget-object v0, p2, LaQ/aC;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v3}, LaQ/ao;->a(Landroid/view/View;Z)V

    .line 361
    :cond_1d0
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 583
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 573
    iget v0, p0, LaQ/ao;->f:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 578
    const v0, 0x7f0400e4

    return v0
.end method
