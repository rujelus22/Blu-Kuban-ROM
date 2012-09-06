.class final Lcom/google/android/youtube/app/ui/eq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/model/Branding;

.field final synthetic b:Lcom/google/android/youtube/app/ui/ep;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/ep;Lcom/google/android/youtube/core/model/Branding;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/eq;->b:Lcom/google/android/youtube/app/ui/ep;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/eq;->a:Lcom/google/android/youtube/core/model/Branding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 295
    check-cast p1, Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t retrieve branding image from [uri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 295
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eq;->b:Lcom/google/android/youtube/app/ui/ep;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ep;->a(Lcom/google/android/youtube/app/ui/ep;)Lcom/google/android/youtube/app/ui/FixedAspectRatioFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eq;->b:Lcom/google/android/youtube/app/ui/ep;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ep;->a(Lcom/google/android/youtube/app/ui/ep;)Lcom/google/android/youtube/app/ui/FixedAspectRatioFrameLayout;

    move-result-object v0

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/FixedAspectRatioFrameLayout;->setAspectRatio(F)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eq;->b:Lcom/google/android/youtube/app/ui/ep;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ep;->a(Lcom/google/android/youtube/app/ui/ep;)Lcom/google/android/youtube/app/ui/FixedAspectRatioFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/ui/FixedAspectRatioFrameLayout;->setVisibility(I)V

    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eq;->b:Lcom/google/android/youtube/app/ui/ep;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ep;->b(Lcom/google/android/youtube/app/ui/ep;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eq;->b:Lcom/google/android/youtube/app/ui/ep;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ep;->b(Lcom/google/android/youtube/app/ui/ep;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eq;->a:Lcom/google/android/youtube/core/model/Branding;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Branding;->bannerTargetUri:Landroid/net/Uri;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eq;->b:Lcom/google/android/youtube/app/ui/ep;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ep;->b(Lcom/google/android/youtube/app/ui/ep;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/app/ui/er;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/er;-><init>(Lcom/google/android/youtube/app/ui/eq;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_45
    return-void
.end method
