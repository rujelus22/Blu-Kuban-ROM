.class Lcom/cooliris/media/CropImage$5;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/cooliris/media/CropImage;)V
    .registers 2
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/cooliris/media/CropImage$5;->this$0:Lcom/cooliris/media/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/cooliris/media/CropImage$5;->this$0:Lcom/cooliris/media/CropImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/CropImage;->setResult(I)V

    .line 505
    iget-object v0, p0, Lcom/cooliris/media/CropImage$5;->this$0:Lcom/cooliris/media/CropImage;

    invoke-virtual {v0}, Lcom/cooliris/media/CropImage;->finish()V

    .line 506
    return-void
.end method
