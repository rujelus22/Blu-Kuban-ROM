.class Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;
.super Ljava/lang/Object;
.source "PreviewViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1092
    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_88

    .line 1093
    const/4 v1, 0x0

    .local v1, j:I
    :goto_25
    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_89

    .line 1129
    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_matrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$39(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1130
    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 1131
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dismissWaitProgress()V

    .line 1132
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "first time, second rect:::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1135
    .end local v1           #j:I
    :cond_88
    :goto_88
    return-void

    .line 1094
    .restart local v1       #j:I
    :cond_89
    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2d7

    .line 1095
    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_2d7

    .line 1096
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "E1ZL::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1097
    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1098
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "E2ZL::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1099
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "E-SEt matrix::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/app/video/editor/external/Element;->getMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1100
    const/16 v2, 0x9

    new-array v0, v2, [F

    .line 1102
    .local v0, array:[F
    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_matrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$39(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "E3ZL::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1105
    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_matrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$39(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "E4ZL::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1110
    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 1111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "E5ZL::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1116
    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v4

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->prev_rect:Landroid/graphics/RectF;
    invoke-static {v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$37(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1117
    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->init:Landroid/graphics/Matrix;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$40(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1118
    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rRight:F
    invoke-static {v2, v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$41(Lcom/sec/android/app/ve/view/PreviewViewGroup;F)V

    .line 1119
    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rBottom:F
    invoke-static {v2, v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$42(Lcom/sec/android/app/ve/view/PreviewViewGroup;F)V

    .line 1120
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Orig Rect::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1122
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Matrix of imageView:::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;->this$1:Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1124
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dismissWaitProgress()V

    goto/16 :goto_88

    .line 1093
    .end local v0           #array:[F
    :cond_2d7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_25
.end method