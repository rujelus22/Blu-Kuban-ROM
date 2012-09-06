.class public Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"


# instance fields
.field private m:Lcom/google/android/youtube/app/ui/bt;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Lcom/google/android/youtube/app/remote/ab;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    return-void
.end method

.method private static a(Landroid/net/Uri;)I
    .registers 4
    .parameter

    .prologue
    .line 142
    const-string v0, "videoPosition"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 145
    :try_start_c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_f} :catch_13

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 150
    :goto_12
    return v0

    .line 147
    :catch_13
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value for video positon "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 150
    :cond_26
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    if-eqz p1, :cond_13

    .line 33
    const-string v1, "video_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v1, "video_position_ms"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    :cond_13
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->o:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final b(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 86
    packed-switch p1, :pswitch_data_10

    .line 90
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->b(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 88
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->m:Lcom/google/android/youtube/app/ui/bt;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/bt;->a(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 86
    nop

    :pswitch_data_10
    .packed-switch 0x403
        :pswitch_8
    .end packed-switch
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    const-string v0, " yt_add_screen"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->m:Lcom/google/android/youtube/app/ui/bt;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/app/ui/bt;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 139
    :goto_8
    return-void

    .line 138
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 50
    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/app/remote/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->q:Lcom/google/android/youtube/app/remote/ab;

    .line 51
    const v0, 0x7f0b0206

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->e(I)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->u()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    move-result-object v0

    sget-object v2, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->DISABLED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;)V

    .line 54
    new-instance v7, Lcom/google/android/youtube/app/honeycomb/phone/bu;

    invoke-direct {v7, p0}, Lcom/google/android/youtube/app/honeycomb/phone/bu;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;)V

    .line 66
    new-instance v0, Lcom/google/android/youtube/app/ui/bt;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/app/remote/ab;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->s()Lcom/google/android/youtube/app/remote/bc;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->r()Lcom/google/android/youtube/app/remote/bd;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->q()Lcom/google/android/youtube/app/remote/at;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v8

    const v9, 0x7f04007e

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/app/ui/bt;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/remote/ab;Lcom/google/android/youtube/app/remote/bc;Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/app/remote/at;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/ui/ce;Lcom/google/android/youtube/core/d;I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->m:Lcom/google/android/youtube/app/ui/bt;

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->m:Lcom/google/android/youtube/app/ui/bt;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bt;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->setContentView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 129
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onPause()V

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->m:Lcom/google/android/youtube/app/ui/bt;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bt;->b()V

    .line 131
    return-void
.end method

.method protected onStart()V
    .registers 5

    .prologue
    .line 95
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStart()V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 99
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "video_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->o:Ljava/lang/String;

    .line 100
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "video_position_ms"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->p:I

    .line 102
    :cond_25
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->m:Lcom/google/android/youtube/app/ui/bt;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/bt;->a(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->m:Lcom/google/android/youtube/app/ui/bt;

    iget v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->p:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/app/ui/bt;->a(J)V

    .line 105
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 106
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const-string v2, "remote"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 108
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->m:Lcom/google/android/youtube/app/ui/bt;

    const-string v2, "pairingCode"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/bt;->b(Ljava/lang/String;)V

    .line 109
    const-string v1, "videoId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->o:Ljava/lang/String;

    .line 110
    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->a(Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->p:I

    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->m:Lcom/google/android/youtube/app/ui/bt;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/bt;->a(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->m:Lcom/google/android/youtube/app/ui/bt;

    iget v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->p:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/bt;->a(J)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->n:Z

    .line 115
    :cond_7d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->setIntent(Landroid/content/Intent;)V

    .line 118
    :cond_85
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->q:Lcom/google/android/youtube/app/remote/ab;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->m:Lcom/google/android/youtube/app/ui/bt;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/ab;->a(Lcom/google/android/youtube/app/remote/af;)V

    .line 119
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->q:Lcom/google/android/youtube/app/remote/ab;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->m:Lcom/google/android/youtube/app/ui/bt;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/ab;->b(Lcom/google/android/youtube/app/remote/af;)V

    .line 124
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStop()V

    .line 125
    return-void
.end method
