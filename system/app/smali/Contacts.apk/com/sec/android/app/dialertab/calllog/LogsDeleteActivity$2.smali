.class Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$2;
.super Ljava/lang/Object;
.source "LogsDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 152
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 153
    .local v0, action:I
    packed-switch v0, :pswitch_data_16

    move v1, v2

    .line 162
    :goto_a
    return v1

    .line 155
    :pswitch_b
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_a

    .line 158
    :pswitch_f
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_a

    .line 153
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
