.class public abstract Lcom/google/android/music/activitymanagement/MusicFragment;
.super Landroid/content/ContextWrapper;
.source "MusicFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/activitymanagement/MusicFragment$ReconfigListener;,
        Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;,
        Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCreated:Z

.field private mCurrentState:Lcom/google/android/music/activitymanagement/MusicState;

.field private mDestroyed:Z

.field private mIsFinishing:Z

.field private mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

.field private mMusicUIController:Lcom/google/android/music/activitymanagement/MusicUIController;

.field private mReconfigListener:Lcom/google/android/music/activitymanagement/MusicFragment$ReconfigListener;

.field private mResultCode:I

.field private mResultData:Landroid/content/Intent;

.field private mResultSet:Z

.field private mResumed:Z

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUiThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "base"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mCreated:Z

    .line 37
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mResumed:Z

    .line 39
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mDestroyed:Z

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mUiHandler:Landroid/os/Handler;

    .line 52
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mResultSet:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mResultData:Landroid/content/Intent;

    .line 54
    iput v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mResultCode:I

    .line 59
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mIsFinishing:Z

    .line 67
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mUiThread:Ljava/lang/Thread;

    .line 70
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method protected findViewById(I)Landroid/view/View;
    .registers 3
    .parameter "id"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mResumed:Z

    if-eqz v0, :cond_9

    .line 225
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->goBack()V

    .line 229
    :cond_9
    return-void
.end method

.method public final getAppState()Lcom/google/android/music/activitymanagement/MusicState;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mCurrentState:Lcom/google/android/music/activitymanagement/MusicState;

    return-object v0
.end method

.method public final getApplication()Landroid/content/Context;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getLoggerScreenExtras()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getLoggerScreenString()Ljava/lang/String;
.end method

.method public getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    return-object v0
.end method

.method public getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mMusicUIController:Lcom/google/android/music/activitymanagement/MusicUIController;

    return-object v0
.end method

.method public final getResult()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mResultSet:Z

    if-eqz v0, :cond_12

    .line 216
    new-instance v0, Landroid/util/Pair;

    iget v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mResultCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mResultData:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public getZOrder()I
    .registers 2

    .prologue
    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method protected inflateView(I)Landroid/view/View;
    .registers 4
    .parameter "resource"

    .prologue
    .line 187
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 189
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 4
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mCreated:Z

    if-nez v0, :cond_d

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onCreate must be called before initializeState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_d
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mCurrentState:Lcom/google/android/music/activitymanagement/MusicState;

    .line 121
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mResultSet:Z

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mResultData:Landroid/content/Intent;

    .line 123
    iput v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mResultCode:I

    .line 124
    return-void
.end method

.method public isFinishing()Z
    .registers 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mIsFinishing:Z

    return v0
.end method

.method public isFullScreen()Z
    .registers 2

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method markForFinishing()V
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mIsFinishing:Z

    .line 158
    return-void
.end method

.method public onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V
    .registers 2
    .parameter "actionbarConfig"

    .prologue
    .line 257
    return-void
.end method

.method protected onCreate()V
    .registers 3

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mCreated:Z

    if-eqz v0, :cond_c

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment can not be created multiple times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mCreated:Z

    .line 80
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .parameter "id"
    .parameter "info"

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 294
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mDestroyed:Z

    .line 87
    return-void
.end method

.method public onLaunchNewStateDone(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 2
    .parameter "newState"

    .prologue
    .line 109
    return-void
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 2
    .parameter "layoutConfig"

    .prologue
    .line 247
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 268
    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mResumed:Z

    if-nez v0, :cond_c

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment was never resumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mResumed:Z

    .line 145
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 297
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mCreated:Z

    if-nez v0, :cond_c

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MusicFragment.onCreate was not called before onResume"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mResumed:Z

    if-eqz v0, :cond_18

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment was already resumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mResumed:Z

    .line 138
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 261
    return-void
.end method

.method protected final requestReconfig()V
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mReconfigListener:Lcom/google/android/music/activitymanagement/MusicFragment$ReconfigListener;

    invoke-interface {v0, p0}, Lcom/google/android/music/activitymanagement/MusicFragment$ReconfigListener;->onReconfigRequested(Lcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 286
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "runnable"

    .prologue
    .line 232
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mUiThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_c

    .line 233
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 237
    :goto_b
    return-void

    .line 235
    :cond_c
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method public final setControllers(Lcom/google/android/music/activitymanagement/MusicUIController;Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 3
    .parameter "musicUIController"
    .parameter "stateController"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mMusicUIController:Lcom/google/android/music/activitymanagement/MusicUIController;

    .line 92
    iput-object p2, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 93
    return-void
.end method

.method public final setReconfigListener(Lcom/google/android/music/activitymanagement/MusicFragment$ReconfigListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mReconfigListener:Lcom/google/android/music/activitymanagement/MusicFragment$ReconfigListener;

    .line 97
    return-void
.end method

.method public final setResult(ILandroid/content/Intent;)V
    .registers 4
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mResultSet:Z

    .line 203
    iput p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mResultCode:I

    .line 204
    iput-object p2, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mResultData:Landroid/content/Intent;

    .line 205
    return-void
.end method

.method public showOnMainFrame()Z
    .registers 2

    .prologue
    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 154
    return-void
.end method
