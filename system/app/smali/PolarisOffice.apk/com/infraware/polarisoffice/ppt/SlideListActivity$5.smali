.class Lcom/infraware/polarisoffice/ppt/SlideListActivity$5;
.super Ljava/lang/Object;
.source "SlideListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/ppt/SlideListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$5;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "arg0"
    .parameter "e"

    .prologue
    const/4 v5, 0x0

    .line 191
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 193
    .local v0, action:I
    packed-switch v0, :pswitch_data_26

    .line 202
    :cond_a
    :goto_a
    return v5

    .line 195
    :pswitch_b
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$5;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mAvailSelectItem:Z

    goto :goto_a

    .line 198
    :pswitch_11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_a

    .line 199
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$5;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    iput-boolean v5, v1, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mAvailSelectItem:Z

    goto :goto_a

    .line 193
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method
