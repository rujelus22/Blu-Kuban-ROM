.class final Lcom/google/android/youtube/app/ui/dk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/dh;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/dh;)V
    .registers 3
    .parameter

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/ui/dk;-><init>(Lcom/google/android/youtube/app/ui/dh;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/ui/dh;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dk;->a:Lcom/google/android/youtube/app/ui/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 319
    const-string v0, "Error retrieving user thumbnail"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dk;->a:Lcom/google/android/youtube/app/ui/dh;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dh;->e(Lcom/google/android/youtube/app/ui/dh;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 319
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dk;->a:Lcom/google/android/youtube/app/ui/dh;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dh;->f(Lcom/google/android/youtube/app/ui/dh;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
