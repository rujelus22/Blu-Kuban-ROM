.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;
.super Ljava/lang/Object;
.source "EvBaseEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 2626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 18
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$5(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2684
    :cond_c
    :goto_c
    return-void

    .line 2631
    :cond_d
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2632
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$5(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2633
    .local v14, widthString:Ljava/lang/String;
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$5(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2634
    .local v8, heightString:Ljava/lang/String;
    new-instance v7, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ConvertMmToPx(I)I
    invoke-static {v0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$11(Lcom/infraware/office/baseframe/EvBaseEditorActivity;I)I

    move-result v0

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ConvertMmToPx(I)I
    invoke-static {v1, v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$11(Lcom/infraware/office/baseframe/EvBaseEditorActivity;I)I

    move-result v1

    invoke-direct {v7, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 2635
    .local v7, frameSize:Landroid/graphics/Point;
    new-instance v9, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$6(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ConvertMmToPx(I)I
    invoke-static {v0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$11(Lcom/infraware/office/baseframe/EvBaseEditorActivity;I)I

    move-result v0

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;
    invoke-static {v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$6(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ConvertMmToPx(I)I
    invoke-static {v1, v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$11(Lcom/infraware/office/baseframe/EvBaseEditorActivity;I)I

    move-result v1

    invoke-direct {v9, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 2636
    .local v9, imageSize:Landroid/graphics/Point;
    const/4 v2, 0x0

    .line 2638
    .local v2, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/infraware/office/evengine/EvInterface;->IGetImageMaxSize(I)I

    move-result v1

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ConvertMmToPx(I)I
    invoke-static {v0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$11(Lcom/infraware/office/baseframe/EvBaseEditorActivity;I)I

    move-result v10

    .line 2639
    .local v10, nImageMaxSize:I
    iget v0, v9, Landroid/graphics/Point;->x:I

    if-gt v0, v10, :cond_e3

    iget v0, v9, Landroid/graphics/Point;->y:I

    if-gt v0, v10, :cond_e3

    .line 2640
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeFileName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2642
    if-eqz v2, :cond_ae

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_ae

    .line 2643
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 2644
    .local v13, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2645
    move-object v2, v13

    .line 2673
    .end local v13           #resizeBitmap:Landroid/graphics/Bitmap;
    :cond_ae
    :goto_ae
    if-nez v2, :cond_17a

    .line 2674
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0801e0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2680
    :goto_cb
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mbDeleteResizeFile:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2681
    new-instance v6, Ljava/io/File;

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeFileName:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2682
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto/16 :goto_c

    .line 2649
    .end local v6           #file:Ljava/io/File;
    :cond_e3
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2650
    .local v12, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x0

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2651
    iget v0, v9, Landroid/graphics/Point;->x:I

    iget v1, v9, Landroid/graphics/Point;->y:I

    if-lt v0, v1, :cond_148

    .line 2652
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget v1, v9, Landroid/graphics/Point;->x:I

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getSampleSize(I)I
    invoke-static {v0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$12(Lcom/infraware/office/baseframe/EvBaseEditorActivity;I)I

    move-result v0

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2653
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/infraware/office/evengine/EvInterface;->IGetImageMaxSize(I)I

    move-result v1

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ConvertMmToPx(I)I
    invoke-static {v0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$11(Lcom/infraware/office/baseframe/EvBaseEditorActivity;I)I

    move-result v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v4, v4, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/infraware/office/evengine/EvInterface;->IGetImageMaxSize(I)I

    move-result v4

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ConvertMmToPx(I)I
    invoke-static {v3, v4}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$11(Lcom/infraware/office/baseframe/EvBaseEditorActivity;I)I

    move-result v3

    mul-int/2addr v1, v3

    iget v3, v9, Landroid/graphics/Point;->x:I

    div-int/2addr v1, v3

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2660
    :goto_122
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeFileName:Ljava/lang/String;

    invoke-static {v0, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2661
    if-eqz v2, :cond_ae

    .line 2662
    iget v0, v9, Landroid/graphics/Point;->x:I

    iget v1, v9, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 2663
    .local v11, newBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2664
    move-object v2, v11

    .line 2665
    if-eqz v2, :cond_ae

    .line 2666
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 2667
    .restart local v13       #resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2668
    move-object v2, v13

    goto/16 :goto_ae

    .line 2656
    .end local v11           #newBitmap:Landroid/graphics/Bitmap;
    .end local v13           #resizeBitmap:Landroid/graphics/Bitmap;
    :cond_148
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget v1, v9, Landroid/graphics/Point;->y:I

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getSampleSize(I)I
    invoke-static {v0, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$12(Lcom/infraware/office/baseframe/EvBaseEditorActivity;I)I

    move-result v0

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2657
    iget v0, v9, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v3, v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/infraware/office/evengine/EvInterface;->IGetImageMaxSize(I)I

    move-result v3

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ConvertMmToPx(I)I
    invoke-static {v1, v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$11(Lcom/infraware/office/baseframe/EvBaseEditorActivity;I)I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, v9, Landroid/graphics/Point;->y:I

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v3, v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/infraware/office/evengine/EvInterface;->IGetImageMaxSize(I)I

    move-result v3

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ConvertMmToPx(I)I
    invoke-static {v1, v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$11(Lcom/infraware/office/baseframe/EvBaseEditorActivity;I)I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_122

    .line 2677
    .end local v12           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_17a
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$19;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x0

    iget v3, v7, Landroid/graphics/Point;->x:I

    iget v4, v7, Landroid/graphics/Point;->y:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->IImageInsert(Ljava/lang/String;Landroid/graphics/Bitmap;III)V

    .line 2678
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_cb
.end method
