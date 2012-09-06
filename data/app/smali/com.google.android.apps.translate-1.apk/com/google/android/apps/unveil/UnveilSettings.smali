.class public Lcom/google/android/apps/unveil/UnveilSettings;
.super Ljava/lang/Object;
.source "UnveilSettings.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SETTINGS_EXTRA:Ljava/lang/String; = "UnveilSettings"

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger; = null

.field private static final serialVersionUID:J = 0x2a93373162ae6c1cL


# instance fields
.field public final cameraProxy:Ljava/lang/String;

.field public final groundtruth:Z

.field public final latitude:Ljava/lang/Double;

.field public final longitude:Ljava/lang/Double;

.field public final previousVersion:I

.field public final useGLES2Overlay:Z

.field public final useLocalBarcode:Z

.field public final usePreviewFrame:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/UnveilSettings;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ZZZZ)V
    .registers 12
    .parameter "previousVersion"
    .parameter "cameraProxy"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "useGLES2Overlay"
    .parameter "useLocalBarcode"
    .parameter "usePreviewFrame"
    .parameter "groundtruth"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lcom/google/android/apps/unveil/UnveilSettings;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Creating launcher-based preferences."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iput p1, p0, Lcom/google/android/apps/unveil/UnveilSettings;->previousVersion:I

    .line 75
    iput-object p2, p0, Lcom/google/android/apps/unveil/UnveilSettings;->cameraProxy:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/google/android/apps/unveil/UnveilSettings;->latitude:Ljava/lang/Double;

    .line 77
    iput-object p4, p0, Lcom/google/android/apps/unveil/UnveilSettings;->longitude:Ljava/lang/Double;

    .line 78
    iput-boolean p5, p0, Lcom/google/android/apps/unveil/UnveilSettings;->useGLES2Overlay:Z

    .line 79
    iput-boolean p6, p0, Lcom/google/android/apps/unveil/UnveilSettings;->useLocalBarcode:Z

    .line 80
    iput-boolean p7, p0, Lcom/google/android/apps/unveil/UnveilSettings;->usePreviewFrame:Z

    .line 81
    iput-boolean p8, p0, Lcom/google/android/apps/unveil/UnveilSettings;->groundtruth:Z

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroid/content/SharedPreferences;)V
    .registers 11
    .parameter "application"
    .parameter "preferences"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v2, Lcom/google/android/apps/unveil/UnveilSettings;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Creating default preferences."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    const/4 v1, 0x0

    .line 45
    .local v1, tempVersion:I
    :try_start_10
    sget v2, Lcom/google/android/apps/unveil/R$string;->previous_version_key:I

    invoke-virtual {p1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_1f} :catch_37

    move-result v1

    .line 51
    :goto_20
    iput v1, p0, Lcom/google/android/apps/unveil/UnveilSettings;->previousVersion:I

    .line 52
    const-class v2, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/unveil/UnveilSettings;->cameraProxy:Ljava/lang/String;

    .line 53
    iput-object v7, p0, Lcom/google/android/apps/unveil/UnveilSettings;->latitude:Ljava/lang/Double;

    .line 54
    iput-object v7, p0, Lcom/google/android/apps/unveil/UnveilSettings;->longitude:Ljava/lang/Double;

    .line 55
    iput-boolean v5, p0, Lcom/google/android/apps/unveil/UnveilSettings;->useGLES2Overlay:Z

    .line 56
    iput-boolean v6, p0, Lcom/google/android/apps/unveil/UnveilSettings;->useLocalBarcode:Z

    .line 57
    iput-boolean v6, p0, Lcom/google/android/apps/unveil/UnveilSettings;->usePreviewFrame:Z

    .line 58
    iput-boolean v5, p0, Lcom/google/android/apps/unveil/UnveilSettings;->groundtruth:Z

    .line 59
    return-void

    .line 47
    :catch_37
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/google/android/apps/unveil/UnveilSettings;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Invalid previous_version value in preferences."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20
.end method
