.class final Lcom/google/android/youtube/app/honeycomb/tablet/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/coreicecream/ui/i;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/ControllerOverlay;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/tablet/ah;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/ah;Lcom/google/android/youtube/core/player/ControllerOverlay;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ai;->b:Lcom/google/android/youtube/app/honeycomb/tablet/ah;

    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ai;->a:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ai;->a:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->b()V

    .line 303
    return-void
.end method
