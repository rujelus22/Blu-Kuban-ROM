.class public Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;
.implements Lcom/google/android/youtube/app/honeycomb/ui/l;
.implements Lcom/google/android/youtube/app/remote/af;
.implements Lcom/google/android/youtube/app/ui/bo;
.implements Lcom/google/android/youtube/core/async/bc;
.implements Lcom/google/android/youtube/core/player/z;
.implements Lcom/google/android/youtube/core/ui/b;
.implements Lcom/google/android/youtube/core/ui/m;
.implements Lcom/google/android/youtube/core/utils/h;
.implements Lcom/google/android/youtube/core/utils/j;
.implements Lcom/google/android/youtube/coreicecream/ui/h;


# instance fields
.field private A:Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;

.field private B:Landroid/content/SharedPreferences;

.field private C:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private D:Lcom/google/android/youtube/core/player/Director;

.field private E:Lcom/google/android/youtube/app/honeycomb/phone/cd;

.field private F:Lcom/google/android/youtube/app/honeycomb/phone/cf;

.field private G:Lcom/google/android/youtube/coreicecream/ui/g;

.field private H:Lcom/google/android/youtube/core/ui/OrientationHelper;

.field private I:Lcom/google/android/youtube/app/YouTubePlatformUtil;

.field private J:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

.field private K:Lcom/google/android/youtube/core/player/a;

.field private L:Z

.field private M:Z

.field private N:Ljava/lang/String;

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Lcom/google/android/youtube/core/b/ae;

.field private U:Lcom/google/android/youtube/core/b/an;

.field private V:Lcom/google/android/youtube/app/remote/ab;

.field private W:Lcom/google/android/youtube/app/remote/at;

.field private X:Lcom/google/android/youtube/app/ui/bd;

.field private Y:Lcom/google/android/youtube/app/YouTubeApplication;

.field private Z:Lcom/google/android/youtube/app/k;

.field private aa:Lcom/google/android/youtube/app/honeycomb/phone/cm;

.field private ab:Lcom/google/android/youtube/app/remote/bd;

.field private ac:Landroid/app/KeyguardManager;

.field private ad:Z

.field private m:Landroid/media/AudioManager;

.field private n:Lcom/google/android/youtube/app/ui/dm;

.field private o:Lcom/google/android/youtube/app/ui/ep;

.field private p:Lcom/google/android/youtube/app/ui/fb;

.field private q:Lcom/google/android/youtube/app/ui/el;

.field private r:Lcom/google/android/youtube/app/ui/ev;

.field private s:Lcom/google/android/youtube/core/d;

.field private t:Lcom/google/android/youtube/core/ui/Workspace;

.field private u:Lcom/google/android/youtube/core/ui/TabRow;

.field private v:Lcom/google/android/youtube/core/player/bi;

.field private w:Lcom/google/android/youtube/core/player/PlayerView;

.field private x:Lcom/google/android/youtube/core/utils/HdmiReceiver;

.field private y:Lcom/google/android/youtube/core/utils/DockReceiver;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->N:Ljava/lang/String;

    .line 1149
    return-void
.end method

.method private A()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1059
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->x:Lcom/google/android/youtube/core/utils/HdmiReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/HdmiReceiver;->c()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->y:Lcom/google/android/youtube/core/utils/DockReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/DockReceiver;->c()I

    move-result v0

    if-eqz v0, :cond_31

    :cond_12
    move v0, v2

    .line 1061
    :goto_13
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    if-nez v0, :cond_1b

    iget-boolean v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->O:Z

    if-eqz v4, :cond_1c

    :cond_1b
    move v1, v2

    :cond_1c
    invoke-virtual {v3, v1}, Lcom/google/android/youtube/core/player/Director;->d(Z)V

    .line 1062
    if-eqz v0, :cond_33

    .line 1063
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1064
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->H:Lcom/google/android/youtube/core/ui/OrientationHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/OrientationHelper;->disable()V

    .line 1065
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->setRequestedOrientation(I)V

    .line 1072
    :cond_30
    :goto_30
    return-void

    :cond_31
    move v0, v1

    .line 1059
    goto :goto_13

    .line 1067
    :cond_33
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->O:Z

    if-eqz v0, :cond_30

    .line 1068
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1069
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->setRequestedOrientation(I)V

    goto :goto_30
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;IZLcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "playlist_uri"

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playlist_start_position"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authenticate"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "referrer"

    invoke-static {p4}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/aj;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/b/aj;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "video_id"

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "unfavorite_uri"

    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "referrer"

    invoke-static {p3}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/aj;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/b/aj;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "video_id"

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "referrer"

    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/aj;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/b/aj;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-static {p0, p1, p3}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authenticate"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/bi;
    .registers 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->v:Lcom/google/android/youtube/core/player/bi;

    return-object v0
.end method

.method private a(Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 495
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    if-ne v0, v1, :cond_33

    .line 496
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 498
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->T:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v1}, Lcom/google/android/youtube/core/b/ae;->c()Lcom/google/android/youtube/core/async/ar;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->T:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v2}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    sget-object v3, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->ALL_TIME:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/ce;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/phone/ce;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V

    invoke-static {p0, v2}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 511
    :goto_32
    return-void

    .line 504
    :cond_33
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

    if-nez v1, :cond_61

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_61
    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Lcom/google/android/youtube/core/model/UserAuth;Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;ILjava/lang/String;)V

    goto :goto_32
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;Lcom/google/android/youtube/core/model/UserAuth;Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;ILjava/lang/String;)V
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

    .line 130
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Lcom/google/android/youtube/core/model/UserAuth;Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;ILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/google/android/youtube/core/model/UserAuth;Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;ILjava/lang/String;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 541
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->f()V

    .line 546
    if-eqz p3, :cond_32

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 548
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 549
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->T:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/b/ae;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v0

    .line 554
    :goto_25
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 580
    :cond_2a
    :goto_2a
    return-void

    .line 552
    :cond_2b
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->T:Lcom/google/android/youtube/core/b/ae;

    invoke-static {v0, p3, p1, v2}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/b/ae;Ljava/util/List;Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v0

    goto :goto_25

    .line 555
    :cond_32
    if-eqz p4, :cond_40

    .line 556
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->T:Lcom/google/android/youtube/core/b/ae;

    invoke-static {v0, p4, p1, p5}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/b/ae;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_2a

    .line 559
    :cond_40
    if-eqz p6, :cond_48

    .line 560
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/app/ui/ev;

    invoke-virtual {v0, p6}, Lcom/google/android/youtube/app/ui/ev;->a(Ljava/lang/String;)V

    goto :goto_2a

    .line 561
    :cond_48
    if-eqz p2, :cond_84

    .line 562
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/ah;

    move-result-object v1

    .line 563
    if-eqz v1, :cond_7b

    .line 564
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->T:Lcom/google/android/youtube/core/b/ae;

    iget-object v4, v1, Lcom/google/android/youtube/core/utils/ah;->a:Ljava/lang/String;

    invoke-static {v3, v4, p1}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/b/ae;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/youtube/core/utils/ah;->b:Ljava/lang/String;

    iget v5, v1, Lcom/google/android/youtube/core/utils/ah;->c:I

    invoke-virtual {v2, v3, p1, v4, v5}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;I)V

    .line 567
    const-string v2, "youtube_tv_uid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_2a

    .line 569
    iget-object v1, v1, Lcom/google/android/youtube/core/utils/ah;->a:Ljava/lang/String;

    new-instance v2, Lcom/google/android/ytremote/model/SsdpId;

    invoke-direct {v2, v0}, Lcom/google/android/ytremote/model/SsdpId;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->ab:Lcom/google/android/youtube/app/remote/bd;

    new-instance v3, Lcom/google/android/youtube/app/honeycomb/phone/bz;

    invoke-direct {v3, p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/bz;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/youtube/app/remote/bd;->a(Lcom/google/android/ytremote/model/SsdpId;Lcom/google/android/youtube/app/remote/bk;)V

    goto :goto_2a

    .line 572
    :cond_7b
    const-string v0, "invalid intercepted URI"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->finish()V

    goto :goto_2a

    .line 576
    :cond_84
    const-string v0, "invalid intent format"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->finish()V

    goto :goto_2a
.end method

.method private a(Lcom/google/android/youtube/core/model/Video;Landroid/net/Uri;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 711
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->n:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/core/model/Video;Landroid/net/Uri;)V

    .line 712
    if-eqz p1, :cond_1d

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v0, v1, :cond_19

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PROCESSING:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v0, v1, :cond_1d

    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Q:Z

    .line 714
    return-void

    .line 712
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "artist_id"

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "referrer"

    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/aj;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/b/aj;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/app/remote/at;
    .registers 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->W:Lcom/google/android/youtube/app/remote/at;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/app/ui/bd;
    .registers 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/d;
    .registers 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->s:Lcom/google/android/youtube/core/d;

    return-object v0
.end method

.method private d(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 958
    const v0, 0x7f0800d6

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 959
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x10102eb

    aput v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 960
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 961
    if-eqz p1, :cond_24

    :goto_20
    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 962
    return-void

    :cond_24
    move v0, v1

    .line 961
    goto :goto_20
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/Director;
    .registers 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/DefaultControllerOverlay;
    .registers 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->J:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    return-object v0
.end method

.method private y()V
    .registers 3

    .prologue
    .line 875
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_a
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->L:Z

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->R:Z

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->S:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bd;->e()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->r()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 878
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->G:Lcom/google/android/youtube/coreicecream/ui/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/g;->b(Z)V

    .line 880
    :cond_2c
    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 934
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->t:Lcom/google/android/youtube/core/ui/Workspace;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 936
    sget-object v1, Lcom/google/android/youtube/app/honeycomb/phone/cc;->a:[I

    invoke-virtual {p2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_26

    .line 947
    :goto_17
    return-void

    .line 938
    :pswitch_18
    const-string v1, "WatchTabFling"

    .line 946
    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->v()Lcom/google/android/youtube/core/Analytics;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 941
    :pswitch_22
    const-string v1, "WatchTabTap"

    goto :goto_1a

    .line 936
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_18
        :pswitch_22
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 280
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->C:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 281
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/remote/RemoteControl;)V
    .registers 4
    .parameter

    .prologue
    .line 1123
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/remote/RemoteControl;)V

    .line 1124
    if-nez p1, :cond_2f

    .line 1125
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bd;->r()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1126
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->ad:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->ac:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1127
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/bd;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/Director;->b(I)V

    .line 1128
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->t()V

    .line 1130
    :cond_29
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bd;->a()V

    .line 1135
    :cond_2e
    :goto_2e
    return-void

    .line 1133
    :cond_2f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/bd;->a(Lcom/google/android/youtube/app/remote/RemoteControl;)V

    goto :goto_2e
.end method

.method public final a(Lcom/google/android/youtube/core/model/Branding;)V
    .registers 3
    .parameter

    .prologue
    .line 892
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->o:Lcom/google/android/youtube/app/ui/ep;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/ep;->a(Lcom/google/android/youtube/core/model/Branding;)V

    .line 893
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->p:Lcom/google/android/youtube/app/ui/fb;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/fb;->a(Lcom/google/android/youtube/core/model/Branding;)V

    .line 894
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 3
    .parameter

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 606
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 6
    .parameter

    .prologue
    .line 720
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->N:Ljava/lang/String;

    .line 721
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Z

    if-eqz v0, :cond_d

    .line 722
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->N:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b(Ljava/lang/String;)V

    .line 724
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "unfavorite_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Lcom/google/android/youtube/core/model/Video;Landroid/net/Uri;)V

    .line 725
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->o:Lcom/google/android/youtube/app/ui/ep;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/ep;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 726
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->p:Lcom/google/android/youtube/app/ui/fb;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/fb;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 727
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->q:Lcom/google/android/youtube/app/ui/el;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/el;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 728
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/app/ui/ev;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/ev;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 729
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/bd;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 731
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->A:Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;->b()V

    .line 732
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->z:Z

    .line 733
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->C:Lcom/google/android/youtube/core/async/UserAuthorizer;

    new-instance v1, Lcom/google/android/youtube/app/ui/dq;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->T:Lcom/google/android/youtube/core/b/ae;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->s:Lcom/google/android/youtube/core/d;

    invoke-direct {v1, p1, p0, v2, v3}, Lcom/google/android/youtube/app/ui/dq;-><init>(Lcom/google/android/youtube/core/model/Video;Landroid/app/Activity;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    .line 734
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/player/Director$StopReason;)V
    .registers 4
    .parameter

    .prologue
    .line 903
    sget-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->AUTOPLAY_DENIED:Lcom/google/android/youtube/core/player/Director$StopReason;

    if-ne p1, v0, :cond_f

    .line 904
    const v0, 0x7f0b005f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    .line 907
    :cond_b
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->finish()V

    .line 909
    :cond_e
    return-void

    .line 906
    :cond_f
    sget-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->VIDEO_ENDED:Lcom/google/android/youtube/core/player/Director$StopReason;

    if-ne p1, v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->P:Z

    if-eqz v0, :cond_e

    goto :goto_b
.end method

.method public final a(Lcom/google/android/youtube/core/player/DirectorException;)V
    .registers 4
    .parameter

    .prologue
    .line 741
    iget-object v0, p1, Lcom/google/android/youtube/core/player/DirectorException;->reason:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    sget-object v1, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->REQUEST_FAILED:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    if-ne v0, v1, :cond_18

    .line 742
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->o:Lcom/google/android/youtube/app/ui/ep;

    invoke-virtual {p1}, Lcom/google/android/youtube/core/player/DirectorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/ep;->a(Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {p1}, Lcom/google/android/youtube/core/player/DirectorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/bd;->b(Ljava/lang/String;)V

    .line 745
    :cond_18
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 635
    const-string v0, "error authenticating for playlist request"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 636
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->finish()V

    .line 637
    return-void
.end method

.method protected final b(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 919
    sparse-switch p1, :sswitch_data_14

    .line 929
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 924
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->n:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/dm;->a(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 926
    :sswitch_c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->q:Lcom/google/android/youtube/app/ui/el;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/el;->c()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 919
    nop

    :sswitch_data_14
    .sparse-switch
        0x3e8 -> :sswitch_c
        0x3ed -> :sswitch_5
        0x3f4 -> :sswitch_5
        0x3f7 -> :sswitch_5
        0x3ff -> :sswitch_5
    .end sparse-switch
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 1033
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->S:Z

    .line 1034
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->aa:Lcom/google/android/youtube/app/honeycomb/phone/cm;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/cm;->b()V

    .line 1035
    return-void
.end method

.method public final b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->O:Z

    if-nez v0, :cond_15

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-nez v0, :cond_15

    .line 884
    if-eqz p1, :cond_16

    const/4 v0, 0x6

    :goto_d
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->setRequestedOrientation(I)V

    .line 887
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->H:Lcom/google/android/youtube/core/ui/OrientationHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/OrientationHelper;->enable()V

    .line 889
    :cond_15
    return-void

    .line 884
    :cond_16
    const/4 v0, 0x7

    goto :goto_d
.end method

.method public final c(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1080
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Z

    if-nez v0, :cond_b

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_b
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->b()I

    move-result v0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_21

    if-eqz p1, :cond_21

    :cond_15
    const/4 v0, 0x1

    :goto_16
    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->d(Z)V

    .line 1082
    if-eqz p1, :cond_23

    .line 1083
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->G:Lcom/google/android/youtube/coreicecream/ui/g;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/g;->b(Z)V

    .line 1087
    :goto_20
    return-void

    :cond_21
    move v0, v1

    .line 1080
    goto :goto_16

    .line 1085
    :cond_23
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->y()V

    goto :goto_20
.end method

.method public final d(I)V
    .registers 2
    .parameter

    .prologue
    .line 951
    return-void
.end method

.method public final d_()V
    .registers 2

    .prologue
    .line 1038
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->S:Z

    .line 1039
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->aa:Lcom/google/android/youtube/app/honeycomb/phone/cm;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/cm;->d_()V

    .line 1040
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->y()V

    .line 1041
    return-void
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1076
    const-string v0, "yt_watch"

    return-object v0
.end method

.method public final e_()V
    .registers 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->finish()V

    .line 632
    return-void
.end method

.method public final g()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 694
    invoke-direct {p0, v0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Lcom/google/android/youtube/core/model/Video;Landroid/net/Uri;)V

    .line 695
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->o:Lcom/google/android/youtube/app/ui/ep;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ep;->d()V

    .line 696
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->p:Lcom/google/android/youtube/app/ui/fb;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/fb;->b()V

    .line 697
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->q:Lcom/google/android/youtube/app/ui/el;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/el;->b()V

    .line 698
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/app/ui/ev;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ev;->a()V

    .line 703
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->t:Lcom/google/android/youtube/core/ui/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/Workspace;->setCurrentScreen(I)V

    .line 704
    return-void
.end method

.method public final h()V
    .registers 3

    .prologue
    .line 748
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/Director;->a(Z)V

    .line 749
    return-void
.end method

.method public final i()V
    .registers 2

    .prologue
    .line 859
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->L:Z

    .line 860
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->z:Z

    if-eqz v0, :cond_c

    .line 861
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->A:Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;->a()V

    .line 863
    :cond_c
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->y()V

    .line 864
    return-void
.end method

.method public final j()V
    .registers 3

    .prologue
    .line 867
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->L:Z

    .line 868
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->A:Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;->b()V

    .line 869
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Z

    if-nez v0, :cond_12

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 870
    :cond_12
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->G:Lcom/google/android/youtube/coreicecream/ui/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/g;->b(Z)V

    .line 872
    :cond_18
    return-void
.end method

.method public final k()V
    .registers 3

    .prologue
    .line 897
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-nez v0, :cond_c

    .line 898
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->G:Lcom/google/android/youtube/coreicecream/ui/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/g;->b(Z)V

    .line 900
    :cond_c
    return-void
.end method

.method public final l()V
    .registers 1

    .prologue
    .line 1044
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->A()V

    .line 1045
    return-void
.end method

.method public final m()V
    .registers 3

    .prologue
    .line 1048
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->A()V

    .line 1051
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1052
    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1053
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 1054
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 1056
    :cond_13
    return-void
.end method

.method public final n()V
    .registers 1

    .prologue
    .line 1110
    return-void
.end method

.method public final o()V
    .registers 1

    .prologue
    .line 1113
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 753
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->O:Z

    if-eqz v0, :cond_8

    .line 754
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->finish()V

    .line 758
    :goto_7
    return-void

    .line 756
    :cond_8
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onBackPressed()V

    goto :goto_7
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 10
    .parameter

    .prologue
    const v7, 0x7f09000b

    const/16 v6, 0x10

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 811
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 812
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_a5

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Z

    .line 813
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 814
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->setRequestedOrientation(I)V

    .line 815
    iput-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Z

    .line 817
    :cond_1e
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Z

    if-eqz v0, :cond_a8

    const/16 v0, 0x8

    .line 818
    :goto_24
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->u:Lcom/google/android/youtube/core/ui/TabRow;

    invoke-virtual {v3, v0}, Lcom/google/android/youtube/core/ui/TabRow;->setVisibility(I)V

    .line 819
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->t:Lcom/google/android/youtube/core/ui/Workspace;

    invoke-virtual {v3, v0}, Lcom/google/android/youtube/core/ui/Workspace;->setVisibility(I)V

    .line 820
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Z

    if-nez v0, :cond_38

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_38
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->b()I

    move-result v0

    if-ge v0, v6, :cond_ab

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bd;->e()Z

    move-result v0

    if-eqz v0, :cond_ab

    :cond_46
    move v0, v1

    :goto_47
    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->d(Z)V

    .line 822
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->w:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 823
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 824
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->G:Lcom/google/android/youtube/coreicecream/ui/g;

    iget-boolean v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Z

    invoke-virtual {v0, v4}, Lcom/google/android/youtube/coreicecream/ui/g;->a(Z)V

    .line 826
    :cond_5d
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->J:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    iget-boolean v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Z

    if-eqz v4, :cond_69

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->b()I

    move-result v4

    if-ge v4, v6, :cond_ad

    :cond_69
    :goto_69
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setTimeBarIsOverlay(Z)V

    .line 827
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Z

    if-eqz v0, :cond_af

    .line 828
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->N:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 831
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->y()V

    .line 832
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 833
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 851
    :cond_90
    :goto_90
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/Director;->a(Landroid/content/res/Configuration;)V

    .line 852
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/bd;->a(Landroid/content/res/Configuration;)V

    .line 853
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->aa:Lcom/google/android/youtube/app/honeycomb/phone/cm;

    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/cm;->a(Z)V

    .line 855
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->closeOptionsMenu()V

    .line 856
    return-void

    :cond_a5
    move v0, v2

    .line 812
    goto/16 :goto_11

    :cond_a8
    move v0, v2

    .line 817
    goto/16 :goto_24

    :cond_ab
    move v0, v2

    .line 820
    goto :goto_47

    :cond_ad
    move v1, v2

    .line 826
    goto :goto_69

    .line 835
    :cond_af
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-nez v0, :cond_ba

    .line 836
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->G:Lcom/google/android/youtube/coreicecream/ui/g;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/coreicecream/ui/g;->b(Z)V

    .line 838
    :cond_ba
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFlags(II)V

    .line 839
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->s()V

    .line 840
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-eqz v0, :cond_101

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_dd
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 844
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 845
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 846
    int-to-float v0, v0

    const v1, 0x3fe374bc

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 847
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 848
    const/16 v0, 0x1e0

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_90

    .line 840
    :cond_101
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_dd
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 47
    .parameter

    .prologue
    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 286
    invoke-super/range {p0 .. p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 287
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v3

    if-eqz v3, :cond_477

    const v3, 0x7f04007a

    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->setContentView(I)V

    .line 288
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v3

    if-nez v3, :cond_26

    .line 289
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->d(Z)V

    .line 292
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/app/YouTubeApplication;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/k;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Z:Lcom/google/android/youtube/app/k;

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v11

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->B:Landroid/content/SharedPreferences;

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->s:Lcom/google/android/youtube/core/d;

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->U()Lcom/google/android/youtube/core/utils/k;

    move-result-object v18

    .line 299
    const v3, 0x7f0800d7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/player/PlayerView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->w:Lcom/google/android/youtube/core/player/PlayerView;

    .line 300
    new-instance v3, Lcom/google/android/youtube/core/player/bi;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->w:Lcom/google/android/youtube/core/player/PlayerView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Z:Lcom/google/android/youtube/app/k;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v6}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/youtube/core/player/bi;-><init>(Lcom/google/android/youtube/core/player/PlayerView;Lcom/google/android/youtube/core/c;Lcom/google/android/youtube/core/j;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->v:Lcom/google/android/youtube/core/player/bi;

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->v:Lcom/google/android/youtube/core/player/bi;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/utils/k;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->v:Lcom/google/android/youtube/core/player/bi;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Z:Lcom/google/android/youtube/app/k;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/k;->g()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/player/bi;->a(Z)V

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->v:Lcom/google/android/youtube/core/player/bi;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Z:Lcom/google/android/youtube/app/k;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/k;->h()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/player/bi;->b(Z)V

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->v:Lcom/google/android/youtube/core/player/bi;

    new-instance v4, Lcom/google/android/youtube/app/b/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-direct {v4, v5}, Lcom/google/android/youtube/app/b/a;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;)V

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/player/bn;)V

    .line 306
    new-instance v3, Lcom/google/android/youtube/core/utils/HdmiReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1}, Lcom/google/android/youtube/core/utils/HdmiReceiver;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/j;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->x:Lcom/google/android/youtube/core/utils/HdmiReceiver;

    .line 307
    new-instance v3, Lcom/google/android/youtube/core/utils/DockReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1}, Lcom/google/android/youtube/core/utils/DockReceiver;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/h;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->y:Lcom/google/android/youtube/core/utils/DockReceiver;

    .line 309
    const v3, 0x7f080032

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/ui/TabRow;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->u:Lcom/google/android/youtube/core/ui/TabRow;

    .line 310
    const v3, 0x7f080033

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/ui/Workspace;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->t:Lcom/google/android/youtube/core/ui/Workspace;

    .line 312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->t:Lcom/google/android/youtube/core/ui/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->u:Lcom/google/android/youtube/core/ui/TabRow;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/google/android/youtube/core/ui/Workspace;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/Workspace;Lcom/google/android/youtube/core/ui/TabRow;)Lcom/google/android/youtube/core/ui/Workspace;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->t:Lcom/google/android/youtube/core/ui/Workspace;

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->t:Lcom/google/android/youtube/core/ui/Workspace;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/google/android/youtube/core/ui/Workspace;->setOnTabSelectedListener(Lcom/google/android/youtube/core/ui/b;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->T:Lcom/google/android/youtube/core/b/ae;

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v22

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->l()Lcom/google/android/youtube/core/b/an;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->U:Lcom/google/android/youtube/core/b/an;

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->k()Lcom/google/android/youtube/core/b/a;

    move-result-object v7

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->m()Lcom/google/android/youtube/core/b/al;

    move-result-object v9

    .line 320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    move-result-object v34

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/app/c/g;

    move-result-object v32

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v17

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v27

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->q()Lcom/google/android/youtube/app/remote/at;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->W:Lcom/google/android/youtube/app/remote/at;

    .line 326
    new-instance v3, Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->A:Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->w:Lcom/google/android/youtube/core/player/PlayerView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->A:Lcom/google/android/youtube/app/honeycomb/player/LiveBadgeOverlay;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 329
    new-instance v10, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->B:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->C:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->T:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v3, v4, v5}, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/b/ae;)V

    .line 332
    new-instance v3, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/Analytics;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->J:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->J:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setShowFullscreenInPortrait(Z)V

    .line 335
    new-instance v3, Lcom/google/android/youtube/core/player/DefaultAdOverlay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->J:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->K:Lcom/google/android/youtube/core/player/a;

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->v:Lcom/google/android/youtube/core/player/bi;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->B:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->T:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->U:Lcom/google/android/youtube/core/b/an;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->c()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->J:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    new-instance v15, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->K:Lcom/google/android/youtube/core/player/a;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->S()Lcom/google/android/youtube/core/player/an;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->T()Lcom/google/android/youtube/core/player/e;

    move-result-object v20

    move-object/from16 v4, p0

    move-object/from16 v13, p0

    invoke-static/range {v3 .. v20}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/player/bi;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/a;Lcom/google/android/youtube/core/b/an;Lcom/google/android/youtube/core/b/al;Lcom/google/android/youtube/core/player/c;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/core/player/z;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/n;Lcom/google/android/youtube/core/player/a;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/core/player/an;Lcom/google/android/youtube/core/player/e;)Lcom/google/android/youtube/core/player/Director;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    .line 356
    if-eqz p1, :cond_21f

    const-string v3, "stopped"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21f

    .line 357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/player/Director;->x()V

    .line 360
    :cond_21f
    new-instance v19, Lcom/google/android/youtube/app/ui/bd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->v:Lcom/google/android/youtube/core/player/bi;

    move-object/from16 v20, v0

    move-object/from16 v21, p0

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    move-object/from16 v25, p0

    invoke-direct/range {v19 .. v25}, Lcom/google/android/youtube/app/ui/bd;-><init>(Lcom/google/android/youtube/core/player/bi;Landroid/app/Activity;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/al;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/ui/bo;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/app/ui/bd;->b(Z)V

    .line 365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->w:Lcom/google/android/youtube/core/player/PlayerView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/ui/bd;->q()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/player/Director;->u()[Landroid/view/View;

    move-result-object v3

    .line 368
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/view/View;

    .line 369
    array-length v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/ui/bd;->q()Landroid/view/View;

    move-result-object v4

    aput-object v4, v7, v3

    .line 371
    new-instance v3, Lcom/google/android/youtube/coreicecream/ui/g;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->w:Lcom/google/android/youtube/core/player/PlayerView;

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/coreicecream/ui/g;-><init>(Landroid/view/Window;Landroid/app/ActionBar;Lcom/google/android/youtube/core/player/PlayerView;[Landroid/view/View;Lcom/google/android/youtube/coreicecream/ui/h;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->G:Lcom/google/android/youtube/coreicecream/ui/g;

    .line 373
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v3

    if-eqz v3, :cond_2a2

    .line 374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->G:Lcom/google/android/youtube/coreicecream/ui/g;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/coreicecream/ui/g;->a(Z)V

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->G:Lcom/google/android/youtube/coreicecream/ui/g;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/coreicecream/ui/g;->b(Z)V

    .line 378
    :cond_2a2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->x()Lcom/google/android/youtube/app/YouTubePlatformUtil;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->I:Lcom/google/android/youtube/app/YouTubePlatformUtil;

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->T:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v3}, Lcom/google/android/youtube/core/b/ae;->x()Lcom/google/android/youtube/core/async/ar;

    move-result-object v8

    .line 383
    new-instance v23, Lcom/google/android/youtube/app/ui/ay;

    const v3, 0x7f0800da

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->T:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->C:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v31, v0

    move-object/from16 v24, p0

    move-object/from16 v26, v11

    move-object/from16 v29, v22

    move-object/from16 v30, p0

    move-object/from16 v33, v18

    invoke-direct/range {v23 .. v33}, Lcom/google/android/youtube/app/ui/ay;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/ui/m;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/c/g;Lcom/google/android/youtube/core/utils/k;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->o:Lcom/google/android/youtube/app/ui/ep;

    .line 386
    new-instance v3, Lcom/google/android/youtube/app/ui/fb;

    const v4, 0x7f0800d8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/core/ui/g;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2, v4}, Lcom/google/android/youtube/app/adapter/bb;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/j;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->C:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->T:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v4}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v10

    move-object/from16 v4, p0

    move-object/from16 v7, v27

    move-object/from16 v12, v17

    invoke-direct/range {v3 .. v12}, Lcom/google/android/youtube/app/ui/fb;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/GDataRequestFactory;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/d;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->p:Lcom/google/android/youtube/app/ui/fb;

    .line 397
    new-instance v5, Lcom/google/android/youtube/app/ui/el;

    const v3, 0x7f0800d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/youtube/core/ui/PagedListView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->T:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/app/g;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/k;

    move-result-object v10

    const/4 v13, 0x1

    move-object/from16 v6, p0

    move-object/from16 v12, v17

    invoke-direct/range {v5 .. v13}, Lcom/google/android/youtube/app/ui/el;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedListView;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/app/g;Lcom/google/android/youtube/app/k;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/d;Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->q:Lcom/google/android/youtube/app/ui/el;

    .line 400
    new-instance v24, Lcom/google/android/youtube/app/ui/ev;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->T:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v29, v0

    move-object/from16 v25, p0

    move-object/from16 v28, v34

    move-object/from16 v30, v11

    move-object/from16 v31, v17

    invoke-direct/range {v24 .. v31}, Lcom/google/android/youtube/app/ui/ev;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/player/Director;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/d;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/app/ui/ev;

    .line 403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->r()Lcom/google/android/youtube/app/remote/bd;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->ab:Lcom/google/android/youtube/app/remote/bd;

    .line 404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->t()Lcom/google/android/youtube/app/remote/e;

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->u()Lcom/google/android/youtube/app/remote/AtHomeConnection;

    .line 406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->r()Lcom/google/android/youtube/app/remote/bd;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->ab:Lcom/google/android/youtube/app/remote/bd;

    .line 408
    new-instance v28, Lcom/google/android/youtube/app/ui/dm;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->T:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->C:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/app/g;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/k;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->W:Lcom/google/android/youtube/app/remote/at;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->ab:Lcom/google/android/youtube/app/remote/bd;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->t()Lcom/google/android/youtube/app/remote/e;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    move-object/from16 v37, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->w()Lcom/google/android/youtube/app/ui/bq;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->o:Lcom/google/android/youtube/app/ui/ep;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->I:Lcom/google/android/youtube/app/YouTubePlatformUtil;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->v:Lcom/google/android/youtube/core/player/bi;

    move-object/from16 v44, v0

    move-object/from16 v29, p0

    move-object/from16 v39, v11

    move-object/from16 v42, v27

    move-object/from16 v43, v17

    invoke-direct/range {v28 .. v44}, Lcom/google/android/youtube/app/ui/dm;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/g;Lcom/google/android/youtube/app/k;Lcom/google/android/youtube/app/remote/at;Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/app/remote/e;Lcom/google/android/youtube/app/ui/bd;Lcom/google/android/youtube/app/ui/bq;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/ui/ep;Lcom/google/android/youtube/app/YouTubePlatformUtil;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/player/bi;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->n:Lcom/google/android/youtube/app/ui/dm;

    .line 425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->o:Lcom/google/android/youtube/app/ui/ep;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->n:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/app/ui/ep;->a(Lcom/google/android/youtube/app/ui/dm;)V

    .line 427
    new-instance v3, Lcom/google/android/youtube/app/honeycomb/phone/cm;

    invoke-direct {v3}, Lcom/google/android/youtube/app/honeycomb/phone/cm;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->aa:Lcom/google/android/youtube/app/honeycomb/phone/cm;

    .line 429
    new-instance v3, Lcom/google/android/youtube/app/honeycomb/phone/cd;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/google/android/youtube/app/honeycomb/phone/cd;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->E:Lcom/google/android/youtube/app/honeycomb/phone/cd;

    .line 430
    new-instance v3, Lcom/google/android/youtube/app/honeycomb/phone/cf;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/google/android/youtube/app/honeycomb/phone/cf;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->F:Lcom/google/android/youtube/app/honeycomb/phone/cf;

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/youtube/app/honeycomb/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/player/Director;)V

    .line 433
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v3

    if-nez v3, :cond_42f

    .line 434
    new-instance v3, Lcom/google/android/youtube/core/ui/OrientationHelper;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/android/youtube/core/ui/OrientationHelper;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->H:Lcom/google/android/youtube/core/ui/OrientationHelper;

    .line 436
    :cond_42f
    const-string v3, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->m:Landroid/media/AudioManager;

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->u()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Lcom/google/android/youtube/app/honeycomb/ui/l;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/app/remote/ab;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->V:Lcom/google/android/youtube/app/remote/ab;

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 446
    const-string v3, "keyguard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->ac:Landroid/app/KeyguardManager;

    .line 447
    return-void

    .line 287
    :cond_477
    const v3, 0x7f04009d

    goto/16 :goto_15
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 641
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 642
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-eqz v0, :cond_1a

    const v0, 0x7f120009

    :goto_10
    invoke-virtual {v1, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 644
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->aa:Lcom/google/android/youtube/app/honeycomb/phone/cm;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/cm;->a(Landroid/view/Menu;)V

    .line 645
    const/4 v0, 0x1

    return v0

    .line 642
    :cond_1a
    const v0, 0x7f12000a

    goto :goto_10
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->y()V

    .line 803
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-nez v0, :cond_10

    .line 804
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->H:Lcom/google/android/youtube/core/ui/OrientationHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/OrientationHelper;->disable()V

    .line 806
    :cond_10
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onDestroy()V

    .line 807
    return-void
.end method

.method public onMenuVisibilityChanged(Z)V
    .registers 2
    .parameter

    .prologue
    .line 1028
    iput-boolean p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->R:Z

    .line 1029
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->y()V

    .line 1030
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter

    .prologue
    .line 610
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 613
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/ah;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/ah;
    :try_end_a
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_a} :catch_22

    move-result-object v0

    .line 620
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/bd;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/bd;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/youtube/core/utils/ah;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 628
    :goto_21
    return-void

    .line 614
    :catch_22
    move-exception v0

    .line 615
    const-string v1, "invalid intercepted URI"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 616
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->finish()V

    goto :goto_21

    .line 626
    :cond_2c
    iget-object v0, v0, Lcom/google/android/youtube/core/utils/ah;->a:Ljava/lang/String;

    sget-object v1, Lcom/google/android/youtube/app/m;->R:Lcom/google/android/youtube/core/b/aj;

    invoke-static {p0, v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_21
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 657
    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Q:Z

    if-nez v1, :cond_a

    .line 658
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 685
    :goto_9
    return v0

    .line 660
    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_40

    .line 685
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_9

    .line 662
    :pswitch_16
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->n:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/dm;->a()V

    goto :goto_9

    .line 665
    :pswitch_1c
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->n:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/dm;->b()V

    goto :goto_9

    .line 669
    :pswitch_22
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->n:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/dm;->c()V

    goto :goto_9

    .line 673
    :pswitch_28
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->n:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/dm;->f()V

    goto :goto_9

    .line 676
    :pswitch_2e
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->n:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/dm;->d()V

    goto :goto_9

    .line 679
    :pswitch_34
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->n:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/dm;->e()V

    goto :goto_9

    .line 682
    :pswitch_3a
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->n:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/dm;->g()V

    goto :goto_9

    .line 660
    :pswitch_data_40
    .packed-switch 0x7f080150
        :pswitch_28
        :pswitch_22
        :pswitch_28
        :pswitch_22
        :pswitch_16
        :pswitch_1c
        :pswitch_3a
        :pswitch_2e
        :pswitch_34
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 775
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->x()V

    .line 776
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->v:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->h()V

    .line 777
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bd;->c()V

    .line 778
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->ad:Z

    .line 779
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onPause()V

    .line 780
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 650
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 651
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->aa:Lcom/google/android/youtube/app/honeycomb/phone/cm;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/cm;->a()V

    .line 652
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 762
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onResume()V

    .line 763
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->V:Lcom/google/android/youtube/app/remote/ab;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/ab;->b()Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v0

    .line 764
    if-eqz v0, :cond_19

    .line 765
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/bd;->a(Lcom/google/android/youtube/app/remote/RemoteControl;)V

    .line 769
    :goto_10
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bd;->b()V

    .line 770
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->ad:Z

    .line 771
    return-void

    .line 767
    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bd;->a()V

    goto :goto_10
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 796
    const-string v0, "stopped"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 797
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 798
    return-void
.end method

.method public onStart()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 451
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 452
    const-string v1, "authenticate"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 453
    const-string v2, "force_fullscreen"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->O:Z

    .line 455
    iget-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->O:Z

    if-eqz v2, :cond_2f

    .line 456
    iput-boolean v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Z

    .line 457
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v2, v4}, Lcom/google/android/youtube/core/player/Director;->d(Z)V

    .line 458
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v2, v4}, Lcom/google/android/youtube/core/player/Director;->b(Z)V

    .line 459
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 460
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->setRequestedOrientation(I)V

    .line 463
    :cond_2f
    const-string v2, "finish_on_ended"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->P:Z

    .line 465
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->x:Lcom/google/android/youtube/core/utils/HdmiReceiver;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/utils/HdmiReceiver;->a()V

    .line 466
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->y:Lcom/google/android/youtube/core/utils/DockReceiver;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/utils/DockReceiver;->a()V

    .line 468
    const-string v2, "referrer"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 469
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_79

    .line 470
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->U:Lcom/google/android/youtube/core/b/an;

    invoke-interface {v0, v2}, Lcom/google/android/youtube/core/b/an;->a(Ljava/lang/String;)V

    .line 474
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->Y:Lcom/google/android/youtube/app/YouTubeApplication;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/YouTubeApplication;->a(I)V

    .line 476
    if-eqz v1, :cond_8d

    .line 477
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->C:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 483
    :goto_5f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->m:Landroid/media/AudioManager;

    const/high16 v1, -0x8000

    invoke-virtual {v0, v5, v1, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 486
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->E:Lcom/google/android/youtube/app/honeycomb/phone/cd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/cd;->a()V

    .line 487
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->F:Lcom/google/android/youtube/app/honeycomb/phone/cf;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/cf;->a()V

    .line 489
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->V:Lcom/google/android/youtube/app/remote/ab;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/remote/ab;->a(Lcom/google/android/youtube/app/remote/af;)V

    .line 491
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStart()V

    .line 492
    return-void

    .line 471
    :cond_79
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    if-ne v0, v2, :cond_52

    .line 472
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->U:Lcom/google/android/youtube/core/b/an;

    sget-object v2, Lcom/google/android/youtube/app/m;->J:Lcom/google/android/youtube/core/b/aj;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/b/aj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/youtube/core/b/an;->a(Ljava/lang/String;)V

    goto :goto_52

    .line 479
    :cond_8d
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_5f
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 784
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->m:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 785
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->E:Lcom/google/android/youtube/app/honeycomb/phone/cd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/cd;->b()V

    .line 786
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->F:Lcom/google/android/youtube/app/honeycomb/phone/cf;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/cf;->b()V

    .line 787
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->x:Lcom/google/android/youtube/core/utils/HdmiReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/HdmiReceiver;->b()V

    .line 788
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->y:Lcom/google/android/youtube/core/utils/DockReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/DockReceiver;->b()V

    .line 789
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->G:Lcom/google/android/youtube/coreicecream/ui/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/g;->b(Z)V

    .line 790
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->V:Lcom/google/android/youtube/app/remote/ab;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/remote/ab;->b(Lcom/google/android/youtube/app/remote/af;)V

    .line 791
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStop()V

    .line 792
    return-void
.end method

.method public final p()V
    .registers 2

    .prologue
    .line 1116
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Z

    if-eqz v0, :cond_9

    .line 1117
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->J:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b()V

    .line 1119
    :cond_9
    return-void
.end method

.method public final q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()I
    .registers 2

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bd;->e()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1143
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->X:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bd;->s()I

    move-result v0

    .line 1145
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->A()I

    move-result v0

    goto :goto_e
.end method
