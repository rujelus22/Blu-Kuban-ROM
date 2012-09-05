.class public final Lcom/google/android/youtube/app/honeycomb/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/youtube/core/utils/l;


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Landroid/view/View;

.field private final d:Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;

.field private final e:Landroid/widget/ImageView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/Button;

.field private final i:Lcom/google/android/youtube/core/client/ad;

.field private final j:Lcom/google/android/youtube/core/client/af;

.field private final k:Lcom/google/android/youtube/app/o;

.field private final l:Lcom/google/android/youtube/core/async/g;

.field private final m:Lcom/google/android/youtube/core/async/g;

.field private final n:Lcom/google/android/youtube/core/async/g;

.field private final o:Lcom/google/android/youtube/core/utils/l;

.field private p:Lcom/google/android/youtube/core/model/LiveEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/i;

    invoke-direct {v0}, Lcom/google/android/youtube/app/honeycomb/ui/i;-><init>()V

    sput-object v0, Lcom/google/android/youtube/app/honeycomb/ui/h;->a:Lcom/google/android/youtube/core/utils/l;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/app/o;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    sget-object v7, Lcom/google/android/youtube/app/honeycomb/ui/h;->a:Lcom/google/android/youtube/core/utils/l;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/app/honeycomb/ui/h;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/utils/l;)V

    .line 76
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/utils/l;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, "activity can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->b:Landroid/app/Activity;

    .line 92
    const-string v0, "liveTeaserView can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->c:Landroid/view/View;

    .line 94
    const-string v0, "listView can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->d:Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;

    .line 95
    const-string v0, "gdataClient can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/ad;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->i:Lcom/google/android/youtube/core/client/ad;

    .line 96
    const-string v0, "imageClient can\'t be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/af;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->j:Lcom/google/android/youtube/core/client/af;

    .line 97
    const-string v0, "navigation can\'t be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/o;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->k:Lcom/google/android/youtube/app/o;

    .line 99
    const v0, 0x7f09001b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->e:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f09001c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->f:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f09005b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->g:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f09005a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->h:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->h:Landroid/widget/Button;

    const v1, 0x7f0a01ab

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/j;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/ui/j;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/h;)V

    .line 107
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->h:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/k;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/ui/k;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/h;)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->l:Lcom/google/android/youtube/core/async/g;

    .line 111
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/l;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/l;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/h;Z)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->m:Lcom/google/android/youtube/core/async/g;

    .line 112
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/ui/m;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/h;)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->n:Lcom/google/android/youtube/core/async/g;

    .line 113
    const-string v0, "selector can\'t be null"

    invoke-static {p7, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/l;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->o:Lcom/google/android/youtube/core/utils/l;

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/ui/h;Lcom/google/android/youtube/core/model/LiveEvent;)Lcom/google/android/youtube/core/model/LiveEvent;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->p:Lcom/google/android/youtube/core/model/LiveEvent;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/core/utils/l;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->o:Lcom/google/android/youtube/core/utils/l;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/core/model/LiveEvent;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->p:Lcom/google/android/youtube/core/model/LiveEvent;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->d:Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/ui/h;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/ui/h;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/honeycomb/ui/h;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/honeycomb/ui/h;)V
    .registers 4
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->i:Lcom/google/android/youtube/core/client/ad;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->p:Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->n:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/ad;->e(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    return-void
.end method

.method static synthetic h(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/core/async/g;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->m:Lcom/google/android/youtube/core/async/g;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/core/client/af;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->j:Lcom/google/android/youtube/core/client/af;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/app/honeycomb/ui/h;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/app/honeycomb/ui/h;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/youtube/app/honeycomb/ui/h;)Lcom/google/android/youtube/app/o;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->k:Lcom/google/android/youtube/app/o;

    return-object v0
.end method

.method static synthetic m(Lcom/google/android/youtube/app/honeycomb/ui/h;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->h:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;)V
    .registers 4
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->d:Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->a()V

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->i:Lcom/google/android/youtube/core/client/ad;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->l:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/client/ad;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;Lcom/google/android/youtube/core/async/g;)V

    .line 119
    return-void
.end method
