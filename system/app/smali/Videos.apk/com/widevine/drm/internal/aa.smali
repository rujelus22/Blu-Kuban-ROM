.class public Lcom/widevine/drm/internal/aa;
.super Ljava/lang/Thread;


# instance fields
.field protected a:Lcom/widevine/drm/internal/ab;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/widevine/drm/internal/ab;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/widevine/drm/internal/aa;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/widevine/drm/internal/aa;->a:Lcom/widevine/drm/internal/ab;

    iput-object p1, p0, Lcom/widevine/drm/internal/aa;->a:Lcom/widevine/drm/internal/ab;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/widevine/drm/internal/aa;->b:I

    return-void
.end method

.method protected final a(Lcom/widevine/drmapi/android/WVEvent;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/widevine/drmapi/android/WVEvent;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/widevine/drm/internal/aa;->a:Lcom/widevine/drm/internal/ab;

    invoke-virtual {v0}, Lcom/widevine/drm/internal/ab;->d()Lcom/widevine/drmapi/android/WVEventListener;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2}, Lcom/widevine/drmapi/android/WVEventListener;->onEvent(Lcom/widevine/drmapi/android/WVEvent;Ljava/util/HashMap;)Lcom/widevine/drmapi/android/WVStatus;

    :cond_b
    iget-object v0, p0, Lcom/widevine/drm/internal/aa;->a:Lcom/widevine/drm/internal/ab;

    iget v1, p0, Lcom/widevine/drm/internal/aa;->b:I

    invoke-virtual {v0, v1}, Lcom/widevine/drm/internal/ab;->a(I)V

    return-void
.end method
