.class final Lcom/google/android/youtube/app/honeycomb/phone/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/a;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/a;)V
    .registers 3
    .parameter

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/c;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/a;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/a;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/c;->a:Lcom/google/android/youtube/app/honeycomb/phone/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 179
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 179
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/c;->a:Lcom/google/android/youtube/app/honeycomb/phone/a;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/a;->c(Lcom/google/android/youtube/app/honeycomb/phone/a;)Lcom/google/android/youtube/core/client/ad;

    move-result-object v1

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/android/youtube/core/async/GDataRequest;->b:Lcom/google/android/youtube/core/model/UserAuth;

    new-instance v3, Lcom/google/android/youtube/app/ui/bn;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/c;->a:Lcom/google/android/youtube/app/honeycomb/phone/a;

    iget-object v4, v4, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/c;->a:Lcom/google/android/youtube/app/honeycomb/phone/a;

    invoke-static {v5}, Lcom/google/android/youtube/app/honeycomb/phone/a;->a(Lcom/google/android/youtube/app/honeycomb/phone/a;)Lcom/google/android/youtube/core/client/af;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/c;->a:Lcom/google/android/youtube/app/honeycomb/phone/a;

    invoke-static {v6}, Lcom/google/android/youtube/app/honeycomb/phone/a;->b(Lcom/google/android/youtube/app/honeycomb/phone/a;)Lcom/google/android/youtube/app/ui/StackButton;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/youtube/app/ui/bn;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/app/ui/StackButton;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/youtube/core/client/ad;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    :cond_37
    return-void
.end method
