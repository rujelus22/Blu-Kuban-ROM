.class Lcom/android/mms/ui/ComposeMessageFragment$72;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtons(Ljava/lang/String;Z)I
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
    .line 8133
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$72;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 8135
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_a

    .line 8136
    sparse-switch p2, :sswitch_data_36

    .line 8152
    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_b
    return v1

    :sswitch_c
    move-object v0, p1

    .line 8138
    check-cast v0, Lcom/android/mms/ui/ToButton;

    .line 8139
    .local v0, toButton:Lcom/android/mms/ui/ToButton;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$72;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDeleteHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ToButton;->delete(Landroid/os/Handler;)V

    goto :goto_b

    .line 8143
    .end local v0           #toButton:Lcom/android/mms/ui/ToButton;
    :sswitch_19
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$72;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnPreToButton()V
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12000(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_b

    .line 8147
    :sswitch_1f
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$72;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnNextToButton()Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12100(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v2

    if-nez v2, :cond_b

    const/16 v2, 0x14

    if-ne p2, v2, :cond_b

    .line 8148
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$72;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto :goto_b

    .line 8136
    nop

    :sswitch_data_36
    .sparse-switch
        0x13 -> :sswitch_19
        0x14 -> :sswitch_1f
        0x15 -> :sswitch_19
        0x16 -> :sswitch_1f
        0x43 -> :sswitch_c
    .end sparse-switch
.end method
