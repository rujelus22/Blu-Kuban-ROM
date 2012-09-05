.class public Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;
.implements Lcom/google/android/youtube/app/honeycomb/ui/p;
.implements Lcom/google/android/youtube/core/async/av;
.implements Lcom/google/android/youtube/core/player/x;
.implements Lcom/google/android/youtube/core/ui/b;
.implements Lcom/google/android/youtube/core/ui/m;
.implements Lcom/google/android/youtube/core/utils/f;
.implements Lcom/google/android/youtube/core/utils/h;


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Landroid/view/MenuItem;

.field private H:Landroid/view/MenuItem;

.field private I:Landroid/view/MenuItem;

.field private J:Landroid/view/MenuItem;

.field private K:Lcom/google/android/youtube/core/client/ad;

.field private L:Lcom/google/android/youtube/core/client/aj;

.field private M:Lcom/google/android/youtube/app/p;

.field private N:Lcom/google/android/youtube/app/ui/at;

.field private O:Lcom/google/android/youtube/app/ae;

.field private a:Landroid/media/AudioManager;

.field private b:Lcom/google/android/youtube/app/ui/ch;

.field private c:Lcom/google/android/youtube/app/ui/dh;

.field private d:Lcom/google/android/youtube/app/ui/ds;

.field private e:Lcom/google/android/youtube/app/ui/da;

.field private f:Lcom/google/android/youtube/app/ui/dm;

.field private g:Lcom/google/android/youtube/core/e;

.field private h:Lcom/google/android/youtube/core/ui/Workspace;

.field private i:Lcom/google/android/youtube/core/ui/TabRow;

.field private j:Lcom/google/android/youtube/core/player/aq;

.field private k:Lcom/google/android/youtube/core/player/PlayerView;

.field private l:Lcom/google/android/youtube/core/utils/HdmiReceiver;

.field private m:Lcom/google/android/youtube/core/utils/DockReceiver;

.field private n:Z

.field private o:Lcom/google/android/youtube/app/honeycomb/a/a;

.field private p:Landroid/content/SharedPreferences;

.field private q:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private r:Lcom/google/android/youtube/core/player/p;

.field private s:Lcom/google/android/youtube/app/honeycomb/phone/at;

.field private t:Lcom/google/android/youtube/app/honeycomb/phone/au;

.field private u:Lcom/google/android/youtube/app/ui/PromoHelper;

.field private v:Lcom/google/android/youtube/coreicecream/ui/h;

.field private w:Lcom/google/android/youtube/core/ui/OrientationHelper;

.field private x:Lcom/google/android/youtube/app/ah;

.field private y:Lcom/google/android/youtube/core/player/ControllerOverlay;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->B:Ljava/lang/String;

    .line 762
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;IZLcom/google/android/youtube/core/client/al;)Landroid/content/Intent;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "playlist_uri"

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-static {p4}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/al;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/client/al;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "video_id"

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "unfavorite_uri"

    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "referrer"

    invoke-static {p3}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/al;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/youtube/core/client/al;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "video_id"

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "referrer"

    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/al;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLcom/google/android/youtube/core/client/al;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-static {p0, p1, p3}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/youtube/core/client/al;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authenticate"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/ControllerOverlay;
    .registers 2
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->y:Lcom/google/android/youtube/core/player/ControllerOverlay;

    return-object v0
.end method

.method private a(Lcom/google/android/youtube/core/model/Video;Landroid/net/Uri;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/app/ui/ch;->a(Lcom/google/android/youtube/core/model/Video;Landroid/net/Uri;)V

    .line 528
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
    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Z

    .line 530
    return-void

    .line 528
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/youtube/core/client/al;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "artist_id"

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "referrer"

    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/al;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/aq;
    .registers 2
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->j:Lcom/google/android/youtube/core/player/aq;

    return-object v0
.end method

.method private b(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 8
    .parameter

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 399
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 400
    const-string v0, "video_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 401
    const-string v0, "playlist_uri"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 402
    const-string v4, "playlist_start_position"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 403
    const-string v5, "artist_id"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    if-eqz v3, :cond_31

    .line 406
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/core/player/p;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->K:Lcom/google/android/youtube/core/client/ad;

    invoke-static {v1, v3, p1}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/client/ad;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 430
    :goto_30
    return-void

    .line 408
    :cond_31
    if-eqz v0, :cond_44

    .line 409
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->K:Lcom/google/android/youtube/core/client/ad;

    invoke-static {v1, v0, p1, v4}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/client/ad;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 412
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->u:Lcom/google/android/youtube/app/ui/PromoHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/PromoHelper;->d()V

    goto :goto_30

    .line 413
    :cond_44
    if-eqz v1, :cond_4c

    .line 414
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->f:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/dm;->a(Ljava/lang/String;)V

    goto :goto_30

    .line 415
    :cond_4c
    if-eqz v2, :cond_6f

    .line 416
    invoke-static {v2}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/v;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_66

    .line 418
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/core/player/p;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->K:Lcom/google/android/youtube/core/client/ad;

    iget-object v3, v0, Lcom/google/android/youtube/core/utils/v;->a:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/client/ad;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/youtube/core/utils/v;->b:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/youtube/core/utils/v;->c:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/async/a/a;Ljava/lang/String;ILcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_30

    .line 422
    :cond_66
    const-string v0, "invalid intercepted URI"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->finish()V

    goto :goto_30

    .line 426
    :cond_6f
    const-string v0, "invalid intent format"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->finish()V

    goto :goto_30
.end method

.method private b(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 733
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 734
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x10102eb

    aput v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 735
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 736
    if-eqz p1, :cond_24

    :goto_20
    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 737
    return-void

    :cond_24
    move v0, v1

    .line 736
    goto :goto_20
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/p;
    .registers 2
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/core/player/p;

    return-object v0
.end method

.method private c(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 808
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->G:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 809
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->H:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 810
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->I:Landroid/view/MenuItem;

    if-nez p1, :cond_1c

    move v0, v1

    :goto_11
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 811
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->J:Landroid/view/MenuItem;

    if-nez p1, :cond_1e

    :goto_18
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 812
    return-void

    :cond_1c
    move v0, v2

    .line 810
    goto :goto_11

    :cond_1e
    move v1, v2

    .line 811
    goto :goto_18
.end method

.method private o()V
    .registers 3

    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->A:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->z:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->E:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->F:Z

    if-nez v0, :cond_25

    .line 677
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/p;->q()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 678
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->v:Lcom/google/android/youtube/coreicecream/ui/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/h;->a(Z)V

    .line 680
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 682
    :cond_25
    return-void
.end method

.method private p()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 841
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->l:Lcom/google/android/youtube/core/utils/HdmiReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/HdmiReceiver;->c()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->m:Lcom/google/android/youtube/core/utils/DockReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/DockReceiver;->c()I

    move-result v0

    if-eqz v0, :cond_2b

    :cond_12
    move v0, v2

    .line 843
    :goto_13
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/core/player/p;

    if-nez v0, :cond_1b

    iget-boolean v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->C:Z

    if-eqz v4, :cond_1c

    :cond_1b
    move v1, v2

    :cond_1c
    invoke-virtual {v3, v1}, Lcom/google/android/youtube/core/player/p;->c(Z)V

    .line 844
    if-eqz v0, :cond_2d

    .line 845
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->w:Lcom/google/android/youtube/core/ui/OrientationHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/OrientationHelper;->disable()V

    .line 846
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->setRequestedOrientation(I)V

    .line 850
    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    move v0, v1

    .line 841
    goto :goto_13

    .line 847
    :cond_2d
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->C:Z

    if-eqz v0, :cond_2a

    .line 848
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->setRequestedOrientation(I)V

    goto :goto_2a
.end method


# virtual methods
.method protected final a(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 705
    sparse-switch p1, :sswitch_data_18

    .line 714
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/p;->b(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_9
    return-object v0

    .line 709
    :sswitch_a
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/ch;->a(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_9

    .line 711
    :sswitch_11
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->e:Lcom/google/android/youtube/app/ui/da;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/da;->b()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_9

    .line 705
    :sswitch_data_18
    .sparse-switch
        0x3e8 -> :sswitch_11
        0x3ed -> :sswitch_a
        0x3f4 -> :sswitch_a
        0x3f7 -> :sswitch_a
    .end sparse-switch
.end method

.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 854
    const-string v0, "yt_watch"

    return-object v0
.end method

.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 245
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 246
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 247
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Branding;)V
    .registers 3
    .parameter

    .prologue
    .line 694
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->c:Lcom/google/android/youtube/app/ui/dh;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/dh;->a(Lcom/google/android/youtube/core/model/Branding;)V

    .line 695
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->d:Lcom/google/android/youtube/app/ui/ds;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/ds;->a(Lcom/google/android/youtube/core/model/Branding;)V

    .line 696
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 2
    .parameter

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 434
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 4
    .parameter

    .prologue
    .line 536
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->B:Ljava/lang/String;

    .line 537
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->A:Z

    if-eqz v0, :cond_d

    .line 538
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->B:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Ljava/lang/String;)V

    .line 540
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "unfavorite_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Lcom/google/android/youtube/core/model/Video;Landroid/net/Uri;)V

    .line 541
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->c:Lcom/google/android/youtube/app/ui/dh;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/dh;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 542
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->d:Lcom/google/android/youtube/app/ui/ds;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/ds;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 543
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->e:Lcom/google/android/youtube/app/ui/da;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/da;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 544
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->f:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 545
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->N:Lcom/google/android/youtube/app/ui/at;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/at;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 546
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Lcom/google/android/youtube/app/p;

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->d()Lcom/google/android/youtube/app/t;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/t;->a:Lcom/google/android/youtube/app/t;

    if-eq v0, v1, :cond_44

    .line 547
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->N:Lcom/google/android/youtube/app/ui/at;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/at;->a()V

    .line 549
    :cond_44
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->u:Lcom/google/android/youtube/app/ui/PromoHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/PromoHelper;->b()V

    .line 550
    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    if-eqz v0, :cond_52

    .line 551
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->u:Lcom/google/android/youtube/app/ui/PromoHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/PromoHelper;->c()V

    .line 554
    :cond_52
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->o:Lcom/google/android/youtube/app/honeycomb/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/a/a;->b()V

    .line 555
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->n:Z

    .line 556
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;)V
    .registers 3
    .parameter

    .prologue
    .line 719
    sget-object v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;->TAP:Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

    if-ne p1, v0, :cond_9

    .line 720
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->u:Lcom/google/android/youtube/app/ui/PromoHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/PromoHelper;->a()V

    .line 722
    :cond_9
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 441
    const-string v0, "error authenticating for playlist request"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->finish()V

    .line 443
    return-void
.end method

.method public final a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->C:Z

    if-nez v0, :cond_f

    .line 686
    if-eqz p1, :cond_10

    const/4 v0, 0x6

    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->setRequestedOrientation(I)V

    .line 689
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->w:Lcom/google/android/youtube/core/ui/OrientationHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/OrientationHelper;->enable()V

    .line 691
    :cond_f
    return-void

    .line 686
    :cond_10
    const/4 v0, 0x7

    goto :goto_7
.end method

.method public final b()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 510
    invoke-direct {p0, v0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Lcom/google/android/youtube/core/model/Video;Landroid/net/Uri;)V

    .line 511
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->c:Lcom/google/android/youtube/app/ui/dh;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/dh;->d()V

    .line 512
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->d:Lcom/google/android/youtube/app/ui/ds;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ds;->b()V

    .line 513
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->e:Lcom/google/android/youtube/app/ui/da;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/da;->a()V

    .line 514
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->f:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/dm;->b()V

    .line 519
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->h:Lcom/google/android/youtube/core/ui/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/Workspace;->c(I)V

    .line 520
    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->g:Lcom/google/android/youtube/core/e;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/e;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 560
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->c:Lcom/google/android/youtube/app/ui/dh;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/dh;->a(Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->N:Lcom/google/android/youtube/app/ui/at;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/at;->b(Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->z:Z

    .line 660
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->n:Z

    if-eqz v0, :cond_c

    .line 661
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->o:Lcom/google/android/youtube/app/honeycomb/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/a/a;->a()V

    .line 663
    :cond_c
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->o()V

    .line 664
    return-void
.end method

.method public final c(I)V
    .registers 2
    .parameter

    .prologue
    .line 726
    return-void
.end method

.method public final d_()V
    .registers 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->finish()V

    .line 438
    return-void
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 667
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->z:Z

    .line 668
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->o:Lcom/google/android/youtube/app/honeycomb/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/a/a;->b()V

    .line 669
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 670
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->A:Z

    if-eqz v0, :cond_19

    .line 671
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->v:Lcom/google/android/youtube/coreicecream/ui/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/h;->a(Z)V

    .line 673
    :cond_19
    return-void
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 699
    const v0, 0x7f0a0051

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    .line 700
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->finish()V

    .line 701
    return-void
.end method

.method public final f_()V
    .registers 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/p;->o()V

    .line 566
    return-void
.end method

.method public final g()V
    .registers 2

    .prologue
    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->F:Z

    .line 816
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->c(Z)V

    .line 817
    return-void
.end method

.method public final h()V
    .registers 2

    .prologue
    .line 820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->F:Z

    .line 821
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->c(Z)V

    .line 822
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->o()V

    .line 823
    return-void
.end method

.method public final i()V
    .registers 1

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->p()V

    .line 827
    return-void
.end method

.method public final j()V
    .registers 3

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->p()V

    .line 833
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 834
    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 835
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 836
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 838
    :cond_13
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->C:Z

    if-eqz v0, :cond_8

    .line 571
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->finish()V

    .line 575
    :goto_7
    return-void

    .line 573
    :cond_8
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onBackPressed()V

    goto :goto_7
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x1

    const/16 v4, 0x400

    const/4 v2, 0x0

    .line 628
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 629
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_61

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->A:Z

    .line 630
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->A:Z

    if-eqz v0, :cond_63

    const/16 v0, 0x8

    .line 631
    :goto_16
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->i:Lcom/google/android/youtube/core/ui/TabRow;

    invoke-virtual {v3, v0}, Lcom/google/android/youtube/core/ui/TabRow;->setVisibility(I)V

    .line 632
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->h:Lcom/google/android/youtube/core/ui/Workspace;

    invoke-virtual {v3, v0}, Lcom/google/android/youtube/core/ui/Workspace;->setVisibility(I)V

    .line 633
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->A:Z

    if-nez v0, :cond_65

    :goto_24
    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b(Z)V

    .line 634
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->k:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 635
    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->A:Z

    if-eqz v1, :cond_67

    .line 636
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 638
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->B:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 641
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 642
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 653
    :goto_58
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/p;->a(Landroid/content/res/Configuration;)V

    .line 655
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->closeOptionsMenu()V

    .line 656
    return-void

    :cond_61
    move v0, v2

    .line 629
    goto :goto_e

    :cond_63
    move v0, v2

    .line 630
    goto :goto_16

    :cond_65
    move v1, v2

    .line 633
    goto :goto_24

    .line 644
    :cond_67
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->v:Lcom/google/android/youtube/coreicecream/ui/h;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/coreicecream/ui/h;->a(Z)V

    .line 645
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Landroid/view/Window;->setFlags(II)V

    .line 646
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->k()V

    .line 647
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 649
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 650
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 651
    int-to-float v1, v1

    const v2, 0x3fe374bc

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_58
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 38
    .parameter

    .prologue
    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 252
    invoke-super/range {p0 .. p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 253
    const v2, 0x7f040059

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->setContentView(I)V

    .line 254
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b(Z)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 257
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/ae;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->O:Lcom/google/android/youtube/app/ae;

    .line 258
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v10

    .line 259
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->C()Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->p:Landroid/content/SharedPreferences;

    .line 260
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->g:Lcom/google/android/youtube/core/e;

    .line 261
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/utils/i;

    move-result-object v16

    .line 263
    const v2, 0x7f0900a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/player/PlayerView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->k:Lcom/google/android/youtube/core/player/PlayerView;

    .line 264
    new-instance v2, Lcom/google/android/youtube/core/player/aq;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->k:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-direct {v2, v3}, Lcom/google/android/youtube/core/player/aq;-><init>(Lcom/google/android/youtube/core/player/PlayerView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->j:Lcom/google/android/youtube/core/player/aq;

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->j:Lcom/google/android/youtube/core/player/aq;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/utils/i;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->j:Lcom/google/android/youtube/core/player/aq;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->O:Lcom/google/android/youtube/app/ae;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/ae;->g()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/aq;->a(Z)V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->j:Lcom/google/android/youtube/core/player/aq;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->O:Lcom/google/android/youtube/app/ae;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/ae;->h()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/aq;->b(Z)V

    .line 269
    new-instance v2, Lcom/google/android/youtube/core/utils/HdmiReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/google/android/youtube/core/utils/HdmiReceiver;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/h;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->l:Lcom/google/android/youtube/core/utils/HdmiReceiver;

    .line 270
    new-instance v2, Lcom/google/android/youtube/core/utils/DockReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/google/android/youtube/core/utils/DockReceiver;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/f;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->m:Lcom/google/android/youtube/core/utils/DockReceiver;

    .line 272
    const v2, 0x7f090029

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/ui/TabRow;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->i:Lcom/google/android/youtube/core/ui/TabRow;

    .line 273
    const v2, 0x7f09002a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/ui/Workspace;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->h:Lcom/google/android/youtube/core/ui/Workspace;

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->h:Lcom/google/android/youtube/core/ui/Workspace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->i:Lcom/google/android/youtube/core/ui/TabRow;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/google/android/youtube/core/ui/Workspace;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/Workspace;Lcom/google/android/youtube/core/ui/TabRow;)Lcom/google/android/youtube/core/ui/Workspace;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->h:Lcom/google/android/youtube/core/ui/Workspace;

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->h:Lcom/google/android/youtube/core/ui/Workspace;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/ui/Workspace;->a(Lcom/google/android/youtube/core/ui/b;)V

    .line 277
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->K:Lcom/google/android/youtube/core/client/ad;

    .line 278
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v23

    .line 279
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->k()Lcom/google/android/youtube/core/client/aj;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->L:Lcom/google/android/youtube/core/client/aj;

    .line 280
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/client/a;

    move-result-object v6

    .line 281
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->l()Lcom/google/android/youtube/core/client/ah;

    move-result-object v8

    .line 282
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->m()Lcom/google/android/youtube/core/client/ag;

    move-result-object v29

    .line 283
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/plus1/f;

    move-result-object v26

    .line 284
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v15

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v21

    .line 286
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/app/p;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Lcom/google/android/youtube/app/p;

    .line 288
    new-instance v2, Lcom/google/android/youtube/app/honeycomb/a/a;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/youtube/app/honeycomb/a/a;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->o:Lcom/google/android/youtube/app/honeycomb/a/a;

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->k:Lcom/google/android/youtube/core/player/PlayerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->o:Lcom/google/android/youtube/app/honeycomb/a/a;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 291
    new-instance v2, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->y:Lcom/google/android/youtube/core/player/ControllerOverlay;

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->j:Lcom/google/android/youtube/core/player/aq;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->p:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->K:Lcom/google/android/youtube/core/client/ad;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->L:Lcom/google/android/youtube/core/client/aj;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->c()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->y:Lcom/google/android/youtube/core/player/ControllerOverlay;

    new-instance v14, Lcom/google/android/youtube/core/player/n;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/google/android/youtube/core/player/n;-><init>(Landroid/content/Context;)V

    move-object/from16 v3, p0

    move-object/from16 v12, p0

    invoke-static/range {v2 .. v16}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/player/aq;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/a;Lcom/google/android/youtube/core/client/aj;Lcom/google/android/youtube/core/client/ah;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/core/player/x;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/l;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/utils/i;)Lcom/google/android/youtube/core/player/p;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/core/player/p;

    .line 309
    new-instance v2, Lcom/google/android/youtube/coreicecream/ui/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->k:Lcom/google/android/youtube/core/player/PlayerView;

    new-instance v4, Lcom/google/android/youtube/app/honeycomb/phone/as;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/youtube/app/honeycomb/phone/as;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/coreicecream/ui/h;-><init>(Landroid/view/View;Lcom/google/android/youtube/coreicecream/ui/i;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->v:Lcom/google/android/youtube/coreicecream/ui/h;

    .line 316
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->s()Lcom/google/android/youtube/app/ah;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->x:Lcom/google/android/youtube/app/ah;

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->K:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v2}, Lcom/google/android/youtube/core/client/ad;->v()Lcom/google/android/youtube/core/async/ad;

    move-result-object v2

    .line 321
    new-instance v5, Lcom/google/android/youtube/app/ui/at;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->j:Lcom/google/android/youtube/core/player/aq;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Lcom/google/android/youtube/app/p;

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, v23

    move-object v11, v15

    invoke-direct/range {v5 .. v12}, Lcom/google/android/youtube/app/ui/at;-><init>(Lcom/google/android/youtube/core/player/aq;Landroid/app/Activity;Lcom/google/android/youtube/app/p;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/e;Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->N:Lcom/google/android/youtube/app/ui/at;

    .line 324
    new-instance v17, Lcom/google/android/youtube/app/ui/ap;

    const v3, 0x7f0900aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->K:Lcom/google/android/youtube/core/client/ad;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v25, v0

    move-object/from16 v18, p0

    move-object/from16 v20, v10

    move-object/from16 v24, p0

    move-object/from16 v27, v16

    invoke-direct/range {v17 .. v27}, Lcom/google/android/youtube/app/ui/ap;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/ui/m;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/f;Lcom/google/android/youtube/core/utils/i;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->c:Lcom/google/android/youtube/app/ui/dh;

    .line 327
    new-instance v18, Lcom/google/android/youtube/app/ui/ds;

    const v3, 0x7f0900a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/google/android/youtube/core/ui/h;

    invoke-static/range {p0 .. p0}, Lcom/google/android/youtube/app/a/x;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/a/x;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->K:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v3}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v26

    move-object/from16 v19, p0

    move-object/from16 v22, v2

    move-object/from16 v24, v29

    move-object/from16 v27, v10

    move-object/from16 v28, v15

    invoke-direct/range {v18 .. v28}, Lcom/google/android/youtube/app/ui/ds;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/GDataRequestFactory;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->d:Lcom/google/android/youtube/app/ui/ds;

    .line 331
    new-instance v4, Lcom/google/android/youtube/app/ui/da;

    const v2, 0x7f0900a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/youtube/core/ui/PagedListView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->K:Lcom/google/android/youtube/core/client/ad;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->h()Lcom/google/android/youtube/app/aa;

    move-result-object v8

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/ae;

    move-result-object v9

    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object v11, v15

    invoke-direct/range {v4 .. v12}, Lcom/google/android/youtube/app/ui/da;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedListView;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/app/aa;Lcom/google/android/youtube/app/ae;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/e;Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->e:Lcom/google/android/youtube/app/ui/da;

    .line 334
    new-instance v18, Lcom/google/android/youtube/app/ui/dm;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/core/player/p;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->K:Lcom/google/android/youtube/core/client/ad;

    move-object/from16 v23, v0

    move-object/from16 v19, p0

    move-object/from16 v22, v29

    move-object/from16 v24, v10

    move-object/from16 v25, v15

    invoke-direct/range {v18 .. v25}, Lcom/google/android/youtube/app/ui/dm;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/player/p;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/client/ag;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->f:Lcom/google/android/youtube/app/ui/dm;

    .line 337
    new-instance v22, Lcom/google/android/youtube/app/ui/ch;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->K:Lcom/google/android/youtube/core/client/ad;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v25, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->h()Lcom/google/android/youtube/app/aa;

    move-result-object v26

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/ae;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Lcom/google/android/youtube/app/p;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->N:Lcom/google/android/youtube/app/ui/at;

    move-object/from16 v29, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/youtube/app/YouTubeApplication;->q()Lcom/google/android/youtube/app/u;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->c:Lcom/google/android/youtube/app/ui/dh;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->x:Lcom/google/android/youtube/app/ah;

    move-object/from16 v33, v0

    move-object/from16 v23, p0

    move-object/from16 v31, v10

    move-object/from16 v34, v21

    move-object/from16 v35, v15

    invoke-direct/range {v22 .. v35}, Lcom/google/android/youtube/app/ui/ch;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/aa;Lcom/google/android/youtube/app/ae;Lcom/google/android/youtube/app/p;Lcom/google/android/youtube/app/ui/at;Lcom/google/android/youtube/app/u;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/ui/dh;Lcom/google/android/youtube/app/ah;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b:Lcom/google/android/youtube/app/ui/ch;

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->c:Lcom/google/android/youtube/app/ui/dh;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/ui/dh;->a(Lcom/google/android/youtube/app/ui/ch;)V

    .line 343
    new-instance v2, Lcom/google/android/youtube/app/ui/PromoHelper;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/youtube/app/ui/PromoHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->u:Lcom/google/android/youtube/app/ui/PromoHelper;

    .line 345
    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/at;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/youtube/app/honeycomb/phone/at;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->s:Lcom/google/android/youtube/app/honeycomb/phone/at;

    .line 346
    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/au;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/youtube/app/honeycomb/phone/au;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->t:Lcom/google/android/youtube/app/honeycomb/phone/au;

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/core/player/p;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/player/p;)V

    .line 349
    new-instance v2, Lcom/google/android/youtube/core/ui/OrientationHelper;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/youtube/core/ui/OrientationHelper;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->w:Lcom/google/android/youtube/core/ui/OrientationHelper;

    .line 350
    const-string v2, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a:Landroid/media/AudioManager;

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->m()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Lcom/google/android/youtube/app/honeycomb/ui/p;)V

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 357
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 447
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 448
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 449
    const v0, 0x7f0900da

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->G:Landroid/view/MenuItem;

    .line 450
    const v0, 0x7f0900db

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->H:Landroid/view/MenuItem;

    .line 451
    const v0, 0x7f0900dc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->I:Landroid/view/MenuItem;

    .line 452
    const v0, 0x7f0900dd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->J:Landroid/view/MenuItem;

    .line 453
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/p;->w()V

    .line 622
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->w:Lcom/google/android/youtube/core/ui/OrientationHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/OrientationHelper;->disable()V

    .line 623
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onDestroy()V

    .line 624
    return-void
.end method

.method public onMenuVisibilityChanged(Z)V
    .registers 2
    .parameter

    .prologue
    .line 803
    iput-boolean p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->E:Z

    .line 804
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->o()V

    .line 805
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 474
    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->D:Z

    if-nez v1, :cond_a

    .line 475
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 501
    :goto_9
    return v0

    .line 477
    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_40

    .line 501
    :goto_11
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_9

    .line 479
    :pswitch_16
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/ch;->a()V

    goto :goto_9

    .line 482
    :pswitch_1c
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/ch;->b()V

    goto :goto_9

    .line 486
    :pswitch_22
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/ch;->c()V

    goto :goto_9

    .line 490
    :pswitch_28
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/ch;->f()V

    goto :goto_9

    .line 493
    :pswitch_2e
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/ch;->d()V

    goto :goto_9

    .line 496
    :pswitch_34
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/ch;->e()V

    goto :goto_9

    .line 499
    :pswitch_3a
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b:Lcom/google/android/youtube/app/ui/ch;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ch;->g()V

    goto :goto_11

    .line 477
    :pswitch_data_40
    .packed-switch 0x7f0900da
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
    .registers 3

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/p;->v()V

    .line 589
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->j:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->g()V

    .line 590
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Lcom/google/android/youtube/app/p;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->N:Lcom/google/android/youtube/app/ui/at;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/p;->c(Lcom/google/android/youtube/app/r;)Z

    .line 591
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onPause()V

    .line 592
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 458
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 460
    const v0, 0x7f0900de

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 461
    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->A:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 462
    const v0, 0x7f0900df

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 463
    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->A:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 465
    const v0, 0x7f0900e0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 466
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->O:Lcom/google/android/youtube/app/ae;

    iget-object v1, v1, Lcom/google/android/youtube/app/ae;->a:Lcom/google/android/youtube/app/af;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 469
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 613
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 614
    const-string v0, "stopped"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 615
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/p;->v()V

    .line 617
    :cond_10
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Lcom/google/android/youtube/app/p;

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->d()Lcom/google/android/youtube/app/t;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/t;->a:Lcom/google/android/youtube/app/t;

    if-eq v0, v1, :cond_16

    .line 580
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->M:Lcom/google/android/youtube/app/p;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->N:Lcom/google/android/youtube/app/ui/at;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/p;->a(Lcom/google/android/youtube/app/r;)Z

    .line 581
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->N:Lcom/google/android/youtube/app/ui/at;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/at;->a()V

    .line 583
    :cond_16
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onResume()V

    .line 584
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 607
    const-string v0, "stopped"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 608
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 609
    return-void
.end method

.method public onStart()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 361
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 362
    const-string v1, "authenticate"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 363
    const-string v2, "force_fullscreen"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->C:Z

    .line 365
    iget-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->C:Z

    if-eqz v2, :cond_29

    .line 366
    iput-boolean v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->A:Z

    .line 367
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v2, v4}, Lcom/google/android/youtube/core/player/p;->c(Z)V

    .line 368
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v2, v4}, Lcom/google/android/youtube/core/player/p;->b(Z)V

    .line 369
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->setRequestedOrientation(I)V

    .line 371
    :cond_29
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->r:Lcom/google/android/youtube/core/player/p;

    const-string v3, "finish_on_ended"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/p;->d(Z)V

    .line 373
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->l:Lcom/google/android/youtube/core/utils/HdmiReceiver;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/utils/HdmiReceiver;->a()V

    .line 374
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->m:Lcom/google/android/youtube/core/utils/DockReceiver;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/utils/DockReceiver;->a()V

    .line 376
    const-string v2, "referrer"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 378
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->L:Lcom/google/android/youtube/core/client/aj;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->parse(Ljava/lang/String;)Lcom/google/android/youtube/core/client/al;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/youtube/core/client/aj;->a(Lcom/google/android/youtube/core/client/al;)V

    .line 381
    :cond_53
    if-eqz v1, :cond_6f

    .line 382
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 388
    :goto_5a
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a:Landroid/media/AudioManager;

    const/high16 v1, -0x8000

    invoke-virtual {v0, v6, v1, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 391
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->s:Lcom/google/android/youtube/app/honeycomb/phone/at;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/at;->a()V

    .line 392
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->t:Lcom/google/android/youtube/app/honeycomb/phone/au;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/au;->a()V

    .line 393
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStart()V

    .line 394
    return-void

    .line 384
    :cond_6f
    invoke-direct {p0, v6}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b(Lcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_5a
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 597
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->s:Lcom/google/android/youtube/app/honeycomb/phone/at;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/at;->b()V

    .line 598
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->t:Lcom/google/android/youtube/app/honeycomb/phone/au;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/au;->b()V

    .line 599
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->l:Lcom/google/android/youtube/core/utils/HdmiReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/HdmiReceiver;->b()V

    .line 600
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->m:Lcom/google/android/youtube/core/utils/DockReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/DockReceiver;->b()V

    .line 601
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->v:Lcom/google/android/youtube/coreicecream/ui/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/h;->a(Z)V

    .line 602
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStop()V

    .line 603
    return-void
.end method
