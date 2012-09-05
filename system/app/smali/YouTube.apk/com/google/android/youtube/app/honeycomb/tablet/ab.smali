.class final Lcom/google/android/youtube/app/honeycomb/tablet/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/aa;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/aa;)V
    .registers 3
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ab;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/aa;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/aa;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->a:Lcom/google/android/youtube/app/honeycomb/tablet/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 78
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->a:Lcom/google/android/youtube/app/honeycomb/tablet/aa;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/aa;->a(Lcom/google/android/youtube/app/honeycomb/tablet/aa;)Lcom/google/android/youtube/app/a/l;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/a/l;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 78
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;->a:Lcom/google/android/youtube/app/honeycomb/tablet/aa;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/aa;->a(Lcom/google/android/youtube/app/honeycomb/tablet/aa;)Lcom/google/android/youtube/app/a/l;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/youtube/app/a/l;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method
