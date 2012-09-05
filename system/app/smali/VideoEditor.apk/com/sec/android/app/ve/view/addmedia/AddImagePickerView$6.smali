.class Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$6;
.super Ljava/lang/Object;
.source "AddImagePickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$6;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 12
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 629
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$6;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    #calls: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->getFileNameFromPosition(I)Ljava/lang/String;
    invoke-static {v2, p3}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$6(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;I)Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, fileName:Ljava/lang/String;
    sget-object v2, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_28

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " **** There is no Bitmap for fileName -->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "so returning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 651
    .end local v1           #fileName:Ljava/lang/String;
    :goto_27
    return v5

    .line 636
    .restart local v1       #fileName:Ljava/lang/String;
    :cond_28
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$6;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mThumbDropView:Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$1(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;->setMediaInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$6;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$7(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Lcom/sec/android/app/ve/view/DragLayer;

    move-result-object v2

    if-nez v2, :cond_54

    .line 640
    const-string v2, "DragLayer is null so polling again"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 641
    iget-object v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$6;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$6;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->getRootView()Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0b004f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/ve/view/DragLayer;

    #setter for: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;
    invoke-static {v3, v2}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$8(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;Lcom/sec/android/app/ve/view/DragLayer;)V

    .line 643
    :cond_54
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$6;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$7(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Lcom/sec/android/app/ve/view/DragLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$6;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mDragListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$9(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/view/DragLayer;->setDragListener(Lcom/sec/android/app/ve/view/DragLayer$DragListener;)V

    .line 645
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$6;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$7(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Lcom/sec/android/app/ve/view/DragLayer;

    move-result-object v2

    const v3, 0x7f0b0046

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/view/DragLayer;->startDragging(Landroid/view/View;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_73} :catch_74

    goto :goto_27

    .line 648
    .end local v1           #fileName:Ljava/lang/String;
    :catch_74
    move-exception v0

    .line 649
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method
