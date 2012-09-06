.class final Lcom/google/android/youtube/app/honeycomb/phone/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/cf;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/cf;)V
    .registers 2
    .parameter

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/cg;->a:Lcom/google/android/youtube/app/honeycomb/phone/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cg;->a:Lcom/google/android/youtube/app/honeycomb/phone/cf;

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/cf;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->g()V

    .line 1014
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cg;->a:Lcom/google/android/youtube/app/honeycomb/phone/cf;

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/cf;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->e(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/Director;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->x()V

    .line 1015
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cg;->a:Lcom/google/android/youtube/app/honeycomb/phone/cf;

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/cf;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->f(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->d()V

    .line 1016
    return-void
.end method
