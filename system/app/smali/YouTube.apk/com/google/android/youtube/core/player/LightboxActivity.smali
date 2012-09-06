.class public Lcom/google/android/youtube/core/player/LightboxActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/google/android/youtube/core/player/z;


# instance fields
.field private a:Lcom/google/android/youtube/core/player/bi;

.field private b:Lcom/google/android/youtube/core/player/Director;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 226
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Branding;)V
    .registers 2
    .parameter

    .prologue
    .line 218
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 2
    .parameter

    .prologue
    .line 203
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/player/Director$StopReason;)V
    .registers 4
    .parameter

    .prologue
    .line 188
    sget-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->AUTOPLAY_DENIED:Lcom/google/android/youtube/core/player/Director$StopReason;

    if-ne p1, v0, :cond_b

    .line 189
    const v0, 0x7f0b005f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    .line 191
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/LightboxActivity;->finish()V

    .line 192
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/player/DirectorException;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    return-void
.end method

.method public final b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 197
    return-void
.end method

.method public final g()V
    .registers 1

    .prologue
    .line 212
    return-void
.end method

.method public final i()V
    .registers 1

    .prologue
    .line 215
    return-void
.end method

.method public final j()V
    .registers 1

    .prologue
    .line 200
    return-void
.end method

.method public final k()V
    .registers 1

    .prologue
    .line 209
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 180
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/LightboxActivity;->finish()V

    .line 181
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 45
    .parameter

    .prologue
    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/core/player/LightboxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 100
    const-string v5, "video_id"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 101
    const-string v5, "video_ids"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v39

    .line 102
    const-string v5, "current_index"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v40

    .line 103
    const-string v5, "play_in_dialog"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 107
    if-eqz v4, :cond_12f

    const v4, 0x7f0c000f

    move/from16 v37, v4

    .line 108
    :goto_25
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/LightboxActivity;->setTheme(I)V

    .line 110
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/youtube/core/player/LightboxActivity;->requestWindowFeature(I)Z

    .line 111
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/core/player/LightboxActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/player/ab;

    .line 119
    new-instance v41, Lcom/google/android/youtube/core/player/PlayerView;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/PlayerView;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance v5, Lcom/google/android/youtube/core/player/bi;

    invoke-interface {v4}, Lcom/google/android/youtube/core/player/ab;->a()Lcom/google/android/youtube/core/c;

    move-result-object v6

    invoke-interface {v4}, Lcom/google/android/youtube/core/player/ab;->e()Lcom/google/android/youtube/core/j;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-direct {v5, v0, v6, v7}, Lcom/google/android/youtube/core/player/bi;-><init>(Lcom/google/android/youtube/core/player/PlayerView;Lcom/google/android/youtube/core/c;Lcom/google/android/youtube/core/j;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->a:Lcom/google/android/youtube/core/player/bi;

    .line 123
    new-instance v5, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 124
    const v6, 0x7f090003

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 125
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/youtube/core/player/LightboxActivity;->setContentView(Landroid/view/View;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/core/player/LightboxActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 129
    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setLayout(II)V

    .line 130
    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 132
    invoke-interface {v4}, Lcom/google/android/youtube/core/player/ab;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v42

    .line 133
    invoke-interface {v4}, Lcom/google/android/youtube/core/player/ab;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v5

    .line 134
    invoke-interface {v4}, Lcom/google/android/youtube/core/player/ab;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v4

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/core/player/LightboxActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.google.android.tv"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_136

    .line 139
    new-instance v15, Lcom/google/android/youtube/core/player/TvControllerOverlay;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;-><init>(Landroid/app/Activity;)V

    .line 140
    new-instance v17, Lcom/google/android/youtube/core/player/TvAdOverlay;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/youtube/core/player/TvAdOverlay;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;)V

    .line 147
    :goto_ab
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setShowFullscreen(Z)V

    .line 148
    new-instance v16, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;-><init>(Landroid/content/Context;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/core/player/LightboxActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/core/player/ab;

    invoke-interface {v5}, Lcom/google/android/youtube/core/player/ab;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v7

    invoke-interface {v5}, Lcom/google/android/youtube/core/player/ab;->l()Lcom/google/android/youtube/core/b/an;

    move-result-object v9

    invoke-interface {v5}, Lcom/google/android/youtube/core/player/ab;->m()Lcom/google/android/youtube/core/b/al;

    move-result-object v10

    invoke-interface {v5}, Lcom/google/android/youtube/core/player/ab;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v12

    invoke-interface {v5}, Lcom/google/android/youtube/core/player/ab;->S()Lcom/google/android/youtube/core/player/an;

    move-result-object v20

    invoke-interface {v5}, Lcom/google/android/youtube/core/player/ab;->U()Lcom/google/android/youtube/core/utils/k;

    move-result-object v19

    invoke-interface {v5}, Lcom/google/android/youtube/core/player/ab;->N()Lcom/google/android/youtube/core/d;

    move-result-object v18

    invoke-interface {v5}, Lcom/google/android/youtube/core/player/ab;->c()Lcom/google/android/youtube/core/player/e;

    move-result-object v21

    invoke-interface {v5}, Lcom/google/android/youtube/core/player/ab;->b()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v5}, Lcom/google/android/youtube/core/player/ab;->d()Lcom/google/android/youtube/core/player/c;

    move-result-object v11

    invoke-interface {v5}, Lcom/google/android/youtube/core/player/ab;->h()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5}, Lcom/google/android/youtube/core/player/ab;->g()Z

    move-result v8

    if-eqz v8, :cond_14c

    invoke-interface {v5}, Lcom/google/android/youtube/core/player/ab;->f()Lcom/google/android/youtube/core/b/a;

    move-result-object v8

    move-object/from16 v5, p0

    move-object/from16 v14, p0

    invoke-static/range {v4 .. v21}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/player/bi;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/a;Lcom/google/android/youtube/core/b/an;Lcom/google/android/youtube/core/b/al;Lcom/google/android/youtube/core/player/c;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/core/player/z;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/n;Lcom/google/android/youtube/core/player/a;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/core/player/an;Lcom/google/android/youtube/core/player/e;)Lcom/google/android/youtube/core/player/Director;

    move-result-object v4

    :goto_100
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->b:Lcom/google/android/youtube/core/player/Director;

    .line 152
    if-eqz v39, :cond_16f

    .line 153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->b:Lcom/google/android/youtube/core/player/Director;

    const/4 v5, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v0, v1, v5, v2}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/b/ae;Ljava/util/List;Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 159
    :cond_119
    :goto_119
    new-instance v4, Lcom/google/android/youtube/core/player/ac;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move/from16 v3, v37

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/youtube/core/player/ac;-><init>(Lcom/google/android/youtube/core/player/LightboxActivity;Landroid/content/Context;Landroid/view/View;I)V

    .line 160
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 161
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 162
    return-void

    .line 107
    :cond_12f
    const v4, 0x7f0c0010

    move/from16 v37, v4

    goto/16 :goto_25

    .line 142
    :cond_136
    new-instance v15, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/Analytics;)V

    .line 145
    new-instance v17, Lcom/google/android/youtube/core/player/DefaultAdOverlay;

    invoke-virtual {v15}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->g()I

    move-result v4

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/player/DefaultAdOverlay;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_ab

    :cond_14c
    move-object/from16 v22, v4

    move-object/from16 v23, p0

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, p0

    move-object/from16 v31, v15

    move-object/from16 v32, v16

    move-object/from16 v33, v18

    move-object/from16 v34, v19

    move-object/from16 v35, v20

    move-object/from16 v36, v21

    .line 150
    invoke-static/range {v22 .. v36}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/player/bi;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/an;Lcom/google/android/youtube/core/b/al;Lcom/google/android/youtube/core/player/c;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/player/z;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/n;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/core/player/an;Lcom/google/android/youtube/core/player/e;)Lcom/google/android/youtube/core/player/Director;

    move-result-object v4

    goto :goto_100

    .line 155
    :cond_16f
    if-eqz v38, :cond_119

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->b:Lcom/google/android/youtube/core/player/Director;

    const/4 v5, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-static {v0, v1, v5}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/b/ae;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_119
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LightboxActivity;->b:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->y()V

    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 175
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/LightboxActivity;->finish()V

    .line 185
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LightboxActivity;->b:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->x()V

    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LightboxActivity;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->h()V

    .line 169
    return-void
.end method
