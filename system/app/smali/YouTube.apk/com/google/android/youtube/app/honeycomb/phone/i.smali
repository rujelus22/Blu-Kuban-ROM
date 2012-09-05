.class final Lcom/google/android/youtube/app/honeycomb/phone/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/e;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/e;)V
    .registers 3
    .parameter

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/i;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/e;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/e;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/i;->a:Lcom/google/android/youtube/app/honeycomb/phone/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 235
    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/i;->a:Lcom/google/android/youtube/app/honeycomb/phone/e;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/e;->b(Lcom/google/android/youtube/app/honeycomb/phone/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Category;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/i;->a:Lcom/google/android/youtube/app/honeycomb/phone/e;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/phone/e;->e(Lcom/google/android/youtube/app/honeycomb/phone/e;)Lcom/google/android/youtube/app/honeycomb/ui/a;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/app/honeycomb/ui/a;->a(Ljava/lang/String;)V

    goto :goto_12

    :cond_2a
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 235
    check-cast p1, Landroid/net/Uri;

    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/i;->a:Lcom/google/android/youtube/app/honeycomb/phone/e;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/e;->b(Lcom/google/android/youtube/app/honeycomb/phone/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Category;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/i;->a:Lcom/google/android/youtube/app/honeycomb/phone/e;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/phone/e;->e(Lcom/google/android/youtube/app/honeycomb/phone/e;)Lcom/google/android/youtube/app/honeycomb/ui/a;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    invoke-virtual {v2, v0, p2}, Lcom/google/android/youtube/app/honeycomb/ui/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_14

    :cond_2c
    return-void
.end method
