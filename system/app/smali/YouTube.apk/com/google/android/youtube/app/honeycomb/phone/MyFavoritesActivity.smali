.class public Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/ej;
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

.field private x:Lcom/google/android/youtube/app/adapter/ba;

.field private y:Lcom/google/android/youtube/app/ui/p;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;)Lcom/google/android/youtube/app/adapter/ba;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->x:Lcom/google/android/youtube/app/adapter/ba;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;Lcom/google/android/youtube/core/model/Video;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 46
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/ax;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ax;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;Lcom/google/android/youtube/core/model/Video;)V

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->o:Lcom/google/android/youtube/core/b/ae;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->s:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/core/b/ae;->c(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;)Lcom/google/android/youtube/core/d;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->t:Lcom/google/android/youtube/core/d;

    return-object v0
.end method

.method private g()V
    .registers 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->v:Lcom/google/android/youtube/app/ui/br;

    if-eqz v0, :cond_12

    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->v:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->m:Landroid/content/res/Resources;

    const v2, 0x7f0d000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/br;->a(I)V

    .line 199
    :cond_12
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->m:Landroid/content/res/Resources;

    .line 72
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->r:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 73
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->o:Lcom/google/android/youtube/core/b/ae;

    .line 74
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->p:Lcom/google/android/youtube/core/b/ag;

    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->o:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->u()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->n:Lcom/google/android/youtube/core/async/ar;

    .line 76
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->q:Lcom/google/android/youtube/core/b/ai;

    .line 77
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->t:Lcom/google/android/youtube/core/d;

    .line 78
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->u:Lcom/google/android/youtube/core/j;

    .line 79
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->s:Lcom/google/android/youtube/core/model/UserAuth;

    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->w:Lcom/google/android/youtube/app/ui/eh;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->o:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v3}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->e(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/eh;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 140
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/youtube/app/m;->H:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/b/aj;)V

    .line 152
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->finish()V

    .line 148
    return-void
.end method

.method protected final b(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 156
    packed-switch p1, :pswitch_data_c

    .line 162
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 159
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->y:Lcom/google/android/youtube/app/ui/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/p;->b()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 156
    :pswitch_data_c
    .packed-switch 0x3f0
        :pswitch_5
    .end packed-switch
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    const-string v0, "yt_your_channel"

    return-object v0
.end method

.method public final e_()V
    .registers 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->finish()V

    .line 144
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->y:Lcom/google/android/youtube/app/ui/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/p;->a()V

    .line 192
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->g()V

    .line 193
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter

    .prologue
    const v5, 0x7f0a0056

    .line 83
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f04004c

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->setContentView(I)V

    .line 86
    const v0, 0x7f0b016d

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->e(I)V

    .line 88
    new-instance v0, Lcom/google/android/youtube/app/ui/p;

    const/16 v1, 0x3f0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/p;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->y:Lcom/google/android/youtube/app/ui/p;

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->y:Lcom/google/android/youtube/app/ui/p;

    const v1, 0x7f0b01bf

    const v2, 0x7f02006f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/p;->a(II)I

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->y:Lcom/google/android/youtube/app/ui/p;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/aw;

    invoke-direct {v2, p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/aw;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/p;->a(Lcom/google/android/youtube/app/ui/v;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->p:Lcom/google/android/youtube/core/b/ag;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->q:Lcom/google/android/youtube/core/b/ai;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->u:Lcom/google/android/youtube/core/j;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->y:Lcom/google/android/youtube/app/ui/p;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/app/adapter/bb;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/j;Lcom/google/android/youtube/app/ui/p;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->x:Lcom/google/android/youtube/app/adapter/ba;

    .line 105
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->x:Lcom/google/android/youtube/app/adapter/ba;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/a;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/a/a;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->v:Lcom/google/android/youtube/app/ui/br;

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->v:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->m:Landroid/content/res/Resources;

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/br;->b(I)V

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->v:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->m:Landroid/content/res/Resources;

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->m:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->m:Landroid/content/res/Resources;

    const v4, 0x7f0a0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->m:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/app/ui/br;->a(IIII)V

    .line 113
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->g()V

    .line 115
    new-instance v0, Lcom/google/android/youtube/app/ui/eh;

    const v1, 0x7f080035

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/ui/g;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->v:Lcom/google/android/youtube/app/ui/br;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->n:Lcom/google/android/youtube/core/async/ar;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->t:Lcom/google/android/youtube/core/d;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/app/ui/eh;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;ZLcom/google/android/youtube/app/ui/ej;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->w:Lcom/google/android/youtube/app/ui/eh;

    .line 123
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 133
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->r:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 135
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStop()V

    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->w:Lcom/google/android/youtube/app/ui/eh;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/eh;->e()V

    .line 129
    return-void
.end method
