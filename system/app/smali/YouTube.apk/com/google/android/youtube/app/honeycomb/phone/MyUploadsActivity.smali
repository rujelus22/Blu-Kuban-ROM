.class public Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/p;
.implements Lcom/google/android/youtube/core/async/av;


# instance fields
.field private a:Lcom/google/android/youtube/core/async/ad;

.field private b:Lcom/google/android/youtube/core/client/ad;

.field private c:Lcom/google/android/youtube/core/client/af;

.field private d:Lcom/google/android/youtube/core/client/ag;

.field private e:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private f:Lcom/google/android/youtube/core/e;

.field private g:Lcom/google/android/youtube/app/ui/cd;

.field private h:Lcom/google/android/youtube/app/a/v;

.field private i:Lcom/google/android/youtube/app/ui/j;

.field private j:Lcom/google/android/youtube/app/ui/j;

.field private k:I

.field private l:I

.field private m:Lcom/google/android/youtube/core/model/Video;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)Lcom/google/android/youtube/app/ui/cd;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->g:Lcom/google/android/youtube/app/ui/cd;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)V
    .registers 5
    .parameter

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/ai;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/ai;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)V

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/aj;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->f:Lcom/google/android/youtube/core/e;

    invoke-direct {v2, p0, v3, v0}, Lcom/google/android/youtube/app/honeycomb/phone/aj;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/async/g;)V

    invoke-virtual {v1, p0, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)Lcom/google/android/youtube/core/model/Video;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->m:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)Lcom/google/android/youtube/app/a/v;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->h:Lcom/google/android/youtube/app/a/v;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)Lcom/google/android/youtube/core/e;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->f:Lcom/google/android/youtube/core/e;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)Lcom/google/android/youtube/core/client/ad;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->b:Lcom/google/android/youtube/core/client/ad;

    return-object v0
.end method


# virtual methods
.method protected final a(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 167
    sparse-switch p1, :sswitch_data_46

    .line 196
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 170
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 173
    :sswitch_c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->i:Lcom/google/android/youtube/app/ui/j;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/j;->b()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 176
    :sswitch_13
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->j:Lcom/google/android/youtube/app/ui/j;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/j;->b()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 179
    :sswitch_1a
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/ah;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/ah;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)V

    .line 187
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a017d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a017e

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

    .line 167
    nop

    :sswitch_data_46
    .sparse-switch
        0x1 -> :sswitch_5
        0x3ef -> :sswitch_1a
        0x3f2 -> :sswitch_13
        0x3fc -> :sswitch_c
    .end sparse-switch
.end method

.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 238
    const-string v0, "yt_upload"

    return-object v0
.end method

.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 74
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->b:Lcom/google/android/youtube/core/client/ad;

    .line 75
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->c:Lcom/google/android/youtube/core/client/af;

    .line 76
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->m()Lcom/google/android/youtube/core/client/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->d:Lcom/google/android/youtube/core/client/ag;

    .line 77
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->f:Lcom/google/android/youtube/core/e;

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->b:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->i()Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->a:Lcom/google/android/youtube/core/async/ad;

    .line 79
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->n:Z

    if-eqz v0, :cond_19

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->g:Lcom/google/android/youtube/app/ui/cd;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->b:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v3}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->c(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cd;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 152
    :cond_19
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->n:Z

    if-eqz v0, :cond_9

    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->f:Lcom/google/android/youtube/core/e;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    .line 162
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->finish()V

    .line 163
    return-void
.end method

.method public final synthetic a(ILjava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 45
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->m:Lcom/google/android/youtube/core/model/Video;

    iget v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->k:I

    if-ne p1, v1, :cond_18

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->n()Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    const-string v2, "DeleteUpload"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    const/16 v1, 0x3ef

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->showDialog(I)V

    :goto_17
    return v0

    :cond_18
    iget v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->l:I

    if-ne p1, v1, :cond_2f

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->n()Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    const-string v2, "EditMetadata"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->m:Lcom/google/android/youtube/core/model/Video;

    invoke-interface {v1, v2}, Lcom/google/android/youtube/app/o;->a(Lcom/google/android/youtube/core/model/Video;)V

    goto :goto_17

    :cond_2f
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public final d_()V
    .registers 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->finish()V

    .line 156
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->setContentView(I)V

    .line 86
    const v0, 0x7f0a011a

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->d(I)V

    .line 88
    new-instance v0, Lcom/google/android/youtube/app/ui/j;

    const/16 v1, 0x3fc

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/j;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->i:Lcom/google/android/youtube/app/ui/j;

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->i:Lcom/google/android/youtube/app/ui/j;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/ui/j;->a(Lcom/google/android/youtube/app/ui/p;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->i:Lcom/google/android/youtube/app/ui/j;

    const v1, 0x7f0a0182

    const v2, 0x7f020047

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/j;->a(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->l:I

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->i:Lcom/google/android/youtube/app/ui/j;

    const v1, 0x7f0a017c

    const v2, 0x7f020046

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/j;->a(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->k:I

    .line 95
    new-instance v0, Lcom/google/android/youtube/app/ui/j;

    const/16 v1, 0x3f2

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/j;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->j:Lcom/google/android/youtube/app/ui/j;

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->j:Lcom/google/android/youtube/app/ui/j;

    const v1, 0x7f0a0180

    const v2, 0x7f020045

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/j;->a(II)I

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->j:Lcom/google/android/youtube/app/ui/j;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/ag;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/phone/ag;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/j;->a(Lcom/google/android/youtube/app/ui/p;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->i:Lcom/google/android/youtube/app/ui/j;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->j:Lcom/google/android/youtube/app/ui/j;

    invoke-static {p0, v0, v1}, Lcom/google/android/youtube/app/a/v;->a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/j;Lcom/google/android/youtube/app/ui/j;)Lcom/google/android/youtube/app/a/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->h:Lcom/google/android/youtube/app/a/v;

    .line 106
    new-instance v0, Lcom/google/android/youtube/app/ui/cd;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v3

    const v1, 0x7f09002b

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/h;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->h:Lcom/google/android/youtube/app/a/v;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->a:Lcom/google/android/youtube/core/async/ad;

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->b:Lcom/google/android/youtube/core/client/ad;

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->c:Lcom/google/android/youtube/core/client/af;

    iget-object v9, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->d:Lcom/google/android/youtube/core/client/ag;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->n()Lcom/google/android/youtube/core/Analytics;

    move-result-object v10

    sget-object v11, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Uploads:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v12, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->MY_UPLOADS:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    iget-object v13, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->f:Lcom/google/android/youtube/core/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/android/youtube/app/ui/cd;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/v;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->g:Lcom/google/android/youtube/app/ui/cd;

    .line 120
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 125
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onPause()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->n:Z

    .line 146
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onResume()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->n:Z

    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 140
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStop()V

    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->g:Lcom/google/android/youtube/app/ui/cd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cd;->e()V

    .line 133
    return-void
.end method
