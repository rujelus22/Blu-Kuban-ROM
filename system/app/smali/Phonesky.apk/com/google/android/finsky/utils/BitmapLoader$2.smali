.class Lcom/google/android/finsky/utils/BitmapLoader$2;
.super Ljava/lang/Object;
.source "BitmapLoader.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$RemoteRequestCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;ILandroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/BitmapLoader;

.field final synthetic val$assetId:Ljava/lang/String;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$imageUsageType:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader$2;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p2, p0, Lcom/google/android/finsky/utils/BitmapLoader$2;->val$assetId:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/finsky/utils/BitmapLoader$2;->val$imageUsageType:I

    iput-object p4, p0, Lcom/google/android/finsky/utils/BitmapLoader$2;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/android/volley/Request;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Lcom/google/android/vending/remoting/api/VendingImageRequest;

    iget-object v1, p0, Lcom/google/android/finsky/utils/BitmapLoader$2;->val$assetId:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/finsky/utils/BitmapLoader$2;->val$imageUsageType:I

    new-instance v3, Lcom/google/android/finsky/utils/BitmapLoader$2$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/utils/BitmapLoader$2$1;-><init>(Lcom/google/android/finsky/utils/BitmapLoader$2;)V

    new-instance v4, Lcom/google/android/finsky/utils/BitmapLoader$2$2;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/utils/BitmapLoader$2$2;-><init>(Lcom/google/android/finsky/utils/BitmapLoader$2;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/vending/remoting/api/VendingImageRequest;-><init>(Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-object v0
.end method
