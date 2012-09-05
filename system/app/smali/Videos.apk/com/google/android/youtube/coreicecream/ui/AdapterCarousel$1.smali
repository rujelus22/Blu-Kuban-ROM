.class Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$1;
.super Ljava/lang/Object;
.source "AdapterCarousel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->onWindowVisibilityChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$1;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    iput p2, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$1;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$1;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    iget v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$1;->val$visibility:I

    #calls: Landroid/view/SurfaceView;->onWindowVisibilityChanged(I)V
    invoke-static {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$001(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;I)V

    .line 365
    return-void
.end method
