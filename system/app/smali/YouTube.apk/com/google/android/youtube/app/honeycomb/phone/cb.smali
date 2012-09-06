.class final Lcom/google/android/youtube/app/honeycomb/phone/cb;
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
    .line 595
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/cb;->a:Lcom/google/android/youtube/app/honeycomb/phone/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/cb;->a:Lcom/google/android/youtube/app/honeycomb/phone/bz;

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/phone/bz;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->d(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    const v1, 0x7f0b021c

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/d;->a(I)V

    .line 598
    return-void
.end method
