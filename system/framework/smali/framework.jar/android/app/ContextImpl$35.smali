.class final Landroid/app/ContextImpl$35;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 480
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 15
    .parameter "ctx"

    .prologue
    const/4 v9, 0x0

    .line 483
    const/4 v7, 0x0

    .line 487
    .local v7, wimaxManagerClass:Ljava/lang/Class;
    const-string v8, "android.net.fourG.wimax.Wimax4GManager"

    .line 488
    .local v8, wimaxManagerClassName:Ljava/lang/String;
    const-string v5, "/system/framework/wimax.jar"

    .line 489
    .local v5, wimaxJarLocation:Ljava/lang/String;
    const-string v6, "/system/lib/libSECmWiMAXcAPI.so"

    .line 490
    .local v6, wimaxLibLocation:Ljava/lang/String;
    const-string v10, "ApplicationContext"

    const-string/jumbo v11, "register WIMAX SERVICE"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :try_start_10
    new-instance v4, Ldalvik/system/DexClassLoader;

    new-instance v10, Landroid/content/ContextWrapper;

    invoke-direct {v10, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-direct {v4, v5, v10, v6, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_26} :catch_5b

    .line 499
    .local v4, wimaxClassLoader:Ldalvik/system/DexClassLoader;
    :try_start_26
    invoke-virtual {v4, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_29} :catch_3d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_29} :catch_5b

    move-result-object v7

    .line 509
    const-string v10, "WiMax"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 511
    .local v0, b:Landroid/os/IBinder;
    :try_start_30
    const-string v10, "getInstance"

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 512
    .local v3, getInstMethod:Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    invoke-virtual {v3, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_3b} :catch_64

    move-result-object v9

    .line 516
    .end local v0           #b:Landroid/os/IBinder;
    .end local v3           #getInstMethod:Ljava/lang/reflect/Method;
    .end local v4           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    :goto_3c
    return-object v9

    .line 501
    .restart local v4       #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    :catch_3d
    move-exception v2

    .line 502
    .local v2, ex:Ljava/lang/ClassNotFoundException;
    :try_start_3e
    const-string v10, "ApplicationContext"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception finding Wimax classes: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3e .. :try_end_5a} :catch_5b

    goto :goto_3c

    .line 505
    .end local v2           #ex:Ljava/lang/ClassNotFoundException;
    .end local v4           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    :catch_5b
    move-exception v2

    .line 506
    .local v2, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v10, "ApplicationContext"

    const-string v11, "Wimax Resources does not exist!!! "

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 514
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v4       #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    :catch_64
    move-exception v1

    .line 515
    .local v1, e:Ljava/lang/Throwable;
    const-string v10, "ApplicationContext"

    const-string/jumbo v11, "register WIMAX SERVICE failed"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method
