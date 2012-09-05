.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;
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
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotoToLoad;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;)V
    .registers 3
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;)Ljava/util/Stack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    return-object v0
.end method


# virtual methods
.method public Clean(Landroid/widget/ImageView;)V
    .registers 4
    .parameter "image"

    .prologue
    .line 156
    const/4 v0, 0x0

    .local v0, j:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 157
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotoToLoad;

    iget-object v1, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_1b

    .line 158
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 160
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    :cond_1e
    return-void
.end method
