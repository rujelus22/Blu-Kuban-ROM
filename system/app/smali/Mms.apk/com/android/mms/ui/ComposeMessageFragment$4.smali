.class Lcom/android/mms/ui/ComposeMessageFragment$4;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$4;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 720
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 721
    packed-switch p2, :pswitch_data_12

    .line 728
    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 723
    :pswitch_b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$4;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->requestFocusOnConverationList()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1100(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 725
    :pswitch_10
    const/4 v0, 0x1

    goto :goto_a

    .line 721
    :pswitch_data_12
    .packed-switch 0x15
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method
