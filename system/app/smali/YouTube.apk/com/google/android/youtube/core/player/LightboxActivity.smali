.class public Lcom/google/android/youtube/core/player/LightboxActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/google/android/youtube/core/player/x;


# instance fields
.field private a:Lcom/google/android/youtube/core/player/aq;

.field private b:Lcom/google/android/youtube/core/player/p;

.field private c:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 173
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Branding;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    return-void
.end method

.method public final a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 153
    return-void
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 165
    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 162
    return-void
.end method

.method public final c()V
    .registers 1

    .prologue
    .line 168
    return-void
.end method

.method public final e()V
    .registers 1

    .prologue
    .line 156
    return-void
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 146
    const v0, 0x7f0a0051

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/LightboxActivity;->finish()V

    .line 148
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 138
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/LightboxActivity;->finish()V

    .line 139
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 35
    .parameter

    .prologue
    .line 63
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/player/LightboxActivity;->requestWindowFeature(I)Z

    .line 64
    const v2, 0x7f0d0005

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/player/LightboxActivity;->setTheme(I)V

    .line 65
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/core/player/LightboxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 68
    const-string v3, "video_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 69
    const-string v3, "video_ids"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v31

    .line 70
    const-string v3, "current_index"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    .line 74
    new-instance v2, Lcom/google/android/youtube/core/player/PlayerView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/youtube/core/player/PlayerView;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v3, Lcom/google/android/youtube/core/player/aq;

    invoke-direct {v3, v2}, Lcom/google/android/youtube/core/player/aq;-><init>(Lcom/google/android/youtube/core/player/PlayerView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->a:Lcom/google/android/youtube/core/player/aq;

    .line 76
    new-instance v3, Lcom/google/android/youtube/core/player/y;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/youtube/core/player/y;-><init>(Lcom/google/android/youtube/core/player/LightboxActivity;Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->c:Landroid/app/Dialog;

    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->c:Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 79
    new-instance v2, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 80
    const v3, 0x7f080018

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 81
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/player/LightboxActivity;->setContentView(Landroid/view/View;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/core/player/LightboxActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 85
    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 86
    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/core/player/LightboxActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/youtube/core/BaseApplication;

    move-object v2, v3

    .line 89
    check-cast v2, Lcom/google/android/youtube/core/client/ae;

    invoke-interface {v2}, Lcom/google/android/youtube/core/client/ae;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v5

    move-object v2, v3

    .line 90
    check-cast v2, Lcom/google/android/youtube/core/client/ak;

    invoke-interface {v2}, Lcom/google/android/youtube/core/client/ak;->k()Lcom/google/android/youtube/core/client/aj;

    move-result-object v7

    move-object v2, v3

    .line 91
    check-cast v2, Lcom/google/android/youtube/core/client/ai;

    invoke-interface {v2}, Lcom/google/android/youtube/core/client/ai;->l()Lcom/google/android/youtube/core/client/ah;

    move-result-object v8

    .line 92
    invoke-virtual {v3}, Lcom/google/android/youtube/core/BaseApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v10

    .line 93
    invoke-virtual {v3}, Lcom/google/android/youtube/core/BaseApplication;->F()Lcom/google/android/youtube/core/utils/i;

    move-result-object v16

    .line 94
    invoke-virtual {v3}, Lcom/google/android/youtube/core/BaseApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v15

    .line 96
    new-instance v13, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v10}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;)V

    .line 97
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->e(Z)V

    .line 98
    new-instance v14, Lcom/google/android/youtube/core/player/n;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/google/android/youtube/core/player/n;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v3}, Lcom/google/android/youtube/core/BaseApplication;->b()Z

    move-result v2

    if-eqz v2, :cond_f6

    move-object v2, v3

    .line 101
    check-cast v2, Lcom/google/android/youtube/core/client/b;

    invoke-interface {v2}, Lcom/google/android/youtube/core/client/b;->j()Lcom/google/android/youtube/core/client/a;

    move-result-object v6

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/BaseApplication;->C()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/youtube/core/BaseApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v9

    invoke-virtual {v3}, Lcom/google/android/youtube/core/BaseApplication;->c()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v3, p0

    move-object/from16 v12, p0

    invoke-static/range {v2 .. v16}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/player/aq;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/a;Lcom/google/android/youtube/core/client/aj;Lcom/google/android/youtube/core/client/ah;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/core/player/x;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/l;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/utils/i;)Lcom/google/android/youtube/core/player/p;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->b:Lcom/google/android/youtube/core/player/p;

    .line 112
    :goto_db
    if-eqz v31, :cond_121

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->b:Lcom/google/android/youtube/core/player/p;

    const/4 v3, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v5, v0, v3, v1}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/client/ad;Ljava/util/List;Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 119
    :cond_ee
    :goto_ee
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->c:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 120
    return-void

    .line 107
    :cond_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->a:Lcom/google/android/youtube/core/player/aq;

    move-object/from16 v17, v0

    invoke-virtual {v3}, Lcom/google/android/youtube/core/BaseApplication;->C()Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-virtual {v3}, Lcom/google/android/youtube/core/BaseApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v23

    move-object/from16 v18, p0

    move-object/from16 v20, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v24, v10

    move-object/from16 v25, p0

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    move-object/from16 v28, v15

    move-object/from16 v29, v16

    invoke-static/range {v17 .. v29}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/player/aq;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/aj;Lcom/google/android/youtube/core/client/ah;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/player/x;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/l;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/utils/i;)Lcom/google/android/youtube/core/player/p;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->b:Lcom/google/android/youtube/core/player/p;

    goto :goto_db

    .line 115
    :cond_121
    if-eqz v30, :cond_ee

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->b:Lcom/google/android/youtube/core/player/p;

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-static {v5, v0, v3}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/client/ad;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_ee
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LightboxActivity;->b:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/p;->w()V

    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 133
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/LightboxActivity;->finish()V

    .line 143
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LightboxActivity;->b:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/p;->v()V

    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LightboxActivity;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->g()V

    .line 127
    return-void
.end method
