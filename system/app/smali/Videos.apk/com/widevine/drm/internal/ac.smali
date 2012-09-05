.class public final Lcom/widevine/drm/internal/ac;
.super Lcom/widevine/drm/internal/aa;


# direct methods
.method public constructor <init>(Lcom/widevine/drm/internal/ab;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/widevine/drm/internal/aa;-><init>(Lcom/widevine/drm/internal/ab;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/widevine/drmapi/android/WVEvent;->Terminated:Lcom/widevine/drmapi/android/WVEvent;

    const-string v3, "WVStatusKey"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-eq v1, v3, :cond_1a

    const-string v0, "WVErrorKey"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/widevine/drmapi/android/WVEvent;->InitializeFailed:Lcom/widevine/drmapi/android/WVEvent;

    :cond_1a
    invoke-virtual {p0, v0, v2}, Lcom/widevine/drm/internal/ac;->a(Lcom/widevine/drmapi/android/WVEvent;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/widevine/drm/internal/ac;->a:Lcom/widevine/drm/internal/ab;

    invoke-virtual {v0}, Lcom/widevine/drm/internal/ab;->b()V

    return-void
.end method
