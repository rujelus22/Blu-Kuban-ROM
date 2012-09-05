.class Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2$1;
.super Ljava/lang/Object;
.source "ThumbnailViewGroup.java"

# interfaces
.implements Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2$1;->this$1:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTargetView()Landroid/view/View;
    .registers 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2$1;->this$1:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;

    #getter for: Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;->this$0:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;->access$0(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;)Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public run(Ljava/lang/Object;)V
    .registers 7
    .parameter "obj"

    .prologue
    .line 624
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2$1;->this$1:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;

    #getter for: Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;->this$0:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;->access$0(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;)Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    #setter for: Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->imgData:Ljava/lang/Object;
    invoke-static {v1, p1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->access$0(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;Ljava/lang/Object;)V

    .line 625
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2$1;->this$1:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;

    #getter for: Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;->this$0:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;->access$0(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;)Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    #getter for: Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->imgData:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->access$1(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 626
    .local v0, data:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2$1;->this$1:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;

    #getter for: Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;->this$0:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;->access$0(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;)Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    #getter for: Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mImageDurationBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->access$2(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 627
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2$1;->this$1:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;

    #getter for: Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;->this$0:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;->access$0(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;)Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    #getter for: Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mImageDurationBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->access$2(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2$1;->this$1:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;

    #getter for: Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;->this$0:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;->access$0(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;)Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 628
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2$1;->this$1:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;

    #getter for: Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;->this$0:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;->access$0(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;)Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->saveImageDurationData(I)V

    .line 629
    return-void
.end method
