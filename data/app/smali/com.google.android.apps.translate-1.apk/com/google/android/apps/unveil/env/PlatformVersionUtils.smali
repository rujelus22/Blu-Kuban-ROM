.class public Lcom/google/android/apps/unveil/env/PlatformVersionUtils;
.super Ljava/lang/Object;
.source "PlatformVersionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;
    }
.end annotation


# static fields
.field private static Camera_setPreviewTexture:Ljava/lang/reflect/Method; = null

.field public static final FOCUS_MODE_CONTINUOUS_PICTURE:Ljava/lang/String; = "continuous-picture"

.field public static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field public static final ICE_CREAM_SANDWICH:I = 0xe

.field private static TextureViewClass:Ljava/lang/Class;

.field private static TextureView_getSurfaceTexture:Ljava/lang/reflect/Method;

.field private static isInitialized:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Method;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/android/apps/unveil/env/PlatformVersionUtils;->TextureView_getSurfaceTexture:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 17
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/unveil/env/PlatformVersionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized initialize()V
    .registers 8

    .prologue
    .line 83
    const-class v3, Lcom/google/android/apps/unveil/env/PlatformVersionUtils;

    monitor-enter v3

    :try_start_3
    sget-boolean v2, Lcom/google/android/apps/unveil/env/PlatformVersionUtils;->isInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_34

    if-eqz v2, :cond_9

    .line 105
    .local v0, TextureViewClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_7
    monitor-exit v3

    return-void

    .line 89
    .end local v0           #TextureViewClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_9
    :try_start_9
    const-class v2, Landroid/hardware/Camera;

    const-string v4, "setPreviewTexture"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-string v7, "android.graphics.SurfaceTexture"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/unveil/env/PlatformVersionUtils;->Camera_setPreviewTexture:Ljava/lang/reflect/Method;

    .line 92
    const-string v2, "android.view.TextureView"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 93
    .restart local v0       #TextureViewClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v2, "getSurfaceTexture"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/unveil/env/PlatformVersionUtils;->TextureView_getSurfaceTexture:Ljava/lang/reflect/Method;
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_30} :catch_37
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_30} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_30} :catch_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_30} :catch_46

    .line 104
    :goto_30
    const/4 v2, 0x1

    :try_start_31
    sput-boolean v2, Lcom/google/android/apps/unveil/env/PlatformVersionUtils;->isInitialized:Z
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_34

    goto :goto_7

    .line 83
    :catchall_34
    move-exception v2

    monitor-exit v3

    throw v2

    .line 94
    :catch_37
    move-exception v1

    .line 95
    .local v1, e:Ljava/lang/NoSuchMethodException;
    :try_start_38
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_30

    .line 96
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_3c
    move-exception v1

    .line 97
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_30

    .line 98
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_41
    move-exception v1

    .line 99
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_30

    .line 100
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_46
    move-exception v1

    .line 101
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_34

    goto :goto_30
.end method

.method private static varargs invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "method"
    .parameter "target"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 108
    if-nez p0, :cond_4

    .line 122
    :goto_3
    return-object v1

    .line 113
    :cond_4
    :try_start_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_7} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_7} :catch_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_7} :catch_13

    move-result-object v1

    goto :goto_3

    .line 114
    :catch_9
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 116
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_e
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    .line 118
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_13
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_3
.end method

.method public static setPreviewTexture(Landroid/hardware/Camera;Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;)V
    .registers 6
    .parameter "camera"
    .parameter "textureView"

    .prologue
    .line 132
    invoke-static {}, Lcom/google/android/apps/unveil/env/PlatformVersionUtils;->initialize()V

    .line 133
    sget-object v0, Lcom/google/android/apps/unveil/env/PlatformVersionUtils;->Camera_setPreviewTexture:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;->getSurfaceTexture()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/google/android/apps/unveil/env/PlatformVersionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method
