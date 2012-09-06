.class public final Lcom/google/android/youtube/app/honeycomb/phone/bm;
.super Lcom/google/android/youtube/app/honeycomb/phone/p;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/remote/aj;
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field private final b:Lcom/google/android/youtube/core/b/ae;

.field private final c:Lcom/google/android/youtube/core/b/ag;

.field private final d:Lcom/google/android/youtube/app/remote/RemoteControl;

.field private final e:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final f:Lcom/google/android/youtube/core/async/l;

.field private final g:Lcom/google/android/youtube/core/async/l;

.field private final h:Lcom/google/android/youtube/core/async/l;

.field private final i:Landroid/view/View;

.field private final j:Landroid/widget/ImageView;

.field private final k:Landroid/widget/TextView;

.field private final l:Landroid/widget/TextView;

.field private final m:Landroid/widget/TextView;

.field private final n:Landroid/widget/ListView;

.field private final o:Landroid/view/View;

.field private final p:Lcom/google/android/youtube/app/adapter/ay;

.field private q:Lcom/google/android/youtube/core/model/UserAuth;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;Lcom/google/android/youtube/app/a;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/p;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;)V

    .line 67
    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 69
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->b:Lcom/google/android/youtube/core/b/ae;

    .line 70
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->c:Lcom/google/android/youtube/core/b/ag;

    .line 71
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->q()Lcom/google/android/youtube/app/remote/at;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->d:Lcom/google/android/youtube/app/remote/RemoteControl;

    .line 72
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 73
    new-instance v0, Lcom/google/android/youtube/app/adapter/ay;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/app/adapter/ay;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->p:Lcom/google/android/youtube/app/adapter/ay;

    .line 75
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040069

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->n()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->i:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->i:Landroid/view/View;

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->j:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->i:Landroid/view/View;

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->k:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->i:Landroid/view/View;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->l:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->i:Landroid/view/View;

    const v1, 0x7f0800c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->m:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->i:Landroid/view/View;

    const v1, 0x7f0800ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->n:Landroid/widget/ListView;

    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->i:Landroid/view/View;

    const v1, 0x7f0800c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->o:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->n:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->p:Lcom/google/android/youtube/app/adapter/ay;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->n:Landroid/widget/ListView;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/bn;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/app/honeycomb/phone/bn;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/bm;Lcom/google/android/youtube/app/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/bo;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/app/honeycomb/phone/bo;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/bm;Lcom/google/android/youtube/app/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/bp;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/bp;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/bm;)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/bq;

    invoke-direct {v1, p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/bq;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/bm;Lcom/google/android/youtube/core/async/c;)V

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->f:Lcom/google/android/youtube/core/async/l;

    .line 141
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/br;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/br;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/bm;)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->h:Lcom/google/android/youtube/core/async/l;

    .line 159
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/bs;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/bs;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/bm;)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->g:Lcom/google/android/youtube/core/async/l;

    .line 170
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Lcom/google/android/youtube/app/adapter/ay;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->p:Lcom/google/android/youtube/app/adapter/ay;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->q:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_a

    .line 242
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->b:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/b/ae;->c(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 246
    :goto_9
    return-void

    .line 244
    :cond_a
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->b:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->q:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/youtube/core/b/ae;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_9
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->q:Lcom/google/android/youtube/core/model/UserAuth;

    return-object v0
.end method

.method private b(Ljava/util/List;)V
    .registers 5
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->p:Lcom/google/android/youtube/app/adapter/ay;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/adapter/ay;->a(Ljava/util/List;)V

    .line 250
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 251
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->h:Lcom/google/android/youtube/core/async/l;

    invoke-direct {p0, v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_9

    .line 253
    :cond_1b
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->d:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 254
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->p:Lcom/google/android/youtube/app/adapter/ay;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/adapter/ay;->a(I)V

    .line 255
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->p:Lcom/google/android/youtube/app/adapter/ay;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/adapter/ay;->notifyDataSetChanged()V

    .line 257
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->n:Landroid/widget/ListView;

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 258
    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Lcom/google/android/youtube/app/remote/RemoteControl;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->d:Lcom/google/android/youtube/app/remote/RemoteControl;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Lcom/google/android/youtube/core/b/ag;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->c:Lcom/google/android/youtube/core/b/ag;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Lcom/google/android/youtube/core/async/l;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->g:Lcom/google/android/youtube/core/async/l;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;)V
    .registers 2
    .parameter

    .prologue
    .line 189
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V
    .registers 8
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->d:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-eq v0, v1, :cond_b

    .line 221
    :goto_a
    return-void

    .line 219
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    const v2, 0x7f0b0213

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->d:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v5}, Lcom/google/android/youtube/app/remote/RemoteControl;->q()Lcom/google/android/youtube/app/remote/ap;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/youtube/app/remote/ap;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->q:Lcom/google/android/youtube/core/model/UserAuth;

    .line 174
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->q:Lcom/google/android/youtube/core/model/UserAuth;

    .line 178
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->r:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->r:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 225
    :cond_e
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->r:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->d:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->f:Lcom/google/android/youtube/core/async/l;

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 231
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->d:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->p:Lcom/google/android/youtube/app/adapter/ay;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/adapter/ay;->a(I)V

    .line 233
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->p:Lcom/google/android/youtube/app/adapter/ay;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/adapter/ay;->notifyDataSetChanged()V

    .line 235
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->n:Landroid/widget/ListView;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 238
    :cond_4a
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 2
    .parameter

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->b(Ljava/util/List;)V

    .line 186
    return-void
.end method

.method public final a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 264
    return-void
.end method

.method public final e_()V
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->q:Lcom/google/android/youtube/core/model/UserAuth;

    .line 182
    return-void
.end method

.method public final h()V
    .registers 7

    .prologue
    .line 196
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/p;->h()V

    .line 198
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->d:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-eq v0, v1, :cond_13

    .line 212
    :goto_12
    return-void

    .line 205
    :cond_13
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    const v2, 0x7f0b0213

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->d:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v5}, Lcom/google/android/youtube/app/remote/RemoteControl;->q()Lcom/google/android/youtube/app/remote/ap;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/youtube/app/remote/ap;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->d:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->f:Lcom/google/android/youtube/core/async/l;

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->d:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->k()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->b(Ljava/util/List;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->d:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/app/remote/RemoteControl;->a(Lcom/google/android/youtube/app/remote/aj;)V

    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bm;->d:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/app/remote/RemoteControl;->c(Lcom/google/android/youtube/app/remote/aj;)V

    goto :goto_12
.end method

.method public final l()V
    .registers 1

    .prologue
    .line 261
    return-void
.end method
