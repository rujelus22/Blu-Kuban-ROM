.class public Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/honeycomb/phone/ah;
.implements Lcom/google/android/youtube/app/ui/db;
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field private A:Landroid/app/ProgressDialog;

.field private B:Lcom/google/android/youtube/core/model/UserAuth;

.field private C:Lcom/google/android/youtube/core/async/ar;

.field private D:Lcom/google/android/youtube/core/async/ar;

.field private E:Lcom/google/android/youtube/core/async/GDataRequestFactory;

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

.field private I:Ljava/lang/String;

.field private m:Lcom/google/android/youtube/app/YouTubeApplication;

.field private n:Landroid/content/SharedPreferences;

.field private o:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private p:Lcom/google/android/youtube/core/d;

.field private q:Lcom/google/android/youtube/core/Analytics;

.field private r:Lcom/google/android/youtube/app/YouTubePlatformUtil;

.field private s:Lcom/google/android/youtube/app/ui/Slider;

.field private t:Landroid/view/View;

.field private u:Lcom/google/android/youtube/app/honeycomb/phone/t;

.field private v:Lcom/google/android/youtube/app/honeycomb/phone/a;

.field private w:Lcom/google/android/youtube/app/honeycomb/phone/o;

.field private x:Lcom/google/android/youtube/app/honeycomb/phone/p;

.field private y:Landroid/view/MenuItem;

.field private z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    .line 51
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->n:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;)Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->H:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    return-object p1
.end method

.method private a(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 272
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/p;

    if-eqz v0, :cond_1a

    .line 273
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/p;

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/p;->a(I)V

    .line 277
    :cond_1a
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;ZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 280
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->s:Lcom/google/android/youtube/app/ui/Slider;

    if-eqz p1, :cond_a

    sget-object v0, Lcom/google/android/youtube/app/ui/Slider$Order;->FIRST:Lcom/google/android/youtube/app/ui/Slider$Order;

    :goto_6
    invoke-interface {v1, v0, p2}, Lcom/google/android/youtube/app/ui/Slider;->a(Lcom/google/android/youtube/app/ui/Slider$Order;Z)V

    .line 281
    return-void

    .line 280
    :cond_a
    sget-object v0, Lcom/google/android/youtube/app/ui/Slider$Order;->SECOND:Lcom/google/android/youtube/app/ui/Slider$Order;

    goto :goto_6
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;)Lcom/google/android/youtube/app/honeycomb/phone/t;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->u:Lcom/google/android/youtube/app/honeycomb/phone/t;

    return-object v0
.end method

.method private c(I)V
    .registers 5
    .parameter

    .prologue
    .line 398
    const-string v0, ""

    .line 399
    sparse-switch p1, :sswitch_data_2a

    .line 425
    :goto_5
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->q:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "GuideSelection"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/YouTubeApplication;->a(I)V

    .line 427
    return-void

    .line 401
    :sswitch_12
    const-string v0, "Channel"

    goto :goto_5

    .line 404
    :sswitch_15
    const-string v0, "Account"

    goto :goto_5

    .line 407
    :sswitch_18
    const-string v0, "Category"

    goto :goto_5

    .line 410
    :sswitch_1b
    const-string v0, "ChannelStore"

    goto :goto_5

    .line 413
    :sswitch_1e
    const-string v0, "Recommended"

    goto :goto_5

    .line 416
    :sswitch_21
    const-string v0, "Trending"

    goto :goto_5

    .line 419
    :sswitch_24
    const-string v0, "TheFeed"

    goto :goto_5

    .line 422
    :sswitch_27
    const-string v0, "Live"

    goto :goto_5

    .line 399
    :sswitch_data_2a
    .sparse-switch
        0x10 -> :sswitch_12
        0x20 -> :sswitch_15
        0x40 -> :sswitch_18
        0x80 -> :sswitch_1b
        0x100 -> :sswitch_1e
        0x200 -> :sswitch_21
        0x400 -> :sswitch_24
        0x800 -> :sswitch_27
    .end sparse-switch
.end method

.method private c(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->I:Ljava/lang/String;

    .line 359
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->i()V

    .line 360
    return-void
.end method

.method private g()V
    .registers 2

    .prologue
    .line 192
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->z:Ljava/lang/Boolean;

    .line 193
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->invalidateOptionsMenu()V

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->I:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 195
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->h()V

    .line 200
    :goto_e
    return-void

    .line 198
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->I:Ljava/lang/String;

    goto :goto_e
.end method

.method private h()V
    .registers 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->s:Lcom/google/android/youtube/app/ui/Slider;

    sget-object v1, Lcom/google/android/youtube/app/ui/Slider$Order;->SECOND:Lcom/google/android/youtube/app/ui/Slider$Order;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/app/ui/Slider;->setLayer(Lcom/google/android/youtube/app/ui/Slider$Order;Lcom/google/android/youtube/app/ui/aw;)V

    .line 204
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-direct {v0, p0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/t;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;Lcom/google/android/youtube/app/honeycomb/phone/ah;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->u:Lcom/google/android/youtube/app/honeycomb/phone/t;

    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->s:Lcom/google/android/youtube/app/ui/Slider;

    sget-object v1, Lcom/google/android/youtube/app/ui/Slider$Order;->FIRST:Lcom/google/android/youtube/app/ui/Slider$Order;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->u:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/app/ui/Slider;->setLayer(Lcom/google/android/youtube/app/ui/Slider$Order;Lcom/google/android/youtube/app/ui/aw;)V

    .line 206
    return-void
.end method

.method private i()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 328
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->I:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 329
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->s:Lcom/google/android/youtube/app/ui/Slider;

    sget-object v3, Lcom/google/android/youtube/app/ui/Slider$Order;->FIRST:Lcom/google/android/youtube/app/ui/Slider$Order;

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/app/ui/Slider;->setLayer(Lcom/google/android/youtube/app/ui/Slider$Order;Lcom/google/android/youtube/app/ui/aw;)V

    .line 330
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->s:Lcom/google/android/youtube/app/ui/Slider;

    sget-object v3, Lcom/google/android/youtube/app/ui/Slider$Order;->SECOND:Lcom/google/android/youtube/app/ui/Slider$Order;

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/app/ui/Slider;->setLayer(Lcom/google/android/youtube/app/ui/Slider$Order;Lcom/google/android/youtube/app/ui/aw;)V

    .line 332
    :cond_15
    iput-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->z:Ljava/lang/Boolean;

    .line 333
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->invalidateOptionsMenu()V

    .line 334
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->A:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 336
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->o:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->n:Landroid/content/SharedPreferences;

    const-string v4, "user_signed_out"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2c

    move v0, v1

    :cond_2c
    new-instance v3, Lcom/google/android/youtube/app/honeycomb/phone/an;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/app/honeycomb/phone/an;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;)V

    invoke-virtual {v2, p0, v0, v1, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;ZZLcom/google/android/youtube/core/async/bc;)V

    .line 355
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 302
    invoke-virtual {p0, p2}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->a(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 303
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Subscription;)V
    .registers 3
    .parameter

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->u:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Lcom/google/android/youtube/core/model/Subscription;)V

    .line 529
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->B:Lcom/google/android/youtube/core/model/UserAuth;

    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->A:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 165
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->z:Ljava/lang/Boolean;

    .line 166
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->invalidateOptionsMenu()V

    .line 167
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->h()V

    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->I:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 169
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->u:Lcom/google/android/youtube/app/honeycomb/phone/t;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->I:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Ljava/lang/String;Z)V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->I:Ljava/lang/String;

    .line 172
    :cond_20
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->A:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->p:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->B:Lcom/google/android/youtube/core/model/UserAuth;

    .line 188
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->g()V

    .line 189
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->u:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method public final a(Ljava/lang/String;Z)Z
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->u()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Ljava/lang/String;)V

    .line 431
    const-string v0, "THE_FEED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 432
    if-eqz p2, :cond_19

    .line 433
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->c(I)V

    .line 435
    :cond_19
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/bw;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/ao;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/phone/ao;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/bw;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;Lcom/google/android/youtube/app/honeycomb/phone/by;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/p;

    .line 496
    :goto_25
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 497
    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->a(Landroid/content/res/Configuration;)V

    .line 499
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->s:Lcom/google/android/youtube/app/ui/Slider;

    sget-object v1, Lcom/google/android/youtube/app/ui/Slider$Order;->SECOND:Lcom/google/android/youtube/app/ui/Slider$Order;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/p;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/app/ui/Slider;->setLayer(Lcom/google/android/youtube/app/ui/Slider$Order;Lcom/google/android/youtube/app/ui/aw;)V

    .line 500
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/p;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/ap;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/phone/ap;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/p;->a(Landroid/view/View$OnClickListener;)V

    .line 507
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->n:Landroid/content/SharedPreferences;

    const-string v1, "show_channel_store_turorial"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 508
    if-nez p2, :cond_4f

    if-nez v1, :cond_58

    .line 509
    :cond_4f
    if-eqz p2, :cond_18f

    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->SELECTION:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    :goto_53
    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->H:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    .line 510
    invoke-direct {p0, v7, p2}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->a(ZZ)V

    .line 513
    :cond_58
    if-nez p2, :cond_63

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->G:Z

    if-eqz v0, :cond_63

    .line 515
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/p;->k()V

    .line 518
    :cond_63
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->t:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->setContentView(Landroid/view/View;)V

    .line 520
    if-eqz v1, :cond_6f

    .line 521
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->u:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->l()V

    :cond_6f
    move v7, v3

    .line 524
    :goto_70
    return v7

    .line 440
    :cond_71
    const-string v0, "ACCOUNT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 441
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->c(I)V

    .line 442
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->B:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_86

    .line 443
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->c(Ljava/lang/String;)V

    goto :goto_70

    .line 446
    :cond_86
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->v:Lcom/google/android/youtube/app/honeycomb/phone/a;

    if-nez v0, :cond_91

    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/a;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/a;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->v:Lcom/google/android/youtube/app/honeycomb/phone/a;

    :cond_91
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->v:Lcom/google/android/youtube/app/honeycomb/phone/a;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/p;

    goto :goto_25

    .line 448
    :cond_96
    const-string v0, "CHANNEL_STORE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 449
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->c(I)V

    .line 450
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->u()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    move-result-object v0

    const-string v1, "is:channel"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->B:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_b4

    .line 452
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->c(Ljava/lang/String;)V

    goto :goto_70

    .line 455
    :cond_b4
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->w:Lcom/google/android/youtube/app/honeycomb/phone/o;

    if-nez v0, :cond_bf

    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/o;

    invoke-direct {v0, p0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/o;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;Lcom/google/android/youtube/app/ui/db;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->w:Lcom/google/android/youtube/app/honeycomb/phone/o;

    :cond_bf
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->w:Lcom/google/android/youtube/app/honeycomb/phone/o;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/p;

    goto/16 :goto_25

    .line 457
    :cond_c5
    const-string v0, "REMOTE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 458
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/bm;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;Lcom/google/android/youtube/app/a;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/p;

    goto/16 :goto_25

    .line 459
    :cond_da
    const-string v0, "RECOMMENDED_GUIDE_ITEM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 460
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->c(I)V

    .line 461
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/s;

    const v1, 0x7f0b015f

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/android/youtube/app/m;->f:Lcom/google/android/youtube/core/b/aj;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->C:Lcom/google/android/youtube/core/async/ar;

    const/4 v1, 0x2

    new-array v6, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->E:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->B:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v1, v8}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->k(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    aput-object v1, v6, v7

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->E:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    sget-object v8, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_POPULAR:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    iget-object v9, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->F:Ljava/lang/String;

    invoke-virtual {v1, v8, v11, v9, v11}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    aput-object v1, v6, v3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/honeycomb/phone/s;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/async/ar;[Lcom/google/android/youtube/core/async/GDataRequest;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/p;

    goto/16 :goto_25

    .line 473
    :cond_115
    const-string v0, "TRENDING_GUIDE_ITEM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 474
    if-eqz p2, :cond_124

    .line 475
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->c(I)V

    .line 477
    :cond_124
    new-instance v4, Lcom/google/android/youtube/app/honeycomb/phone/s;

    const v0, 0x7f0b0160

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/google/android/youtube/app/m;->e:Lcom/google/android/youtube/core/b/aj;

    iget-object v9, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->D:Lcom/google/android/youtube/core/async/ar;

    new-array v10, v3, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->E:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->F:Ljava/lang/String;

    sget-object v5, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-virtual {v0, v1, v11, v2, v5}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    aput-object v0, v10, v7

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/youtube/app/honeycomb/phone/s;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/async/ar;[Lcom/google/android/youtube/core/async/GDataRequest;)V

    iput-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/p;

    goto/16 :goto_25

    .line 485
    :cond_149
    const-string v0, "LIVE_GUIDE_ITEM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 486
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->c(I)V

    .line 487
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/a;->j()V

    goto/16 :goto_70

    .line 489
    :cond_15f
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 490
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->c(I)V

    .line 491
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/g;

    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/aj;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/g;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;Ljava/lang/String;Lcom/google/android/youtube/core/b/aj;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/p;

    goto/16 :goto_25

    .line 493
    :cond_17d
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->c(I)V

    .line 494
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/google/android/youtube/app/honeycomb/phone/k;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;Landroid/net/Uri;Lcom/google/android/youtube/app/ui/db;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/p;

    goto/16 :goto_25

    .line 509
    :cond_18f
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->AUTO:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    goto/16 :goto_53
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->G:Z

    .line 380
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 381
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->invalidateOptionsMenu()V

    .line 382
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->q:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "GuideExpanded"

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->H:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->H:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->AUTO:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    if-eq v0, v1, :cond_29

    .line 384
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/YouTubeApplication;->a(I)V

    .line 386
    :cond_29
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->SWIPE:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->H:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    .line 387
    return-void
.end method

.method public final b_()V
    .registers 4

    .prologue
    const/4 v1, 0x4

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->G:Z

    .line 391
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 392
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->invalidateOptionsMenu()V

    .line 393
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->q:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "GuideCollapsed"

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->H:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->SWIPE:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->H:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    .line 395
    return-void
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 290
    const-string v0, "yt_home"

    return-object v0
.end method

.method public final e_()V
    .registers 4

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->B:Lcom/google/android/youtube/core/model/UserAuth;

    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->A:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->n:Landroid/content/SharedPreferences;

    const-string v1, "user_signed_out"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 178
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->g()V

    .line 182
    :goto_16
    return-void

    .line 180
    :cond_17
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->i()V

    goto :goto_16
.end method

.method protected final f()Z
    .registers 2

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->G:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->u:Lcom/google/android/youtube/app/honeycomb/phone/t;

    if-eqz v0, :cond_23

    .line 365
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->u:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->m()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 366
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->u:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->o()V

    .line 374
    :goto_15
    return-void

    .line 368
    :cond_16
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->BACK:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->H:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    .line 369
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->s:Lcom/google/android/youtube/app/ui/Slider;

    sget-object v1, Lcom/google/android/youtube/app/ui/Slider$Order;->SECOND:Lcom/google/android/youtube/app/ui/Slider$Order;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/app/ui/Slider;->a(Lcom/google/android/youtube/app/ui/Slider$Order;Z)V

    goto :goto_15

    .line 372
    :cond_23
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onBackPressed()V

    goto :goto_15
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 266
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 267
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->a(Landroid/content/res/Configuration;)V

    .line 268
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->s:Lcom/google/android/youtube/app/ui/Slider;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/app/ui/Slider;->a(Landroid/content/res/Configuration;)V

    .line 269
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 107
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 110
    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 111
    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/am;

    invoke-direct {v2, p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/am;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;Landroid/view/View;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->setContentView(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->n:Landroid/content/SharedPreferences;

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->o:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->p:Lcom/google/android/youtube/core/d;

    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->q:Lcom/google/android/youtube/core/Analytics;

    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->x()Lcom/google/android/youtube/app/YouTubePlatformUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->r:Lcom/google/android/youtube/app/YouTubePlatformUtil;

    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->s()Lcom/google/android/youtube/core/async/ar;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->C:Lcom/google/android/youtube/core/async/ar;

    .line 130
    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->i()Lcom/google/android/youtube/core/async/ar;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->D:Lcom/google/android/youtube/core/async/ar;

    .line 131
    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->E:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->F:Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->s:Lcom/google/android/youtube/app/ui/Slider;

    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->s:Lcom/google/android/youtube/app/ui/Slider;

    sget-object v1, Lcom/google/android/youtube/app/ui/Slider$Order;->FIRST:Lcom/google/android/youtube/app/ui/Slider$Order;

    sget-object v2, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->OCCLUDE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/app/ui/Slider;->setCollapseStrategy(Lcom/google/android/youtube/app/ui/Slider$Order;Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->s:Lcom/google/android/youtube/app/ui/Slider;

    sget-object v1, Lcom/google/android/youtube/app/ui/Slider$Order;->SECOND:Lcom/google/android/youtube/app/ui/Slider$Order;

    sget-object v2, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->DISPLACE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/app/ui/Slider;->setCollapseStrategy(Lcom/google/android/youtube/app/ui/Slider$Order;Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->s:Lcom/google/android/youtube/app/ui/Slider;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->t:Landroid/view/View;

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->G:Z

    .line 140
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->SWIPE:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->H:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    .line 142
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->A:Landroid/app/ProgressDialog;

    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->A:Landroid/app/ProgressDialog;

    const v1, 0x7f0b019f

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->A:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 145
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->A:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->o:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    .line 148
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 223
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-eqz v0, :cond_29

    const v0, 0x7f120008

    :goto_10
    invoke-virtual {v1, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 225
    const v0, 0x7f080140

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->y:Landroid/view/MenuItem;

    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->y:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 227
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->s:Lcom/google/android/youtube/app/ui/Slider;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/app/ui/Slider;->a(Landroid/view/Menu;)V

    .line 228
    const/4 v0, 0x1

    return v0

    .line 223
    :cond_29
    const v0, 0x7f120002

    goto :goto_10
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 244
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_5c

    .line 259
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->s:Lcom/google/android/youtube/app/ui/Slider;

    invoke-interface {v1, p1}, Lcom/google/android/youtube/app/ui/Slider;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_59

    :cond_16
    :goto_16
    return v0

    .line 246
    :sswitch_17
    sget-object v1, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;->UP:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->H:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity$SlideTrigger;

    .line 247
    invoke-direct {p0, v0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->a(ZZ)V

    goto :goto_16

    .line 250
    :sswitch_1f
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->z:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 251
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->q:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "SignOut"

    const-string v3, "Menu"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->n:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "user_signed_out"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->o:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a()V

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->r:Lcom/google/android/youtube/app/YouTubePlatformUtil;

    invoke-interface {v1, p0}, Lcom/google/android/youtube/app/YouTubePlatformUtil;->a(Landroid/content/Context;)V

    goto :goto_16

    .line 254
    :cond_4a
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->q:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "SignIn"

    const-string v3, "Menu"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "THE_FEED"

    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->c(Ljava/lang/String;)V

    goto :goto_16

    .line 259
    :cond_59
    const/4 v0, 0x0

    goto :goto_16

    .line 244
    nop

    :sswitch_data_5c
    .sparse-switch
        0x102002c -> :sswitch_17
        0x7f080140 -> :sswitch_1f
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 210
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onPause()V

    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->s:Lcom/google/android/youtube/app/ui/Slider;

    invoke-interface {v0}, Lcom/google/android/youtube/app/ui/Slider;->c()V

    .line 212
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 233
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 234
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->s:Lcom/google/android/youtube/app/ui/Slider;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/app/ui/Slider;->b(Landroid/view/Menu;)V

    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->z:Ljava/lang/Boolean;

    if-eqz v0, :cond_22

    .line 236
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->y:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    const v0, 0x7f0b00d9

    :goto_1a
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 237
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->y:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 239
    :cond_22
    return v2

    .line 236
    :cond_23
    const v0, 0x7f0b00d8

    goto :goto_1a
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 216
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onResume()V

    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->s:Lcom/google/android/youtube/app/ui/Slider;

    invoke-interface {v0}, Lcom/google/android/youtube/app/ui/Slider;->d()V

    .line 218
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 152
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStart()V

    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/YouTubeApplication;->a(I)V

    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->u:Lcom/google/android/youtube/app/honeycomb/phone/t;

    if-eqz v0, :cond_1f

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->u:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->p()V

    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/p;

    instance-of v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/k;

    if-eqz v0, :cond_1f

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/p;

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->a()V

    .line 160
    :cond_1f
    return-void
.end method

.method public final z()V
    .registers 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->e_()V

    .line 308
    return-void
.end method
