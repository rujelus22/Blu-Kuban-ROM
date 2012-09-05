.class public Lcom/google/android/youtube/app/ui/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/core/async/av;


# instance fields
.field private final A:Landroid/widget/ImageButton;

.field private B:Lcom/google/android/youtube/core/model/Video;

.field private final a:Landroid/app/Activity;

.field private final b:Lcom/google/android/youtube/core/Analytics;

.field private final c:Lcom/google/android/youtube/app/o;

.field private final d:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final e:Lcom/google/android/youtube/core/client/ad;

.field private final f:Lcom/google/android/youtube/core/client/af;

.field private final g:Lcom/google/android/youtube/core/utils/i;

.field private h:Lcom/google/android/youtube/app/ui/ch;

.field private final i:Lcom/google/android/youtube/app/ui/dl;

.field private final j:Lcom/google/android/youtube/app/ui/dk;

.field private final k:Landroid/view/View;

.field private final l:Lcom/google/android/youtube/core/ui/l;

.field private final m:Landroid/widget/ImageView;

.field private final n:Landroid/widget/TextView;

.field private final o:Landroid/widget/TextView;

.field private final p:Landroid/widget/TextView;

.field private final q:Landroid/widget/TextView;

.field private final r:Landroid/widget/ImageView;

.field private final s:Landroid/view/View;

.field private final t:Landroid/widget/TextView;

.field private final u:Lcom/google/android/youtube/plus1/f;

.field private final v:Lcom/google/android/youtube/plus1/PlusOneButton;

.field private final w:Landroid/widget/TextView;

.field private final x:Landroid/widget/TextView;

.field private final y:Landroid/widget/TextView;

.field private final z:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/ui/m;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/f;Lcom/google/android/youtube/core/utils/i;)V
    .registers 13
    .parameter
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
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dh;->a:Landroid/app/Activity;

    .line 92
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/dh;->b:Lcom/google/android/youtube/core/Analytics;

    .line 93
    iput-object p4, p0, Lcom/google/android/youtube/app/ui/dh;->c:Lcom/google/android/youtube/app/o;

    .line 94
    iput-object p8, p0, Lcom/google/android/youtube/app/ui/dh;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 95
    iput-object p5, p0, Lcom/google/android/youtube/app/ui/dh;->e:Lcom/google/android/youtube/core/client/ad;

    .line 96
    iput-object p6, p0, Lcom/google/android/youtube/app/ui/dh;->f:Lcom/google/android/youtube/core/client/af;

    .line 97
    iput-object p10, p0, Lcom/google/android/youtube/app/ui/dh;->g:Lcom/google/android/youtube/core/utils/i;

    .line 99
    new-instance v0, Lcom/google/android/youtube/app/ui/dl;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/dl;-><init>(Lcom/google/android/youtube/app/ui/dh;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->i:Lcom/google/android/youtube/app/ui/dl;

    .line 100
    new-instance v0, Lcom/google/android/youtube/app/ui/dk;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/dk;-><init>(Lcom/google/android/youtube/app/ui/dh;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->j:Lcom/google/android/youtube/app/ui/dk;

    .line 102
    const v0, 0x7f0900ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0, p7}, Lcom/google/android/youtube/core/ui/l;->a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/m;)Lcom/google/android/youtube/core/ui/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->l:Lcom/google/android/youtube/core/ui/l;

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->l:Lcom/google/android/youtube/core/ui/l;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/l;->a()V

    .line 106
    const v0, 0x7f0900a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->k:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->k:Landroid/view/View;

    const v1, 0x7f0900ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->m:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f09001c

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/dh;->a(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->n:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->k:Landroid/view/View;

    const-string v1, "title_extended"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->o:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->k:Landroid/view/View;

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->r:Landroid/widget/ImageView;

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->k:Landroid/view/View;

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->s:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->s:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v0, 0x7f0900b6

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/dh;->a(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->t:Landroid/widget/TextView;

    .line 119
    iput-object p9, p0, Lcom/google/android/youtube/app/ui/dh;->u:Lcom/google/android/youtube/plus1/f;

    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->k:Landroid/view/View;

    const v1, 0x7f0900b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/plus1/PlusOneButton;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->v:Lcom/google/android/youtube/plus1/PlusOneButton;

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->v:Lcom/google/android/youtube/plus1/PlusOneButton;

    if-eqz v0, :cond_9a

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->v:Lcom/google/android/youtube/plus1/PlusOneButton;

    invoke-virtual {v0, p1, p9}, Lcom/google/android/youtube/plus1/PlusOneButton;->a(Landroid/app/Activity;Lcom/google/android/youtube/plus1/f;)V

    .line 125
    :cond_9a
    const v0, 0x7f090044

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/dh;->a(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->w:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0900ad

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/dh;->a(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->p:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0900b7

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/dh;->a(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->x:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0900b8

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/dh;->a(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->y:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0900ae

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/dh;->a(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->q:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->k:Landroid/view/View;

    const-string v1, "like_button"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->z:Landroid/widget/ImageButton;

    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->z:Landroid/widget/ImageButton;

    if-eqz v0, :cond_dc

    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_dc
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->k:Landroid/view/View;

    const-string v1, "dislike_button"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->A:Landroid/widget/ImageButton;

    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->A:Landroid/widget/ImageButton;

    if-eqz v0, :cond_f1

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->A:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    :cond_f1
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/dh;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(I)Landroid/widget/TextView;
    .registers 3
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private a(III)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_2a

    .line 279
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dh;->a:Landroid/app/Activity;

    const v2, 0x7f0a0160

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_2a
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/dh;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->g:Lcom/google/android/youtube/core/utils/i;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/i;->a()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->u:Lcom/google/android/youtube/plus1/f;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/plus1/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 218
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 219
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/dh;->b()V

    .line 221
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->v:Lcom/google/android/youtube/plus1/PlusOneButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.youtube.com/watch?v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dh;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/plus1/PlusOneButton;->a(Landroid/net/Uri;)V

    .line 226
    :goto_36
    return-void

    .line 223
    :cond_37
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 224
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/dh;->c()V

    goto :goto_36
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/dh;)Lcom/google/android/youtube/app/ui/dk;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->j:Lcom/google/android/youtube/app/ui/dk;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/dh;)Lcom/google/android/youtube/core/client/af;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->f:Lcom/google/android/youtube/core/client/af;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/ui/dh;)V
    .registers 4
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->r:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dh;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020008

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic f(Lcom/google/android/youtube/app/ui/dh;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->r:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/app/ui/ch;)V
    .registers 4
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dh;->h:Lcom/google/android/youtube/app/ui/ch;

    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->z:Landroid/widget/ImageButton;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->A:Landroid/widget/ImageButton;

    if-eqz v0, :cond_11

    .line 144
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->z:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dh;->A:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/youtube/app/ui/ch;->a(Landroid/view/View;Landroid/view/View;)V

    .line 146
    :cond_11
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Branding;)V
    .registers 6
    .parameter

    .prologue
    .line 244
    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Branding;->bannerUri:Landroid/net/Uri;

    if-nez v0, :cond_7

    .line 264
    :cond_6
    :goto_6
    return-void

    .line 248
    :cond_7
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->f:Lcom/google/android/youtube/core/client/af;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Branding;->bannerUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dh;->a:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/youtube/app/ui/di;

    invoke-direct {v3, p0, p1}, Lcom/google/android/youtube/app/ui/di;-><init>(Lcom/google/android/youtube/app/ui/dh;Lcom/google/android/youtube/core/model/Branding;)V

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/af;->f(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_6
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 3
    .parameter

    .prologue
    .line 213
    iget-object v0, p1, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/dh;->b(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 159
    const-string v0, "video can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->B:Lcom/google/android/youtube/core/model/Video;

    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->n:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->o:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_24
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->uploadedDate:Ljava/util/Date;

    if-eqz v0, :cond_c2

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dh;->a:Landroid/app/Activity;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Video;->uploadedDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    :goto_3e
    iget v0, p1, Lcom/google/android/youtube/core/model/Video;->viewCount:I

    iget v2, p1, Lcom/google/android/youtube/core/model/Video;->likesCount:I

    iget v3, p1, Lcom/google/android/youtube/core/model/Video;->dislikesCount:I

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/youtube/app/ui/dh;->a(III)V

    .line 180
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->t:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Video;->ownerDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->v:Lcom/google/android/youtube/plus1/PlusOneButton;

    if-eqz v0, :cond_6a

    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/av;)V

    .line 188
    :cond_6a
    const-string v0, "video can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/youtube/app/ui/cj;->a:[I

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Video$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_d0

    move v0, v1

    :goto_7d
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dh;->z:Landroid/widget/ImageButton;

    if-eqz v2, :cond_8f

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dh;->A:Landroid/widget/ImageButton;

    if-eqz v2, :cond_8f

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dh;->z:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dh;->A:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 190
    :cond_8f
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->w:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->x:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->categoryLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->y:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->tags:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->l:Lcom/google/android/youtube/core/ui/l;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/l;->b()V

    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_c1

    .line 198
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->e:Lcom/google/android/youtube/core/client/ad;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dh;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/dh;->i:Lcom/google/android/youtube/app/ui/dl;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/ad;->e(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    .line 202
    :cond_c1
    return-void

    .line 175
    :cond_c2
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3e

    .line 188
    :pswitch_c9
    const/4 v0, 0x1

    goto :goto_7d

    :pswitch_cb
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    goto :goto_7d

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_cb
    .end packed-switch
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/dh;->b(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->l:Lcom/google/android/youtube/core/ui/l;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/ui/l;->a(Ljava/lang/String;Z)V

    .line 156
    return-void
.end method

.method public final a(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 288
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->B:Lcom/google/android/youtube/core/model/Video;

    iget v3, v0, Lcom/google/android/youtube/core/model/Video;->viewCount:I

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->B:Lcom/google/android/youtube/core/model/Video;

    iget v4, v0, Lcom/google/android/youtube/core/model/Video;->likesCount:I

    if-eqz p1, :cond_1a

    move v0, v1

    :goto_d
    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/dh;->B:Lcom/google/android/youtube/core/model/Video;

    iget v4, v4, Lcom/google/android/youtube/core/model/Video;->dislikesCount:I

    if-eqz p1, :cond_1c

    :goto_14
    add-int v1, v4, v2

    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/youtube/app/ui/dh;->a(III)V

    .line 290
    return-void

    :cond_1a
    move v0, v2

    .line 288
    goto :goto_d

    :cond_1c
    move v2, v1

    goto :goto_14
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->v:Lcom/google/android/youtube/plus1/PlusOneButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/plus1/PlusOneButton;->setVisibility(I)V

    .line 234
    return-void
.end method

.method protected c()V
    .registers 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->v:Lcom/google/android/youtube/plus1/PlusOneButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/plus1/PlusOneButton;->setVisibility(I)V

    .line 230
    return-void
.end method

.method public final d()V
    .registers 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->l:Lcom/google/android/youtube/core/ui/l;

    const v1, 0x7f0a00d7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/ui/l;->a(IZ)V

    .line 151
    return-void
.end method

.method public final d_()V
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/dh;->b(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->s:Landroid/view/View;

    if-ne p1, v0, :cond_19

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->B:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_19

    .line 268
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "WatchChannel"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->c:Lcom/google/android/youtube/app/o;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dh;->B:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/o;->a(Ljava/lang/String;)V

    .line 275
    :cond_18
    :goto_18
    return-void

    .line 270
    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->z:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_27

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->h:Lcom/google/android/youtube/app/ui/ch;

    if-eqz v0, :cond_27

    .line 271
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->h:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ch;->a()V

    goto :goto_18

    .line 272
    :cond_27
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->A:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_18

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->h:Lcom/google/android/youtube/app/ui/ch;

    if-eqz v0, :cond_18

    .line 273
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dh;->h:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ch;->b()V

    goto :goto_18
.end method
