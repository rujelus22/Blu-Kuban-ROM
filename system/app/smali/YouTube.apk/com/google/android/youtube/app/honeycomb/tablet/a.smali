.class public final Lcom/google/android/youtube/app/honeycomb/tablet/a;
.super Lcom/google/android/youtube/app/honeycomb/tablet/an;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field private a:Landroid/widget/ListView;

.field private h:Landroid/widget/ArrayAdapter;

.field private final i:Lcom/google/android/youtube/core/client/ad;

.field private final j:Lcom/google/android/youtube/core/client/af;

.field private final k:Lcom/google/android/youtube/core/client/ag;

.field private final l:Lcom/google/android/youtube/core/e;

.field private final m:Ljava/lang/String;

.field private n:Lcom/google/android/youtube/core/model/Category;

.field private o:Lcom/google/android/youtube/app/ui/aj;

.field private p:Lcom/google/android/youtube/app/ui/aj;

.field private q:Lcom/google/android/youtube/app/ui/aj;

.field private r:Lcom/google/android/youtube/app/ui/cv;

.field private s:Lcom/google/android/youtube/app/honeycomb/ui/b;

.field private t:Lcom/google/android/youtube/app/honeycomb/ui/d;

.field private u:Landroid/view/View;

.field private v:Z

.field private w:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    const/4 v4, 0x0

    const-string v5, "yt_browse"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/tablet/an;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->v:Z

    .line 85
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->i:Lcom/google/android/youtube/core/client/ad;

    .line 86
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->j:Lcom/google/android/youtube/core/client/af;

    .line 87
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->m()Lcom/google/android/youtube/core/client/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->k:Lcom/google/android/youtube/core/client/ag;

    .line 88
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->l:Lcom/google/android/youtube/core/e;

    .line 89
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->m:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ae;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->w:Z

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/a;)V
    .registers 1
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/a;->f()V

    return-void
.end method

.method private a(Z)V
    .registers 9
    .parameter

    .prologue
    const v6, 0x7f09001f

    const v5, 0x7f090014

    const/4 v4, 0x4

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 256
    if-eqz p1, :cond_43

    .line 257
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->u:Landroid/view/View;

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->u:Landroid/view/View;

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->u:Landroid/view/View;

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->u:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->u:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 269
    :goto_42
    return-void

    .line 263
    :cond_43
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->u:Landroid/view/View;

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->u:Landroid/view/View;

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->u:Landroid/view/View;

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->u:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->u:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_42
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/a;Lcom/google/android/youtube/core/model/LiveEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 53
    sget-object v2, Lcom/google/android/youtube/app/honeycomb/tablet/f;->a:[I

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->q:Lcom/google/android/youtube/app/ui/aj;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aj;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_2e

    :cond_14
    move v0, v1

    :goto_15
    return v0

    :pswitch_16
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/LiveEvent;->isLiveNow()Z

    move-result v0

    goto :goto_15

    :pswitch_1b
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/LiveEvent;->isUpcoming()Z

    move-result v0

    goto :goto_15

    :pswitch_20
    iget-object v0, p1, Lcom/google/android/youtube/core/model/LiveEvent;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    sget-object v2, Lcom/google/android/youtube/core/model/LiveEvent$Status;->COMPLETED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    if-ne v0, v2, :cond_2c

    iget-object v0, p1, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget v0, v0, Lcom/google/android/youtube/core/model/Video;->duration:I

    if-nez v0, :cond_14

    :cond_2c
    const/4 v0, 0x0

    goto :goto_15

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1b
        :pswitch_20
    .end packed-switch
.end method

.method private e()V
    .registers 5

    .prologue
    .line 221
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->i:Lcom/google/android/youtube/core/client/ad;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g:Landroid/app/Activity;

    invoke-static {v3, p0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/youtube/core/client/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    .line 223
    return-void
.end method

.method private f()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->i:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    .line 227
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->n:Lcom/google/android/youtube/core/model/Category;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->n:Lcom/google/android/youtube/core/model/Category;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Category;->isLive()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 228
    invoke-direct {p0, v6}, Lcom/google/android/youtube/app/honeycomb/tablet/a;->a(Z)V

    .line 229
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->t:Lcom/google/android/youtube/app/honeycomb/ui/d;

    new-array v2, v6, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->q:Lcom/google/android/youtube/app/ui/aj;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aj;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    invoke-virtual {v3, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/d;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 231
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->s:Lcom/google/android/youtube/app/honeycomb/ui/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/b;->b()V

    .line 241
    :goto_31
    return-void

    .line 233
    :cond_32
    invoke-direct {p0, v5}, Lcom/google/android/youtube/app/honeycomb/tablet/a;->a(Z)V

    .line 234
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->s:Lcom/google/android/youtube/app/honeycomb/ui/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/b;->c()V

    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->n:Lcom/google/android/youtube/core/model/Category;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->n:Lcom/google/android/youtube/core/model/Category;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    move-object v2, v0

    .line 236
    :goto_43
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->p:Lcom/google/android/youtube/app/ui/aj;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aj;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    .line 237
    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->o:Lcom/google/android/youtube/app/ui/aj;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/aj;->b()Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-virtual {v3, v0, v2, v4, v1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->r:Lcom/google/android/youtube/app/ui/cv;

    new-array v2, v6, [Lcom/google/android/youtube/core/async/GDataRequest;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_31

    .line 235
    :cond_63
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_43
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 95
    const v0, 0x7f040008

    return v0
.end method

.method protected final a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/os/Bundle;)V

    .line 189
    const-string v0, "selected_feed_filter"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->p:Lcom/google/android/youtube/app/ui/aj;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/aj;->b()Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 191
    const-string v0, "selected_time_filter"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->o:Lcom/google/android/youtube/app/ui/aj;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/aj;->b()Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 192
    const-string v0, "selected_category"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->n:Lcom/google/android/youtube/core/model/Category;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 193
    const-string v0, "selected_live_filter"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->q:Lcom/google/android/youtube/app/ui/aj;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/aj;->b()Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 195
    return-void
.end method

.method protected final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 217
    const v0, 0x7f0900c8

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 218
    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 101
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->u:Landroid/view/View;

    .line 102
    const v0, 0x7f090020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->a:Landroid/widget/ListView;

    .line 103
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    const v2, 0x7f040047

    const v3, 0x7f090086

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h:Landroid/widget/ArrayAdapter;

    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    new-instance v4, Lcom/google/android/youtube/app/honeycomb/tablet/b;

    invoke-direct {v4, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/b;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/a;)V

    .line 114
    new-instance v5, Lcom/google/android/youtube/app/honeycomb/tablet/c;

    invoke-direct {v5, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/c;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/a;)V

    .line 120
    new-instance v6, Lcom/google/android/youtube/app/honeycomb/tablet/d;

    invoke-direct {v6, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/d;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/a;)V

    .line 127
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->TOP_RATED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    .line 128
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 129
    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;->LIVE_NOW:Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    .line 130
    if-eqz p2, :cond_64

    .line 131
    const-string v0, "selected_feed_filter"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    .line 133
    const-string v1, "selected_time_filter"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 135
    const-string v2, "selected_live_filter"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    .line 137
    const-string v3, "selected_category"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/model/Category;

    iput-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->n:Lcom/google/android/youtube/core/model/Category;

    :cond_64
    move-object v3, v0

    .line 141
    const v0, 0x7f090014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 142
    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g:Landroid/app/Activity;

    const v8, 0x7f04001a

    invoke-static {v7, v4, v1, v0, v8}, Lcom/google/android/youtube/app/ui/aj;->a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/al;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;Landroid/widget/Spinner;I)Lcom/google/android/youtube/app/ui/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->o:Lcom/google/android/youtube/app/ui/aj;

    .line 144
    const v0, 0x7f09001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 145
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g:Landroid/app/Activity;

    invoke-static {v1, v5, v3, v0}, Lcom/google/android/youtube/app/ui/aj;->a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/al;Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;Landroid/widget/Spinner;)Lcom/google/android/youtube/app/ui/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->p:Lcom/google/android/youtube/app/ui/aj;

    .line 147
    const v0, 0x7f090022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 148
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g:Landroid/app/Activity;

    invoke-static {v1, v6, v2, v0}, Lcom/google/android/youtube/app/ui/aj;->a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/al;Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;Landroid/widget/Spinner;)Lcom/google/android/youtube/app/ui/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->q:Lcom/google/android/youtube/app/ui/aj;

    .line 151
    new-instance v0, Lcom/google/android/youtube/app/ui/cv;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->d:Lcom/google/android/youtube/app/o;

    const v3, 0x7f090021

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/ui/h;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/youtube/app/a/x;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/a/x;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->i:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v5}, Lcom/google/android/youtube/core/client/ad;->g()Lcom/google/android/youtube/core/async/ad;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->j:Lcom/google/android/youtube/core/client/af;

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->k:Lcom/google/android/youtube/core/client/ag;

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v8}, Lcom/google/android/youtube/app/YouTubeApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v8

    sget-object v9, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Browse:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v10, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->BROWSE:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    iget-object v11, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->l:Lcom/google/android/youtube/core/e;

    invoke-direct/range {v0 .. v11}, Lcom/google/android/youtube/app/ui/cv;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->r:Lcom/google/android/youtube/app/ui/cv;

    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/b;->a(Landroid/content/Context;)Lcom/google/android/youtube/app/honeycomb/ui/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->s:Lcom/google/android/youtube/app/honeycomb/ui/b;

    .line 165
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/e;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->d:Lcom/google/android/youtube/app/o;

    const v1, 0x7f090023

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/h;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->s:Lcom/google/android/youtube/app/honeycomb/ui/b;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->i:Lcom/google/android/youtube/core/client/ad;

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->l:Lcom/google/android/youtube/core/e;

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->j:Lcom/google/android/youtube/core/client/af;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v9

    sget-object v10, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Browse:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v11, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->BROWSE:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/youtube/app/honeycomb/tablet/e;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/a;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/honeycomb/ui/b;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->t:Lcom/google/android/youtube/app/honeycomb/ui/d;

    .line 183
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/a;->e()V

    .line 184
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 53
    const-string v0, "Categories request failed"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/model/Category;->createAllCategory(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/google/android/youtube/core/model/Category;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->w:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/model/Category;->createLiveCategory(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/google/android/youtube/core/model/Category;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_2f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h:Landroid/widget/ArrayAdapter;

    invoke-static {p2, v0, v1}, Lcom/google/android/youtube/core/converter/http/f;->a(Ljava/util/List;Ljava/lang/String;Landroid/widget/ArrayAdapter;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->n:Lcom/google/android/youtube/core/model/Category;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->n:Lcom/google/android/youtube/core/model/Category;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_65

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->n:Lcom/google/android/youtube/core/model/Category;

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Category;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->n:Lcom/google/android/youtube/core/model/Category;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_62
    iput-boolean v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->v:Z

    return-void

    :cond_65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->n:Lcom/google/android/youtube/core/model/Category;

    goto :goto_4f
.end method

.method protected final h_()V
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->r:Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cv;->a()V

    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->s:Lcom/google/android/youtube/app/honeycomb/ui/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/b;->c()V

    .line 211
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->h_()V

    .line 212
    return-void
.end method

.method protected final i_()V
    .registers 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->i_()V

    .line 200
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->v:Z

    if-nez v0, :cond_a

    .line 202
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/a;->e()V

    .line 204
    :cond_a
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/a;->f()V

    .line 205
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Category;

    .line 305
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->n:Lcom/google/android/youtube/core/model/Category;

    if-eq v1, v0, :cond_1d

    .line 306
    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->n:Lcom/google/android/youtube/core/model/Category;

    .line 307
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 308
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/a;->f()V

    .line 310
    :cond_1d
    return-void
.end method
