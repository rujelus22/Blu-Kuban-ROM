.class public final Lcom/yamaha/android/media/MediaYamahaManager;
.super Ljava/lang/Object;
.source "MediaYamahaManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaYamahaManager"

.field private static m2MicOn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yamaha/android/media/MediaYamahaManager;->m2MicOn:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static create()Lcom/yamaha/android/media/MediaYamahaManager;
    .registers 6

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 47
    .local v1, manager:Lcom/yamaha/android/media/MediaYamahaManager;
    :try_start_1
    new-instance v2, Lcom/yamaha/android/media/MediaYamahaManager;

    invoke-direct {v2}, Lcom/yamaha/android/media/MediaYamahaManager;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    .end local v1           #manager:Lcom/yamaha/android/media/MediaYamahaManager;
    .local v2, manager:Lcom/yamaha/android/media/MediaYamahaManager;
    move-object v1, v2

    .line 52
    .end local v2           #manager:Lcom/yamaha/android/media/MediaYamahaManager;
    .restart local v1       #manager:Lcom/yamaha/android/media/MediaYamahaManager;
    :goto_7
    return-object v1

    .line 48
    :catch_8
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MediaYamahaManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method


# virtual methods
.method public release()V
    .registers 1

    .prologue
    .line 61
    return-void
.end method

.method public set2MicOn(Z)V
    .registers 3
    .parameter "on"

    .prologue
    .line 64
    if-eqz p1, :cond_e

    sget-boolean v0, Lcom/yamaha/android/media/MediaYamahaManager;->m2MicOn:Z

    if-nez v0, :cond_e

    .line 66
    const-string v0, "dualmic_enabled=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 72
    :cond_b
    :goto_b
    sput-boolean p1, Lcom/yamaha/android/media/MediaYamahaManager;->m2MicOn:Z

    .line 73
    return-void

    .line 68
    :cond_e
    if-nez p1, :cond_b

    sget-boolean v0, Lcom/yamaha/android/media/MediaYamahaManager;->m2MicOn:Z

    if-eqz v0, :cond_b

    .line 70
    const-string v0, "dualmic_enabled=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_b
.end method
