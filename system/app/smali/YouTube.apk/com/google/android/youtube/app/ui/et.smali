.class final Lcom/google/android/youtube/app/ui/et;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/ep;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/ep;)V
    .registers 2
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/et;->a:Lcom/google/android/youtube/app/ui/ep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/ep;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/et;-><init>(Lcom/google/android/youtube/app/ui/ep;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 396
    const-string v0, "Error retrieving user thumbnail"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/et;->a:Lcom/google/android/youtube/app/ui/ep;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ep;->h(Lcom/google/android/youtube/app/ui/ep;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 396
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/et;->a:Lcom/google/android/youtube/app/ui/ep;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ep;->i(Lcom/google/android/youtube/app/ui/ep;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
