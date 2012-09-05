.class Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$1;
.super Ljava/lang/Object;
.source "FreeDrawSlideShowActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v1, 0x3

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mContentView:Lcom/infraware/office/baseframe/EvContentView;
    invoke-static {v0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->access$0(Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;)Lcom/infraware/office/baseframe/EvContentView;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 34
    .local v7, action:I
    packed-switch v7, :pswitch_data_44

    .line 52
    .end local v7           #action:I
    :cond_12
    :goto_12
    return v9

    .line 37
    .restart local v7       #action:I
    :pswitch_13
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    const/4 v6, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    .line 38
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mXTouchDownPos:I

    goto :goto_12

    .line 41
    :pswitch_26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v8, v0

    .line 42
    .local v8, x:I
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    iget v0, v0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mXTouchDownPos:I

    if-ge v0, v8, :cond_37

    .line 43
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    invoke-virtual {v0, v9}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->goToPage(I)V

    goto :goto_12

    .line 45
    :cond_37
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    iget v0, v0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mXTouchDownPos:I

    if-le v0, v8, :cond_12

    .line 46
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->goToPage(I)V

    goto :goto_12

    .line 34
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_13
        :pswitch_26
    .end packed-switch
.end method
