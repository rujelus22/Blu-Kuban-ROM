.class abstract Lcom/sec/ccl/csp/app/secretwallpaper/themeone/BaseConfigChooser;
.super Ljava/lang/Object;
.source "GLWallpaperService.java"

# interfaces
.implements Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ccl/csp/app/secretwallpaper/themeone/BaseConfigChooser$SimpleEGLConfigChooser;,
        Lcom/sec/ccl/csp/app/secretwallpaper/themeone/BaseConfigChooser$ComponentSizeChooser;
    }
.end annotation


# instance fields
.field protected mConfigSpec:[I


# direct methods
.method public constructor <init>([I)V
    .registers 2
    .parameter "configSpec"

    .prologue
    .line 921
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 922
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/BaseConfigChooser;->mConfigSpec:[I

    .line 923
    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 10
    .parameter "egl"
    .parameter "display"

    .prologue
    const/4 v4, 0x0

    .line 926
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 927
    .local v5, num_config:[I
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/BaseConfigChooser;->mConfigSpec:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 929
    aget v4, v5, v4

    .line 931
    .local v4, numConfigs:I
    if-gtz v4, :cond_18

    .line 932
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :cond_18
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 936
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/BaseConfigChooser;->mConfigSpec:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 937
    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    .line 938
    .local v6, config:Ljavax/microedition/khronos/egl/EGLConfig;
    if-nez v6, :cond_2f

    .line 939
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 941
    :cond_2f
    return-object v6
.end method

.method abstract chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
