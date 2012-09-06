.class public Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/v;
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field private m:Lcom/google/android/youtube/core/async/ar;

.field private n:Lcom/google/android/youtube/core/b/ae;

.field private o:Lcom/google/android/youtube/core/b/ag;

.field private p:Lcom/google/android/youtube/core/b/ai;

.field private q:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private r:Lcom/google/android/youtube/core/d;

.field private s:Lcom/google/android/youtube/app/ui/dh;

.field private t:Lcom/google/android/youtube/app/adapter/br;

.field private u:Lcom/google/android/youtube/app/ui/p;

.field private v:Lcom/google/android/youtube/app/ui/p;

.field private w:I

.field private x:I

.field private y:Lcom/google/android/youtube/core/model/Video;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)Lcom/google/android/youtube/app/ui/dh;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->s:Lcom/google/android/youtube/app/ui/dh;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)V
    .registers 5
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/bi;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/bi;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)V

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/bj;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->r:Lcom/google/android/youtube/core/d;

    invoke-direct {v2, p0, v3, v0}, Lcom/google/android/youtube/app/honeycomb/phone/bj;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/async/l;)V

    invoke-virtual {v1, p0, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)Lcom/google/android/youtube/core/model/Video;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->y:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)Lcom/google/android/youtube/app/adapter/br;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->t:Lcom/google/android/youtube/app/adapter/br;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)Lcom/google/android/youtube/core/d;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->r:Lcom/google/android/youtube/core/d;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)Lcom/google/android/youtube/core/b/ae;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->n:Lcom/google/android/youtube/core/b/ae;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 73
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->n:Lcom/google/android/youtube/core/b/ae;

    .line 74
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->o:Lcom/google/android/youtube/core/b/ag;

    .line 75
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->p:Lcom/google/android/youtube/core/b/ai;

    .line 76
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->r:Lcom/google/android/youtube/core/d;

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->n:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->k()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->m:Lcom/google/android/youtube/core/async/ar;

    .line 78
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->z:Z

    if-eqz v0, :cond_19

    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->s:Lcom/google/android/youtube/app/ui/dh;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->n:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v3}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/dh;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 151
    :cond_19
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->z:Z

    if-eqz v0, :cond_9

    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->r:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    .line 161
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->finish()V

    .line 162
    return-void
.end method

.method public final synthetic a(ILjava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 44
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->y:Lcom/google/android/youtube/core/model/Video;

    iget v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->w:I

    if-ne p1, v1, :cond_18

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->v()Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    const-string v2, "DeleteUpload"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    const/16 v1, 0x3ef

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->showDialog(I)V

    :goto_17
    return v0

    :cond_18
    iget v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->x:I

    if-ne p1, v1, :cond_2f

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->v()Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    const-string v2, "EditMetadata"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->y:Lcom/google/android/youtube/core/model/Video;

    invoke-interface {v1, v2}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/core/model/Video;)V

    goto :goto_17

    :cond_2f
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected final b(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 166
    sparse-switch p1, :sswitch_data_38

    .line 191
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 169
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->u:Lcom/google/android/youtube/app/ui/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/p;->b()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 172
    :sswitch_c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->v:Lcom/google/android/youtube/app/ui/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/p;->b()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 175
    :sswitch_13
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/bh;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/bh;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)V

    .line 183
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b01da

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

    .line 166
    nop

    :sswitch_data_38
    .sparse-switch
        0x3ef -> :sswitch_13
        0x3f2 -> :sswitch_c
        0x3fc -> :sswitch_5
    .end sparse-switch
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    const-string v0, "yt_upload"

    return-object v0
.end method

.method public final e_()V
    .registers 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->finish()V

    .line 155
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f040051

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->setContentView(I)V

    .line 85
    const v0, 0x7f0b016b

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->e(I)V

    .line 87
    new-instance v0, Lcom/google/android/youtube/app/ui/p;

    const/16 v1, 0x3fc

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/p;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->u:Lcom/google/android/youtube/app/ui/p;

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->u:Lcom/google/android/youtube/app/ui/p;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/ui/p;->a(Lcom/google/android/youtube/app/ui/v;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->u:Lcom/google/android/youtube/app/ui/p;

    const v1, 0x7f0b01de

    const v2, 0x7f020070

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/p;->a(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->x:I

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->u:Lcom/google/android/youtube/app/ui/p;

    const v1, 0x7f0b01d9

    const v2, 0x7f02006f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/p;->a(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->w:I

    .line 94
    new-instance v0, Lcom/google/android/youtube/app/ui/p;

    const/16 v1, 0x3f2

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/p;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->v:Lcom/google/android/youtube/app/ui/p;

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->v:Lcom/google/android/youtube/app/ui/p;

    const v1, 0x7f0b01dc

    const v2, 0x7f02006e

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/p;->a(II)I

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->v:Lcom/google/android/youtube/app/ui/p;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/bg;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/phone/bg;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/p;->a(Lcom/google/android/youtube/app/ui/v;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->u:Lcom/google/android/youtube/app/ui/p;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->v:Lcom/google/android/youtube/app/ui/p;

    invoke-static {p0, v0, v1}, Lcom/google/android/youtube/app/adapter/br;->a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/p;Lcom/google/android/youtube/app/ui/p;)Lcom/google/android/youtube/app/adapter/br;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->t:Lcom/google/android/youtube/app/adapter/br;

    .line 105
    new-instance v0, Lcom/google/android/youtube/app/ui/dh;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v3

    const v1, 0x7f080034

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/g;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->t:Lcom/google/android/youtube/app/adapter/br;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->m:Lcom/google/android/youtube/core/async/ar;

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->n:Lcom/google/android/youtube/core/b/ae;

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->o:Lcom/google/android/youtube/core/b/ag;

    iget-object v9, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->p:Lcom/google/android/youtube/core/b/ai;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->v()Lcom/google/android/youtube/core/Analytics;

    move-result-object v10

    sget-object v11, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Uploads:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v12, Lcom/google/android/youtube/app/m;->G:Lcom/google/android/youtube/core/b/aj;

    iget-object v13, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->r:Lcom/google/android/youtube/core/d;

    move-object v1, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/android/youtube/app/ui/dh;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/br;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->s:Lcom/google/android/youtube/app/ui/dh;

    .line 119
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 124
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onPause()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->z:Z

    .line 145
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onResume()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->z:Z

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 139
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStop()V

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->s:Lcom/google/android/youtube/app/ui/dh;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/dh;->e()V

    .line 132
    return-void
.end method
