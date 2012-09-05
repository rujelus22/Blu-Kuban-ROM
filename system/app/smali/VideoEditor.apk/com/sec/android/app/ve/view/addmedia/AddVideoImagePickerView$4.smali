.class Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$4;
.super Ljava/lang/Object;
.source "AddVideoImagePickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;
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
.field final synthetic this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$4;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 14
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
    const/4 v7, 0x0

    .line 578
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$4;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    #calls: Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getFileNameFromPosition(I)Ljava/lang/String;
    invoke-static {v4, p3}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->access$3(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;I)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, fileName:Ljava/lang/String;
    sget-object v4, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 580
    sget-object v4, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/ve/data/VideoThumb;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/data/VideoThumb;->getDuration()J

    move-result-wide v2

    .line 581
    .local v2, lDuration:J
    iget-object v4, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$4;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbDropView:Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;
    invoke-static {v4}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->access$0(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v1, v6}, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;->setMediaInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 584
    .end local v2           #lDuration:J
    :cond_32
    iget-object v4, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$4;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;
    invoke-static {v4}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->access$4(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)Lcom/sec/android/app/ve/view/DragLayer;

    move-result-object v4

    if-nez v4, :cond_53

    .line 586
    const-string v4, "DragLayer is null so polling again"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 587
    iget-object v5, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$4;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    iget-object v4, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$4;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getRootView()Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0b004f

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/ve/view/DragLayer;

    #setter for: Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;
    invoke-static {v5, v4}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->access$5(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;Lcom/sec/android/app/ve/view/DragLayer;)V

    .line 589
    :cond_53
    iget-object v4, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$4;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;
    invoke-static {v4}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->access$4(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)Lcom/sec/android/app/ve/view/DragLayer;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$4;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mDragListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->access$6(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/view/DragLayer;->setDragListener(Lcom/sec/android/app/ve/view/DragLayer$DragListener;)V

    .line 591
    iget-object v4, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$4;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;
    invoke-static {v4}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->access$4(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)Lcom/sec/android/app/ve/view/DragLayer;

    move-result-object v4

    const v5, 0x7f0b0129

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/view/DragLayer;->startDragging(Landroid/view/View;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_72} :catch_73

    .line 598
    .end local v1           #fileName:Ljava/lang/String;
    :goto_72
    return v7

    .line 595
    :catch_73
    move-exception v0

    .line 596
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_72
.end method
