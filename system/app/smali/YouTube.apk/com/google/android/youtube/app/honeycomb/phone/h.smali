.class final Lcom/google/android/youtube/app/honeycomb/phone/h;
.super Lcom/google/android/youtube/app/honeycomb/phone/f;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/e;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/e;)V
    .registers 3
    .parameter

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/h;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/e;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/e;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/h;->b:Lcom/google/android/youtube/app/honeycomb/phone/e;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/f;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/e;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/core/model/Page;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 213
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 214
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    .line 216
    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
