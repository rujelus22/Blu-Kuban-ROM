.class Lcom/google/android/finsky/utils/BitmapLoader$2$2;
.super Ljava/lang/Object;
.source "BitmapLoader.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/BitmapLoader$2;->create()Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/utils/BitmapLoader$2;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/BitmapLoader$2;)V
    .registers 2
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader$2$2;->this$1:Lcom/google/android/finsky/utils/BitmapLoader$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$2$2;->this$1:Lcom/google/android/finsky/utils/BitmapLoader$2;

    iget-object v0, v0, Lcom/google/android/finsky/utils/BitmapLoader$2;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v1, p0, Lcom/google/android/finsky/utils/BitmapLoader$2$2;->this$1:Lcom/google/android/finsky/utils/BitmapLoader$2;

    iget-object v1, v1, Lcom/google/android/finsky/utils/BitmapLoader$2;->val$cacheKey:Ljava/lang/String;

    #calls: Lcom/google/android/finsky/utils/BitmapLoader;->onGetImageError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/BitmapLoader;->access$200(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;)V

    .line 298
    return-void
.end method
