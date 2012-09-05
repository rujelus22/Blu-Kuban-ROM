.class public Lcom/sec/minimode/manager/MiniModeAppManager;
.super Ljava/lang/Object;
.source "MiniModeAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/minimode/manager/MiniModeAppManager$1;,
        Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final POLICY_DEFAULT_MODE:I = 0x0

.field public static final POLICY_MINI_MODE:I = 0x0

.field public static final POLICY_SPLIT_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiniModeAppManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPolicyMode:I

.field private mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 35
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    .line 36
    const-string v2, "mini_mode_app_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 37
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    move-result-object v1

    .line 38
    .local v1, service:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;
    if-nez v1, :cond_1a

    .line 39
    new-instance v1, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;

    .end local v1           #service:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;
    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;-><init>(Lcom/sec/minimode/manager/MiniModeAppManager;Lcom/sec/minimode/manager/MiniModeAppManager$1;)V

    .line 41
    .restart local v1       #service:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;
    :cond_1a
    iput-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    .line 42
    iput v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .parameter "context"
    .parameter "policyMode"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManager;-><init>(Landroid/content/Context;)V

    .line 47
    iput p2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;Landroid/content/Context;)V
    .registers 4
    .parameter "service"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 51
    iput-object p2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    .line 52
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    .line 53
    iput v0, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;Landroid/content/Context;I)V
    .registers 5
    .parameter "service"
    .parameter "context"
    .parameter "policyMode"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 57
    iput-object p2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    .line 58
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    .line 59
    iput p3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 60
    return-void
.end method


# virtual methods
.method public closeAll()V
    .registers 3

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->closeAll()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 95
    :goto_5
    return-void

    .line 91
    :catch_6
    move-exception v0

    .line 93
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public closeOthers()V
    .registers 5

    .prologue
    .line 99
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v2, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->closeOthers(Landroid/content/ComponentName;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 105
    .end local v0           #cn:Landroid/content/ComponentName;
    :goto_12
    return-void

    .line 101
    :catch_13
    move-exception v1

    .line 103
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_12
.end method

.method public getAllRunningMiniApps()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->getAllRunningMiniApps()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 233
    :goto_6
    return-object v1

    .line 229
    :catch_7
    move-exception v0

    .line 231
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_6
.end method

.method public getInstanceState(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .registers 4
    .parameter "name"

    .prologue
    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->getInstanceState(Landroid/content/ComponentName;)Landroid/os/Bundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 223
    :goto_6
    return-object v1

    .line 219
    :catch_7
    move-exception v0

    .line 221
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 223
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getLastPosition()Landroid/graphics/Rect;
    .registers 4

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->getLastPosition(I)Landroid/graphics/Rect;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 140
    :goto_8
    return-object v1

    .line 136
    :catch_9
    move-exception v0

    .line 138
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 140
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_8
.end method

.method public getMiniModeAppCallback(Landroid/content/ComponentName;)Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .registers 4
    .parameter "name"

    .prologue
    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->getMiniModeAppCallback(Landroid/content/ComponentName;)Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 243
    :goto_6
    return-object v1

    .line 239
    :catch_7
    move-exception v0

    .line 241
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 243
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getPosition(Landroid/content/ComponentName;)Landroid/graphics/Rect;
    .registers 5
    .parameter "cn"

    .prologue
    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->getPosition(ILandroid/content/ComponentName;)Landroid/graphics/Rect;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 182
    :goto_8
    return-object v1

    .line 178
    :catch_9
    move-exception v0

    .line 180
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 182
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_8
.end method

.method public isOccupiedPosition(II)Z
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->isOccupiedPosition(III)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 172
    :goto_8
    return v1

    .line 168
    :catch_9
    move-exception v0

    .line 170
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 172
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public move(Landroid/content/ComponentName;II)V
    .registers 6
    .parameter "name"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->move(Landroid/content/ComponentName;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 192
    :goto_5
    return-void

    .line 188
    :catch_6
    move-exception v0

    .line 190
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    .registers 5
    .parameter "cb"

    .prologue
    .line 108
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {p0, p1, v0}, Lcom/sec/minimode/manager/MiniModeAppManager;->registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;)V

    .line 110
    return-void
.end method

.method public registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;)V
    .registers 4
    .parameter "cb"
    .parameter "name"

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/minimode/manager/MiniModeAppManager;->registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;I)V

    .line 196
    return-void
.end method

.method public registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "cb"
    .parameter "name"
    .parameter "policyMode"

    .prologue
    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 205
    :goto_5
    return-void

    .line 201
    :catch_6
    move-exception v0

    .line 203
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public removePosition()V
    .registers 5

    .prologue
    .line 156
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v2, v3, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->removePosition(ILandroid/content/ComponentName;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 163
    .end local v0           #cn:Landroid/content/ComponentName;
    :goto_14
    return-void

    .line 159
    :catch_15
    move-exception v1

    .line 161
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14
.end method

.method public requestFocus(Landroid/content/ComponentName;Z)V
    .registers 5
    .parameter "name"
    .parameter "hasFocus"

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->requestFocus(Landroid/content/ComponentName;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 86
    :goto_5
    return-void

    .line 82
    :catch_6
    move-exception v0

    .line 84
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .registers 5
    .parameter "name"
    .parameter "state"

    .prologue
    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 214
    :goto_5
    return-void

    .line 210
    :catch_6
    move-exception v0

    .line 212
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public setPosition(II)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 123
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v2, v3, v0, p1, p2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->setPosition(ILandroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 131
    .end local v0           #cn:Landroid/content/ComponentName;
    :goto_14
    return-void

    .line 127
    :catch_15
    move-exception v1

    .line 129
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14
.end method

.method public start(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 64
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 66
    return-void
.end method

.method public startWithPosition(Landroid/content/ComponentName;II)V
    .registers 7
    .parameter "name"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 69
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 70
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "window.pos.x"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    const-string v1, "window.pos.y"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 73
    return-void
.end method

.method public stop(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 77
    return-void
.end method

.method public unregisterCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    .registers 4
    .parameter "cb"

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->unregisterCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 119
    :goto_5
    return-void

    .line 115
    :catch_6
    move-exception v0

    .line 117
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public updatePosition(II)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 145
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v2, v3, v0, p1, p2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->updatePosition(ILandroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 152
    .end local v0           #cn:Landroid/content/ComponentName;
    :goto_14
    return-void

    .line 148
    :catch_15
    move-exception v1

    .line 150
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14
.end method
