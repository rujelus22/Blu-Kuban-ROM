.class Lcom/infraware/polarisoffice/common/FillBordersActivity$3;
.super Ljava/lang/Object;
.source "FillBordersActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/FillBordersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/FillBordersActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$3;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "v"
    .parameter "event"

    .prologue
    .line 316
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 317
    .local v0, act:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 318
    .local v1, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 320
    .local v2, y:F
    packed-switch v0, :pswitch_data_2c

    .line 328
    const/4 v3, 0x0

    :goto_10
    return v3

    .line 322
    :pswitch_11
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$3;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v3}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v3

    float-to-int v4, v1

    float-to-int v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/infraware/polarisoffice/common/FillBorderView;->checkPressRect(II)V

    .line 323
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$3;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;
    invoke-static {v3}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/FillBorderView;->invalidate()V

    .line 324
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$3;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->checkButtonState()V

    .line 325
    const/4 v3, 0x1

    goto :goto_10

    .line 320
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_11
    .end packed-switch
.end method
