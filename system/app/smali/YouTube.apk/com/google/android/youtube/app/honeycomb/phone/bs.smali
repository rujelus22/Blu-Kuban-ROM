.class final Lcom/google/android/youtube/app/honeycomb/phone/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/bm;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/bm;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bs;->a:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 159
    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bs;->a:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->a(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Lcom/google/android/youtube/app/adapter/ay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/adapter/ay;->c(Landroid/net/Uri;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 159
    check-cast p1, Landroid/net/Uri;

    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bs;->a:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->a(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Lcom/google/android/youtube/app/adapter/ay;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/app/adapter/ay;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method
