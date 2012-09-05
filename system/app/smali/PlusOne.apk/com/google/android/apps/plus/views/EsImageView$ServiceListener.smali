.class Lcom/google/android/apps/plus/views/EsImageView$ServiceListener;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "EsImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/EsImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/EsImageView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/views/EsImageView;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/apps/plus/views/EsImageView$ServiceListener;->this$0:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/views/EsImageView;Lcom/google/android/apps/plus/views/EsImageView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/EsImageView$ServiceListener;-><init>(Lcom/google/android/apps/plus/views/EsImageView;)V

    return-void
.end method


# virtual methods
.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5
    .parameter "url"
    .parameter "bitmap"
    .parameter "type"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView$ServiceListener;->this$0:Lcom/google/android/apps/plus/views/EsImageView;

    #getter for: Lcom/google/android/apps/plus/views/EsImageView;->mUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/EsImageView;->access$100(Lcom/google/android/apps/plus/views/EsImageView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView$ServiceListener;->this$0:Lcom/google/android/apps/plus/views/EsImageView;

    #getter for: Lcom/google/android/apps/plus/views/EsImageView;->mUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/EsImageView;->access$100(Lcom/google/android/apps/plus/views/EsImageView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView$ServiceListener;->this$0:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/EsImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    :cond_19
    return-void
.end method
