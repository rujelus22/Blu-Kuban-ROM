.class Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$1;
.super Ljava/lang/Object;
.source "WorkSpace.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->create()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$1;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 298
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 303
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 300
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$1;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->btn_cancel:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    goto :goto_7

    .line 298
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
