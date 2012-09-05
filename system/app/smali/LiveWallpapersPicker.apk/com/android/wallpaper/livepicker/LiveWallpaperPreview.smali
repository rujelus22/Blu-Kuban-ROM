.class public Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;
.super Landroid/app/Activity;
.source "LiveWallpaperPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mPackageName:Ljava/lang/String;

.field private mSettings:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

.field private mWallpaperIntent:Landroid/content/Intent;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;)Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;)Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mView:Landroid/view/View;

    return-object v0
.end method

.method private showLoading()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    .line 158
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 159
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030003

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 161
    .local v0, content:Landroid/widget/TextView;
    new-instance v4, Landroid/app/Dialog;

    const v5, 0x1030008

    invoke-direct {v4, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mDialog:Landroid/app/Dialog;

    .line 163
    iget-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 164
    .local v3, window:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 166
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 167
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 168
    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 170
    iget-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mDialog:Landroid/app/Dialog;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 174
    return-void
.end method

.method static showPreview(Landroid/app/Activity;ILandroid/content/Intent;Landroid/app/WallpaperInfo;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    const-string v1, "android.live_wallpaper.intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 65
    const-string v1, "android.live_wallpaper.settings"

    invoke-virtual {p3}, Landroid/app/WallpaperInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v1, "android.live_wallpaper.package"

    invoke-virtual {p3}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 68
    return-void
.end method


# virtual methods
.method public configureLiveWallpaper(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mSettings:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 114
    const-string v1, "android.service.wallpaper.PREVIEW_MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "ev"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_15

    .line 191
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 193
    .local v7, dup:Landroid/view/MotionEvent;
    :try_start_e
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0, v7}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchPointer(Landroid/view/MotionEvent;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_74

    .line 198
    .end local v7           #dup:Landroid/view/MotionEvent;
    :cond_15
    :goto_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1e

    .line 199
    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->onUserInteraction()V

    .line 201
    :cond_1e
    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 202
    .local v8, handled:Z
    if-nez v8, :cond_2c

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 206
    :cond_2c
    if-nez v8, :cond_54

    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_54

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 209
    .local v6, action:I
    const/4 v0, 0x1

    if-ne v6, v0, :cond_55

    .line 210
    :try_start_3f
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const-string v1, "android.wallpaper.tap"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 222
    .end local v6           #action:I
    :cond_54
    :goto_54
    return v8

    .line 213
    .restart local v6       #action:I
    :cond_55
    const/4 v0, 0x6

    if-ne v6, v0, :cond_54

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 215
    .local v9, pointerIndex:I
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const-string v1, "android.wallpaper.secondaryTap"

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_71} :catch_72

    goto :goto_54

    .line 219
    .end local v9           #pointerIndex:I
    :catch_72
    move-exception v0

    goto :goto_54

    .line 194
    .end local v6           #action:I
    .end local v8           #handled:Z
    .restart local v7       #dup:Landroid/view/MotionEvent;
    :catch_74
    move-exception v0

    goto :goto_15
.end method

.method public onAttachedToWindow()V
    .registers 3

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 146
    invoke-direct {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->showLoading()V

    .line 148
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$1;

    invoke-direct {v1, p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$1;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "android.live_wallpaper.intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperIntent:Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperIntent:Landroid/content/Intent;

    if-nez v1, :cond_20

    .line 77
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->setResult(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->finish()V

    .line 81
    :cond_20
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->setContentView(I)V

    .line 82
    const v1, 0x7f090004

    invoke-virtual {p0, v1}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mView:Landroid/view/View;

    .line 84
    const-string v1, "android.live_wallpaper.settings"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mSettings:Ljava/lang/String;

    .line 85
    const-string v1, "android.live_wallpaper.package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mPackageName:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mSettings:Ljava/lang/String;

    if-nez v1, :cond_4a

    .line 87
    iget-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_4a
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 92
    new-instance v1, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperIntent:Landroid/content/Intent;

    invoke-direct {v1, p0, v2}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    .line 93
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 180
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 182
    :cond_c
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    if-eqz v0, :cond_15

    .line 183
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    invoke-virtual {v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->disconnect()V

    .line 185
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    .line 186
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 133
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_15

    .line 135
    :try_start_d
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    .line 140
    :cond_15
    :goto_15
    return-void

    .line 136
    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 121
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_15

    .line 123
    :try_start_d
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    .line 128
    :cond_15
    :goto_15
    return-void

    .line 124
    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public setLiveWallpaper(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IWallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 99
    iget-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/high16 v2, 0x3f00

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 100
    iget-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/high16 v3, 0x3f00

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 101
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->setResult(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2b} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_2b} :catch_2f

    .line 107
    :goto_2b
    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->finish()V

    .line 108
    return-void

    .line 104
    :catch_2f
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "LiveWallpaperPreview"

    const-string v2, "Failure setting wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 102
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_38
    move-exception v1

    goto :goto_2b
.end method
