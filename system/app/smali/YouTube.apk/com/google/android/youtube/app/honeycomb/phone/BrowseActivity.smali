.class public Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/as;


# instance fields
.field private m:Lcom/google/android/youtube/core/async/GDataRequestFactory;

.field private n:Lcom/google/android/youtube/core/async/ar;

.field private o:Lcom/google/android/youtube/core/b/ag;

.field private p:Lcom/google/android/youtube/core/b/ai;

.field private q:Lcom/google/android/youtube/core/d;

.field private r:Lcom/google/android/youtube/core/j;

.field private s:Lcom/google/android/youtube/app/ui/aq;

.field private t:Lcom/google/android/youtube/app/ui/aq;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Lcom/google/android/youtube/app/ui/eh;

.field private y:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

.field private z:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;)Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->y:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;)Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->y:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)V

    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->x:Lcom/google/android/youtube/app/ui/eh;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->m:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iget-object v4, p1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->feed:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->v:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->u:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/eh;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 139
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;)Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->z:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 69
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->m:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 70
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->i()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->n:Lcom/google/android/youtube/core/async/ar;

    .line 71
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->o:Lcom/google/android/youtube/core/b/ag;

    .line 72
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->p:Lcom/google/android/youtube/core/b/ai;

    .line 73
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->q:Lcom/google/android/youtube/core/d;

    .line 74
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->u:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->r:Lcom/google/android/youtube/core/j;

    .line 76
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Enum;)V
    .registers 4
    .parameter

    .prologue
    .line 38
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->z:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->y:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->z:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)V

    return-void
.end method

.method protected final b(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 128
    packed-switch p1, :pswitch_data_c

    .line 132
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 130
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->s:Lcom/google/android/youtube/app/ui/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aq;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 128
    :pswitch_data_c
    .packed-switch 0x3fa
        :pswitch_5
    .end packed-switch
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    const-string v0, "yt_browse"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f04000f

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 84
    const-string v1, "category_label"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->w:Ljava/lang/String;

    .line 85
    const-string v1, "category_term"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->v:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->b(Ljava/lang/String;)V

    .line 89
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 90
    const v1, 0x7f080026

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 93
    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    const v3, 0x7f04002d

    invoke-static {p0, p0, v2, v1, v3}, Lcom/google/android/youtube/app/ui/aq;->a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/as;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;Landroid/widget/Spinner;I)Lcom/google/android/youtube/app/ui/aq;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->s:Lcom/google/android/youtube/app/ui/aq;

    .line 95
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/f;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/phone/f;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;)V

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    invoke-static {p0, v1, v2, v0}, Lcom/google/android/youtube/app/ui/aq;->a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/as;Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;Landroid/widget/Spinner;)Lcom/google/android/youtube/app/ui/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->t:Lcom/google/android/youtube/app/ui/aq;

    .line 104
    new-instance v0, Lcom/google/android/youtube/app/ui/eh;

    const v1, 0x7f080027

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/ui/g;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->o:Lcom/google/android/youtube/core/b/ag;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->p:Lcom/google/android/youtube/core/b/ai;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->r:Lcom/google/android/youtube/core/j;

    invoke-static {p0, v1, v3, v4}, Lcom/google/android/youtube/app/adapter/bb;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/j;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->n:Lcom/google/android/youtube/core/async/ar;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->q:Lcom/google/android/youtube/core/d;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v7

    sget-object v9, Lcom/google/android/youtube/app/m;->K:Lcom/google/android/youtube/core/b/aj;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->v()Lcom/google/android/youtube/core/Analytics;

    move-result-object v10

    sget-object v11, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Browse:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    move-object v1, p0

    move v8, v6

    invoke-direct/range {v0 .. v11}, Lcom/google/android/youtube/app/ui/eh;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;ZLcom/google/android/youtube/app/a;ZLcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->x:Lcom/google/android/youtube/app/ui/eh;

    .line 116
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 120
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStart()V

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->s:Lcom/google/android/youtube/app/ui/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aq;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->z:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->t:Lcom/google/android/youtube/app/ui/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aq;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->y:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->y:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->z:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)V

    .line 124
    return-void
.end method
