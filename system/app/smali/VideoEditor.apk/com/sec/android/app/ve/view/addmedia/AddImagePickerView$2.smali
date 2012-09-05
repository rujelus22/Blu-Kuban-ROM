.class Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$2;
.super Ljava/lang/Object;
.source "AddImagePickerView.java"

# interfaces
.implements Lcom/sec/android/app/ve/view/DragLayer$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$2;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(FF)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$2;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mThumbDropView:Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$1(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;->onDragEnd(FF)V

    .line 176
    return-void
.end method

.method public onDragStart(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$2;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mThumbDropView:Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$1(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;->onDragStart(Landroid/view/View;)V

    .line 172
    return-void
.end method

.method public onDragging(FFLandroid/graphics/Paint;)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$2;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mThumbDropView:Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$1(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;->onDragging(FFLandroid/graphics/Paint;)V

    .line 167
    return-void
.end method
