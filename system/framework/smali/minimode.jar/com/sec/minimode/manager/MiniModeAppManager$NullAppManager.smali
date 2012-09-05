.class Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;
.super Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;
.source "MiniModeAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/minimode/manager/MiniModeAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NullAppManager"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/sec/minimode/manager/MiniModeAppManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 246
    const-class v0, Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManager;)V
    .registers 2
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;->this$0:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManager;Lcom/sec/minimode/manager/MiniModeAppManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;-><init>(Lcom/sec/minimode/manager/MiniModeAppManager;)V

    return-void
.end method


# virtual methods
.method public closeAll()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 269
    return-void
.end method

.method public closeOthers(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 273
    return-void
.end method

.method public getAllRunningMiniApps()Ljava/util/List;
    .registers 2
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
    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getInstanceState(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastPosition(I)Landroid/graphics/Rect;
    .registers 4
    .parameter "policyMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 291
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getMiniModeAppCallback(Landroid/content/ComponentName;)Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .registers 3
    .parameter "name"

    .prologue
    .line 340
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition(ILandroid/content/ComponentName;)Landroid/graphics/Rect;
    .registers 5
    .parameter "policyMode"
    .parameter "cn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 297
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public isOccupiedPosition(III)Z
    .registers 5
    .parameter "policyMode"
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public move(Landroid/content/ComponentName;II)V
    .registers 4
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 320
    return-void
.end method

.method public registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;I)V
    .registers 4
    .parameter "cb"
    .parameter "name"
    .parameter "policyMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 277
    return-void
.end method

.method public removePosition(ILandroid/content/ComponentName;)V
    .registers 3
    .parameter "policyMode"
    .parameter "cn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 309
    return-void
.end method

.method public requestFocus(Landroid/content/ComponentName;Z)V
    .registers 3
    .parameter "name"
    .parameter "hasFocus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    return-void
.end method

.method public setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .registers 3
    .parameter "name"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 325
    return-void
.end method

.method public setPosition(ILandroid/content/ComponentName;II)V
    .registers 5
    .parameter "policyMode"
    .parameter "cn"
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 286
    return-void
.end method

.method public start(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 250
    sget-boolean v0, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;->$assertionsDisabled:Z

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 251
    :cond_a
    return-void
.end method

.method public startWithPosition(Landroid/content/ComponentName;II)V
    .registers 5
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 255
    sget-boolean v0, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;->$assertionsDisabled:Z

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 256
    :cond_a
    return-void
.end method

.method public stop(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 260
    sget-boolean v0, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;->$assertionsDisabled:Z

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 261
    :cond_a
    return-void
.end method

.method public unregisterCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    .registers 2
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 281
    return-void
.end method

.method public updatePosition(ILandroid/content/ComponentName;II)V
    .registers 5
    .parameter "policyMode"
    .parameter "cn"
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 303
    return-void
.end method
