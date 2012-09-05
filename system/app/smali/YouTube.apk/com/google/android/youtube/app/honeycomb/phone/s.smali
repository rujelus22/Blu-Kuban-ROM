.class final Lcom/google/android/youtube/app/honeycomb/phone/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/utils/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/s;->a:Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 73
    check-cast p1, Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v0, p1, Lcom/google/android/youtube/core/model/LiveEvent;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    sget-object v1, Lcom/google/android/youtube/core/model/LiveEvent$Status;->COMPLETED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    if-ne v0, v1, :cond_10

    iget-object v0, p1, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget v0, v0, Lcom/google/android/youtube/core/model/Video;->duration:I

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
