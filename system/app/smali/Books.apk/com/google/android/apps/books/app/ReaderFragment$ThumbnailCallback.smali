.class Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailCallback;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/common/ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 4154
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailCallback;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/app/ReaderFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4154
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailCallback;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "result"
    .parameter "exception"

    .prologue
    .line 4158
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailCallback;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$8500(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3a

    if-eqz p1, :cond_3a

    .line 4159
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailCallback;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$8500(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4160
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4161
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4162
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 4164
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailCallback;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$8500(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4166
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailCallback;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->updateAboutTheBookPopupSize()V
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$8600(Lcom/google/android/apps/books/app/ReaderFragment;)V

    .line 4168
    .end local v0           #iv:Landroid/widget/ImageView;
    :cond_3a
    return-void
.end method
