.class public final Lcom/google/android/youtube/app/honeycomb/tablet/a;
.super Lcom/google/android/youtube/app/honeycomb/tablet/ao;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field private a:Landroid/widget/ListView;

.field private h:Landroid/widget/ArrayAdapter;

.field private final i:Lcom/google/android/youtube/core/b/ae;

.field private final j:Lcom/google/android/youtube/core/b/ag;

.field private final k:Lcom/google/android/youtube/core/b/ai;

.field private final l:Lcom/google/android/youtube/core/d;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private o:Lcom/google/android/youtube/core/model/Category;

.field private p:Lcom/google/android/youtube/app/ui/aq;

.field private q:Lcom/google/android/youtube/app/ui/aq;

.field private r:Lcom/google/android/youtube/app/ui/aq;

.field private s:Lcom/google/android/youtube/app/ui/ec;

.field private t:Lcom/google/android/youtube/app/honeycomb/ui/b;

.field private u:Lcom/google/android/youtube/app/honeycomb/ui/d;

.field private v:Landroid/view/View;

.field private w:Z

.field private x:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    const/4 v4, 0x0

    const-string v5, "yt_browse"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->w:Z

    .line 86
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->i:Lcom/google/android/youtube/core/b/ae;

    .line 87
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->j:Lcom/google/android/youtube/core/b/ag;

    .line 88
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->k:Lcom/google/android/youtube/core/b/ai;

    .line 89
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->l:Lcom/google/android/youtube/core/d;

    .line 90
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->m:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->n:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/k;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->x:Z

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/a;)V
    .registers 1
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h()V

    return-void
.end method

.method private a(Z)V
    .registers 9
    .parameter

    .prologue
    const v6, 0x7f080028

    const v5, 0x7f080026

    const/4 v4, 0x4

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 258
    if-eqz p1, :cond_43

    .line 259
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->v:Landroid/view/View;

    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->v:Landroid/view/View;

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->v:Landroid/view/View;

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->v:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->v:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :goto_42
    return-void

    .line 265
    :cond_43
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->v:Landroid/view/View;

    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->v:Landroid/view/View;

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->v:Landroid/view/View;

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->v:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->v:Landroid/view/View;

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

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->r:Lcom/google/android/youtube/app/ui/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aq;->b()Ljava/lang/Enum;

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

.method private g()V
    .registers 5

    .prologue
    .line 223
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->i:Lcom/google/android/youtube/core/b/ae;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g:Landroid/app/Activity;

    invoke-static {v3, p0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/youtube/core/b/ae;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 225
    return-void
.end method

.method private h()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 228
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->i:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->o:Lcom/google/android/youtube/core/model/Category;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->o:Lcom/google/android/youtube/core/model/Category;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Category;->isLive()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 230
    invoke-direct {p0, v6}, Lcom/google/android/youtube/app/honeycomb/tablet/a;->a(Z)V

    .line 231
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->u:Lcom/google/android/youtube/app/honeycomb/ui/d;

    new-array v2, v6, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->r:Lcom/google/android/youtube/app/ui/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aq;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    invoke-virtual {v3, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/d;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 233
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->t:Lcom/google/android/youtube/app/honeycomb/ui/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/b;->b()V

    .line 243
    :goto_31
    return-void

    .line 235
    :cond_32
    invoke-direct {p0, v5}, Lcom/google/android/youtube/app/honeycomb/tablet/a;->a(Z)V

    .line 236
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->t:Lcom/google/android/youtube/app/honeycomb/ui/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/b;->c()V

    .line 237
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->o:Lcom/google/android/youtube/core/model/Category;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->o:Lcom/google/android/youtube/core/model/Category;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    move-object v2, v0

    .line 238
    :goto_43
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->q:Lcom/google/android/youtube/app/ui/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aq;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    .line 239
    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->p:Lcom/google/android/youtube/app/ui/aq;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/aq;->b()Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-virtual {v3, v0, v2, v4, v1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->s:Lcom/google/android/youtube/app/ui/ec;

    new-array v2, v6, [Lcom/google/android/youtube/core/async/GDataRequest;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/ec;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_31

    .line 237
    :cond_63
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_43
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 97
    const v0, 0x7f040010

    return v0
.end method

.method protected final a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/os/Bundle;)V

    .line 191
    const-string v0, "selected_feed_filter"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->q:Lcom/google/android/youtube/app/ui/aq;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/aq;->b()Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 193
    const-string v0, "selected_time_filter"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->p:Lcom/google/android/youtube/app/ui/aq;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/aq;->b()Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 194
    const-string v0, "selected_category"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->o:Lcom/google/android/youtube/core/model/Category;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 195
    const-string v0, "selected_live_filter"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->r:Lcom/google/android/youtube/app/ui/aq;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/aq;->b()Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 197
    return-void
.end method

.method protected final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 219
    const v0, 0x7f08013e

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 220
    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 103
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->v:Landroid/view/View;

    .line 104
    const v0, 0x7f080029

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->a:Landroid/widget/ListView;

    .line 105
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    const v2, 0x7f040080

    const v3, 0x7f080055

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h:Landroid/widget/ArrayAdapter;

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    new-instance v4, Lcom/google/android/youtube/app/honeycomb/tablet/b;

    invoke-direct {v4, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/b;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/a;)V

    .line 116
    new-instance v5, Lcom/google/android/youtube/app/honeycomb/tablet/c;

    invoke-direct {v5, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/c;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/a;)V

    .line 122
    new-instance v6, Lcom/google/android/youtube/app/honeycomb/tablet/d;

    invoke-direct {v6, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/d;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/a;)V

    .line 129
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->TOP_RATED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    .line 130
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 131
    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;->LIVE_NOW:Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    .line 132
    if-eqz p2, :cond_64

    .line 133
    const-string v0, "selected_feed_filter"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    .line 135
    const-string v1, "selected_time_filter"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 137
    const-string v2, "selected_live_filter"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    .line 139
    const-string v3, "selected_category"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/model/Category;

    iput-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->o:Lcom/google/android/youtube/core/model/Category;

    :cond_64
    move-object v3, v0

    .line 143
    const v0, 0x7f080026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 144
    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g:Landroid/app/Activity;

    const v8, 0x7f04002d

    invoke-static {v7, v4, v1, v0, v8}, Lcom/google/android/youtube/app/ui/aq;->a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/as;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;Landroid/widget/Spinner;I)Lcom/google/android/youtube/app/ui/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->p:Lcom/google/android/youtube/app/ui/aq;

    .line 146
    const v0, 0x7f080028

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 147
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g:Landroid/app/Activity;

    invoke-static {v1, v5, v3, v0}, Lcom/google/android/youtube/app/ui/aq;->a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/as;Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;Landroid/widget/Spinner;)Lcom/google/android/youtube/app/ui/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->q:Lcom/google/android/youtube/app/ui/aq;

    .line 149
    const v0, 0x7f08002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 150
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g:Landroid/app/Activity;

    invoke-static {v1, v6, v2, v0}, Lcom/google/android/youtube/app/ui/aq;->a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/as;Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;Landroid/widget/Spinner;)Lcom/google/android/youtube/app/ui/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->r:Lcom/google/android/youtube/app/ui/aq;

    .line 153
    new-instance v0, Lcom/google/android/youtube/app/ui/ec;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->d:Lcom/google/android/youtube/app/a;

    const v3, 0x7f08002a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/ui/g;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/youtube/app/adapter/bt;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/adapter/bt;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->i:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v5}, Lcom/google/android/youtube/core/b/ae;->i()Lcom/google/android/youtube/core/async/ar;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->j:Lcom/google/android/youtube/core/b/ag;

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->k:Lcom/google/android/youtube/core/b/ai;

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v8}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v8

    sget-object v9, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Browse:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v10, Lcom/google/android/youtube/app/m;->K:Lcom/google/android/youtube/core/b/aj;

    iget-object v11, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->l:Lcom/google/android/youtube/core/d;

    invoke-direct/range {v0 .. v11}, Lcom/google/android/youtube/app/ui/ec;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->s:Lcom/google/android/youtube/app/ui/ec;

    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/b;->a(Landroid/content/Context;)Lcom/google/android/youtube/app/honeycomb/ui/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->t:Lcom/google/android/youtube/app/honeycomb/ui/b;

    .line 167
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/e;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->d:Lcom/google/android/youtube/app/a;

    const v1, 0x7f08002c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/g;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->t:Lcom/google/android/youtube/app/honeycomb/ui/b;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->i:Lcom/google/android/youtube/core/b/ae;

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->l:Lcom/google/android/youtube/core/d;

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->j:Lcom/google/android/youtube/core/b/ag;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v9

    sget-object v10, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Browse:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v11, Lcom/google/android/youtube/app/m;->K:Lcom/google/android/youtube/core/b/aj;

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/youtube/app/honeycomb/tablet/e;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/a;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/honeycomb/ui/b;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->u:Lcom/google/android/youtube/app/honeycomb/ui/d;

    .line 185
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g()V

    .line 186
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

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->x:Z

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

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/converter/http/g;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Category;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3b

    :cond_4b
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->o:Lcom/google/android/youtube/core/model/Category;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->o:Lcom/google/android/youtube/core/model/Category;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7a

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_64
    :goto_64
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->o:Lcom/google/android/youtube/core/model/Category;

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Category;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->o:Lcom/google/android/youtube/core/model/Category;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_77
    iput-boolean v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->w:Z

    return-void

    :cond_7a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->o:Lcom/google/android/youtube/core/model/Category;

    goto :goto_64
.end method

.method protected final b()V
    .registers 2

    .prologue
    .line 201
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->b()V

    .line 202
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->w:Z

    if-nez v0, :cond_a

    .line 204
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/a;->g()V

    .line 206
    :cond_a
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h()V

    .line 207
    return-void
.end method

.method protected final c()V
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->s:Lcom/google/android/youtube/app/ui/ec;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ec;->c()V

    .line 212
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->t:Lcom/google/android/youtube/app/honeycomb/ui/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/b;->c()V

    .line 213
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->c()V

    .line 214
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Category;

    .line 307
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->o:Lcom/google/android/youtube/core/model/Category;

    if-eq v1, v0, :cond_1d

    .line 308
    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->o:Lcom/google/android/youtube/core/model/Category;

    .line 309
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 310
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/a;->h()V

    .line 312
    :cond_1d
    return-void
.end method
