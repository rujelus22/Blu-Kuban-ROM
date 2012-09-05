.class Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry$1;
.super Ljava/lang/Object;
.source "ScreenshotsActivity.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry$1;->this$1:Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .registers 4
    .parameter "bitmapContainer"

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_7

    .line 64
    :goto_6
    return-void

    .line 63
    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry$1;->this$1:Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;

    #calls: Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->setBitmap(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->access$100(Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;Landroid/graphics/Bitmap;)V

    goto :goto_6
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry$1;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
