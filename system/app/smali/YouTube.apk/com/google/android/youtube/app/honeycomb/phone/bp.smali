.class final Lcom/google/android/youtube/app/honeycomb/phone/bp;
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
    .line 107
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bp;->a:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 107
    const-string v0, "Error downloading hq thumbnail"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 107
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bp;->a:Lcom/google/android/youtube/app/honeycomb/phone/bm;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bm;->d(Lcom/google/android/youtube/app/honeycomb/phone/bm;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
