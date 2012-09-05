.class final Lcom/google/android/youtube/core/player/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/DefaultControllerOverlay;)V
    .registers 2
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/youtube/core/player/o;->a:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/core/player/o;->a:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->i()V

    .line 175
    return-void
.end method
