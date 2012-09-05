.class public final Lcom/widevine/drm/internal/ad;
.super Ljava/lang/Exception;


# instance fields
.field a:Lcom/widevine/drmapi/android/WVStatus;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/widevine/drm/internal/ad;->a:Lcom/widevine/drmapi/android/WVStatus;

    iput-object p2, p0, Lcom/widevine/drm/internal/ad;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/widevine/drmapi/android/WVStatus;
    .registers 2

    iget-object v0, p0, Lcom/widevine/drm/internal/ad;->a:Lcom/widevine/drmapi/android/WVStatus;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/widevine/drm/internal/ad;->b:Ljava/lang/String;

    return-object v0
.end method
