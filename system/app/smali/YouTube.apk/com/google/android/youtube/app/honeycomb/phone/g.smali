.class final Lcom/google/android/youtube/app/honeycomb/phone/g;
.super Lcom/google/android/youtube/app/honeycomb/phone/f;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/e;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/e;)V
    .registers 3
    .parameter

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/g;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/e;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/e;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Lcom/google/android/youtube/app/honeycomb/phone/e;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/f;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/e;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/core/model/Page;)Landroid/net/Uri;
    .registers 5
    .parameter

    .prologue
    .line 225
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/LiveEvent;

    .line 226
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/LiveEvent;->isPlayable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 227
    iget-object v0, v0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    .line 230
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method
