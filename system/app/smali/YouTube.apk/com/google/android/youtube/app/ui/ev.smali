.class public final Lcom/google/android/youtube/app/ui/ev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/ui/m;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/google/android/youtube/core/player/Director;

.field private final c:Lcom/google/android/youtube/app/a;

.field private final d:Lcom/google/android/youtube/core/Analytics;

.field private final e:Lcom/google/android/youtube/core/ui/Workspace;

.field private final f:Lcom/google/android/youtube/core/d;

.field private final g:Lcom/google/android/youtube/core/b/ai;

.field private final h:Lcom/google/android/youtube/core/b/ae;

.field private i:Landroid/widget/ListView;

.field private j:Lcom/google/android/youtube/app/adapter/aq;

.field private k:Lcom/google/android/youtube/app/ui/a;

.field private l:Landroid/widget/ListView;

.field private m:Lcom/google/android/youtube/app/adapter/ax;

.field private n:Lcom/google/android/youtube/app/ui/a;

.field private o:Landroid/view/View;

.field private p:Lcom/google/android/youtube/core/ui/l;

.field private q:Lcom/google/android/youtube/core/model/MusicVideo;

.field private r:Z

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/player/Director;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/d;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ev;->a:Landroid/app/Activity;

    .line 79
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/ev;->b:Lcom/google/android/youtube/core/player/Director;

    .line 80
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/ev;->c:Lcom/google/android/youtube/app/a;

    .line 81
    iput-object p4, p0, Lcom/google/android/youtube/app/ui/ev;->g:Lcom/google/android/youtube/core/b/ai;

    .line 82
    iput-object p6, p0, Lcom/google/android/youtube/app/ui/ev;->d:Lcom/google/android/youtube/core/Analytics;

    .line 83
    iput-object p5, p0, Lcom/google/android/youtube/app/ui/ev;->h:Lcom/google/android/youtube/core/b/ae;

    .line 84
    iput-object p7, p0, Lcom/google/android/youtube/app/ui/ev;->f:Lcom/google/android/youtube/core/d;

    .line 86
    const v0, 0x7f080033

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/Workspace;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->e:Lcom/google/android/youtube/core/ui/Workspace;

    .line 87
    const v0, 0x7f0b010f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->s:Ljava/lang/String;

    .line 88
    const v0, 0x7f0b0102

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->t:Ljava/lang/String;

    .line 89
    const v0, 0x7f0b01ac

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->u:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/ev;)Lcom/google/android/youtube/core/d;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->f:Lcom/google/android/youtube/core/d;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/ev;Lcom/google/android/youtube/core/model/MusicVideo;)Lcom/google/android/youtube/core/model/MusicVideo;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ev;->q:Lcom/google/android/youtube/core/model/MusicVideo;

    return-object p1
.end method

.method private a(I)V
    .registers 4
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->e:Lcom/google/android/youtube/core/ui/Workspace;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/Workspace;->b()V

    .line 187
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->e:Lcom/google/android/youtube/core/ui/Workspace;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/ui/Workspace;->a()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->e:Lcom/google/android/youtube/core/ui/Workspace;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/ui/Workspace;->setCurrentScreen(I)V

    .line 189
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/ev;Lcom/google/android/youtube/core/model/ArtistBundle;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->q:Lcom/google/android/youtube/core/model/MusicVideo;

    if-nez v0, :cond_b

    const-string v0, "attempt to set artist bundle info without a music video"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->o:Landroid/view/View;

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/ArtistBundle;->artist:Lcom/google/android/youtube/core/model/Artist;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Artist;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->o:Landroid/view/View;

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/ArtistBundle;->artist:Lcom/google/android/youtube/core/model/Artist;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Artist;->biography:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const v1, 0x7f0b01ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_38
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->p:Lcom/google/android/youtube/core/ui/l;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/l;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->j:Lcom/google/android/youtube/app/adapter/aq;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->q:Lcom/google/android/youtube/core/model/MusicVideo;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/adapter/aq;->a(Lcom/google/android/youtube/core/model/MusicVideo;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->j:Lcom/google/android/youtube/app/adapter/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/adapter/aq;->clear()V

    iget-object v0, p1, Lcom/google/android/youtube/core/model/ArtistBundle;->artistTape:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7d

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->k:Lcom/google/android/youtube/app/ui/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/google/android/youtube/app/ui/a;->a(Ljava/lang/String;Z)V

    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->m:Lcom/google/android/youtube/app/adapter/ax;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/adapter/ax;->clear()V

    iget-object v0, p1, Lcom/google/android/youtube/core/model/ArtistBundle;->relatedArtists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b8

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->n:Lcom/google/android/youtube/app/ui/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/google/android/youtube/app/ui/a;->a(Ljava/lang/String;Z)V

    goto :goto_a

    :cond_6d
    iget-object v1, p1, Lcom/google/android/youtube/core/model/ArtistBundle;->artist:Lcom/google/android/youtube/core/model/Artist;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Artist;->biography:Ljava/lang/String;

    const-string v2, "\r\n"

    const-string v3, "\r\n\r\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38

    :cond_7d
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->k:Lcom/google/android/youtube/app/ui/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/a;->a()V

    const/4 v0, -0x1

    iget-object v1, p1, Lcom/google/android/youtube/core/model/ArtistBundle;->artistTape:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/MusicVideo;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/MusicVideo;->trackId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/ev;->q:Lcom/google/android/youtube/core/model/MusicVideo;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/MusicVideo;->trackId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->j:Lcom/google/android/youtube/app/adapter/aq;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/adapter/aq;->getCount()I

    move-result v1

    :cond_a8
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ev;->j:Lcom/google/android/youtube/app/adapter/aq;

    invoke-virtual {v3, v0}, Lcom/google/android/youtube/app/adapter/aq;->add(Ljava/lang/Object;)V

    goto :goto_8a

    :cond_ae
    if-ltz v1, :cond_58

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->i:Landroid/widget/ListView;

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_58

    :cond_b8
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->n:Lcom/google/android/youtube/app/ui/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/a;->a()V

    iget-object v0, p1, Lcom/google/android/youtube/core/model/ArtistBundle;->relatedArtists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/ArtistBundle$Related;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ev;->m:Lcom/google/android/youtube/app/adapter/ax;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/app/adapter/ax;->add(Ljava/lang/Object;)V

    goto :goto_c3
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/ev;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/ev;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/ev;)Lcom/google/android/youtube/core/b/ae;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->h:Lcom/google/android/youtube/core/b/ae;

    return-object v0
.end method

.method private b()V
    .registers 10

    .prologue
    const v8, 0x7f040084

    const/4 v7, 0x1

    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->o:Landroid/view/View;

    if-nez v0, :cond_e2

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->o:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->o:Landroid/view/View;

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->a:Landroid/app/Activity;

    invoke-static {v1, v0, p0}, Lcom/google/android/youtube/core/ui/l;->a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/m;)Lcom/google/android/youtube/core/ui/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->p:Lcom/google/android/youtube/core/ui/l;

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->p:Lcom/google/android/youtube/core/ui/l;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/l;->a()V

    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 126
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 128
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ev;->a:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 130
    new-instance v3, Landroid/widget/ListView;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/ev;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/youtube/app/ui/ev;->l:Landroid/widget/ListView;

    .line 131
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ev;->l:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ev;->l:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/ev;->a:Landroid/app/Activity;

    const v5, 0x7f0b01ab

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 133
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ev;->l:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ev;->l:Landroid/widget/ListView;

    invoke-virtual {v2, v8, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 136
    new-instance v4, Lcom/google/android/youtube/app/adapter/ax;

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/ev;->a:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/google/android/youtube/app/adapter/ax;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/android/youtube/app/ui/ev;->m:Lcom/google/android/youtube/app/adapter/ax;

    .line 137
    new-instance v4, Lcom/google/android/youtube/app/ui/at;

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/ev;->m:Lcom/google/android/youtube/app/adapter/ax;

    invoke-direct {v4, v5, v3}, Lcom/google/android/youtube/app/ui/at;-><init>(Landroid/widget/BaseAdapter;Landroid/view/View;)V

    .line 139
    new-instance v5, Lcom/google/android/youtube/app/ui/a;

    invoke-direct {v5, v3, v4, p0}, Lcom/google/android/youtube/app/ui/a;-><init>(Landroid/view/View;Landroid/widget/BaseAdapter;Lcom/google/android/youtube/core/ui/m;)V

    iput-object v5, p0, Lcom/google/android/youtube/app/ui/ev;->n:Lcom/google/android/youtube/app/ui/a;

    .line 141
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ev;->l:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ev;->l:Landroid/widget/ListView;

    new-instance v4, Lcom/google/android/youtube/app/ui/fa;

    invoke-direct {v4, p0, v6}, Lcom/google/android/youtube/app/ui/fa;-><init>(Lcom/google/android/youtube/app/ui/ev;B)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    new-instance v3, Landroid/widget/ListView;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/ev;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/youtube/app/ui/ev;->i:Landroid/widget/ListView;

    .line 145
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ev;->i:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->i:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ev;->a:Landroid/app/Activity;

    const v4, 0x7f0b01aa

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->i:Landroid/widget/ListView;

    invoke-virtual {v2, v8, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 150
    new-instance v1, Lcom/google/android/youtube/app/adapter/aq;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ev;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, v7}, Lcom/google/android/youtube/app/adapter/aq;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->j:Lcom/google/android/youtube/app/adapter/aq;

    .line 151
    new-instance v1, Lcom/google/android/youtube/app/ui/at;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ev;->j:Lcom/google/android/youtube/app/adapter/aq;

    invoke-direct {v1, v2, v0}, Lcom/google/android/youtube/app/ui/at;-><init>(Landroid/widget/BaseAdapter;Landroid/view/View;)V

    .line 153
    new-instance v2, Lcom/google/android/youtube/app/ui/a;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/youtube/app/ui/a;-><init>(Landroid/view/View;Landroid/widget/BaseAdapter;Lcom/google/android/youtube/core/ui/m;)V

    iput-object v2, p0, Lcom/google/android/youtube/app/ui/ev;->k:Lcom/google/android/youtube/app/ui/a;

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->i:Landroid/widget/ListView;

    new-instance v1, Lcom/google/android/youtube/app/ui/ez;

    invoke-direct {v1, p0, v6}, Lcom/google/android/youtube/app/ui/ez;-><init>(Lcom/google/android/youtube/app/ui/ev;B)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    :cond_e2
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_104

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->e:Lcom/google/android/youtube/core/ui/Workspace;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->o:Landroid/view/View;

    invoke-virtual {v0, v1, v6}, Lcom/google/android/youtube/core/ui/Workspace;->addView(Landroid/view/View;I)V

    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->e:Lcom/google/android/youtube/core/ui/Workspace;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->l:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v7}, Lcom/google/android/youtube/core/ui/Workspace;->addView(Landroid/view/View;I)V

    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->e:Lcom/google/android/youtube/core/ui/Workspace;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->i:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/ui/Workspace;->addView(Landroid/view/View;I)V

    .line 165
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/ev;->a(I)V

    .line 167
    :cond_104
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 238
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->k:Lcom/google/android/youtube/app/ui/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/a;->a(Ljava/lang/String;Z)V

    .line 239
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->n:Lcom/google/android/youtube/app/ui/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/a;->a(Ljava/lang/String;Z)V

    .line 240
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->p:Lcom/google/android/youtube/core/ui/l;

    const v1, 0x7f0b010f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/ui/l;->a(IZ)V

    .line 241
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->g:Lcom/google/android/youtube/core/b/ai;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/ey;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/ui/ey;-><init>(Lcom/google/android/youtube/app/ui/ev;)V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/b/ai;->b(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 258
    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/ev;)Lcom/google/android/youtube/core/player/Director;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->b:Lcom/google/android/youtube/core/player/Director;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->o:Landroid/view/View;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->e:Lcom/google/android/youtube/core/ui/Workspace;

    if-ne v0, v1, :cond_27

    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->e:Lcom/google/android/youtube/core/ui/Workspace;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/Workspace;->removeView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->e:Lcom/google/android/youtube/core/ui/Workspace;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->l:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/Workspace;->removeView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->e:Lcom/google/android/youtube/core/ui/Workspace;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/Workspace;->removeView(Landroid/view/View;)V

    .line 174
    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/ev;->a(I)V

    .line 176
    :cond_27
    return-void
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/ev;)V
    .registers 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/ev;->b()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/youtube/app/ui/ev;)Lcom/google/android/youtube/core/model/MusicVideo;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->q:Lcom/google/android/youtube/core/model/MusicVideo;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/ui/ev;)Lcom/google/android/youtube/app/ui/a;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->n:Lcom/google/android/youtube/app/ui/a;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/ui/ev;)Lcom/google/android/youtube/app/ui/a;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->k:Lcom/google/android/youtube/app/ui/a;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/ui/ev;)Lcom/google/android/youtube/core/ui/l;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->p:Lcom/google/android/youtube/core/ui/l;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/app/ui/ev;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->d:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/app/ui/ev;)Lcom/google/android/youtube/app/a;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->c:Lcom/google/android/youtube/app/a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->q:Lcom/google/android/youtube/core/model/MusicVideo;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/ev;->r:Z

    .line 95
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/ev;->c()V

    .line 96
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 6
    .parameter

    .prologue
    .line 106
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->q:Lcom/google/android/youtube/core/model/MusicVideo;

    .line 108
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/ev;->r:Z

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->couldBeMusicVideo()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 109
    :cond_10
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->g:Lcom/google/android/youtube/core/b/ai;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ev;->a:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/youtube/app/ui/ex;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/app/ui/ex;-><init>(Lcom/google/android/youtube/app/ui/ev;)V

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/b/ai;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 113
    :goto_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/ev;->r:Z

    .line 114
    return-void

    .line 111
    :cond_26
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/ev;->c()V

    goto :goto_22
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->q:Lcom/google/android/youtube/core/model/MusicVideo;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/ev;->r:Z

    .line 101
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/ev;->b()V

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->g:Lcom/google/android/youtube/core/b/ai;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ev;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/ew;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/ui/ew;-><init>(Lcom/google/android/youtube/app/ui/ev;)V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/b/ai;->b(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 103
    return-void
.end method

.method public final h()V
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ev;->q:Lcom/google/android/youtube/core/model/MusicVideo;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/MusicVideo;->artistId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/ev;->b(Ljava/lang/String;)V

    .line 336
    return-void
.end method
