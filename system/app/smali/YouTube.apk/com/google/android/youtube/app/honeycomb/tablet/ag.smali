.class public final Lcom/google/android/youtube/app/honeycomb/tablet/ag;
.super Lcom/google/android/youtube/app/honeycomb/tablet/ao;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/app/remote/af;
.implements Lcom/google/android/youtube/core/async/bc;
.implements Lcom/google/android/youtube/core/player/z;
.implements Lcom/google/android/youtube/core/ui/m;
.implements Lcom/google/android/youtube/coreicecream/ui/h;


# instance fields
.field private A:Landroid/widget/ImageButton;

.field private B:Z

.field private C:Z

.field private D:Lcom/google/android/youtube/app/honeycomb/tablet/al;

.field private E:Lcom/google/android/youtube/app/YouTubePlatformUtil;

.field private F:Lcom/google/android/youtube/core/Analytics;

.field private G:Z

.field private H:Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;

.field private I:Lcom/google/android/youtube/core/b/ae;

.field private J:Lcom/google/android/youtube/core/b/an;

.field private K:Lcom/google/android/youtube/app/remote/at;

.field private L:Lcom/google/android/youtube/app/ui/bd;

.field private M:Lcom/google/android/youtube/app/ui/bt;

.field private N:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

.field private O:Lcom/google/android/youtube/app/k;

.field private P:Lcom/google/android/youtube/core/model/Video;

.field private Q:Z

.field private R:Lcom/google/android/youtube/app/remote/ab;

.field private S:Landroid/app/KeyguardManager;

.field private T:Z

.field private a:Landroid/media/AudioManager;

.field private h:Lcom/google/android/youtube/app/ui/ep;

.field private i:Lcom/google/android/youtube/app/ui/fb;

.field private j:Lcom/google/android/youtube/app/ui/el;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Landroid/content/SharedPreferences;

.field private q:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private r:Lcom/google/android/youtube/core/d;

.field private s:Lcom/google/android/youtube/core/player/bi;

.field private t:Lcom/google/android/youtube/core/player/Director;

.field private u:Lcom/google/android/youtube/app/ui/dm;

.field private v:Lcom/google/android/youtube/coreicecream/ui/g;

.field private w:Landroid/widget/TabHost;

.field private x:Lcom/google/android/youtube/app/honeycomb/tablet/an;

.field private y:Landroid/widget/ImageButton;

.field private z:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 285
    const-string v5, "yt_watch"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 176
    iput-boolean v6, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->B:Z

    .line 177
    iput-boolean v6, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->C:Z

    .line 286
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    return-object v0
.end method

.method public static a(Landroid/net/Uri;IZLcom/google/android/youtube/core/b/aj;)Landroid/os/Bundle;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 255
    const-string v2, "playlist_uri"

    invoke-static {p0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 256
    const-string v0, "playlist_start_position"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    const-string v0, "authenticate"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    const-string v2, "referrer"

    const-string v0, "referrer cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/aj;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/b/aj;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-object v1
.end method

.method public static a(Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/b/aj;)Landroid/os/Bundle;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 272
    const-string v0, "video_id"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v2, "unfavorite_uri"

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 274
    const-string v2, "referrer"

    const-string v0, "referrer cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/aj;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/b/aj;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-object v1
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/youtube/core/b/aj;)Landroid/os/Bundle;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 215
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 216
    const-string v2, "video_id"

    invoke-static {p0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v2, "referrer"

    const-string v0, "referrer cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/aj;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/b/aj;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-object v1
.end method

.method public static a(Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;)Landroid/os/Bundle;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-static {p0, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a(Ljava/lang/String;Lcom/google/android/youtube/core/b/aj;)Landroid/os/Bundle;

    move-result-object v0

    .line 230
    const-string v1, "authenticate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    return-object v0
.end method

.method private a(Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 520
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    if-ne v0, v1, :cond_35

    .line 521
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 523
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->I:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v1}, Lcom/google/android/youtube/core/b/ae;->c()Lcom/google/android/youtube/core/async/ar;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->I:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v2}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    sget-object v3, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->ALL_TIME:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/youtube/app/honeycomb/tablet/am;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/am;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/ag;Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 536
    :goto_34
    return-void

    .line 529
    :cond_35
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v0, "video_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "playlist_uri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    const-string v1, "playlist_start_position"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "artist_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_63
    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a(Lcom/google/android/youtube/core/model/UserAuth;Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;ILjava/lang/String;)V

    goto :goto_34
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/ag;Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a(Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/ag;Lcom/google/android/youtube/core/model/UserAuth;Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;ILjava/lang/String;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 126
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a(Lcom/google/android/youtube/core/model/UserAuth;Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;ILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/google/android/youtube/core/model/UserAuth;Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;ILjava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 567
    if-eqz p3, :cond_2e

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 569
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 570
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 571
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->M:Lcom/google/android/youtube/app/ui/bt;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/bt;->a(Ljava/lang/String;)V

    .line 572
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->I:Lcom/google/android/youtube/core/b/ae;

    invoke-static {v1, v0, p1}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/b/ae;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v0

    .line 577
    :goto_21
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->t:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 600
    :cond_26
    :goto_26
    return-void

    .line 575
    :cond_27
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->I:Lcom/google/android/youtube/core/b/ae;

    invoke-static {v0, p3, p1, v2}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/b/ae;Ljava/util/List;Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v0

    goto :goto_21

    .line 579
    :cond_2e
    if-eqz p4, :cond_3c

    .line 580
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->I:Lcom/google/android/youtube/core/b/ae;

    invoke-static {v0, p4, p1, p5}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/b/ae;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v0

    .line 582
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->t:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_26

    .line 583
    :cond_3c
    if-nez p6, :cond_26

    .line 585
    if-eqz p2, :cond_65

    .line 586
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/ah;

    move-result-object v0

    .line 587
    if-eqz v0, :cond_5f

    .line 588
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->t:Lcom/google/android/youtube/core/player/Director;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->I:Lcom/google/android/youtube/core/b/ae;

    iget-object v3, v0, Lcom/google/android/youtube/core/utils/ah;->a:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/b/ae;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/youtube/core/utils/ah;->b:Ljava/lang/String;

    iget v4, v0, Lcom/google/android/youtube/core/utils/ah;->c:I

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;I)V

    .line 591
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->M:Lcom/google/android/youtube/app/ui/bt;

    iget-object v0, v0, Lcom/google/android/youtube/core/utils/ah;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/bt;->a(Ljava/lang/String;)V

    goto :goto_26

    .line 593
    :cond_5f
    const-string v0, "invalid intercepted URI"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    goto :goto_26

    .line 597
    :cond_65
    const-string v0, "invalid arguments format"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    goto :goto_26
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/ag;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->Q:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Lcom/google/android/youtube/app/remote/at;
    .registers 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->K:Lcom/google/android/youtube/app/remote/at;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Lcom/google/android/youtube/app/ui/bd;
    .registers 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->F:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Lcom/google/android/youtube/core/player/bi;
    .registers 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->s:Lcom/google/android/youtube/core/player/bi;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Z
    .registers 2
    .parameter

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->Q:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Lcom/google/android/youtube/app/ui/bt;
    .registers 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->M:Lcom/google/android/youtube/app/ui/bt;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic m(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    return-object v0
.end method

.method private v()Z
    .registers 3

    .prologue
    .line 864
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 865
    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private w()V
    .registers 3

    .prologue
    .line 959
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->l:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->B:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->C:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bd;->e()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->t:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->r()Z

    move-result v0

    if-nez v0, :cond_22

    .line 961
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->v:Lcom/google/android/youtube/coreicecream/ui/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/g;->b(Z)V

    .line 963
    :cond_22
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 290
    const v0, 0x7f04009e

    return v0
.end method

.method protected final a(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    .line 605
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/ah;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/ah;
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_7} :catch_1f

    move-result-object v0

    .line 611
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/bd;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/bd;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/youtube/core/utils/ah;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 618
    :goto_1e
    return-void

    .line 606
    :catch_1f
    move-exception v0

    .line 607
    const-string v1, "invalid intercepted URI"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    .line 616
    :cond_26
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    iget-object v0, v0, Lcom/google/android/youtube/core/utils/ah;->a:Ljava/lang/String;

    sget-object v3, Lcom/google/android/youtube/app/m;->R:Lcom/google/android/youtube/core/b/aj;

    invoke-static {v2, v0, v3}, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1e
.end method

.method protected final a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 636
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/os/Bundle;)V

    .line 637
    const-string v0, "selected_tab_index"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->w:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 638
    const-string v0, "fullscreen"

    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 639
    return-void
.end method

.method protected final a(Landroid/view/Menu;)V
    .registers 6
    .parameter

    .prologue
    const v3, 0x7f080151

    const/4 v1, 0x0

    .line 666
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/view/Menu;)V

    .line 667
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->v()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_59

    :cond_19
    const/4 v0, 0x2

    :goto_1a
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 670
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->o:Z

    if-eqz v0, :cond_5b

    .line 671
    :goto_21
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->y:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 673
    const v0, 0x7f080150

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->o:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 674
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->o:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 675
    const v0, 0x7f080158

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->o:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 676
    const v0, 0x7f080159

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->o:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 677
    return-void

    :cond_59
    move v0, v1

    .line 667
    goto :goto_1a

    .line 670
    :cond_5b
    const/4 v1, 0x4

    goto :goto_21
.end method

.method protected final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 643
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 644
    const v0, 0x7f12000a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 646
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_35

    .line 647
    const v0, 0x7f080151

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 648
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v0

    check-cast v0, Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->P:Lcom/google/android/youtube/core/model/Video;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->P:Lcom/google/android/youtube/core/model/Video;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;Lcom/google/android/youtube/core/model/Video;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/ai;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ai;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)V

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 650
    :cond_35
    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 24
    .parameter
    .parameter

    .prologue
    .line 295
    invoke-super/range {p0 .. p2}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    const v3, 0x7f0b01f0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/k;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->O:Lcom/google/android/youtube/app/k;

    .line 300
    new-instance v2, Lcom/google/android/youtube/app/honeycomb/tablet/an;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/youtube/app/honeycomb/tablet/an;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/ag;Landroid/view/View;F)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->x:Lcom/google/android/youtube/app/honeycomb/tablet/an;

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->x:Lcom/google/android/youtube/app/honeycomb/tablet/an;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->v()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Z)V

    .line 303
    new-instance v2, Lcom/google/android/youtube/core/player/bi;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->x:Lcom/google/android/youtube/app/honeycomb/tablet/an;

    iget-object v3, v3, Lcom/google/android/youtube/app/honeycomb/tablet/an;->d:Lcom/google/android/youtube/core/player/PlayerView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->O:Lcom/google/android/youtube/app/k;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v5}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/youtube/core/player/bi;-><init>(Lcom/google/android/youtube/core/player/PlayerView;Lcom/google/android/youtube/core/c;Lcom/google/android/youtube/core/j;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->s:Lcom/google/android/youtube/core/player/bi;

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->s:Lcom/google/android/youtube/core/player/bi;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->U()Lcom/google/android/youtube/core/utils/k;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/utils/k;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->s:Lcom/google/android/youtube/core/player/bi;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->O:Lcom/google/android/youtube/app/k;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/k;->g()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/bi;->a(Z)V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->s:Lcom/google/android/youtube/core/player/bi;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->O:Lcom/google/android/youtube/app/k;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/k;->h()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/bi;->b(Z)V

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->s:Lcom/google/android/youtube/core/player/bi;

    new-instance v3, Lcom/google/android/youtube/app/b/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-direct {v3, v4}, Lcom/google/android/youtube/app/b/a;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;)V

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/player/bn;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->I:Lcom/google/android/youtube/core/b/ae;

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v20

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->l()Lcom/google/android/youtube/core/b/an;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->J:Lcom/google/android/youtube/core/b/an;

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->k()Lcom/google/android/youtube/core/b/a;

    move-result-object v6

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->m()Lcom/google/android/youtube/core/b/al;

    move-result-object v8

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->U()Lcom/google/android/youtube/core/utils/k;

    move-result-object v17

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->p:Landroid/content/SharedPreferences;

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->x()Lcom/google/android/youtube/app/YouTubePlatformUtil;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->E:Lcom/google/android/youtube/app/YouTubePlatformUtil;

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->F:Lcom/google/android/youtube/core/Analytics;

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->r:Lcom/google/android/youtube/core/d;

    .line 324
    new-instance v2, Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->H:Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->x:Lcom/google/android/youtube/app/honeycomb/tablet/an;

    iget-object v2, v2, Lcom/google/android/youtube/app/honeycomb/tablet/an;->d:Lcom/google/android/youtube/core/player/PlayerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->H:Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 327
    new-instance v9, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->p:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->I:Lcom/google/android/youtube/core/b/ae;

    invoke-direct {v9, v2, v3, v4, v5}, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/b/ae;)V

    .line 330
    new-instance v2, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->F:Lcom/google/android/youtube/core/Analytics;

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/Analytics;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->N:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    .line 331
    new-instance v15, Lcom/google/android/youtube/core/player/DefaultAdOverlay;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->N:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g()I

    move-result v3

    invoke-direct {v15, v2, v3}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;-><init>(Landroid/content/Context;I)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->s:Lcom/google/android/youtube/core/player/bi;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->p:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->I:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->J:Lcom/google/android/youtube/core/b/an;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->F:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v11}, Lcom/google/android/youtube/app/YouTubeApplication;->c()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->N:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    new-instance v14, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-direct {v14, v12}, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->r:Lcom/google/android/youtube/core/d;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v12}, Lcom/google/android/youtube/app/YouTubeApplication;->S()Lcom/google/android/youtube/core/player/an;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v12}, Lcom/google/android/youtube/app/YouTubeApplication;->T()Lcom/google/android/youtube/core/player/e;

    move-result-object v19

    move-object/from16 v12, p0

    invoke-static/range {v2 .. v19}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/player/bi;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/a;Lcom/google/android/youtube/core/b/an;Lcom/google/android/youtube/core/b/al;Lcom/google/android/youtube/core/player/c;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/core/player/z;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/n;Lcom/google/android/youtube/core/player/a;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/core/player/an;Lcom/google/android/youtube/core/player/e;)Lcom/google/android/youtube/core/player/Director;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->t:Lcom/google/android/youtube/core/player/Director;

    .line 353
    new-instance v4, Lcom/google/android/youtube/app/ui/bd;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->s:Lcom/google/android/youtube/core/player/bi;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->F:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v7, v20

    invoke-direct/range {v4 .. v9}, Lcom/google/android/youtube/app/ui/bd;-><init>(Lcom/google/android/youtube/core/player/bi;Landroid/app/Activity;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/al;Lcom/google/android/youtube/core/Analytics;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/ui/bd;->b(Z)V

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->s:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/bi;->a()Lcom/google/android/youtube/core/player/PlayerView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/ui/bd;->q()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/ui/bd;->d(Z)V

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->t:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/Director;->u()[Landroid/view/View;

    move-result-object v2

    .line 362
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/view/View;

    .line 363
    array-length v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/ui/bd;->q()Landroid/view/View;

    move-result-object v3

    aput-object v3, v6, v2

    .line 365
    new-instance v2, Lcom/google/android/youtube/coreicecream/ui/g;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->u()Landroid/app/ActionBar;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->x:Lcom/google/android/youtube/app/honeycomb/tablet/an;

    iget-object v5, v5, Lcom/google/android/youtube/app/honeycomb/tablet/an;->d:Lcom/google/android/youtube/core/player/PlayerView;

    move-object/from16 v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/youtube/coreicecream/ui/g;-><init>(Landroid/view/Window;Landroid/app/ActionBar;Lcom/google/android/youtube/core/player/PlayerView;[Landroid/view/View;Lcom/google/android/youtube/coreicecream/ui/h;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->v:Lcom/google/android/youtube/coreicecream/ui/g;

    .line 368
    new-instance v7, Lcom/google/android/youtube/app/ui/ep;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->F:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->d:Lcom/google/android/youtube/app/a;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->I:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/app/c/g;

    move-result-object v16

    move-object/from16 v9, p1

    move-object/from16 v13, v20

    move-object/from16 v14, p0

    invoke-direct/range {v7 .. v17}, Lcom/google/android/youtube/app/ui/ep;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/ui/m;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/c/g;Lcom/google/android/youtube/core/utils/k;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->h:Lcom/google/android/youtube/app/ui/ep;

    .line 372
    new-instance v2, Lcom/google/android/youtube/app/adapter/bw;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/google/android/youtube/app/adapter/bw;-><init>(Landroid/content/Context;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v3, v0, v1}, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/utils/k;)Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;

    move-result-object v3

    .line 378
    new-instance v4, Lcom/google/android/youtube/app/adapter/ab;

    invoke-direct {v4}, Lcom/google/android/youtube/app/adapter/ab;-><init>()V

    invoke-virtual {v4, v2}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v2

    .line 384
    new-instance v5, Lcom/google/android/youtube/app/adapter/ba;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    const v4, 0x7f04009a

    invoke-direct {v5, v3, v4, v2}, Lcom/google/android/youtube/app/adapter/ba;-><init>(Landroid/content/Context;ILcom/google/android/youtube/app/adapter/bf;)V

    .line 387
    new-instance v2, Lcom/google/android/youtube/app/ui/fb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    const v4, 0x7f0800d8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/g;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->d:Lcom/google/android/youtube/app/a;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->I:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v7}, Lcom/google/android/youtube/core/b/ae;->x()Lcom/google/android/youtube/core/async/ar;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->I:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v9}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->F:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->r:Lcom/google/android/youtube/core/d;

    invoke-direct/range {v2 .. v11}, Lcom/google/android/youtube/app/ui/fb;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/GDataRequestFactory;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/d;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->i:Lcom/google/android/youtube/app/ui/fb;

    .line 397
    new-instance v2, Lcom/google/android/youtube/app/ui/el;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    const v4, 0x7f0800d9

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/PagedListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->I:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->e:Lcom/google/android/youtube/app/g;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v7}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/k;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->F:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->r:Lcom/google/android/youtube/core/d;

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/youtube/app/ui/el;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedListView;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/app/g;Lcom/google/android/youtube/app/k;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/d;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->j:Lcom/google/android/youtube/app/ui/el;

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->q()Lcom/google/android/youtube/app/remote/at;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->K:Lcom/google/android/youtube/app/remote/at;

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->r()Lcom/google/android/youtube/app/remote/bd;

    move-result-object v9

    .line 404
    new-instance v2, Lcom/google/android/youtube/app/ui/dm;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->I:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->e:Lcom/google/android/youtube/app/g;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v7}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/k;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->K:Lcom/google/android/youtube/app/remote/at;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v10}, Lcom/google/android/youtube/app/YouTubeApplication;->t()Lcom/google/android/youtube/app/remote/e;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->o()Lcom/google/android/youtube/app/ui/bq;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->F:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->h:Lcom/google/android/youtube/app/ui/ep;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->E:Lcom/google/android/youtube/app/YouTubePlatformUtil;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->d:Lcom/google/android/youtube/app/a;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->r:Lcom/google/android/youtube/core/d;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->s:Lcom/google/android/youtube/core/player/bi;

    move-object/from16 v18, v0

    invoke-direct/range {v2 .. v18}, Lcom/google/android/youtube/app/ui/dm;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/g;Lcom/google/android/youtube/app/k;Lcom/google/android/youtube/app/remote/at;Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/app/remote/e;Lcom/google/android/youtube/app/ui/bd;Lcom/google/android/youtube/app/ui/bq;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/ui/ep;Lcom/google/android/youtube/app/YouTubePlatformUtil;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/player/bi;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->u:Lcom/google/android/youtube/app/ui/dm;

    .line 421
    new-instance v9, Lcom/google/android/youtube/app/honeycomb/tablet/ah;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)V

    .line 427
    new-instance v2, Lcom/google/android/youtube/app/ui/bt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/app/remote/ab;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v5}, Lcom/google/android/youtube/app/YouTubeApplication;->s()Lcom/google/android/youtube/app/remote/bc;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v6}, Lcom/google/android/youtube/app/YouTubeApplication;->r()Lcom/google/android/youtube/app/remote/bd;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->K:Lcom/google/android/youtube/app/remote/at;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->F:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->r:Lcom/google/android/youtube/core/d;

    const v11, 0x7f04007f

    invoke-direct/range {v2 .. v11}, Lcom/google/android/youtube/app/ui/bt;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/remote/ab;Lcom/google/android/youtube/app/remote/bc;Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/app/remote/at;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/ui/ce;Lcom/google/android/youtube/core/d;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->M:Lcom/google/android/youtube/app/ui/bt;

    .line 438
    const/4 v2, 0x0

    .line 439
    if-eqz p2, :cond_3c1

    .line 440
    const-string v2, "selected_tab_index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 441
    const-string v3, "fullscreen"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->l:Z

    :cond_3c1
    move v5, v2

    .line 444
    const v2, 0x1020012

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->w:Landroid/widget/TabHost;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->w:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 449
    const v2, 0x1020011

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 450
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 451
    const/4 v3, 0x0

    move v6, v3

    :goto_3f1
    if-ge v6, v8, :cond_42e

    .line 452
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 453
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 454
    const v3, 0x7f040087

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->w:Landroid/widget/TabHost;

    const/4 v11, 0x0

    invoke-virtual {v7, v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 455
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->w:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->w:Landroid/widget/TabHost;

    invoke-virtual {v11, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 451
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_3f1

    .line 459
    :cond_42e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->w:Landroid/widget/TabHost;

    invoke-virtual {v2, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 461
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->o:Z

    .line 462
    const v2, 0x7f0800e8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->y:Landroid/widget/ImageButton;

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->y:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    const v2, 0x7f0800e6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->z:Landroid/widget/ImageButton;

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->z:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->u:Lcom/google/android/youtube/app/ui/dm;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->y:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->z:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/app/ui/dm;->a(Landroid/view/View;Landroid/view/View;)V

    .line 468
    const v2, 0x7f08012f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->A:Landroid/widget/ImageButton;

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->A:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->A:Landroid/widget/ImageButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->s:Lcom/google/android/youtube/core/player/bi;

    new-instance v3, Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/bi;->a(Landroid/os/Handler;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a:Landroid/media/AudioManager;

    .line 477
    new-instance v2, Lcom/google/android/youtube/app/honeycomb/tablet/al;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/google/android/youtube/app/honeycomb/tablet/al;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/ag;B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->D:Lcom/google/android/youtube/app/honeycomb/tablet/al;

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/app/remote/ab;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->R:Lcom/google/android/youtube/app/remote/ab;

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->S:Landroid/app/KeyguardManager;

    .line 480
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/remote/RemoteControl;)V
    .registers 4
    .parameter

    .prologue
    .line 1173
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Lcom/google/android/youtube/app/remote/RemoteControl;)V

    .line 1174
    if-nez p1, :cond_2f

    .line 1175
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bd;->r()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1176
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->T:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->S:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1177
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->t:Lcom/google/android/youtube/core/player/Director;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/bd;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/Director;->b(I)V

    .line 1178
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->t:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->t()V

    .line 1180
    :cond_29
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bd;->a()V

    .line 1185
    :cond_2e
    :goto_2e
    return-void

    .line 1183
    :cond_2f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/bd;->a(Lcom/google/android/youtube/app/remote/RemoteControl;)V

    goto :goto_2e
.end method

.method public final a(Lcom/google/android/youtube/core/model/Branding;)V
    .registers 3
    .parameter

    .prologue
    .line 913
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->h:Lcom/google/android/youtube/app/ui/ep;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/ep;->a(Lcom/google/android/youtube/core/model/Branding;)V

    .line 914
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->i:Lcom/google/android/youtube/app/ui/fb;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/fb;->a(Lcom/google/android/youtube/core/model/Branding;)V

    .line 915
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 3
    .parameter

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a(Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 622
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 697
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->P:Lcom/google/android/youtube/core/model/Video;

    .line 698
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    const v3, 0x7f0b01f4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v5, p1, Lcom/google/android/youtube/core/model/Video;->ownerDisplayName:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->m:Ljava/lang/String;

    .line 700
    iget-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->l:Z

    if-eqz v2, :cond_29

    .line 701
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 704
    :cond_29
    if-eqz p1, :cond_84

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v3, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v2, v3, :cond_84

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->watchUri:Landroid/net/Uri;

    if-eqz v2, :cond_84

    :goto_35
    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->o:Z

    .line 706
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 707
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->u:Lcom/google/android/youtube/app/ui/dm;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "unfavorite_uri"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/core/model/Video;Landroid/net/Uri;)V

    .line 709
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 711
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->h:Lcom/google/android/youtube/app/ui/ep;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/ep;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 712
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->i:Lcom/google/android/youtube/app/ui/fb;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/fb;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 713
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->j:Lcom/google/android/youtube/app/ui/el;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/el;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 714
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/bd;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 716
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->H:Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;->b()V

    .line 717
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->G:Z

    .line 718
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    new-instance v1, Lcom/google/android/youtube/app/ui/dq;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->I:Lcom/google/android/youtube/core/b/ae;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->r:Lcom/google/android/youtube/core/d;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/google/android/youtube/app/ui/dq;-><init>(Lcom/google/android/youtube/core/model/Video;Landroid/app/Activity;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    .line 719
    return-void

    :cond_84
    move v0, v1

    .line 704
    goto :goto_35
.end method

.method public final a(Lcom/google/android/youtube/core/player/Director$StopReason;)V
    .registers 5
    .parameter

    .prologue
    .line 922
    sget-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->AUTOPLAY_DENIED:Lcom/google/android/youtube/core/player/Director$StopReason;

    if-ne p1, v0, :cond_13

    .line 923
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    const v1, 0x7f0b005f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    .line 926
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 928
    :cond_12
    return-void

    .line 925
    :cond_13
    sget-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->VIDEO_ENDED:Lcom/google/android/youtube/core/player/Director$StopReason;

    if-ne p1, v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->n:Z

    if-eqz v0, :cond_12

    goto :goto_d
.end method

.method public final a(Lcom/google/android/youtube/core/player/DirectorException;)V
    .registers 4
    .parameter

    .prologue
    .line 726
    iget-object v0, p1, Lcom/google/android/youtube/core/player/DirectorException;->reason:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    sget-object v1, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->REQUEST_FAILED:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    if-ne v0, v1, :cond_18

    .line 727
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->h:Lcom/google/android/youtube/app/ui/ep;

    invoke-virtual {p1}, Lcom/google/android/youtube/core/player/DirectorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/ep;->a(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {p1}, Lcom/google/android/youtube/core/player/DirectorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/bd;->b(Ljava/lang/String;)V

    .line 730
    :cond_18
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 625
    const-string v0, "error authenticating for playlist request"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 626
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 627
    return-void
.end method

.method public final a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->l:Z

    if-eqz v0, :cond_f

    .line 870
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->x:Lcom/google/android/youtube/app/honeycomb/tablet/an;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a()V

    .line 874
    :goto_9
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 875
    return-void

    .line 872
    :cond_f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->x:Lcom/google/android/youtube/app/honeycomb/tablet/an;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Z)V

    goto :goto_9
.end method

.method public final a(IILandroid/content/Intent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->M:Lcom/google/android/youtube/app/ui/bt;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/app/ui/bt;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1166
    const/4 v0, 0x1

    .line 1168
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(IILandroid/content/Intent;)Z

    move-result v0

    goto :goto_9
.end method

.method protected final a(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 823
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_32

    .line 846
    :pswitch_8
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_c
    :goto_c
    return v0

    .line 825
    :pswitch_d
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->u:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/dm;->f()V

    goto :goto_c

    .line 829
    :pswitch_13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_c

    .line 830
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->u:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/dm;->c()V

    goto :goto_c

    .line 835
    :pswitch_1f
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->u:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/dm;->e()V

    goto :goto_c

    .line 839
    :pswitch_25
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->u:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/dm;->d()V

    goto :goto_c

    .line 843
    :pswitch_2b
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->u:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/dm;->g()V

    goto :goto_c

    .line 823
    nop

    :pswitch_data_32
    .packed-switch 0x7f080150
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

.method protected final b()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 484
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->b()V

    .line 485
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->t()Landroid/os/Bundle;

    move-result-object v0

    .line 486
    const-string v1, "authenticate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 488
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->t:Lcom/google/android/youtube/core/player/Director;

    iget-boolean v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->l:Z

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/Director;->b(Z)V

    .line 489
    const-string v2, "force_fullscreen"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 490
    iput-boolean v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->k:Z

    .line 491
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->t:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v2, v4}, Lcom/google/android/youtube/core/player/Director;->d(Z)V

    .line 492
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->t:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v2, v4}, Lcom/google/android/youtube/core/player/Director;->b(Z)V

    .line 493
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 495
    :cond_31
    const-string v2, "finish_on_ended"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->n:Z

    .line 497
    const-string v2, "referrer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 499
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->J:Lcom/google/android/youtube/core/b/an;

    invoke-interface {v2, v0}, Lcom/google/android/youtube/core/b/an;->a(Ljava/lang/String;)V

    .line 505
    :cond_4a
    :goto_4a
    if-eqz v1, :cond_7f

    .line 506
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 512
    :goto_53
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a:Landroid/media/AudioManager;

    const/high16 v1, -0x8000

    invoke-virtual {v0, v5, v1, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 514
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->D:Lcom/google/android/youtube/app/honeycomb/tablet/al;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/al;->a()V

    .line 516
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->R:Lcom/google/android/youtube/app/remote/ab;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/remote/ab;->a(Lcom/google/android/youtube/app/remote/af;)V

    .line 517
    return-void

    .line 500
    :cond_65
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    if-ne v0, v2, :cond_4a

    .line 502
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->J:Lcom/google/android/youtube/core/b/an;

    sget-object v2, Lcom/google/android/youtube/app/m;->J:Lcom/google/android/youtube/core/b/aj;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/b/aj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/youtube/core/b/an;->a(Ljava/lang/String;)V

    goto :goto_4a

    .line 508
    :cond_7f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a(Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_53
.end method

.method public final b(Z)V
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x400

    const/4 v1, 0x0

    .line 878
    iput-boolean p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->l:Z

    .line 880
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->v:Lcom/google/android/youtube/coreicecream/ui/g;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/coreicecream/ui/g;->a(Z)V

    .line 881
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->N:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    if-eqz p1, :cond_16

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->b()I

    move-result v0

    const/16 v3, 0x10

    if-ge v0, v3, :cond_62

    :cond_16
    const/4 v0, 0x1

    :goto_17
    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setTimeBarIsOverlay(Z)V

    .line 882
    if-nez p1, :cond_64

    .line 883
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->v:Lcom/google/android/youtube/coreicecream/ui/g;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/g;->b(Z)V

    .line 884
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Landroid/view/Window;->setFlags(II)V

    .line 885
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    const v1, 0x7f0b01f0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 886
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 887
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 889
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->n()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;)V

    .line 899
    :goto_4e
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->v()Z

    move-result v0

    .line 900
    if-eqz p1, :cond_92

    .line 902
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 903
    if-eqz v0, :cond_61

    .line 904
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->x:Lcom/google/android/youtube/app/honeycomb/tablet/an;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a()V

    .line 910
    :cond_61
    :goto_61
    return-void

    :cond_62
    move v0, v1

    .line 881
    goto :goto_17

    .line 891
    :cond_64
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 893
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 894
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 896
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->DISABLED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;)V

    goto :goto_4e

    .line 907
    :cond_92
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 908
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->x:Lcom/google/android/youtube/app/honeycomb/tablet/an;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Z)V

    goto :goto_61
.end method

.method protected final c(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 779
    sparse-switch p1, :sswitch_data_46

    .line 790
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->c(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 784
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->u:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/dm;->a(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 786
    :sswitch_f
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->M:Lcom/google/android/youtube/app/ui/bt;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/bt;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v1, 0x7f0b0206

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/aj;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/aj;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/ak;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ak;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_7

    .line 788
    :sswitch_3f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->M:Lcom/google/android/youtube/app/ui/bt;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/bt;->a(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 779
    :sswitch_data_46
    .sparse-switch
        0x3ed -> :sswitch_8
        0x3f3 -> :sswitch_f
        0x3f4 -> :sswitch_8
        0x3f7 -> :sswitch_8
        0x3ff -> :sswitch_8
        0x403 -> :sswitch_3f
    .end sparse-switch
.end method

.method protected final c()V
    .registers 3

    .prologue
    .line 761
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 762
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->D:Lcom/google/android/youtube/app/honeycomb/tablet/al;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/al;->b()V

    .line 763
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->i:Lcom/google/android/youtube/app/ui/fb;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/fb;->b()V

    .line 764
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->j:Lcom/google/android/youtube/app/ui/el;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/el;->b()V

    .line 765
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->v:Lcom/google/android/youtube/coreicecream/ui/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/g;->b(Z)V

    .line 766
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->R:Lcom/google/android/youtube/app/remote/ab;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/remote/ab;->b(Lcom/google/android/youtube/app/remote/af;)V

    .line 767
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->c()V

    .line 768
    return-void
.end method

.method protected final d()V
    .registers 2

    .prologue
    .line 772
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->d()V

    .line 773
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->t:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->y()V

    .line 774
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 775
    return-void
.end method

.method protected final e()V
    .registers 3

    .prologue
    .line 738
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->e()V

    .line 739
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->v()Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v0

    .line 740
    if-eqz v0, :cond_19

    .line 741
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/bd;->a(Lcom/google/android/youtube/app/remote/RemoteControl;)V

    .line 745
    :goto_10
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bd;->b()V

    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->T:Z

    .line 747
    return-void

    .line 743
    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bd;->a()V

    goto :goto_10
.end method

.method public final e_()V
    .registers 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 631
    return-void
.end method

.method protected final f()V
    .registers 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bd;->c()V

    .line 752
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->t:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->x()V

    .line 753
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->s:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->h()V

    .line 754
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->M:Lcom/google/android/youtube/app/ui/bt;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bt;->b()V

    .line 755
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->T:Z

    .line 756
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->f()V

    .line 757
    return-void
.end method

.method public final g()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 684
    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->P:Lcom/google/android/youtube/core/model/Video;

    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->o:Z

    .line 686
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 687
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->u:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/core/model/Video;Landroid/net/Uri;)V

    .line 688
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->h:Lcom/google/android/youtube/app/ui/ep;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ep;->d()V

    .line 689
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->i:Lcom/google/android/youtube/app/ui/fb;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/fb;->b()V

    .line 690
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->j:Lcom/google/android/youtube/app/ui/el;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/el;->b()V

    .line 691
    return-void
.end method

.method public final h()V
    .registers 3

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->t:Lcom/google/android/youtube/core/player/Director;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/Director;->a(Z)V

    .line 734
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 975
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_28

    :pswitch_7
    move v0, v1

    .line 992
    :goto_8
    return v0

    .line 977
    :pswitch_9
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->A:Landroid/widget/ImageButton;

    const v2, 0x7f0200d5

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_8

    .line 983
    :pswitch_12
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->A:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_8

    .line 987
    :pswitch_19
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->A:Landroid/widget/ImageButton;

    const v3, 0x7f0200d4

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 988
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->A:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_8

    .line 975
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

.method public final i()V
    .registers 2

    .prologue
    .line 942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->B:Z

    .line 943
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->G:Z

    if-eqz v0, :cond_c

    .line 944
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->H:Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;->a()V

    .line 946
    :cond_c
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->w()V

    .line 947
    return-void
.end method

.method public final j()V
    .registers 3

    .prologue
    .line 950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->B:Z

    .line 951
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->H:Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;->b()V

    .line 952
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->l:Z

    if-eqz v0, :cond_1b

    .line 953
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->v:Lcom/google/android/youtube/coreicecream/ui/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/g;->b(Z)V

    .line 954
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 956
    :cond_1b
    return-void
.end method

.method public final k()V
    .registers 3

    .prologue
    .line 918
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->v:Lcom/google/android/youtube/coreicecream/ui/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/g;->b(Z)V

    .line 919
    return-void
.end method

.method public final l()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 967
    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->l:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->k:Z

    if-nez v1, :cond_f

    .line 968
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->t:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/player/Director;->b(Z)V

    .line 969
    const/4 v0, 0x1

    .line 971
    :cond_f
    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 850
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1a

    .line 861
    :goto_7
    return-void

    .line 852
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->u:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/dm;->a()V

    goto :goto_7

    .line 855
    :sswitch_e
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->u:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/dm;->b()V

    goto :goto_7

    .line 858
    :sswitch_14
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->t:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->s()V

    goto :goto_7

    .line 850
    :sswitch_data_1a
    .sparse-switch
        0x7f0800e6 -> :sswitch_e
        0x7f0800e8 -> :sswitch_8
        0x7f08012f -> :sswitch_14
    .end sparse-switch
.end method

.method public final onMenuVisibilityChanged(Z)V
    .registers 2
    .parameter

    .prologue
    .line 937
    iput-boolean p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->C:Z

    .line 938
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->w()V

    .line 939
    return-void
.end method

.method public final p()V
    .registers 2

    .prologue
    .line 1158
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->l:Z

    if-eqz v0, :cond_9

    .line 1159
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->N:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b()V

    .line 1161
    :cond_9
    return-void
.end method

.method public final q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->t:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()I
    .registers 2

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bd;->e()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1193
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->L:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bd;->s()I

    move-result v0

    .line 1195
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->t:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->A()I

    move-result v0

    goto :goto_e
.end method
