.class public final Lcom/google/android/youtube/app/ui/SubscribeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/google/android/youtube/app/YouTubeApplication;

.field private final c:Lcom/google/android/youtube/core/Analytics;

.field private final d:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final e:Lcom/google/android/youtube/core/b/ae;

.field private final f:Lcom/google/android/youtube/core/d;

.field private final g:Lcom/google/android/youtube/app/ui/cv;

.field private final h:Lcom/google/android/youtube/core/async/bc;

.field private final i:Lcom/google/android/youtube/core/async/l;

.field private j:Lcom/google/android/youtube/core/model/UserProfile;

.field private k:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

.field private l:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

.field private m:Lcom/google/android/youtube/core/model/Subscription;

.field private n:Landroid/net/Uri;

.field private o:Lcom/google/android/youtube/core/model/UserAuth;

.field private p:Landroid/app/Dialog;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/app/ui/cv;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, "activity can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a:Landroid/app/Activity;

    .line 92
    const-string v0, "analytics can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->c:Lcom/google/android/youtube/core/Analytics;

    .line 93
    const-string v0, "userAuthorizer can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 95
    const-string v0, "gdataClient can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ae;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->e:Lcom/google/android/youtube/core/b/ae;

    .line 96
    const-string v0, "errorHelper can\'t be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/d;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->f:Lcom/google/android/youtube/core/d;

    .line 97
    const-string v0, "listener can\'t be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/cv;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->g:Lcom/google/android/youtube/app/ui/cv;

    .line 98
    const-string v0, "source can\'t be null"

    invoke-static {p7, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->q:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->b:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 101
    new-instance v0, Lcom/google/android/youtube/app/ui/ct;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/ct;-><init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->h:Lcom/google/android/youtube/core/async/bc;

    .line 102
    new-instance v0, Lcom/google/android/youtube/app/ui/cu;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/cu;-><init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;B)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->i:Lcom/google/android/youtube/core/async/l;

    .line 104
    sget-object v0, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->WORKING:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->k:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->n:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/core/model/Subscription;)Lcom/google/android/youtube/core/model/Subscription;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->m:Lcom/google/android/youtube/core/model/Subscription;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->o:Lcom/google/android/youtube/core/model/UserAuth;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/model/UserProfile;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->j:Lcom/google/android/youtube/core/model/UserProfile;

    return-object v0
.end method

.method private a(Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V
    .registers 4
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->k:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->l:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    .line 161
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->k:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->g:Lcom/google/android/youtube/app/ui/cv;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->k:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V

    .line 163
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V

    return-void
.end method

.method public static a(Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;IZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    if-eqz p3, :cond_11

    const-string v0, "UnsubscribeFromChannel"

    :goto_4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    if-ltz p2, :cond_10

    if-nez p3, :cond_10

    .line 155
    const-string v0, "SubscribeDetails"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    :cond_10
    return-void

    .line 153
    :cond_11
    const-string v0, "SubscribeToChannel"

    goto :goto_4
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/async/l;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->i:Lcom/google/android/youtube/core/async/l;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/b/ae;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->e:Lcom/google/android/youtube/core/b/ae;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->c:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/app/YouTubeApplication;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->b:Lcom/google/android/youtube/app/YouTubeApplication;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/ui/SubscribeHelper;)V
    .registers 3
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->l:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->k:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->l:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->g:Lcom/google/android/youtube/app/ui/cv;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->k:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V

    return-void
.end method

.method static synthetic i(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/d;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->f:Lcom/google/android/youtube/core/d;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->n:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->o:Lcom/google/android/youtube/core/model/UserAuth;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/async/UserAuthorizer;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 117
    sget-object v0, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->WORKING:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->j:Lcom/google/android/youtube/core/model/UserProfile;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/core/model/UserProfile;)V

    .line 119
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserProfile;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 108
    const-string v0, "channelProfile can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserProfile;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->j:Lcom/google/android/youtube/core/model/UserProfile;

    .line 110
    iput-object v1, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->l:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    .line 111
    sget-object v0, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->WORKING:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->k:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    .line 112
    iput-object v1, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->n:Landroid/net/Uri;

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->h:Lcom/google/android/youtube/core/async/bc;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    .line 114
    return-void
.end method

.method public final b()V
    .registers 8

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->k:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    sget-object v1, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->SUBSCRIBED:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    if-ne v0, v1, :cond_4b

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->p:Landroid/app/Dialog;

    if-nez v0, :cond_45

    new-instance v0, Lcom/google/android/youtube/app/ui/cs;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/cs;-><init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a:Landroid/app/Activity;

    const v3, 0x7f0b0179

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->j:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v6, v6, Lcom/google/android/youtube/core/model/UserProfile;->displayUsername:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->p:Landroid/app/Dialog;

    :cond_45
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->p:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 128
    :goto_4a
    return-void

    .line 125
    :cond_4b
    sget-object v0, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->WORKING:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/cw;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->f:Lcom/google/android/youtube/core/d;

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/app/ui/cw;-><init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/core/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    goto :goto_4a
.end method

.method public final c()Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->k:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    return-object v0
.end method

.method public final d()Lcom/google/android/youtube/core/model/Subscription;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscribeHelper;->m:Lcom/google/android/youtube/core/model/Subscription;

    return-object v0
.end method
