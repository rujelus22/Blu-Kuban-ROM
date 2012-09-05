.class final Lcom/google/android/youtube/app/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/h;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/h;)V
    .registers 3
    .parameter

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/ui/i;-><init>(Lcom/google/android/youtube/app/ui/h;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/ui/h;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/i;->a:Lcom/google/android/youtube/app/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 178
    const-string v0, "Error retrieving user thumbnail"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->a:Lcom/google/android/youtube/app/ui/h;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/h;->b(Lcom/google/android/youtube/app/ui/h;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 178
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/i;->a:Lcom/google/android/youtube/app/ui/h;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/h;->a(Lcom/google/android/youtube/app/ui/h;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
