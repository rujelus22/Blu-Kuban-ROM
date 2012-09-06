.class public Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/youtube/core/async/bc;


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field private n:Lcom/google/android/youtube/core/async/ar;

.field private o:Lcom/google/android/youtube/core/b/ae;

.field private p:Lcom/google/android/youtube/core/b/ag;

.field private q:Lcom/google/android/youtube/core/d;

.field private r:Lcom/google/android/youtube/app/ui/ci;

.field private s:Lcom/google/android/youtube/app/adapter/bj;

.field private t:Lcom/google/android/youtube/app/ui/w;

.field private u:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private v:Lcom/google/android/youtube/app/g;

.field private w:Lcom/google/android/youtube/app/k;

.field private x:Lcom/google/android/youtube/app/ui/p;

.field private y:Lcom/google/android/youtube/core/model/Playlist;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".selectedPlaylist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->m:Ljava/lang/String;

    return-void
.end method

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
    .line 76
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
    .line 50
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->y:Lcom/google/android/youtube/core/model/Playlist;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)V
    .registers 5
    .parameter

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/bc;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/bc;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)V

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->u:Lcom/google/android/youtube/core/async/UserAuthorizer;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/bd;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->q:Lcom/google/android/youtube/core/d;

    invoke-direct {v2, p0, v3, v0}, Lcom/google/android/youtube/app/honeycomb/phone/bd;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/async/l;)V

    invoke-virtual {v1, p0, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)Lcom/google/android/youtube/app/ui/ci;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->r:Lcom/google/android/youtube/app/ui/ci;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)Lcom/google/android/youtube/core/model/Playlist;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->y:Lcom/google/android/youtube/core/model/Playlist;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)Lcom/google/android/youtube/app/adapter/bj;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->s:Lcom/google/android/youtube/app/adapter/bj;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)Lcom/google/android/youtube/core/d;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->q:Lcom/google/android/youtube/core/d;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)Lcom/google/android/youtube/core/b/ae;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->o:Lcom/google/android/youtube/core/b/ae;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 82
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->u:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 83
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/app/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->v:Lcom/google/android/youtube/app/g;

    .line 84
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->w:Lcom/google/android/youtube/app/k;

    .line 85
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->o:Lcom/google/android/youtube/core/b/ae;

    .line 86
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->p:Lcom/google/android/youtube/core/b/ag;

    .line 87
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->q:Lcom/google/android/youtube/core/d;

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->o:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->m()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->n:Lcom/google/android/youtube/core/async/ar;

    .line 89
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->r:Lcom/google/android/youtube/app/ui/ci;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->o:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v3}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->h(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/ci;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 184
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->finish()V

    .line 192
    return-void
.end method

.method protected final b(I)Landroid/app/Dialog;
    .registers 8
    .parameter

    .prologue
    .line 196
    sparse-switch p1, :sswitch_data_4e

    .line 227
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 199
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->x:Lcom/google/android/youtube/app/ui/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/p;->b()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 202
    :sswitch_c
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/ba;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/ba;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)V

    .line 211
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b01ed

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->y:Lcom/google/android/youtube/core/model/Playlist;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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

    goto :goto_4

    .line 220
    :sswitch_42
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->t:Lcom/google/android/youtube/app/ui/w;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/bb;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/phone/bb;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/w;->a(Lcom/google/android/youtube/app/ui/z;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 196
    :sswitch_data_4e
    .sparse-switch
        0x3ed -> :sswitch_42
        0x3ee -> :sswitch_c
        0x3f5 -> :sswitch_5
    .end sparse-switch
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 271
    const-string v0, "yt_playlist"

    return-object v0
.end method

.method public final e_()V
    .registers 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->finish()V

    .line 188
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 93
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    if-eqz p1, :cond_10

    .line 96
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->y:Lcom/google/android/youtube/core/model/Playlist;

    .line 99
    :cond_10
    const v0, 0x7f04004e

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->setContentView(I)V

    .line 100
    const v0, 0x7f0b0170

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->e(I)V

    .line 102
    new-instance v0, Lcom/google/android/youtube/app/ui/w;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->u:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->o:Lcom/google/android/youtube/core/b/ae;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->q:Lcom/google/android/youtube/core/d;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/youtube/app/ui/w;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->t:Lcom/google/android/youtube/app/ui/w;

    .line 104
    new-instance v0, Lcom/google/android/youtube/app/ui/p;

    const/16 v1, 0x3f5

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/p;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->x:Lcom/google/android/youtube/app/ui/p;

    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->x:Lcom/google/android/youtube/app/ui/p;

    const v1, 0x7f0b01ec

    const v2, 0x7f02006f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/p;->a(II)I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->x:Lcom/google/android/youtube/app/ui/p;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/ay;

    invoke-direct {v2, p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ay;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/p;->a(Lcom/google/android/youtube/app/ui/v;)V

    .line 118
    new-instance v0, Lcom/google/android/youtube/app/adapter/bj;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->x:Lcom/google/android/youtube/app/ui/p;

    invoke-direct {v0, p0, v1, v7}, Lcom/google/android/youtube/app/adapter/bj;-><init>(Landroid/content/Context;Lcom/google/android/youtube/app/ui/p;Z)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->s:Lcom/google/android/youtube/app/adapter/bj;

    .line 119
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/ui/g;

    .line 120
    new-instance v0, Lcom/google/android/youtube/app/ui/ci;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->s:Lcom/google/android/youtube/app/adapter/bj;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->n:Lcom/google/android/youtube/core/async/ar;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->p:Lcom/google/android/youtube/core/b/ag;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->q:Lcom/google/android/youtube/core/d;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/app/ui/ci;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bj;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/d;Z)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->r:Lcom/google/android/youtube/app/ui/ci;

    .line 128
    invoke-interface {v2, p0}, Lcom/google/android/youtube/core/ui/g;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 148
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 149
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
    .line 140
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v1

    .line 141
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->s:Lcom/google/android/youtube/app/adapter/bj;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/adapter/bj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    .line 142
    iget-object v0, v0, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/app/a;->a(Landroid/net/Uri;Z)V

    .line 143
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f08014c

    if-ne v0, v1, :cond_20

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->v:Lcom/google/android/youtube/app/g;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/az;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->q:Lcom/google/android/youtube/core/d;

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/az;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;Lcom/google/android/youtube/core/d;)V

    const v2, 0x7f0b019a

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->w:Lcom/google/android/youtube/app/k;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/k;->b()Z

    move-result v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/android/youtube/app/g;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;IZ)V

    .line 165
    const/4 v0, 0x1

    .line 167
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
    .line 233
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 234
    packed-switch p1, :pswitch_data_30

    .line 245
    :goto_6
    return-void

    .line 236
    :pswitch_7
    check-cast p2, Landroid/app/AlertDialog;

    .line 237
    const v0, 0x7f0b01ed

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->y:Lcom/google/android/youtube/core/model/Playlist;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 241
    :pswitch_22
    const v0, 0x7f080021

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 234
    :pswitch_data_30
    .packed-switch 0x3ed
        :pswitch_22
        :pswitch_7
    .end packed-switch
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 178
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onResume()V

    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->u:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 180
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->y:Lcom/google/android/youtube/core/model/Playlist;

    if-eqz v0, :cond_e

    .line 135
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->y:Lcom/google/android/youtube/core/model/Playlist;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 137
    :cond_e
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStop()V

    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyPlaylistsActivity;->r:Lcom/google/android/youtube/app/ui/ci;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ci;->e()V

    .line 174
    return-void
.end method
