.class final Lcom/google/android/youtube/app/honeycomb/phone/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/bz;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/bz;)V
    .registers 2
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ca;->a:Lcom/google/android/youtube/app/honeycomb/phone/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ca;->a:Lcom/google/android/youtube/app/honeycomb/phone/bz;

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/bz;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->c(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/app/ui/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ca;->a:Lcom/google/android/youtube/app/honeycomb/phone/bz;

    iget-object v1, v1, Lcom/google/android/youtube/app/honeycomb/phone/bz;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/app/remote/at;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/bd;->a(Lcom/google/android/youtube/app/remote/RemoteControl;)V

    .line 590
    return-void
.end method
