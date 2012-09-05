.class public Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field private b:Lcom/google/android/youtube/core/async/ad;

.field private c:Lcom/google/android/youtube/core/async/ad;

.field private d:Lcom/google/android/youtube/core/async/ad;

.field private e:Lcom/google/android/youtube/core/client/ad;

.field private f:Lcom/google/android/youtube/core/client/ag;

.field private g:Lcom/google/android/youtube/core/client/af;

.field private h:Lcom/google/android/youtube/core/e;

.field private i:Lcom/google/android/youtube/app/ui/cv;

.field private j:Lcom/google/android/youtube/app/ui/cv;

.field private k:Lcom/google/android/youtube/app/ui/ad;

.field private l:Lcom/google/android/youtube/app/ui/bq;

.field private m:Lcom/google/android/youtube/app/ui/h;

.field private n:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private o:Lcom/google/android/youtube/core/model/UserAuth;

.field private p:Lcom/google/android/youtube/core/async/av;

.field private q:Ljava/lang/String;

.field private r:Landroid/net/Uri;

.field private s:[Ljava/lang/String;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    sput-object v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a:Ljava/util/Map;

    const-string v1, "uploads"

    const v2, 0x7f09002b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a:Ljava/util/Map;

    const-string v1, "favorites"

    const v2, 0x7f09002c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a:Ljava/util/Map;

    const-string v1, "activity"

    const v2, 0x7f09002d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a:Ljava/util/Map;

    const-string v1, "playlists"

    const v2, 0x7f09002e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    .line 411
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "username"

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "username"

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected_tab_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "unsubscribe_uri"

    invoke-static {p3}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->r:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->r:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->o:Lcom/google/android/youtube/core/model/UserAuth;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->t:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)Lcom/google/android/youtube/core/client/ad;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->e:Lcom/google/android/youtube/core/client/ad;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)Lcom/google/android/youtube/core/e;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->h:Lcom/google/android/youtube/core/e;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)Lcom/google/android/youtube/app/ui/h;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->m:Lcom/google/android/youtube/app/ui/h;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)V
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->j:Lcom/google/android/youtube/app/ui/cv;

    new-array v1, v5, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->e:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v2}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->i:Lcom/google/android/youtube/app/ui/cv;

    new-array v1, v5, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->e:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v2}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->e(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->k:Lcom/google/android/youtube/app/ui/ad;

    new-array v1, v5, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->e:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v2}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->f(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/ad;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->l:Lcom/google/android/youtube/app/ui/bq;

    new-array v1, v5, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->e:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v2}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->g(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/bq;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    return-void
.end method


# virtual methods
.method protected final a(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 312
    sparse-switch p1, :sswitch_data_28

    .line 322
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 314
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->n:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 316
    :sswitch_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0121

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->s:[Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    .line 312
    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_5
        0x3f9 -> :sswitch_c
    .end sparse-switch
.end method

.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 408
    const-string v0, "yt_channel"

    return-object v0
.end method

.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 131
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->m()Lcom/google/android/youtube/core/client/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->f:Lcom/google/android/youtube/core/client/ag;

    .line 132
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->n:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 133
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->e:Lcom/google/android/youtube/core/client/ad;

    .line 134
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->g:Lcom/google/android/youtube/core/client/af;

    .line 135
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->h:Lcom/google/android/youtube/core/e;

    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->e:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->h()Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->b:Lcom/google/android/youtube/core/async/ad;

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->e:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->m()Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->c:Lcom/google/android/youtube/core/async/ad;

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->e:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->l()Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->d:Lcom/google/android/youtube/core/async/ad;

    .line 139
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 327
    packed-switch p2, :pswitch_data_5e

    .line 342
    :goto_5
    return-void

    .line 329
    :pswitch_6
    const v0, 0x7f0a0124

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->q:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->n()Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    const-string v2, "SubscribeToActivity"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->e:Lcom/google/android/youtube/core/client/ad;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->o:Lcom/google/android/youtube/core/model/UserAuth;

    new-instance v4, Lcom/google/android/youtube/app/honeycomb/phone/l;

    invoke-direct {v4, p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/l;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;Ljava/lang/String;)V

    invoke-static {p0, v4}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/core/client/ad;->e(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 333
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_5

    .line 337
    :pswitch_32
    const v0, 0x7f0a0125

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->q:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->n()Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    const-string v2, "SubscribeToUploads"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->e:Lcom/google/android/youtube/core/client/ad;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->o:Lcom/google/android/youtube/core/model/UserAuth;

    new-instance v4, Lcom/google/android/youtube/app/honeycomb/phone/l;

    invoke-direct {v4, p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/l;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;Ljava/lang/String;)V

    invoke-static {p0, v4}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/core/client/ad;->f(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 341
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_5

    .line 327
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_32
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 23
    .parameter

    .prologue
    .line 143
    invoke-super/range {p0 .. p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    const v1, 0x7f04000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->setContentView(I)V

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 148
    if-eqz v2, :cond_1bf

    .line 149
    invoke-static {v2}, Lcom/google/android/youtube/core/utils/g;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->q:Ljava/lang/String;

    .line 155
    :goto_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 157
    invoke-static/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->finish()V

    .line 161
    :cond_33
    const v2, 0x7f09002a

    const v3, 0x7f090029

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "selected_tab_id"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d7

    const-string v4, "selected_tab_id"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_4c
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/youtube/core/ui/Workspace;->a(Landroid/app/Activity;III)Lcom/google/android/youtube/core/ui/Workspace;

    .line 164
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->s:[Ljava/lang/String;

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->s:[Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0a0122

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->q:Ljava/lang/String;

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->s:[Ljava/lang/String;

    const/4 v2, 0x1

    const v3, 0x7f0a0123

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->q:Ljava/lang/String;

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 168
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/m;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/m;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)V

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v1

    .line 170
    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/j;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->h:Lcom/google/android/youtube/core/e;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/youtube/app/honeycomb/phone/j;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/async/a;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->p:Lcom/google/android/youtube/core/async/av;

    .line 194
    new-instance v1, Lcom/google/android/youtube/app/ui/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->e:Lcom/google/android/youtube/core/client/ad;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->g:Lcom/google/android/youtube/core/client/af;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->h:Lcom/google/android/youtube/core/e;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/youtube/app/ui/h;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->m:Lcom/google/android/youtube/app/ui/h;

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v3

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->n()Lcom/google/android/youtube/core/Analytics;

    move-result-object v10

    .line 199
    new-instance v1, Lcom/google/android/youtube/app/ui/cv;

    const v2, 0x7f09002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/h;

    invoke-static/range {p0 .. p0}, Lcom/google/android/youtube/app/a/x;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/a/x;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->b:Lcom/google/android/youtube/core/async/ad;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->g:Lcom/google/android/youtube/core/client/af;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->f:Lcom/google/android/youtube/core/client/ag;

    const/4 v9, 0x1

    sget-object v11, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelUploads:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v12, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->CHANNEL_UPLOADS:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->h:Lcom/google/android/youtube/core/e;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v13}, Lcom/google/android/youtube/app/ui/cv;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->j:Lcom/google/android/youtube/app/ui/cv;

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->j:Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/cv;->d()V

    .line 214
    new-instance v1, Lcom/google/android/youtube/app/ui/cv;

    const v2, 0x7f09002c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/h;

    invoke-static/range {p0 .. p0}, Lcom/google/android/youtube/app/a/x;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/a/x;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->c:Lcom/google/android/youtube/core/async/ad;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->g:Lcom/google/android/youtube/core/client/af;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->f:Lcom/google/android/youtube/core/client/ag;

    const/4 v9, 0x1

    sget-object v11, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelFavorites:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v12, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->CHANNEL_FAVORITES:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->h:Lcom/google/android/youtube/core/e;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v13}, Lcom/google/android/youtube/app/ui/cv;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->i:Lcom/google/android/youtube/app/ui/cv;

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->i:Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/cv;->d()V

    .line 233
    new-instance v11, Lcom/google/android/youtube/app/ui/ad;

    const v1, 0x7f09002d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/google/android/youtube/core/ui/h;

    new-instance v15, Lcom/google/android/youtube/app/a/f;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/google/android/youtube/app/a/f;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->e:Lcom/google/android/youtube/core/client/ad;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->h:Lcom/google/android/youtube/core/e;

    move-object/from16 v17, v0

    sget-object v19, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelActivity:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v20, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->CHANNEL_ACTIVITY:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    move-object/from16 v12, p0

    move-object v13, v3

    move-object/from16 v18, v10

    invoke-direct/range {v11 .. v20}, Lcom/google/android/youtube/app/ui/ad;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/f;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->k:Lcom/google/android/youtube/app/ui/ad;

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->k:Lcom/google/android/youtube/app/ui/ad;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/ad;->d()V

    .line 245
    new-instance v4, Lcom/google/android/youtube/app/a/q;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v1}, Lcom/google/android/youtube/app/a/q;-><init>(Landroid/content/Context;Z)V

    .line 246
    const v1, 0x7f09002e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/ui/h;

    .line 247
    new-instance v1, Lcom/google/android/youtube/app/ui/bq;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->d:Lcom/google/android/youtube/core/async/ad;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->g:Lcom/google/android/youtube/core/client/af;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->h:Lcom/google/android/youtube/core/e;

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/youtube/app/ui/bq;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/q;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/e;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->l:Lcom/google/android/youtube/app/ui/bq;

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->l:Lcom/google/android/youtube/app/ui/bq;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/bq;->d()V

    .line 256
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/k;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v4}, Lcom/google/android/youtube/app/honeycomb/phone/k;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;Lcom/google/android/youtube/app/a/q;)V

    invoke-interface {v3, v1}, Lcom/google/android/youtube/core/ui/h;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->e:Lcom/google/android/youtube/core/client/ad;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->q:Ljava/lang/String;

    new-instance v3, Lcom/google/android/youtube/app/honeycomb/phone/n;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/android/youtube/app/honeycomb/phone/n;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)V

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/client/ad;->e(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    .line 260
    return-void

    .line 151
    :cond_1bf
    const-string v2, "username"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->q:Ljava/lang/String;

    .line 152
    const-string v2, "unsubscribe_uri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->r:Landroid/net/Uri;

    goto/16 :goto_1d

    .line 161
    :cond_1d7
    const-string v4, "selected_tab_name"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f8

    const-string v4, "selected_tab_name"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1f5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_4c

    :cond_1f5
    const/4 v1, 0x0

    goto/16 :goto_4c

    :cond_1f8
    const/4 v1, 0x0

    goto/16 :goto_4c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 271
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 272
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 290
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0900cb

    if-eq v1, v2, :cond_13

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0900cc

    if-ne v1, v2, :cond_1d

    .line 292
    :cond_13
    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->t:Z

    .line 293
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->n:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->p:Lcom/google/android/youtube/core/async/av;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 296
    :goto_1c
    return v0

    :cond_1d
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1c
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 278
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 279
    const v0, 0x7f0900cc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 280
    const v0, 0x7f0900cb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 281
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->r:Landroid/net/Uri;

    if-nez v0, :cond_34

    move v0, v1

    :goto_18
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 282
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->r:Landroid/net/Uri;

    if-eqz v0, :cond_36

    move v0, v1

    :goto_20
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 283
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->t:Z

    if-nez v0, :cond_38

    move v0, v1

    :goto_28
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 284
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->t:Z

    if-nez v0, :cond_30

    move v2, v1

    :cond_30
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 285
    return v1

    :cond_34
    move v0, v2

    .line 281
    goto :goto_18

    :cond_36
    move v0, v2

    .line 282
    goto :goto_20

    :cond_38
    move v0, v2

    .line 283
    goto :goto_28
.end method
