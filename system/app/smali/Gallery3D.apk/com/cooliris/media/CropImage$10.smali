.class Lcom/cooliris/media/CropImage$10;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/CropImage;->setSaveBtnListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/CropImage;

.field final synthetic val$saveButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/cooliris/media/CropImage;Landroid/widget/Button;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/cooliris/media/CropImage$10;->this$0:Lcom/cooliris/media/CropImage;

    iput-object p2, p0, Lcom/cooliris/media/CropImage$10;->val$saveButton:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 559
    if-eqz p2, :cond_b

    .line 560
    iget-object v0, p0, Lcom/cooliris/media/CropImage$10;->val$saveButton:Landroid/widget/Button;

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 564
    :goto_a
    return-void

    .line 563
    :cond_b
    iget-object v0, p0, Lcom/cooliris/media/CropImage$10;->val$saveButton:Landroid/widget/Button;

    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_a
.end method
