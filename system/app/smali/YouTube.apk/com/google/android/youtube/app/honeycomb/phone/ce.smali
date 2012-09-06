.class final Lcom/google/android/youtube/app/honeycomb/phone/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

.field private final b:Landroid/content/Intent;

.field private final c:Lcom/google/android/youtube/core/model/UserAuth;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ce;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1155
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ce;->b:Landroid/content/Intent;

    .line 1156
    iput-object p3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ce;->c:Lcom/google/android/youtube/core/model/UserAuth;

    .line 1157
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ce;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ce;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ce;->c:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1149
    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    iget v0, p2, Lcom/google/android/youtube/core/model/Page;->elementsPerPage:I

    if-lez v0, :cond_2f

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_24
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ce;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ce;->c:Lcom/google/android/youtube/core/model/UserAuth;

    const/4 v5, 0x0

    move-object v4, v2

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;Lcom/google/android/youtube/core/model/UserAuth;Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;ILjava/lang/String;)V

    :goto_2e
    return-void

    :cond_2f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ce;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ce;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ce;->c:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;Landroid/content/Intent;Lcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_2e
.end method
