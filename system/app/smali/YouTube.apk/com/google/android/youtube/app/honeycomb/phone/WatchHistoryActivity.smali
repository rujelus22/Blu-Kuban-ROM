.class public Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field private m:Landroid/content/res/Resources;

.field private n:Lcom/google/android/youtube/core/async/ar;

.field private o:Lcom/google/android/youtube/core/b/ae;

.field private p:Lcom/google/android/youtube/core/b/ag;

.field private q:Lcom/google/android/youtube/core/b/ai;

.field private r:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private s:Lcom/google/android/youtube/core/model/UserAuth;

.field private t:Lcom/google/android/youtube/core/d;

.field private u:Lcom/google/android/youtube/core/j;

.field private v:Lcom/google/android/youtube/app/ui/br;

.field private w:Lcom/google/android/youtube/app/ui/eh;

.field private x:Lcom/google/android/youtube/core/a/a;

.field private y:Lcom/google/android/youtube/app/ui/p;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;)Lcom/google/android/youtube/core/a/a;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->x:Lcom/google/android/youtube/core/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;Lcom/google/android/youtube/core/model/Video;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 48
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/ci;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ci;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;Lcom/google/android/youtube/core/model/Video;)V

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->o:Lcom/google/android/youtube/core/b/ae;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->s:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/core/b/ae;->e(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;)Lcom/google/android/youtube/core/d;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->t:Lcom/google/android/youtube/core/d;

    return-object v0
.end method

.method private g()V
    .registers 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->v:Lcom/google/android/youtube/app/ui/br;

    if-eqz v0, :cond_12

    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->v:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->m:Landroid/content/res/Resources;

    const v2, 0x7f0d000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/br;->a(I)V

    .line 203
    :cond_12
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 73
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->m:Landroid/content/res/Resources;

    .line 74
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->r:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 75
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->o:Lcom/google/android/youtube/core/b/ae;

    .line 76
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->p:Lcom/google/android/youtube/core/b/ag;

    .line 77
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->q:Lcom/google/android/youtube/core/b/ai;

    .line 78
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->t:Lcom/google/android/youtube/core/d;

    .line 79
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->u:Lcom/google/android/youtube/core/j;

    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->o:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->q()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->n:Lcom/google/android/youtube/core/async/ar;

    .line 81
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->s:Lcom/google/android/youtube/core/model/UserAuth;

    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->w:Lcom/google/android/youtube/app/ui/eh;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->o:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v3}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->g(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/eh;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 148
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->finish()V

    .line 156
    return-void
.end method

.method protected final b(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 160
    packed-switch p1, :pswitch_data_c

    .line 166
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 163
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->y:Lcom/google/android/youtube/app/ui/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/p;->b()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 160
    :pswitch_data_c
    .packed-switch 0x402
        :pswitch_5
    .end packed-switch
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    const-string v0, "yt_your_channel"

    return-object v0
.end method

.method public final e_()V
    .registers 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->finish()V

    .line 152
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->y:Lcom/google/android/youtube/app/ui/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/p;->a()V

    .line 196
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->g()V

    .line 197
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter

    .prologue
    const v5, 0x7f0a0056

    const/4 v6, 0x1

    .line 85
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f04009f

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->setContentView(I)V

    .line 88
    const v0, 0x7f0b016f

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->e(I)V

    .line 90
    new-instance v0, Lcom/google/android/youtube/app/ui/p;

    const/16 v1, 0x402

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/p;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->y:Lcom/google/android/youtube/app/ui/p;

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->y:Lcom/google/android/youtube/app/ui/p;

    const v1, 0x7f0b01cc

    const v2, 0x7f02006f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/p;->a(II)I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->y:Lcom/google/android/youtube/app/ui/p;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/ch;

    invoke-direct {v2, p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ch;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/p;->a(Lcom/google/android/youtube/app/ui/v;)V

    .line 105
    new-instance v0, Lcom/google/android/youtube/app/adapter/bi;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->p:Lcom/google/android/youtube/core/b/ag;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->q:Lcom/google/android/youtube/core/b/ai;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->u:Lcom/google/android/youtube/core/j;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->y:Lcom/google/android/youtube/app/ui/p;

    invoke-static {p0, v1, v2, v3, v4}, Lcom/google/android/youtube/app/adapter/bb;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/j;Lcom/google/android/youtube/app/ui/p;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/app/adapter/bi;-><init>(Lcom/google/android/youtube/core/a/a;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->x:Lcom/google/android/youtube/core/a/a;

    .line 108
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->x:Lcom/google/android/youtube/core/a/a;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/a;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/a/a;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->v:Lcom/google/android/youtube/app/ui/br;

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->v:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->m:Landroid/content/res/Resources;

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/br;->b(I)V

    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->v:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->m:Landroid/content/res/Resources;

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->m:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->m:Landroid/content/res/Resources;

    const v4, 0x7f0a0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->m:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/app/ui/br;->a(IIII)V

    .line 116
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->g()V

    .line 118
    new-instance v0, Lcom/google/android/youtube/app/ui/eh;

    const v1, 0x7f08012d

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/ui/g;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->v:Lcom/google/android/youtube/app/ui/br;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->n:Lcom/google/android/youtube/core/async/ar;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->t:Lcom/google/android/youtube/core/d;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v7

    sget-object v9, Lcom/google/android/youtube/app/m;->Q:Lcom/google/android/youtube/core/b/aj;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->v()Lcom/google/android/youtube/core/Analytics;

    move-result-object v10

    sget-object v11, Lcom/google/android/youtube/core/Analytics$VideoCategory;->WatchHistory:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    move-object v1, p0

    move v8, v6

    invoke-direct/range {v0 .. v11}, Lcom/google/android/youtube/app/ui/eh;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;ZLcom/google/android/youtube/app/a;ZLcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->w:Lcom/google/android/youtube/app/ui/eh;

    .line 130
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onResume()V

    .line 141
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->r:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 142
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStop()V

    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchHistoryActivity;->w:Lcom/google/android/youtube/app/ui/eh;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/eh;->e()V

    .line 136
    return-void
.end method
