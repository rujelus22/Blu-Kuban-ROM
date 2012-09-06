.class final Lcom/google/android/youtube/core/player/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/player/ar;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/Director;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/player/Director;)V
    .registers 2
    .parameter

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/google/android/youtube/core/player/aa;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/player/Director;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1209
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/aa;-><init>(Lcom/google/android/youtube/core/player/Director;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aa;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->g(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHasCc(Z)V

    .line 1213
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aa;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->g(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHasCc(Z)V

    .line 1217
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aa;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->g(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setCcEnabled(Z)V

    .line 1221
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aa;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->d(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/z;

    .line 1222
    return-void
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aa;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->g(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setCcEnabled(Z)V

    .line 1226
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aa;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->d(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/z;

    .line 1227
    return-void
.end method
