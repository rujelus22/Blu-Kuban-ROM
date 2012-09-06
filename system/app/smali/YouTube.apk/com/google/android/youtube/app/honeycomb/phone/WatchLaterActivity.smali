.class public Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/prefetch/f;
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field private m:Landroid/content/res/Resources;

.field private n:Lcom/google/android/youtube/core/async/ar;

.field private o:Lcom/google/android/youtube/core/b/ae;

.field private p:Lcom/google/android/youtube/core/b/ag;

.field private q:Lcom/google/android/youtube/core/b/ai;

.field private r:Lcom/google/android/youtube/core/j;

.field private s:Lcom/google/android/youtube/app/prefetch/d;

.field private t:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private u:Lcom/google/android/youtube/core/model/UserAuth;

.field private v:Lcom/google/android/youtube/core/d;

.field private w:Lcom/google/android/youtube/app/ui/eh;

.field private x:Lcom/google/android/youtube/app/adapter/ba;

.field private y:Lcom/google/android/youtube/app/ui/br;

.field private z:Lcom/google/android/youtube/app/ui/p;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;)Lcom/google/android/youtube/app/adapter/ba;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->x:Lcom/google/android/youtube/app/adapter/ba;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;Lcom/google/android/youtube/core/model/Video;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/cl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/cl;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;Lcom/google/android/youtube/core/model/Video;)V

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->o:Lcom/google/android/youtube/core/b/ae;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->u:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/core/b/ae;->d(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;)Lcom/google/android/youtube/core/d;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->v:Lcom/google/android/youtube/core/d;

    return-object v0
.end method

.method private g()V
    .registers 4

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->y:Lcom/google/android/youtube/app/ui/br;

    if-eqz v0, :cond_12

    .line 239
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->y:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->m:Landroid/content/res/Resources;

    const v2, 0x7f0d000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/br;->a(I)V

    .line 241
    :cond_12
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->m:Landroid/content/res/Resources;

    .line 79
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->t:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 80
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->o:Lcom/google/android/youtube/core/b/ae;

    .line 81
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->p:Lcom/google/android/youtube/core/b/ag;

    .line 82
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->q:Lcom/google/android/youtube/core/b/ai;

    .line 83
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->w()Lcom/google/android/youtube/app/prefetch/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->s:Lcom/google/android/youtube/app/prefetch/d;

    .line 84
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->v:Lcom/google/android/youtube/core/d;

    .line 85
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->r:Lcom/google/android/youtube/core/j;

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->o:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->p()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->n:Lcom/google/android/youtube/core/async/ar;

    .line 87
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->u:Lcom/google/android/youtube/core/model/UserAuth;

    .line 182
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->w:Lcom/google/android/youtube/app/ui/eh;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->o:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v3}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->f(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/eh;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 183
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->finish()V

    .line 191
    return-void
.end method

.method protected final b(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 195
    packed-switch p1, :pswitch_data_c

    .line 200
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 197
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->z:Lcom/google/android/youtube/app/ui/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/p;->b()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 195
    :pswitch_data_c
    .packed-switch 0x3fe
        :pswitch_5
    .end packed-switch
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 224
    const-string v0, "yt_your_channel"

    return-object v0
.end method

.method public final e_()V
    .registers 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->finish()V

    .line 187
    return-void
.end method

.method public final o()V
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->x:Lcom/google/android/youtube/app/adapter/ba;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/adapter/ba;->notifyDataSetChanged()V

    .line 229
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 234
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->g()V

    .line 235
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter

    .prologue
    const v8, 0x7f0a0056

    const v6, 0x7f0800aa

    const/4 v7, 0x1

    .line 91
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f0400a1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->setContentView(I)V

    .line 94
    const v0, 0x7f0b016e

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->e(I)V

    .line 96
    new-instance v0, Lcom/google/android/youtube/app/ui/p;

    const/16 v1, 0x3fe

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/p;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->z:Lcom/google/android/youtube/app/ui/p;

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->z:Lcom/google/android/youtube/app/ui/p;

    const v1, 0x7f0b01ca

    const v2, 0x7f02006f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/p;->a(II)I

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->z:Lcom/google/android/youtube/app/ui/p;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/cj;

    invoke-direct {v2, p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/cj;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/p;->a(Lcom/google/android/youtube/app/ui/v;)V

    .line 110
    invoke-virtual {p0, v6}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->findViewById(I)Landroid/view/View;

    .line 111
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->p:Lcom/google/android/youtube/core/b/ag;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->q:Lcom/google/android/youtube/core/b/ai;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->s:Lcom/google/android/youtube/app/prefetch/d;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->r:Lcom/google/android/youtube/core/j;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->z:Lcom/google/android/youtube/app/ui/p;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/youtube/app/adapter/bb;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/app/prefetch/d;Lcom/google/android/youtube/core/j;Lcom/google/android/youtube/app/ui/p;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->x:Lcom/google/android/youtube/app/adapter/ba;

    .line 131
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->x:Lcom/google/android/youtube/app/adapter/ba;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/a;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/a/a;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->y:Lcom/google/android/youtube/app/ui/br;

    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->y:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->m:Landroid/content/res/Resources;

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/br;->b(I)V

    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->y:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->m:Landroid/content/res/Resources;

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->m:Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->m:Landroid/content/res/Resources;

    const v4, 0x7f0a0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->m:Landroid/content/res/Resources;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/app/ui/br;->a(IIII)V

    .line 139
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->g()V

    .line 141
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/ck;

    invoke-virtual {p0, v6}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/ui/g;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->y:Lcom/google/android/youtube/app/ui/br;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->n:Lcom/google/android/youtube/core/async/ar;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->v:Lcom/google/android/youtube/core/d;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v8

    sget-object v10, Lcom/google/android/youtube/app/m;->P:Lcom/google/android/youtube/core/b/aj;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->v()Lcom/google/android/youtube/core/Analytics;

    move-result-object v11

    sget-object v12, Lcom/google/android/youtube/core/Analytics$VideoCategory;->WatchLater:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    move-object v1, p0

    move-object v2, p0

    move v9, v7

    invoke-direct/range {v0 .. v12}, Lcom/google/android/youtube/app/honeycomb/phone/ck;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;ZLcom/google/android/youtube/app/a;ZLcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->w:Lcom/google/android/youtube/app/ui/eh;

    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->s:Lcom/google/android/youtube/app/prefetch/d;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/prefetch/d;->a(Lcom/google/android/youtube/app/prefetch/f;)V

    .line 160
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->s:Lcom/google/android/youtube/app/prefetch/d;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/prefetch/d;->b(Lcom/google/android/youtube/app/prefetch/f;)V

    .line 165
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onDestroy()V

    .line 166
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onResume()V

    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->t:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 178
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStop()V

    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->w:Lcom/google/android/youtube/app/ui/eh;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/eh;->e()V

    .line 172
    return-void
.end method
