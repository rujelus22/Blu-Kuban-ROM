.class Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks$2;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;)V
    .registers 2
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks$2;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks$2;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks$2;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->updateViews(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$100(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/view/View;)V

    .line 362
    return-void
.end method
