.class final Lcom/google/android/youtube/app/honeycomb/phone/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/p;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/aw;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;

    iput p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/aw;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 88
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/aw;->a:I

    if-ne p1, v0, :cond_18

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/aw;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->n()Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "RemoveWatchLater"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/aw;->b:Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;

    invoke-static {v0, p2}, Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;Lcom/google/android/youtube/core/model/Video;)V

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method
