.class final Lcom/google/android/youtube/app/honeycomb/phone/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/a;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/a;)V
    .registers 2
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/d;->a:Lcom/google/android/youtube/app/honeycomb/phone/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/a;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/d;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/a;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 207
    const-string v0, "Error retrieving user thumbnail"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/d;->a:Lcom/google/android/youtube/app/honeycomb/phone/a;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/a;->a(Lcom/google/android/youtube/app/honeycomb/phone/a;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 207
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/d;->a:Lcom/google/android/youtube/app/honeycomb/phone/a;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/a;->c(Lcom/google/android/youtube/app/honeycomb/phone/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
