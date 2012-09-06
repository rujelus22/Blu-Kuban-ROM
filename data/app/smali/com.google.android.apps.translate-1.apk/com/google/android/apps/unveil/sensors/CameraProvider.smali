.class Lcom/google/android/apps/unveil/sensors/CameraProvider;
.super Ljava/lang/Object;
.source "CameraProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;
    }
.end annotation


# static fields
.field private static final cameraAcquisitionLock:Ljava/lang/Object;

.field private static currentCamera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

.field private static currentCameraOwner:Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private static releasedCameras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final providerOwner:Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;

.field private uiThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->cameraAcquisitionLock:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->releasedCameras:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;)V
    .registers 3
    .parameter "executor"
    .parameter "listener"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->executor:Ljava/util/concurrent/Executor;

    .line 55
    iput-object p2, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->providerOwner:Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;

    .line 56
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->cameraAcquisitionLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/sensors/CameraProvider;Ljava/lang/String;Ljava/util/Map;Landroid/content/res/Resources;)Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/unveil/sensors/CameraProvider;->connectCameraBlocking(Ljava/lang/String;Ljava/util/Map;Landroid/content/res/Resources;)Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/sensors/CameraProvider;)Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->providerOwner:Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/unveil/sensors/CameraProvider;Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/sensors/CameraProvider;->releaseCameraBlocking(Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;)V

    return-void
.end method

.method private connectCameraBlocking(Ljava/lang/String;Ljava/util/Map;Landroid/content/res/Resources;)Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;
    .registers 9
    .parameter "className"
    .parameter
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            ")",
            "Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;"
        }
    .end annotation

    .prologue
    .local p2, extraParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 130
    sget-object v1, Lcom/google/android/apps/unveil/sensors/CameraProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "connectCameraBlocking"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    sget-object v1, Lcom/google/android/apps/unveil/sensors/CameraProvider;->currentCamera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-eqz v1, :cond_24

    .line 133
    sget-object v1, Lcom/google/android/apps/unveil/sensors/CameraProvider;->currentCameraOwner:Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;

    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->providerOwner:Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;

    if-eq v1, v2, :cond_3b

    .line 134
    sget-object v1, Lcom/google/android/apps/unveil/sensors/CameraProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Already acquired a camera for somebody else!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    sget-object v1, Lcom/google/android/apps/unveil/sensors/CameraProvider;->currentCameraOwner:Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;

    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraProvider;->currentCamera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/unveil/sensors/CameraProvider;->releaseCameraBlocking(Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;)V

    .line 143
    :cond_24
    :try_start_24
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/unveil/sensors/CameraProvider;->openCamera(Ljava/lang/String;Ljava/util/Map;Landroid/content/res/Resources;)Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/unveil/sensors/CameraProvider;->currentCamera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    .line 144
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->providerOwner:Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;

    sput-object v1, Lcom/google/android/apps/unveil/sensors/CameraProvider;->currentCameraOwner:Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;

    .line 146
    sget-object v1, Lcom/google/android/apps/unveil/sensors/CameraProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Acquired camera for the first time!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    sget-object v1, Lcom/google/android/apps/unveil/sensors/CameraProvider;->currentCamera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_3a} :catch_47

    .line 149
    :goto_3a
    return-object v1

    .line 137
    :cond_3b
    sget-object v1, Lcom/google/android/apps/unveil/sensors/CameraProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "This object already owns a connected camera!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    sget-object v1, Lcom/google/android/apps/unveil/sensors/CameraProvider;->currentCamera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    goto :goto_3a

    .line 148
    :catch_47
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    goto :goto_3a
.end method

.method private openCamera(Ljava/lang/String;Ljava/util/Map;Landroid/content/res/Resources;)Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;
    .registers 16
    .parameter "className"
    .parameter
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            ")",
            "Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, extraParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "com.google.android.apps.unveil.sensors.proxies.camera."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, cameraClassName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 189
    .local v2, cameraClass:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;>;"
    :try_start_14
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_17} :catch_57

    move-result-object v2

    .line 194
    :goto_18
    sget-object v8, Lcom/google/android/apps/unveil/sensors/CameraProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v9, "Connecting to %s with params \'%s\'"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    if-eqz v2, :cond_8c

    .line 197
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 198
    .local v0, allMethods:[Ljava/lang/reflect/Method;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/reflect/Method;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_31
    if-ge v5, v6, :cond_8c

    aget-object v7, v1, v5

    .line 199
    .local v7, method:Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "open"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 201
    const/4 v8, 0x0

    const/4 v9, 0x3

    :try_start_43
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->uiThreadHandler:Landroid/os/Handler;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;
    :try_end_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_43 .. :try_end_56} :catch_66
    .catch Ljava/lang/IllegalAccessException; {:try_start_43 .. :try_end_56} :catch_74
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_43 .. :try_end_56} :catch_80

    return-object v8

    .line 190
    .end local v0           #allMethods:[Ljava/lang/reflect/Method;
    .end local v1           #arr$:[Ljava/lang/reflect/Method;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #method:Ljava/lang/reflect/Method;
    :catch_57
    move-exception v4

    .line 191
    .local v4, e:Ljava/lang/ClassNotFoundException;
    sget-object v8, Lcom/google/android/apps/unveil/sensors/CameraProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v9, "Error getting camera proxy class for: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-virtual {v8, v4, v9, v10}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18

    .line 202
    .end local v4           #e:Ljava/lang/ClassNotFoundException;
    .restart local v0       #allMethods:[Ljava/lang/reflect/Method;
    .restart local v1       #arr$:[Ljava/lang/reflect/Method;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #method:Ljava/lang/reflect/Method;
    :catch_66
    move-exception v4

    .line 203
    .local v4, e:Ljava/lang/IllegalArgumentException;
    sget-object v8, Lcom/google/android/apps/unveil/sensors/CameraProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v9, "Error opening camera proxy!"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v4, v9, v10}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :cond_71
    :goto_71
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 204
    :catch_74
    move-exception v4

    .line 205
    .local v4, e:Ljava/lang/IllegalAccessException;
    sget-object v8, Lcom/google/android/apps/unveil/sensors/CameraProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v9, "Error opening camera proxy!"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v4, v9, v10}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_71

    .line 206
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    :catch_80
    move-exception v4

    .line 207
    .local v4, e:Ljava/lang/reflect/InvocationTargetException;
    sget-object v8, Lcom/google/android/apps/unveil/sensors/CameraProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v9, "Error opening camera proxy!"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v4, v9, v10}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_71

    .line 213
    .end local v0           #allMethods:[Ljava/lang/reflect/Method;
    .end local v1           #arr$:[Ljava/lang/reflect/Method;
    .end local v4           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_8c
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Error opening camera proxy!"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private releaseCameraBlocking(Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;)V
    .registers 11
    .parameter "oldOwner"
    .parameter "oldCamera"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 154
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "releaseCameraBlocking"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    if-nez p2, :cond_1f

    .line 157
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Asked to release null camera!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Null camera!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_1f
    const-string v2, "%h"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, cameraKey:Ljava/lang/String;
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraProvider;->releasedCameras:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 164
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Already released this camera!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_42
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraProvider;->releasedCameras:Ljava/util/Map;

    invoke-interface {v2, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v2, "%h"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, ownerKey:Ljava/lang/String;
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Releasing Camera %s owned by CameraManager %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-interface {p2}, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;->release()V

    .line 173
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraProvider;->currentCamera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-ne v2, p2, :cond_73

    .line 174
    sput-object v7, Lcom/google/android/apps/unveil/sensors/CameraProvider;->currentCamera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    .line 175
    sput-object v7, Lcom/google/android/apps/unveil/sensors/CameraProvider;->currentCameraOwner:Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;

    .line 179
    :goto_72
    return-void

    .line 177
    :cond_73
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Asked to release non-current camera!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_72
.end method


# virtual methods
.method public declared-synchronized acquireCamera(Ljava/lang/String;Ljava/util/Map;Landroid/content/res/Resources;)V
    .registers 7
    .parameter "className"
    .parameter
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, extraParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "acquireCamera"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_20

    .line 72
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "CameraProvider.acquireCamera() not called from main thread!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1d

    .line 69
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 75
    :cond_20
    :try_start_20
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->currentCamera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-eqz v0, :cond_3c

    .line 76
    sget-object v1, Lcom/google/android/apps/unveil/sensors/CameraProvider;->cameraAcquisitionLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_1d

    .line 80
    :try_start_27
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->currentCamera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->providerOwner:Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;

    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraProvider;->currentCameraOwner:Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;

    if-ne v0, v2, :cond_3b

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->providerOwner:Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;

    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraProvider;->currentCamera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    invoke-interface {v0, v2}, Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;->onCameraAcquired(Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;)V

    .line 82
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_54

    .line 110
    :goto_39
    monitor-exit p0

    return-void

    .line 84
    :cond_3b
    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_54

    .line 89
    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->uiThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_47

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->uiThreadHandler:Landroid/os/Handler;

    .line 93
    :cond_47
    new-instance v0, Lcom/google/android/apps/unveil/sensors/CameraProvider$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/apps/unveil/sensors/CameraProvider$1;-><init>(Lcom/google/android/apps/unveil/sensors/CameraProvider;Ljava/lang/String;Ljava/util/Map;Landroid/content/res/Resources;)V

    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->uiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/sensors/CameraProvider$1;->execute(Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    :try_end_53
    .catchall {:try_start_3c .. :try_end_53} :catchall_1d

    goto :goto_39

    .line 84
    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    :try_start_56
    throw v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_1d
.end method

.method public declared-synchronized releaseCamera(Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;)V
    .registers 7
    .parameter "camera"

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "releaseCamera: %h"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/unveil/sensors/CameraProvider$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/unveil/sensors/CameraProvider$2;-><init>(Lcom/google/android/apps/unveil/sensors/CameraProvider;Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 126
    monitor-exit p0

    return-void

    .line 116
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method
