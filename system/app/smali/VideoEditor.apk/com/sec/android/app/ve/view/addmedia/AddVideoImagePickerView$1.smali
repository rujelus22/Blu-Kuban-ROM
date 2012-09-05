.class Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$1;
.super Ljava/lang/Object;
.source "AddVideoImagePickerView.java"

# interfaces
.implements Lcom/sec/android/app/ve/view/DragLayer$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$1;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(FF)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$1;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbDropView:Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->access$0(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;->onDragEnd(FF)V

    .line 155
    return-void
.end method

.method public onDragStart(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$1;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbDropView:Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->access$0(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;->onDragStart(Landroid/view/View;)V

    .line 151
    return-void
.end method

.method public onDragging(FFLandroid/graphics/Paint;)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$1;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbDropView:Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->access$0(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;->onDragging(FFLandroid/graphics/Paint;)V

    .line 146
    return-void
.end method
