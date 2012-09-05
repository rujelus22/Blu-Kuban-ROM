.class final Lcom/google/android/youtube/app/ui/di;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/model/Branding;

.field final synthetic b:Lcom/google/android/youtube/app/ui/dh;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/dh;Lcom/google/android/youtube/core/model/Branding;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/di;->b:Lcom/google/android/youtube/app/ui/dh;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/di;->a:Lcom/google/android/youtube/core/model/Branding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 250
    check-cast p1, Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t retrieve branding image from [uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 250
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/di;->b:Lcom/google/android/youtube/app/ui/dh;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dh;->a(Lcom/google/android/youtube/app/ui/dh;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/di;->b:Lcom/google/android/youtube/app/ui/dh;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dh;->a(Lcom/google/android/youtube/app/ui/dh;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/di;->b:Lcom/google/android/youtube/app/ui/dh;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dh;->a(Lcom/google/android/youtube/app/ui/dh;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/app/ui/dj;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/dj;-><init>(Lcom/google/android/youtube/app/ui/di;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
