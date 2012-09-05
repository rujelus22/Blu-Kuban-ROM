.class Lcom/android/calendar/ImageLoader$PhotosQueue;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotosQueue"
.end annotation


# instance fields
.field private photosToLoad:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/calendar/ImageLoader$PhotoToLoad;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/calendar/ImageLoader;


# direct methods
.method constructor <init>(Lcom/android/calendar/ImageLoader;)V
    .registers 3
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/calendar/ImageLoader$PhotosQueue;->this$0:Lcom/android/calendar/ImageLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 438
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/ImageLoader$PhotosQueue;)Ljava/util/Stack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/calendar/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    return-object v0
.end method


# virtual methods
.method public Clean(Landroid/widget/ImageView;)V
    .registers 4
    .parameter "image"

    .prologue
    .line 450
    const/4 v0, 0x0

    .local v0, j:I
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 453
    iget-object v1, p0, Lcom/android/calendar/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/ImageLoader$PhotoToLoad;

    iget-object v1, v1, Lcom/android/calendar/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_1b

    .line 456
    iget-object v1, p0, Lcom/android/calendar/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 462
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 468
    :cond_1e
    return-void
.end method
