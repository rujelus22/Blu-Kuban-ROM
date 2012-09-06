.class public Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/app/ui/cv;


# static fields
.field private static final m:Ljava/util/Map;


# instance fields
.field private A:Lcom/google/android/youtube/app/ui/i;

.field private B:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private C:Ljava/lang/String;

.field private D:Lcom/google/android/youtube/app/ui/SubscribeHelper;

.field private E:Landroid/widget/ImageView;

.field private F:Landroid/widget/ProgressBar;

.field private G:Lcom/google/android/youtube/app/ui/br;

.field private H:Lcom/google/android/youtube/app/ui/br;

.field private n:Landroid/content/res/Resources;

.field private o:Lcom/google/android/youtube/core/async/ar;

.field private p:Lcom/google/android/youtube/core/async/ar;

.field private q:Lcom/google/android/youtube/core/async/ar;

.field private r:Lcom/google/android/youtube/core/b/ae;

.field private s:Lcom/google/android/youtube/core/b/ai;

.field private t:Lcom/google/android/youtube/core/b/ag;

.field private u:Lcom/google/android/youtube/core/d;

.field private v:Lcom/google/android/youtube/core/j;

.field private w:Lcom/google/android/youtube/app/ui/eh;

.field private x:Lcom/google/android/youtube/app/ui/eh;

.field private y:Lcom/google/android/youtube/app/ui/aj;

.field private z:Lcom/google/android/youtube/app/ui/ci;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    sput-object v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->m:Ljava/util/Map;

    const-string v1, "uploads"

    const v2, 0x7f080034

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->m:Ljava/util/Map;

    const-string v1, "favorites"

    const v2, 0x7f080035

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->m:Ljava/util/Map;

    const-string v1, "activity"

    const v2, 0x7f080036

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->m:Ljava/util/Map;

    const-string v1, "playlists"

    const v2, 0x7f080037

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    .line 380
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 130
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected_tab_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "username"

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "username"

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected_tab_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)Lcom/google/android/youtube/app/ui/i;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->A:Lcom/google/android/youtube/app/ui/i;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)Lcom/google/android/youtube/app/ui/SubscribeHelper;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->D:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)V
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->x:Lcom/google/android/youtube/app/ui/eh;

    new-array v1, v5, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->r:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v2}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/eh;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->w:Lcom/google/android/youtube/app/ui/eh;

    new-array v1, v5, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->r:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v2}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->e(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/eh;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->y:Lcom/google/android/youtube/app/ui/aj;

    new-array v1, v5, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->r:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v2}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->f(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/aj;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->z:Lcom/google/android/youtube/app/ui/ci;

    new-array v1, v5, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->r:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v2}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->g(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/ci;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)Lcom/google/android/youtube/core/d;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->u:Lcom/google/android/youtube/core/d;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->n:Landroid/content/res/Resources;

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 372
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->G:Lcom/google/android/youtube/app/ui/br;

    if-eqz v1, :cond_12

    .line 373
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->G:Lcom/google/android/youtube/app/ui/br;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/br;->a(I)V

    .line 375
    :cond_12
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->H:Lcom/google/android/youtube/app/ui/br;

    if-eqz v1, :cond_1b

    .line 376
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->H:Lcom/google/android/youtube/app/ui/br;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/br;->a(I)V

    .line 378
    :cond_1b
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 143
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->n:Landroid/content/res/Resources;

    .line 144
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->s:Lcom/google/android/youtube/core/b/ai;

    .line 145
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->B:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 146
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->r:Lcom/google/android/youtube/core/b/ae;

    .line 147
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->t:Lcom/google/android/youtube/core/b/ag;

    .line 148
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->u:Lcom/google/android/youtube/core/d;

    .line 149
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->v:Lcom/google/android/youtube/core/j;

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->r:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->j()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->o:Lcom/google/android/youtube/core/async/ar;

    .line 151
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->r:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->o()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->p:Lcom/google/android/youtube/core/async/ar;

    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->r:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->n()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->q:Lcom/google/android/youtube/core/async/ar;

    .line 153
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 361
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->D:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->c()Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/phone/i;->a:[I

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_76

    .line 362
    :cond_14
    :goto_14
    return-void

    .line 361
    :pswitch_15
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->E:Landroid/widget/ImageView;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->E:Landroid/widget/ImageView;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->E:Landroid/widget/ImageView;

    const v1, 0x7f0b0169

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_32
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->F:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->F:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_14

    :pswitch_3c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->E:Landroid/widget/ImageView;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->E:Landroid/widget/ImageView;

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->E:Landroid/widget/ImageView;

    const v1, 0x7f0b0168

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_59
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->F:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->F:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_14

    :pswitch_63
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->E:Landroid/widget/ImageView;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->F:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->F:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_14

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_15
        :pswitch_3c
        :pswitch_3c
        :pswitch_63
    .end packed-switch
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 357
    const-string v0, "yt_channel"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->E:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_9

    .line 328
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->D:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->b()V

    .line 330
    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 366
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 367
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->g()V

    .line 368
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 26
    .parameter

    .prologue
    .line 157
    invoke-super/range {p0 .. p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const v2, 0x7f040015

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->setContentView(I)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 162
    if-eqz v3, :cond_27f

    .line 164
    invoke-static {v3}, Lcom/google/android/youtube/core/utils/i;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->C:Ljava/lang/String;

    .line 169
    :goto_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->C:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 171
    invoke-static/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->finish()V

    .line 175
    :cond_33
    new-instance v2, Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->v()Lcom/google/android/youtube/core/Analytics;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->B:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->r:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->u:Lcom/google/android/youtube/core/d;

    const-string v9, "ChannelActivity"

    move-object/from16 v3, p0

    move-object/from16 v8, p0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/youtube/app/ui/SubscribeHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/app/ui/cv;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->D:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    .line 178
    const v3, 0x7f080033

    const v4, 0x7f080032

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "selected_tab_id"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28b

    const-string v5, "selected_tab_id"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :goto_6b
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v2}, Lcom/google/android/youtube/core/ui/Workspace;->a(Landroid/app/Activity;III)Lcom/google/android/youtube/core/ui/Workspace;

    .line 181
    new-instance v2, Lcom/google/android/youtube/app/ui/i;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->r:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->t:Lcom/google/android/youtube/core/b/ag;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->u:Lcom/google/android/youtube/core/d;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/google/android/youtube/app/ui/i;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/d;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->A:Lcom/google/android/youtube/app/ui/i;

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v9

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->v()Lcom/google/android/youtube/core/Analytics;

    move-result-object v12

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->t:Lcom/google/android/youtube/core/b/ag;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->s:Lcom/google/android/youtube/core/b/ai;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->v:Lcom/google/android/youtube/core/j;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/youtube/app/adapter/bb;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/j;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v2

    .line 188
    new-instance v3, Lcom/google/android/youtube/app/honeycomb/ui/a;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/a;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/a/a;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->G:Lcom/google/android/youtube/app/ui/br;

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->G:Lcom/google/android/youtube/app/ui/br;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->n:Landroid/content/res/Resources;

    const v4, 0x7f0a003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/ui/br;->b(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->G:Lcom/google/android/youtube/app/ui/br;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->n:Landroid/content/res/Resources;

    const v4, 0x7f0a0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->n:Landroid/content/res/Resources;

    const v5, 0x7f0a0056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->n:Landroid/content/res/Resources;

    const v6, 0x7f0a0055

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->n:Landroid/content/res/Resources;

    const v7, 0x7f0a0056

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/youtube/app/ui/br;->a(IIII)V

    .line 196
    invoke-direct/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->g()V

    .line 198
    new-instance v2, Lcom/google/android/youtube/app/ui/eh;

    const v3, 0x7f080034

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/g;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->G:Lcom/google/android/youtube/app/ui/br;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->o:Lcom/google/android/youtube/core/async/ar;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->u:Lcom/google/android/youtube/core/d;

    const/4 v8, 0x1

    const/4 v10, 0x0

    sget-object v11, Lcom/google/android/youtube/app/m;->E:Lcom/google/android/youtube/core/b/aj;

    sget-object v13, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelUploads:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v13}, Lcom/google/android/youtube/app/ui/eh;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;ZLcom/google/android/youtube/app/a;ZLcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->x:Lcom/google/android/youtube/app/ui/eh;

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->x:Lcom/google/android/youtube/app/ui/eh;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/ui/eh;->d()V

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->t:Lcom/google/android/youtube/core/b/ag;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->s:Lcom/google/android/youtube/core/b/ai;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->v:Lcom/google/android/youtube/core/j;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/youtube/app/adapter/bb;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/j;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v2

    .line 214
    new-instance v3, Lcom/google/android/youtube/app/honeycomb/ui/a;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/a;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/a/a;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->H:Lcom/google/android/youtube/app/ui/br;

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->H:Lcom/google/android/youtube/app/ui/br;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->n:Landroid/content/res/Resources;

    const v4, 0x7f0a003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/ui/br;->b(I)V

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->H:Lcom/google/android/youtube/app/ui/br;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->n:Landroid/content/res/Resources;

    const v4, 0x7f0a0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->n:Landroid/content/res/Resources;

    const v5, 0x7f0a0056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->n:Landroid/content/res/Resources;

    const v6, 0x7f0a0055

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->n:Landroid/content/res/Resources;

    const v7, 0x7f0a0056

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/youtube/app/ui/br;->a(IIII)V

    .line 222
    invoke-direct/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->g()V

    .line 224
    new-instance v2, Lcom/google/android/youtube/app/ui/eh;

    const v3, 0x7f080035

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/g;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->H:Lcom/google/android/youtube/app/ui/br;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->p:Lcom/google/android/youtube/core/async/ar;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->u:Lcom/google/android/youtube/core/d;

    const/4 v8, 0x1

    const/4 v10, 0x0

    sget-object v11, Lcom/google/android/youtube/app/m;->F:Lcom/google/android/youtube/core/b/aj;

    sget-object v13, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelFavorites:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v13}, Lcom/google/android/youtube/app/ui/eh;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;ZLcom/google/android/youtube/app/a;ZLcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->w:Lcom/google/android/youtube/app/ui/eh;

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->w:Lcom/google/android/youtube/app/ui/eh;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/ui/eh;->d()V

    .line 238
    new-instance v13, Lcom/google/android/youtube/app/ui/aj;

    const v2, 0x7f080036

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/google/android/youtube/core/ui/g;

    new-instance v17, Lcom/google/android/youtube/app/adapter/af;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/app/adapter/af;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->r:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->u:Lcom/google/android/youtube/core/d;

    move-object/from16 v19, v0

    sget-object v21, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelActivity:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v22, Lcom/google/android/youtube/app/m;->D:Lcom/google/android/youtube/core/b/aj;

    const/16 v23, 0x0

    move-object/from16 v14, p0

    move-object v15, v9

    move-object/from16 v20, v12

    invoke-direct/range {v13 .. v23}, Lcom/google/android/youtube/app/ui/aj;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Z)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->y:Lcom/google/android/youtube/app/ui/aj;

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->y:Lcom/google/android/youtube/app/ui/aj;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/ui/aj;->d()V

    .line 251
    new-instance v5, Lcom/google/android/youtube/app/adapter/bj;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2}, Lcom/google/android/youtube/app/adapter/bj;-><init>(Landroid/content/Context;Z)V

    .line 252
    const v2, 0x7f080037

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/g;

    .line 253
    new-instance v2, Lcom/google/android/youtube/app/ui/ci;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->q:Lcom/google/android/youtube/core/async/ar;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->t:Lcom/google/android/youtube/core/b/ag;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->u:Lcom/google/android/youtube/core/d;

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/youtube/app/ui/ci;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bj;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/d;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->z:Lcom/google/android/youtube/app/ui/ci;

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->z:Lcom/google/android/youtube/app/ui/ci;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/ui/ci;->d()V

    .line 262
    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/h;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Lcom/google/android/youtube/app/honeycomb/phone/h;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;Lcom/google/android/youtube/app/adapter/bj;)V

    invoke-interface {v4, v2}, Lcom/google/android/youtube/core/ui/g;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->r:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->C:Ljava/lang/String;

    new-instance v4, Lcom/google/android/youtube/app/honeycomb/phone/j;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/google/android/youtube/app/honeycomb/phone/j;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;B)V

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/b/ae;->d(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 267
    const v2, 0x7f08003c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->E:Landroid/widget/ImageView;

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->E:Landroid/widget/ImageView;

    if-eqz v2, :cond_26f

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->E:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    :cond_26f
    const v2, 0x7f08003b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->F:Landroid/widget/ProgressBar;

    .line 273
    return-void

    .line 166
    :cond_27f
    const-string v3, "username"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->C:Ljava/lang/String;

    goto/16 :goto_1d

    .line 178
    :cond_28b
    const-string v5, "selected_tab_name"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2ac

    const-string v5, "selected_tab_name"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->m:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2a9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_6b

    :cond_2a9
    const/4 v2, 0x0

    goto/16 :goto_6b

    :cond_2ac
    const/4 v2, 0x0

    goto/16 :goto_6b
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 319
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f08013f

    if-ne v0, v1, :cond_10

    .line 320
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->D:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->b()V

    .line 321
    const/4 v0, 0x1

    .line 323
    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_f
.end method
