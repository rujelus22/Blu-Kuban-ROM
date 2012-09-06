.class LHL;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LHK;

.field final synthetic a:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(LHK;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, LHL;->a:LHK;

    iput-object p2, p0, LHL;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 462
    iget-object v0, p0, LHL;->a:LHK;

    iget-object v0, v0, LHK;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    iget-object v1, p0, LHL;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Lcom/google/android/apps/docs/fragment/PreviewFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 463
    iget-object v0, p0, LHL;->a:LHK;

    iget-object v0, v0, LHK;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Lcom/google/android/apps/docs/fragment/PreviewFragment;)Lcom/google/android/apps/docs/view/ThumbnailView;

    move-result-object v0

    iget-object v1, p0, LHL;->a:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/view/ThumbnailView;->setImage(Landroid/graphics/Bitmap;Z)V

    .line 464
    return-void
.end method
