.class Lcom/cooliris/media/CropImage$7;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/CropImage;->setDiscardBtnListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/CropImage;

.field final synthetic val$discardButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/cooliris/media/CropImage;Landroid/widget/Button;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/cooliris/media/CropImage$7;->this$0:Lcom/cooliris/media/CropImage;

    iput-object p2, p0, Lcom/cooliris/media/CropImage$7;->val$discardButton:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 524
    if-eqz p2, :cond_b

    .line 525
    iget-object v0, p0, Lcom/cooliris/media/CropImage$7;->val$discardButton:Landroid/widget/Button;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 530
    :goto_a
    return-void

    .line 528
    :cond_b
    iget-object v0, p0, Lcom/cooliris/media/CropImage$7;->val$discardButton:Landroid/widget/Button;

    const v1, 0x7f02001a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_a
.end method
