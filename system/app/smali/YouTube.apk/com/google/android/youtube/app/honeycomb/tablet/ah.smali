.class public final Lcom/google/android/youtube/app/honeycomb/tablet/ah;
.super Lcom/google/android/youtube/app/honeycomb/tablet/an;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/core/async/av;
.implements Lcom/google/android/youtube/core/player/x;
.implements Lcom/google/android/youtube/core/ui/m;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/google/android/youtube/app/honeycomb/tablet/al;

.field private D:Lcom/google/android/youtube/app/ah;

.field private E:Lcom/google/android/youtube/core/Analytics;

.field private F:Z

.field private G:Lcom/google/android/youtube/app/honeycomb/a/a;

.field private H:Lcom/google/android/youtube/core/client/ad;

.field private I:Lcom/google/android/youtube/core/client/aj;

.field private J:Lcom/google/android/youtube/app/p;

.field private K:Lcom/google/android/youtube/app/ui/at;

.field private L:Lcom/google/android/youtube/app/ui/bc;

.field private M:Lcom/google/android/youtube/app/ae;

.field private N:Lcom/google/android/youtube/core/model/Video;

.field private a:Landroid/media/AudioManager;

.field private h:Lcom/google/android/youtube/app/ui/dh;

.field private i:Lcom/google/android/youtube/app/ui/ds;

.field private j:Lcom/google/android/youtube/app/ui/da;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Landroid/content/SharedPreferences;

.field private p:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private q:Lcom/google/android/youtube/core/e;

.field private r:Lcom/google/android/youtube/core/player/aq;

.field private s:Lcom/google/android/youtube/core/player/p;

.field private t:Lcom/google/android/youtube/app/ui/ch;

.field private u:Lcom/google/android/youtube/coreicecream/ui/h;

.field private v:Landroid/widget/TabHost;

.field private w:Lcom/google/android/youtube/app/honeycomb/tablet/am;

.field private x:Landroid/widget/ImageButton;

.field private y:Landroid/widget/ImageButton;

.field private z:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 241
    const-string v5, "yt_watch"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/tablet/an;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 143
    iput-boolean v6, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->A:Z

    .line 144
    iput-boolean v6, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->B:Z

    .line 242
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    return-object v0
.end method

.method public static a(Landroid/net/Uri;IZLcom/google/android/youtube/core/client/al;)Landroid/os/Bundle;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 211
    const-string v2, "playlist_uri"

    invoke-static {p0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 212
    const-string v0, "playlist_start_position"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    const-string v0, "authenticate"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 214
    const-string v2, "referrer"

    const-string v0, "referrer cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/al;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-object v1
.end method

.method public static a(Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/client/al;)Landroid/os/Bundle;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 228
    const-string v0, "video_id"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v2, "unfavorite_uri"

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 230
    const-string v2, "referrer"

    const-string v0, "referrer cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/al;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-object v1
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/youtube/core/client/al;)Landroid/os/Bundle;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 171
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 172
    const-string v2, "video_id"

    invoke-static {p0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v2, "referrer"

    const-string v0, "referrer cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/al;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-object v1
.end method

.method public static a(Ljava/lang/String;ZLcom/google/android/youtube/core/client/al;)Landroid/os/Bundle;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-static {p0, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->a(Ljava/lang/String;Lcom/google/android/youtube/core/client/al;)Landroid/os/Bundle;

    move-result-object v0

    .line 186
    const-string v1, "authenticate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Lcom/google/android/youtube/app/ui/at;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->K:Lcom/google/android/youtube/app/ui/at;

    return-object v0
.end method

.method private b(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 8
    .parameter

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->l()Landroid/os/Bundle;

    move-result-object v1

    .line 419
    const-string v0, "video_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 420
    const-string v0, "playlist_uri"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 421
    const-string v3, "playlist_start_position"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 422
    const-string v4, "artist_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 424
    const-string v5, "intercepted_uri"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 426
    if-eqz v2, :cond_3a

    .line 427
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->s:Lcom/google/android/youtube/core/player/p;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->H:Lcom/google/android/youtube/core/client/ad;

    invoke-static {v1, v2, p1}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/client/ad;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 429
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->L:Lcom/google/android/youtube/app/ui/bc;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/ui/bc;->a(Ljava/lang/String;)V

    .line 451
    :cond_39
    :goto_39
    return-void

    .line 430
    :cond_3a
    if-eqz v0, :cond_48

    .line 431
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->H:Lcom/google/android/youtube/core/client/ad;

    invoke-static {v1, v0, p1, v3}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/client/ad;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->s:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_39

    .line 434
    :cond_48
    if-nez v4, :cond_39

    .line 436
    if-eqz v1, :cond_71

    .line 437
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/v;

    move-result-object v0

    .line 438
    if-eqz v0, :cond_6b

    .line 439
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->s:Lcom/google/android/youtube/core/player/p;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->H:Lcom/google/android/youtube/core/client/ad;

    iget-object v3, v0, Lcom/google/android/youtube/core/utils/v;->a:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/client/ad;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/youtube/core/utils/v;->b:Ljava/lang/String;

    iget v4, v0, Lcom/google/android/youtube/core/utils/v;->c:I

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/async/a/a;Ljava/lang/String;ILcom/google/android/youtube/core/model/UserAuth;)V

    .line 442
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->L:Lcom/google/android/youtube/app/ui/bc;

    iget-object v0, v0, Lcom/google/android/youtube/core/utils/v;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/bc;->a(Ljava/lang/String;)V

    goto :goto_39

    .line 444
    :cond_6b
    const-string v0, "invalid intercepted URI"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    goto :goto_39

    .line 448
    :cond_71
    const-string v0, "invalid arguments format"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    goto :goto_39
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Lcom/google/android/youtube/app/p;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->J:Lcom/google/android/youtube/app/p;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->E:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Lcom/google/android/youtube/core/player/aq;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->r:Lcom/google/android/youtube/core/player/aq;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    return-object v0
.end method

.method private n()Z
    .registers 3

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 676
    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 246
    const v0, 0x7f04005a

    return v0
.end method

.method protected final a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 469
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/os/Bundle;)V

    .line 470
    const-string v0, "selected_tab_index"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->v:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 471
    const-string v0, "fullscreen"

    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 472
    return-void
.end method

.method protected final a(Landroid/view/Menu;)V
    .registers 6
    .parameter

    .prologue
    const v3, 0x7f0900db

    const/4 v1, 0x0

    .line 499
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/view/Menu;)V

    .line 500
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->n()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_68

    :cond_19
    const/4 v0, 0x2

    :goto_1a
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 503
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->n:Z

    if-eqz v0, :cond_6a

    move v0, v1

    .line 504
    :goto_22
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->x:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 505
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->y:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 506
    const v0, 0x7f0900da

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->n:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 507
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->n:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 508
    const v0, 0x7f0900e2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->n:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 509
    const v0, 0x7f0900e3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->n:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 511
    const v0, 0x7f0900e0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->M:Lcom/google/android/youtube/app/ae;

    iget-object v2, v2, Lcom/google/android/youtube/app/ae;->a:Lcom/google/android/youtube/app/af;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 513
    return-void

    :cond_68
    move v0, v1

    .line 500
    goto :goto_1a

    .line 503
    :cond_6a
    const/4 v0, 0x4

    goto :goto_22
.end method

.method protected final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 476
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 477
    const v0, 0x7f110008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 479
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_35

    .line 480
    const v0, 0x7f0900db

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 481
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v0

    check-cast v0, Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->N:Lcom/google/android/youtube/core/model/Video;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->N:Lcom/google/android/youtube/core/model/Video;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;Lcom/google/android/youtube/core/model/Video;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/ak;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ak;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)V

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 483
    :cond_35
    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 22
    .parameter
    .parameter

    .prologue
    .line 251
    invoke-super/range {p0 .. p2}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    const v3, 0x7f0a019b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/ae;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->M:Lcom/google/android/youtube/app/ae;

    .line 256
    new-instance v2, Lcom/google/android/youtube/app/honeycomb/tablet/am;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/youtube/app/honeycomb/tablet/am;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/ah;Landroid/view/View;F)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->w:Lcom/google/android/youtube/app/honeycomb/tablet/am;

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->w:Lcom/google/android/youtube/app/honeycomb/tablet/am;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->n()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a(Z)V

    .line 259
    new-instance v2, Lcom/google/android/youtube/core/player/aq;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->w:Lcom/google/android/youtube/app/honeycomb/tablet/am;

    iget-object v3, v3, Lcom/google/android/youtube/app/honeycomb/tablet/am;->d:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-direct {v2, v3}, Lcom/google/android/youtube/core/player/aq;-><init>(Lcom/google/android/youtube/core/player/PlayerView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->r:Lcom/google/android/youtube/core/player/aq;

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->r:Lcom/google/android/youtube/core/player/aq;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/utils/i;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/utils/i;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->r:Lcom/google/android/youtube/core/player/aq;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->M:Lcom/google/android/youtube/app/ae;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/ae;->g()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/aq;->a(Z)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->r:Lcom/google/android/youtube/core/player/aq;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->M:Lcom/google/android/youtube/app/ae;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/ae;->h()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/aq;->b(Z)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->H:Lcom/google/android/youtube/core/client/ad;

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v17

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->k()Lcom/google/android/youtube/core/client/aj;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->I:Lcom/google/android/youtube/core/client/aj;

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/client/a;

    move-result-object v6

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->l()Lcom/google/android/youtube/core/client/ah;

    move-result-object v8

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->m()Lcom/google/android/youtube/core/client/ag;

    move-result-object v18

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/utils/i;

    move-result-object v16

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->p:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->C()Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->o:Landroid/content/SharedPreferences;

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->s()Lcom/google/android/youtube/app/ah;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->D:Lcom/google/android/youtube/app/ah;

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->E:Lcom/google/android/youtube/core/Analytics;

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->q:Lcom/google/android/youtube/core/e;

    .line 278
    new-instance v2, Lcom/google/android/youtube/app/honeycomb/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/google/android/youtube/app/honeycomb/a/a;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->G:Lcom/google/android/youtube/app/honeycomb/a/a;

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->w:Lcom/google/android/youtube/app/honeycomb/tablet/am;

    iget-object v2, v2, Lcom/google/android/youtube/app/honeycomb/tablet/am;->d:Lcom/google/android/youtube/core/player/PlayerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->G:Lcom/google/android/youtube/app/honeycomb/a/a;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 281
    new-instance v13, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->E:Lcom/google/android/youtube/core/Analytics;

    invoke-direct {v13, v2, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->r:Lcom/google/android/youtube/core/player/aq;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->o:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->H:Lcom/google/android/youtube/core/client/ad;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->I:Lcom/google/android/youtube/core/client/aj;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->p:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->E:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v11}, Lcom/google/android/youtube/app/YouTubeApplication;->c()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/google/android/youtube/core/player/n;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-direct {v14, v12}, Lcom/google/android/youtube/core/player/n;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->q:Lcom/google/android/youtube/core/e;

    move-object/from16 v12, p0

    invoke-static/range {v2 .. v16}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/player/aq;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/a;Lcom/google/android/youtube/core/client/aj;Lcom/google/android/youtube/core/client/ah;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/core/player/x;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/l;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/utils/i;)Lcom/google/android/youtube/core/player/p;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->s:Lcom/google/android/youtube/core/player/p;

    .line 299
    new-instance v2, Lcom/google/android/youtube/coreicecream/ui/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->w:Lcom/google/android/youtube/app/honeycomb/tablet/am;

    iget-object v3, v3, Lcom/google/android/youtube/app/honeycomb/tablet/am;->d:Lcom/google/android/youtube/core/player/PlayerView;

    new-instance v4, Lcom/google/android/youtube/app/honeycomb/tablet/ai;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Lcom/google/android/youtube/app/honeycomb/tablet/ai;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/ah;Lcom/google/android/youtube/core/player/ControllerOverlay;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/coreicecream/ui/h;-><init>(Landroid/view/View;Lcom/google/android/youtube/coreicecream/ui/i;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->u:Lcom/google/android/youtube/coreicecream/ui/h;

    .line 306
    new-instance v6, Lcom/google/android/youtube/app/ui/dh;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->E:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->d:Lcom/google/android/youtube/app/o;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->H:Lcom/google/android/youtube/core/client/ad;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->p:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/plus1/f;

    move-result-object v15

    move-object/from16 v8, p1

    move-object/from16 v12, v17

    move-object/from16 v13, p0

    invoke-direct/range {v6 .. v16}, Lcom/google/android/youtube/app/ui/dh;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/ui/m;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/f;Lcom/google/android/youtube/core/utils/i;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->h:Lcom/google/android/youtube/app/ui/dh;

    .line 309
    new-instance v2, Lcom/google/android/youtube/app/ui/ds;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    const v4, 0x7f0900a3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/h;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-static {v5}, Lcom/google/android/youtube/app/a/x;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/a/x;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->d:Lcom/google/android/youtube/app/o;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->H:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v6}, Lcom/google/android/youtube/core/client/ad;->v()Lcom/google/android/youtube/core/async/ad;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->p:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->H:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v7}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->E:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->q:Lcom/google/android/youtube/core/e;

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    invoke-direct/range {v2 .. v12}, Lcom/google/android/youtube/app/ui/ds;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/GDataRequestFactory;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->i:Lcom/google/android/youtube/app/ui/ds;

    .line 321
    new-instance v2, Lcom/google/android/youtube/app/ui/da;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    const v4, 0x7f0900a4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/PagedListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->H:Lcom/google/android/youtube/core/client/ad;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->e:Lcom/google/android/youtube/app/aa;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v7}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/ae;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->E:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->q:Lcom/google/android/youtube/core/e;

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/youtube/app/ui/da;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedListView;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/app/aa;Lcom/google/android/youtube/app/ae;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/e;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->j:Lcom/google/android/youtube/app/ui/da;

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/app/p;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->J:Lcom/google/android/youtube/app/p;

    .line 326
    new-instance v2, Lcom/google/android/youtube/app/ui/at;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->r:Lcom/google/android/youtube/core/player/aq;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->J:Lcom/google/android/youtube/app/p;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->E:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->q:Lcom/google/android/youtube/core/e;

    const/4 v9, 0x0

    move-object/from16 v6, v17

    invoke-direct/range {v2 .. v9}, Lcom/google/android/youtube/app/ui/at;-><init>(Lcom/google/android/youtube/core/player/aq;Landroid/app/Activity;Lcom/google/android/youtube/app/p;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/e;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->K:Lcom/google/android/youtube/app/ui/at;

    .line 328
    new-instance v2, Lcom/google/android/youtube/app/ui/ch;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->H:Lcom/google/android/youtube/core/client/ad;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->p:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->e:Lcom/google/android/youtube/app/aa;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v7}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/ae;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->J:Lcom/google/android/youtube/app/p;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->K:Lcom/google/android/youtube/app/ui/at;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v10}, Lcom/google/android/youtube/app/YouTubeApplication;->q()Lcom/google/android/youtube/app/u;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->E:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->h:Lcom/google/android/youtube/app/ui/dh;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->D:Lcom/google/android/youtube/app/ah;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->d:Lcom/google/android/youtube/app/o;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->q:Lcom/google/android/youtube/core/e;

    invoke-direct/range {v2 .. v15}, Lcom/google/android/youtube/app/ui/ch;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/aa;Lcom/google/android/youtube/app/ae;Lcom/google/android/youtube/app/p;Lcom/google/android/youtube/app/ui/at;Lcom/google/android/youtube/app/u;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/ui/dh;Lcom/google/android/youtube/app/ah;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->t:Lcom/google/android/youtube/app/ui/ch;

    .line 333
    new-instance v2, Lcom/google/android/youtube/app/ui/at;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->r:Lcom/google/android/youtube/core/player/aq;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->J:Lcom/google/android/youtube/app/p;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->E:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->q:Lcom/google/android/youtube/core/e;

    const/4 v9, 0x0

    move-object/from16 v6, v17

    invoke-direct/range {v2 .. v9}, Lcom/google/android/youtube/app/ui/at;-><init>(Lcom/google/android/youtube/core/player/aq;Landroid/app/Activity;Lcom/google/android/youtube/app/p;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/e;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->K:Lcom/google/android/youtube/app/ui/at;

    .line 335
    new-instance v7, Lcom/google/android/youtube/app/honeycomb/tablet/aj;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/aj;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)V

    .line 341
    new-instance v2, Lcom/google/android/youtube/app/ui/bc;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->q()Lcom/google/android/youtube/app/u;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->J:Lcom/google/android/youtube/app/p;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->E:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->q:Lcom/google/android/youtube/core/e;

    const v9, 0x7f040046

    invoke-direct/range {v2 .. v9}, Lcom/google/android/youtube/app/ui/bc;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/u;Lcom/google/android/youtube/app/p;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/ui/bl;Lcom/google/android/youtube/core/e;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->L:Lcom/google/android/youtube/app/ui/bc;

    .line 344
    const/4 v2, 0x0

    .line 345
    if-eqz p2, :cond_2ef

    .line 346
    const-string v2, "selected_tab_index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 347
    const-string v3, "fullscreen"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->l:Z

    :cond_2ef
    move v5, v2

    .line 350
    const v2, 0x1020012

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->v:Landroid/widget/TabHost;

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->v:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 355
    const v2, 0x1020011

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 356
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 357
    const/4 v3, 0x0

    move v6, v3

    :goto_31f
    if-ge v6, v8, :cond_35c

    .line 358
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 359
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 360
    const v3, 0x7f04004c

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->v:Landroid/widget/TabHost;

    const/4 v11, 0x0

    invoke-virtual {v7, v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 361
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->v:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->v:Landroid/widget/TabHost;

    invoke-virtual {v11, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 357
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_31f

    .line 365
    :cond_35c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->v:Landroid/widget/TabHost;

    invoke-virtual {v2, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 367
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->n:Z

    .line 368
    const v2, 0x7f0900b2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->x:Landroid/widget/ImageButton;

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->x:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    const v2, 0x7f0900b3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->y:Landroid/widget/ImageButton;

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->y:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->t:Lcom/google/android/youtube/app/ui/ch;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->x:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->y:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/app/ui/ch;->a(Landroid/view/View;Landroid/view/View;)V

    .line 374
    const v2, 0x7f0900b9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->z:Landroid/widget/ImageButton;

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->z:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->z:Landroid/widget/ImageButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->r:Lcom/google/android/youtube/core/player/aq;

    new-instance v3, Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/aq;->a(Landroid/os/Handler;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->a:Landroid/media/AudioManager;

    .line 383
    new-instance v2, Lcom/google/android/youtube/app/honeycomb/tablet/al;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/al;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->C:Lcom/google/android/youtube/app/honeycomb/tablet/al;

    .line 384
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Branding;)V
    .registers 3
    .parameter

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->h:Lcom/google/android/youtube/app/ui/dh;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/dh;->a(Lcom/google/android/youtube/core/model/Branding;)V

    .line 723
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->i:Lcom/google/android/youtube/app/ui/ds;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/ds;->a(Lcom/google/android/youtube/core/model/Branding;)V

    .line 724
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 2
    .parameter

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->b(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 455
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 533
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->N:Lcom/google/android/youtube/core/model/Video;

    .line 534
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    const v3, 0x7f0a019f

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v5, p1, Lcom/google/android/youtube/core/model/Video;->ownerDisplayName:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->m:Ljava/lang/String;

    .line 536
    iget-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->l:Z

    if-eqz v2, :cond_29

    .line 537
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 540
    :cond_29
    if-eqz p1, :cond_83

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v3, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v2, v3, :cond_83

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->watchUri:Landroid/net/Uri;

    if-eqz v2, :cond_83

    :goto_35
    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->n:Z

    .line 542
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 543
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->t:Lcom/google/android/youtube/app/ui/ch;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "unfavorite_uri"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/youtube/app/ui/ch;->a(Lcom/google/android/youtube/core/model/Video;Landroid/net/Uri;)V

    .line 545
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 547
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->h:Lcom/google/android/youtube/app/ui/dh;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/dh;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 548
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->i:Lcom/google/android/youtube/app/ui/ds;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/ds;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 549
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->j:Lcom/google/android/youtube/app/ui/da;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/da;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 550
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->K:Lcom/google/android/youtube/app/ui/at;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/at;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 551
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->J:Lcom/google/android/youtube/app/p;

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->d()Lcom/google/android/youtube/app/t;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/t;->a:Lcom/google/android/youtube/app/t;

    if-eq v0, v1, :cond_77

    .line 552
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->K:Lcom/google/android/youtube/app/ui/at;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/at;->a()V

    .line 555
    :cond_77
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->G:Lcom/google/android/youtube/app/honeycomb/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/a/a;->b()V

    .line 556
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->F:Z

    .line 557
    return-void

    :cond_83
    move v0, v1

    .line 540
    goto :goto_35
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 458
    const-string v0, "error authenticating for playlist request"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 459
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 460
    return-void
.end method

.method public final a(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x400

    .line 689
    iput-boolean p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->l:Z

    .line 691
    if-nez p1, :cond_4d

    .line 692
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->u:Lcom/google/android/youtube/coreicecream/ui/h;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/coreicecream/ui/h;->a(Z)V

    .line 693
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFlags(II)V

    .line 694
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    const v1, 0x7f0a019b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 695
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 696
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 698
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->k()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;)V

    .line 708
    :goto_39
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->n()Z

    move-result v0

    .line 709
    if-eqz p1, :cond_7b

    .line 711
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 712
    if-eqz v0, :cond_4c

    .line 713
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->w:Lcom/google/android/youtube/app/honeycomb/tablet/am;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a()V

    .line 719
    :cond_4c
    :goto_4c
    return-void

    .line 700
    :cond_4d
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 702
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 705
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->DISABLED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;)V

    goto :goto_39

    .line 716
    :cond_7b
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 717
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->w:Lcom/google/android/youtube/app/honeycomb/tablet/am;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a(Z)V

    goto :goto_4c
.end method

.method public final a(IILandroid/content/Intent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 955
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->L:Lcom/google/android/youtube/app/ui/bc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/app/ui/bc;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 956
    const/4 v0, 0x1

    .line 958
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(IILandroid/content/Intent;)Z

    move-result v0

    goto :goto_9
.end method

.method protected final a(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 634
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_32

    .line 657
    :pswitch_8
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_c
    :goto_c
    return v0

    .line 636
    :pswitch_d
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->t:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/ch;->f()V

    goto :goto_c

    .line 640
    :pswitch_13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_c

    .line 641
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->t:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/ch;->c()V

    goto :goto_c

    .line 646
    :pswitch_1f
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->t:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/ch;->e()V

    goto :goto_c

    .line 650
    :pswitch_25
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->t:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/ch;->d()V

    goto :goto_c

    .line 654
    :pswitch_2b
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->t:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/ch;->g()V

    goto :goto_c

    .line 634
    nop

    :pswitch_data_32
    .packed-switch 0x7f0900da
        :pswitch_d
        :pswitch_13
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_2b
        :pswitch_8
        :pswitch_1f
        :pswitch_25
    .end packed-switch
.end method

.method public final b()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 520
    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->N:Lcom/google/android/youtube/core/model/Video;

    .line 521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->n:Z

    .line 522
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 523
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->t:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/youtube/app/ui/ch;->a(Lcom/google/android/youtube/core/model/Video;Landroid/net/Uri;)V

    .line 524
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->h:Lcom/google/android/youtube/app/ui/dh;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/dh;->d()V

    .line 525
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->i:Lcom/google/android/youtube/app/ui/ds;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ds;->b()V

    .line 526
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->j:Lcom/google/android/youtube/app/ui/da;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/da;->a()V

    .line 527
    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->q:Lcom/google/android/youtube/core/e;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/e;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 561
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->h:Lcom/google/android/youtube/app/ui/dh;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/dh;->a(Ljava/lang/String;)V

    .line 562
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->K:Lcom/google/android/youtube/app/ui/at;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/at;->b(Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public final b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->l:Z

    if-eqz v0, :cond_f

    .line 681
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->w:Lcom/google/android/youtube/app/honeycomb/tablet/am;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a()V

    .line 685
    :goto_9
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 686
    return-void

    .line 683
    :cond_f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->w:Lcom/google/android/youtube/app/honeycomb/tablet/am;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a(Z)V

    goto :goto_9
.end method

.method protected final c(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 605
    sparse-switch p1, :sswitch_data_38

    .line 613
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->s:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/p;->b(I)Landroid/app/Dialog;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_33

    .line 617
    :goto_b
    return-object v0

    .line 609
    :sswitch_c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->t:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/ch;->a(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_b

    .line 611
    :sswitch_13
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->L:Lcom/google/android/youtube/app/ui/bc;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/bc;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v1, 0x7f0a01b1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_b

    .line 617
    :cond_33
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->c(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_b

    .line 605
    :sswitch_data_38
    .sparse-switch
        0x3ed -> :sswitch_c
        0x3f3 -> :sswitch_13
        0x3f4 -> :sswitch_c
        0x3f7 -> :sswitch_c
    .end sparse-switch
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->A:Z

    .line 741
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->F:Z

    if-eqz v0, :cond_c

    .line 742
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->G:Lcom/google/android/youtube/app/honeycomb/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/a/a;->a()V

    .line 744
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->l:Z

    if-eqz v0, :cond_23

    .line 745
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->B:Z

    if-nez v0, :cond_23

    .line 746
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->u:Lcom/google/android/youtube/coreicecream/ui/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/h;->a(Z)V

    .line 747
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 750
    :cond_23
    return-void
.end method

.method protected final d()V
    .registers 2

    .prologue
    .line 598
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->d()V

    .line 599
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->s:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/p;->w()V

    .line 600
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 601
    return-void
.end method

.method public final d_()V
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 464
    return-void
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->A:Z

    .line 754
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->G:Lcom/google/android/youtube/app/honeycomb/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/a/a;->b()V

    .line 755
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->l:Z

    if-eqz v0, :cond_1b

    .line 756
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->u:Lcom/google/android/youtube/coreicecream/ui/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/h;->a(Z)V

    .line 757
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 759
    :cond_1b
    return-void
.end method

.method public final f()V
    .registers 4

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    const v1, 0x7f0a0051

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    .line 728
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 729
    return-void
.end method

.method public final f_()V
    .registers 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->s:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/p;->o()V

    .line 567
    return-void
.end method

.method protected final g()V
    .registers 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->J:Lcom/google/android/youtube/app/p;

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->d()Lcom/google/android/youtube/app/t;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/t;->a:Lcom/google/android/youtube/app/t;

    if-eq v0, v1, :cond_16

    .line 572
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->K:Lcom/google/android/youtube/app/ui/at;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/at;->a()V

    .line 573
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->J:Lcom/google/android/youtube/app/p;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->K:Lcom/google/android/youtube/app/ui/at;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/p;->a(Lcom/google/android/youtube/app/r;)Z

    .line 575
    :cond_16
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->g()V

    .line 576
    return-void
.end method

.method protected final h()V
    .registers 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->J:Lcom/google/android/youtube/app/p;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->K:Lcom/google/android/youtube/app/ui/at;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/p;->c(Lcom/google/android/youtube/app/r;)Z

    .line 581
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->s:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/p;->v()V

    .line 582
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->r:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->g()V

    .line 583
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->h()V

    .line 584
    return-void
.end method

.method protected final h_()V
    .registers 3

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->a:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 589
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->C:Lcom/google/android/youtube/app/honeycomb/tablet/al;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/al;->b()V

    .line 590
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->i:Lcom/google/android/youtube/app/ui/ds;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ds;->b()V

    .line 591
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->j:Lcom/google/android/youtube/app/ui/da;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/da;->a()V

    .line 592
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->u:Lcom/google/android/youtube/coreicecream/ui/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/h;->a(Z)V

    .line 593
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->h_()V

    .line 594
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 771
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_28

    :pswitch_7
    move v0, v1

    .line 788
    :goto_8
    return v0

    .line 773
    :pswitch_9
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->z:Landroid/widget/ImageButton;

    const v2, 0x7f02008d

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_8

    .line 779
    :pswitch_12
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->z:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_8

    .line 783
    :pswitch_19
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->z:Landroid/widget/ImageButton;

    const v3, 0x7f02008c

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 784
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->z:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_8

    .line 771
    nop

    :pswitch_data_28
    .packed-switch 0x2
        :pswitch_19
        :pswitch_9
        :pswitch_12
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public final i()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 763
    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->l:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->k:Z

    if-nez v1, :cond_f

    .line 764
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->s:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/player/p;->b(Z)V

    .line 765
    const/4 v0, 0x1

    .line 767
    :cond_f
    return v0
.end method

.method protected final i_()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 388
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->i_()V

    .line 389
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->l()Landroid/os/Bundle;

    move-result-object v0

    .line 390
    const-string v1, "authenticate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 392
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->s:Lcom/google/android/youtube/core/player/p;

    iget-boolean v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->l:Z

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/p;->b(Z)V

    .line 393
    const-string v2, "force_fullscreen"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 394
    iput-boolean v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->k:Z

    .line 395
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->s:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v2, v4}, Lcom/google/android/youtube/core/player/p;->c(Z)V

    .line 396
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 398
    :cond_2c
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->s:Lcom/google/android/youtube/core/player/p;

    const-string v3, "finish_on_ended"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/p;->d(Z)V

    .line 400
    const-string v2, "referrer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 402
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->I:Lcom/google/android/youtube/core/client/aj;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->parse(Ljava/lang/String;)Lcom/google/android/youtube/core/client/al;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/youtube/core/client/aj;->a(Lcom/google/android/youtube/core/client/al;)V

    .line 405
    :cond_4c
    if-eqz v1, :cond_62

    .line 406
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->p:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 412
    :goto_55
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->a:Landroid/media/AudioManager;

    const/high16 v1, -0x8000

    invoke-virtual {v0, v5, v1, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 414
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->C:Lcom/google/android/youtube/app/honeycomb/tablet/al;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/al;->a()V

    .line 415
    return-void

    .line 408
    :cond_62
    invoke-direct {p0, v5}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->b(Lcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_55
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 661
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1a

    .line 672
    :goto_7
    return-void

    .line 663
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->t:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ch;->a()V

    goto :goto_7

    .line 666
    :sswitch_e
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->t:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ch;->b()V

    goto :goto_7

    .line 669
    :sswitch_14
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->s:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/p;->r()V

    goto :goto_7

    .line 661
    :sswitch_data_1a
    .sparse-switch
        0x7f0900b2 -> :sswitch_8
        0x7f0900b3 -> :sswitch_e
        0x7f0900b9 -> :sswitch_14
    .end sparse-switch
.end method

.method public final onMenuVisibilityChanged(Z)V
    .registers 4
    .parameter

    .prologue
    .line 732
    iput-boolean p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->B:Z

    .line 733
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->l:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->A:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->B:Z

    if-nez v0, :cond_1d

    .line 734
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->u:Lcom/google/android/youtube/coreicecream/ui/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/h;->a(Z)V

    .line 735
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 737
    :cond_1d
    return-void
.end method
