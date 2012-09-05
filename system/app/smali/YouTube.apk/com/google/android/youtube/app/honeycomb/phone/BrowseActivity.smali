.class public Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/al;


# instance fields
.field private a:Lcom/google/android/youtube/core/async/GDataRequestFactory;

.field private b:Lcom/google/android/youtube/core/async/ad;

.field private c:Lcom/google/android/youtube/core/client/af;

.field private d:Lcom/google/android/youtube/core/client/ag;

.field private e:Lcom/google/android/youtube/core/e;

.field private f:Lcom/google/android/youtube/app/ui/aj;

.field private g:Lcom/google/android/youtube/app/ui/aj;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/google/android/youtube/app/ui/cv;

.field private l:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

.field private m:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "category_term"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "category_label"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;)Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->l:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;)Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->l:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)V

    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->k:Lcom/google/android/youtube/app/ui/cv;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->a:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iget-object v4, p1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->feed:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->i:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->h:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 138
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;)Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->m:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    return-object v0
.end method


# virtual methods
.method protected final a(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 127
    packed-switch p1, :pswitch_data_c

    .line 131
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 129
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->f:Lcom/google/android/youtube/app/ui/aj;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aj;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 127
    :pswitch_data_c
    .packed-switch 0x3fa
        :pswitch_5
    .end packed-switch
.end method

.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    const-string v0, "yt_browse"

    return-object v0
.end method

.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 69
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->a:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 70
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->g()Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->b:Lcom/google/android/youtube/core/async/ad;

    .line 71
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->c:Lcom/google/android/youtube/core/client/af;

    .line 72
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->m()Lcom/google/android/youtube/core/client/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->d:Lcom/google/android/youtube/core/client/ag;

    .line 73
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->e:Lcom/google/android/youtube/core/e;

    .line 74
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Enum;)V
    .registers 4
    .parameter

    .prologue
    .line 39
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->m:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->l:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->m:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f040007

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->setContentView(I)V

    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->h:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 83
    const-string v1, "category_label"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->j:Ljava/lang/String;

    .line 84
    const-string v1, "category_term"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->i:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->a(Ljava/lang/String;)V

    .line 88
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 89
    const v1, 0x7f090014

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 92
    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    const v3, 0x7f04001a

    invoke-static {p0, p0, v2, v1, v3}, Lcom/google/android/youtube/app/ui/aj;->a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/al;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;Landroid/widget/Spinner;I)Lcom/google/android/youtube/app/ui/aj;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->f:Lcom/google/android/youtube/app/ui/aj;

    .line 94
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/d;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/phone/d;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;)V

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    invoke-static {p0, v1, v2, v0}, Lcom/google/android/youtube/app/ui/aj;->a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/al;Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;Landroid/widget/Spinner;)Lcom/google/android/youtube/app/ui/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->g:Lcom/google/android/youtube/app/ui/aj;

    .line 103
    new-instance v0, Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v2

    const v1, 0x7f09001e

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/ui/h;

    invoke-static {p0}, Lcom/google/android/youtube/app/a/x;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/a/x;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->b:Lcom/google/android/youtube/core/async/ad;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->c:Lcom/google/android/youtube/core/client/af;

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->d:Lcom/google/android/youtube/core/client/ag;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->n()Lcom/google/android/youtube/core/Analytics;

    move-result-object v8

    sget-object v9, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Browse:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v10, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->BROWSE:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    iget-object v11, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->e:Lcom/google/android/youtube/core/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/youtube/app/ui/cv;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->k:Lcom/google/android/youtube/app/ui/cv;

    .line 115
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 119
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStart()V

    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->f:Lcom/google/android/youtube/app/ui/aj;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aj;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->m:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->g:Lcom/google/android/youtube/app/ui/aj;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aj;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->l:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->l:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->m:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)V

    .line 123
    return-void
.end method
