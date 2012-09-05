.class final Lcom/google/android/youtube/app/honeycomb/phone/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/au;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/au;)V
    .registers 2
    .parameter

    .prologue
    .line 786
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/av;->a:Lcom/google/android/youtube/app/honeycomb/phone/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/av;->a:Lcom/google/android/youtube/app/honeycomb/phone/au;

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/au;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->f()V

    .line 789
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/av;->a:Lcom/google/android/youtube/app/honeycomb/phone/au;

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/au;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->c(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/p;->v()V

    .line 790
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/av;->a:Lcom/google/android/youtube/app/honeycomb/phone/au;

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/au;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->d()V

    .line 791
    return-void
.end method
