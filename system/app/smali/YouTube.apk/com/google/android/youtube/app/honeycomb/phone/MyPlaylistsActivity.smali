.class public Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/youtube/core/async/av;


# instance fields
.field private a:Lcom/google/android/youtube/core/async/ad;

.field private b:Lcom/google/android/youtube/core/client/ad;

.field private c:Lcom/google/android/youtube/core/client/af;

.field private d:Lcom/google/android/youtube/core/e;

.field private e:Lcom/google/android/youtube/app/ui/bq;

.field private f:Lcom/google/android/youtube/app/a/i;

.field private g:Lcom/google/android/youtube/app/ui/q;

.field private h:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private i:Lcom/google/android/youtube/app/aa;

.field private j:Lcom/google/android/youtube/app/ae;

.field private k:Lcom/google/android/youtube/app/ui/j;

.field private l:Lcom/google/android/youtube/core/model/Playlist;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;Lcom/google/android/youtube/core/model/Playlist;)Lcom/google/android/youtube/core/model/Playlist;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->l:Lcom/google/android/youtube/core/model/Playlist;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)V
    .registers 5
    .parameter

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/ac;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/ac;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)V

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->h:Lcom/google/android/youtube/core/async/UserAuthorizer;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/ad;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->d:Lcom/google/android/youtube/core/e;

    invoke-direct {v2, p0, v3, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ad;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/async/g;)V

    invoke-virtual {v1, p0, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)Lcom/google/android/youtube/app/ui/bq;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->e:Lcom/google/android/youtube/app/ui/bq;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)Lcom/google/android/youtube/core/model/Playlist;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->l:Lcom/google/android/youtube/core/model/Playlist;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)Lcom/google/android/youtube/app/a/i;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->f:Lcom/google/android/youtube/app/a/i;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)Lcom/google/android/youtube/core/e;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->d:Lcom/google/android/youtube/core/e;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)Lcom/google/android/youtube/core/client/ad;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->b:Lcom/google/android/youtube/core/client/ad;

    return-object v0
.end method


# virtual methods
.method protected final a(I)Landroid/app/Dialog;
    .registers 8
    .parameter

    .prologue
    .line 195
    sparse-switch p1, :sswitch_data_5c

    .line 230
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 198
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->h:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 201
    :sswitch_c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->k:Lcom/google/android/youtube/app/ui/j;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/j;->b()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 204
    :sswitch_13
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/aa;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/aa;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)V

    .line 213
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0191

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->l:Lcom/google/android/youtube/core/model/Playlist;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0192

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    .line 223
    :sswitch_50
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->g:Lcom/google/android/youtube/app/ui/q;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/ab;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/phone/ab;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/q;->a(Lcom/google/android/youtube/app/ui/t;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 195
    :sswitch_data_5c
    .sparse-switch
        0x1 -> :sswitch_5
        0x3ed -> :sswitch_50
        0x3ee -> :sswitch_13
        0x3f5 -> :sswitch_c
    .end sparse-switch
.end method

.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 273
    const-string v0, "yt_playlist"

    return-object v0
.end method

.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 81
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->h:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 82
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->h()Lcom/google/android/youtube/app/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->i:Lcom/google/android/youtube/app/aa;

    .line 83
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->j:Lcom/google/android/youtube/app/ae;

    .line 84
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->b:Lcom/google/android/youtube/core/client/ad;

    .line 85
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->c:Lcom/google/android/youtube/core/client/af;

    .line 86
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->d:Lcom/google/android/youtube/core/e;

    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->b:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->k()Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->a:Lcom/google/android/youtube/core/async/ad;

    .line 88
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->b:Lcom/google/android/youtube/core/client/ad;

    new-instance v1, Lcom/google/android/youtube/app/ui/bn;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->c:Lcom/google/android/youtube/core/client/af;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->f:Lcom/google/android/youtube/app/a/i;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/youtube/app/ui/bn;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/app/a/i;I)V

    invoke-interface {v0, p1, v4, v1}, Lcom/google/android/youtube/core/client/ad;->b(Lcom/google/android/youtube/core/model/UserAuth;ILcom/google/android/youtube/core/async/g;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->b:Lcom/google/android/youtube/core/client/ad;

    new-instance v1, Lcom/google/android/youtube/app/ui/bn;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->c:Lcom/google/android/youtube/core/client/af;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->f:Lcom/google/android/youtube/app/a/i;

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/google/android/youtube/app/ui/bn;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/app/a/i;I)V

    invoke-interface {v0, p1, v4, v1}, Lcom/google/android/youtube/core/client/ad;->c(Lcom/google/android/youtube/core/model/UserAuth;ILcom/google/android/youtube/core/async/g;)V

    .line 182
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->e:Lcom/google/android/youtube/app/ui/bq;

    new-array v1, v4, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->b:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v2}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->g(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/bq;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 183
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->finish()V

    .line 191
    return-void
.end method

.method public final d_()V
    .registers 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->finish()V

    .line 187
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f04002a

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->setContentView(I)V

    .line 95
    const v0, 0x7f0a011f

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->d(I)V

    .line 97
    new-instance v0, Lcom/google/android/youtube/app/ui/q;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->h:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->b:Lcom/google/android/youtube/core/client/ad;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->d:Lcom/google/android/youtube/core/e;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/youtube/app/ui/q;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->g:Lcom/google/android/youtube/app/ui/q;

    .line 99
    new-instance v0, Lcom/google/android/youtube/app/ui/j;

    const/16 v1, 0x3f5

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/j;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->k:Lcom/google/android/youtube/app/ui/j;

    .line 100
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->k:Lcom/google/android/youtube/app/ui/j;

    const v1, 0x7f0a0190

    const v2, 0x7f020046

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/j;->a(II)I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->k:Lcom/google/android/youtube/app/ui/j;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/y;

    invoke-direct {v2, p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/y;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/j;->a(Lcom/google/android/youtube/app/ui/p;)V

    .line 113
    new-instance v0, Lcom/google/android/youtube/app/a/i;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->k:Lcom/google/android/youtube/app/ui/j;

    invoke-direct {v0, p0, v1, v7, v7}, Lcom/google/android/youtube/app/a/i;-><init>(Landroid/content/Context;Lcom/google/android/youtube/app/ui/j;ZZ)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->f:Lcom/google/android/youtube/app/a/i;

    .line 114
    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/ui/h;

    .line 115
    new-instance v0, Lcom/google/android/youtube/app/ui/bq;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->f:Lcom/google/android/youtube/app/a/i;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->a:Lcom/google/android/youtube/core/async/ad;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->c:Lcom/google/android/youtube/core/client/af;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->d:Lcom/google/android/youtube/core/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/app/ui/bq;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/q;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/e;Z)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->e:Lcom/google/android/youtube/app/ui/bq;

    .line 123
    invoke-interface {v2, p0}, Lcom/google/android/youtube/core/ui/h;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 141
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 127
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v0

    .line 128
    if-nez p3, :cond_b

    .line 129
    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->f()V

    .line 136
    :goto_a
    return-void

    .line 130
    :cond_b
    if-ne p3, v2, :cond_11

    .line 131
    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->e()V

    goto :goto_a

    .line 133
    :cond_11
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->f:Lcom/google/android/youtube/app/a/i;

    invoke-virtual {v1, p3}, Lcom/google/android/youtube/app/a/i;->a(I)Lcom/google/android/youtube/core/model/Playlist;

    move-result-object v1

    .line 134
    iget-object v1, v1, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/app/o;->a(Landroid/net/Uri;Z)V

    goto :goto_a
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    .line 147
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900d6

    if-ne v0, v1, :cond_20

    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->i:Lcom/google/android/youtube/app/aa;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/z;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->d:Lcom/google/android/youtube/core/e;

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/z;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;Lcom/google/android/youtube/core/e;)V

    const v2, 0x7f0a014c

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->j:Lcom/google/android/youtube/app/ae;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/ae;->b()Z

    move-result v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/android/youtube/app/aa;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;IZ)V

    .line 158
    const/4 v0, 0x1

    .line 160
    :goto_1f
    return v0

    :cond_20
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1f
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 237
    packed-switch p1, :pswitch_data_2e

    .line 247
    :goto_6
    return-void

    .line 239
    :pswitch_7
    const v0, 0x7f0a0191

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->l:Lcom/google/android/youtube/core/model/Playlist;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 243
    :pswitch_20
    const v0, 0x7f090019

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 244
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 237
    :pswitch_data_2e
    .packed-switch 0x3ed
        :pswitch_20
        :pswitch_7
    .end packed-switch
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 171
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onResume()V

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->h:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 173
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStop()V

    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->e:Lcom/google/android/youtube/app/ui/bq;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bq;->e()V

    .line 167
    return-void
.end method
