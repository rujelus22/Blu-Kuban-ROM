.class public final Lcom/google/android/youtube/app/honeycomb/tablet/g;
.super Lcom/google/android/youtube/app/honeycomb/tablet/ao;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/cv;
.implements Lcom/google/android/youtube/app/ui/g;


# instance fields
.field a:Lcom/google/android/youtube/app/ui/aj;

.field private h:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private i:Lcom/google/android/youtube/core/Analytics;

.field private j:Lcom/google/android/youtube/core/d;

.field private final k:Lcom/google/android/youtube/core/b/ae;

.field private l:Ljava/lang/String;

.field private m:Lcom/google/android/youtube/core/model/UserProfile;

.field private n:Lcom/google/android/youtube/app/ui/ec;

.field private o:Lcom/google/android/youtube/app/ui/ec;

.field private p:Lcom/google/android/youtube/core/ui/j;

.field private q:Lcom/google/android/youtube/app/ui/f;

.field private r:Lcom/google/android/youtube/app/ui/i;

.field private s:Landroid/view/MenuItem;

.field private t:Lcom/google/android/youtube/app/ui/SubscribeHelper;

.field private u:Lcom/google/android/youtube/core/model/Playlist;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    const-string v5, "yt_channel"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/b/ae;

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Lcom/google/android/youtube/app/ui/i;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->r:Lcom/google/android/youtube/app/ui/i;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/g;Lcom/google/android/youtube/core/model/UserProfile;)Lcom/google/android/youtube/core/model/UserProfile;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->m:Lcom/google/android/youtube/core/model/UserProfile;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Lcom/google/android/youtube/app/ui/SubscribeHelper;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->t:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Lcom/google/android/youtube/app/ui/f;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->q:Lcom/google/android/youtube/app/ui/f;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Lcom/google/android/youtube/core/d;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->j:Lcom/google/android/youtube/core/d;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    return-object v0
.end method

.method private g()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 294
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->t:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->c()Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    move-result-object v0

    .line 295
    sget-object v1, Lcom/google/android/youtube/app/honeycomb/tablet/i;->a:[I

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_46

    .line 311
    :goto_12
    return-void

    .line 297
    :pswitch_13
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->s:Landroid/view/MenuItem;

    const v1, 0x7f0b0169

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 298
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->s:Landroid/view/MenuItem;

    const v1, 0x7f0200bd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 299
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->s:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_12

    .line 303
    :pswitch_29
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->s:Landroid/view/MenuItem;

    const v1, 0x7f0b0168

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 304
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->s:Landroid/view/MenuItem;

    const v1, 0x7f0200a7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 305
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->s:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_12

    .line 308
    :pswitch_3f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->s:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_12

    .line 295
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_13
        :pswitch_29
        :pswitch_29
        :pswitch_3f
    .end packed-switch
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 116
    const v0, 0x7f040016

    return v0
.end method

.method public final a(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->m:Lcom/google/android/youtube/core/model/UserProfile;

    if-nez v0, :cond_7

    .line 254
    :goto_6
    return-void

    .line 239
    :cond_7
    packed-switch p1, :pswitch_data_66

    goto :goto_6

    .line 241
    :pswitch_b
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->o:Lcom/google/android/youtube/app/ui/ec;

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v2}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/ec;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_6

    .line 244
    :pswitch_21
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->n:Lcom/google/android/youtube/app/ui/ec;

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v2}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->e(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/ec;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_6

    .line 247
    :pswitch_37
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a:Lcom/google/android/youtube/app/ui/aj;

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v2}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->f(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/aj;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_6

    .line 250
    :pswitch_4d
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->p:Lcom/google/android/youtube/core/ui/j;

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v2}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l:Ljava/lang/String;

    const/16 v4, 0x17

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;I)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/j;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_6

    .line 239
    nop

    :pswitch_data_66
    .packed-switch 0x7f080034
        :pswitch_b
        :pswitch_21
        :pswitch_37
        :pswitch_4d
    .end packed-switch
.end method

.method protected final a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/os/Bundle;)V

    .line 222
    const-string v0, "selected_card_id"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->q:Lcom/google/android/youtube/app/ui/f;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/f;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    const-string v0, "selected_playlist"

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->u:Lcom/google/android/youtube/core/model/Playlist;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 224
    return-void
.end method

.method protected final a(Landroid/view/Menu;)V
    .registers 3
    .parameter

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/view/Menu;)V

    .line 289
    const v0, 0x7f08013f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->s:Landroid/view/MenuItem;

    .line 290
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g()V

    .line 291
    return-void
.end method

.method protected final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 283
    const v0, 0x7f120001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 284
    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 23
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-super/range {p0 .. p2}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    const v2, 0x7f0b01f3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->h:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->i:Lcom/google/android/youtube/core/Analytics;

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->j:Lcom/google/android/youtube/core/d;

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v14

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v1}, Lcom/google/android/youtube/core/b/ae;->j()Lcom/google/android/youtube/core/async/ar;

    move-result-object v15

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v1}, Lcom/google/android/youtube/core/b/ae;->o()Lcom/google/android/youtube/core/async/ar;

    move-result-object v16

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v1}, Lcom/google/android/youtube/core/b/ae;->n()Lcom/google/android/youtube/core/async/ar;

    move-result-object v17

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    move-result-object v18

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->t()Landroid/os/Bundle;

    move-result-object v19

    .line 138
    const-string v1, "username"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l:Ljava/lang/String;

    .line 140
    new-instance v1, Lcom/google/android/youtube/app/ui/SubscribeHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->i:Lcom/google/android/youtube/core/Analytics;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->h:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->j:Lcom/google/android/youtube/core/d;

    const-string v8, "ChannelController"

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/youtube/app/ui/SubscribeHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/app/ui/cv;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->t:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    .line 143
    new-instance v1, Lcom/google/android/youtube/app/ui/i;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->j:Lcom/google/android/youtube/core/d;

    move-object/from16 v3, p1

    move-object v5, v14

    invoke-direct/range {v1 .. v6}, Lcom/google/android/youtube/app/ui/i;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/d;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->r:Lcom/google/android/youtube/app/ui/i;

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->r:Lcom/google/android/youtube/app/ui/i;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/i;->a(Ljava/lang/String;)V

    .line 146
    new-instance v1, Lcom/google/android/youtube/app/ui/ec;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->d:Lcom/google/android/youtube/app/a;

    const v4, 0x7f080034

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/PagedGridView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    invoke-static {v5}, Lcom/google/android/youtube/app/adapter/bt;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/adapter/bt;

    move-result-object v5

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->i:Lcom/google/android/youtube/core/Analytics;

    sget-object v11, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelUploads:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v12, Lcom/google/android/youtube/app/m;->E:Lcom/google/android/youtube/core/b/aj;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->j:Lcom/google/android/youtube/core/d;

    move-object v6, v15

    move-object v7, v14

    move-object/from16 v8, v18

    invoke-direct/range {v1 .. v13}, Lcom/google/android/youtube/app/ui/ec;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->o:Lcom/google/android/youtube/app/ui/ec;

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->o:Lcom/google/android/youtube/app/ui/ec;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/ec;->d()V

    .line 161
    new-instance v1, Lcom/google/android/youtube/app/ui/ec;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->d:Lcom/google/android/youtube/app/a;

    const v4, 0x7f080035

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/PagedGridView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    invoke-static {v5}, Lcom/google/android/youtube/app/adapter/bt;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/adapter/bt;

    move-result-object v5

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->i:Lcom/google/android/youtube/core/Analytics;

    sget-object v11, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelFavorites:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v12, Lcom/google/android/youtube/app/m;->F:Lcom/google/android/youtube/core/b/aj;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->j:Lcom/google/android/youtube/core/d;

    move-object/from16 v6, v16

    move-object v7, v14

    move-object/from16 v8, v18

    invoke-direct/range {v1 .. v13}, Lcom/google/android/youtube/app/ui/ec;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->n:Lcom/google/android/youtube/app/ui/ec;

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->n:Lcom/google/android/youtube/app/ui/ec;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/ec;->d()V

    .line 176
    new-instance v1, Lcom/google/android/youtube/app/ui/aj;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->d:Lcom/google/android/youtube/app/a;

    const v4, 0x7f080036

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/PagedListView;

    new-instance v5, Lcom/google/android/youtube/app/adapter/af;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/google/android/youtube/app/adapter/af;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/b/ae;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->j:Lcom/google/android/youtube/core/d;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->i:Lcom/google/android/youtube/core/Analytics;

    sget-object v9, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelActivity:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v10, Lcom/google/android/youtube/app/m;->D:Lcom/google/android/youtube/core/b/aj;

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/youtube/app/ui/aj;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a:Lcom/google/android/youtube/app/ui/aj;

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a:Lcom/google/android/youtube/app/ui/aj;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/aj;->d()V

    .line 189
    new-instance v4, Lcom/google/android/youtube/app/adapter/as;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    invoke-direct {v4, v1}, Lcom/google/android/youtube/app/adapter/as;-><init>(Landroid/content/Context;)V

    .line 190
    const v1, 0x7f080037

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 191
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/z;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->d:Lcom/google/android/youtube/app/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v5}, Lcom/google/android/youtube/core/b/ae;->g()Lcom/google/android/youtube/core/async/ar;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->j:Lcom/google/android/youtube/core/d;

    move-object/from16 v5, v17

    move-object v7, v14

    invoke-direct/range {v1 .. v8}, Lcom/google/android/youtube/app/honeycomb/tablet/z;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/as;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/d;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->p:Lcom/google/android/youtube/core/ui/j;

    .line 200
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/h;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v4}, Lcom/google/android/youtube/app/honeycomb/tablet/h;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/g;Lcom/google/android/youtube/app/adapter/as;)V

    invoke-interface {v3, v1}, Lcom/google/android/youtube/core/ui/g;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->p:Lcom/google/android/youtube/core/ui/j;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/ui/j;->d()V

    .line 203
    const v1, 0x7f080034

    .line 204
    if-eqz p2, :cond_1f2

    .line 205
    const-string v1, "selected_card_id"

    const v2, 0x7f080034

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 206
    const-string v1, "selected_playlist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Playlist;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->u:Lcom/google/android/youtube/core/model/Playlist;

    move v3, v2

    .line 211
    :goto_1c7
    const v1, 0x7f080042

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    const v4, 0x7f040080

    const v2, 0x7f080039

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {v1, v4, v2, v3}, Lcom/google/android/youtube/app/ui/f;->a(Landroid/widget/ListView;ILandroid/widget/FrameLayout;I)Lcom/google/android/youtube/app/ui/f;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->q:Lcom/google/android/youtube/app/ui/f;

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->q:Lcom/google/android/youtube/app/ui/f;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/f;->a(Lcom/google/android/youtube/app/ui/g;)V

    .line 217
    return-void

    .line 208
    :cond_1f2
    if-eqz v19, :cond_201

    .line 209
    const-string v1, "selected_card_id"

    const v2, 0x7f080034

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v3, v1

    goto :goto_1c7

    :cond_201
    move v3, v1

    goto :goto_1c7
.end method

.method public final a(Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V
    .registers 3
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->s:Landroid/view/MenuItem;

    if-eqz v0, :cond_7

    .line 333
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g()V

    .line 335
    :cond_7
    return-void
.end method

.method protected final a(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 315
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f08013f

    if-ne v0, v1, :cond_10

    .line 316
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->t:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->b()V

    .line 317
    const/4 v0, 0x1

    .line 319
    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_f
.end method

.method protected final b()V
    .registers 6

    .prologue
    .line 228
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->b()V

    .line 230
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->k:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->g:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/youtube/app/honeycomb/tablet/j;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/youtube/app/honeycomb/tablet/j;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/g;B)V

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ae;->d(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 232
    return-void
.end method

.method public final b(I)V
    .registers 3
    .parameter

    .prologue
    .line 257
    packed-switch p1, :pswitch_data_1c

    .line 271
    :goto_3
    return-void

    .line 259
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->o:Lcom/google/android/youtube/app/ui/ec;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ec;->c()V

    goto :goto_3

    .line 262
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->n:Lcom/google/android/youtube/app/ui/ec;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ec;->c()V

    goto :goto_3

    .line 265
    :pswitch_10
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a:Lcom/google/android/youtube/app/ui/aj;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aj;->c()V

    goto :goto_3

    .line 268
    :pswitch_16
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->p:Lcom/google/android/youtube/core/ui/j;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/j;->c()V

    goto :goto_3

    .line 257
    :pswitch_data_1c
    .packed-switch 0x7f080034
        :pswitch_4
        :pswitch_a
        :pswitch_10
        :pswitch_16
    .end packed-switch
.end method

.method protected final c()V
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->q:Lcom/google/android/youtube/app/ui/f;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/f;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->b(I)V

    .line 276
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/g;->q:Lcom/google/android/youtube/app/ui/f;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/f;->notifyDataSetInvalidated()V

    .line 277
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->c()V

    .line 278
    return-void
.end method
