.class Lcom/cooliris/media/CropImage$12;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/CropImage;->initHomeScreenUI()V
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
    .line 618
    iput-object p1, p0, Lcom/cooliris/media/CropImage$12;->this$0:Lcom/cooliris/media/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    const v1, 0x7f08000a

    .line 620
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 630
    :goto_a
    const/4 v0, 0x0

    return v0

    .line 622
    :pswitch_c
    iget-object v0, p0, Lcom/cooliris/media/CropImage$12;->this$0:Lcom/cooliris/media/CropImage;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_a

    .line 626
    :pswitch_19
    iget-object v0, p0, Lcom/cooliris/media/CropImage$12;->this$0:Lcom/cooliris/media/CropImage;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_a

    .line 620
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_c
        :pswitch_19
    .end packed-switch
.end method
