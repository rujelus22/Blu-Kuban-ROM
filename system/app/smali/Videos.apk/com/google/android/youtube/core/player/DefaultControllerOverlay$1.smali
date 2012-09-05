.class Lcom/google/android/youtube/core/player/DefaultControllerOverlay$1;
.super Ljava/lang/Object;
.source "DefaultControllerOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/DefaultControllerOverlay;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/DefaultControllerOverlay;)V
    .registers 2
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$1;->this$0:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$1;->this$0:Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->startHiding()V

    .line 175
    return-void
.end method
