.class Lcom/android/calendar/EditEvent$37;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->createRepeatCustomizeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;

.field final synthetic val$mainView:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;Landroid/widget/LinearLayout;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1602
    iput-object p1, p0, Lcom/android/calendar/EditEvent$37;->this$0:Lcom/android/calendar/EditEvent;

    iput-object p2, p0, Lcom/android/calendar/EditEvent$37;->val$mainView:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1604
    iget-object v2, p0, Lcom/android/calendar/EditEvent$37;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v3, p0, Lcom/android/calendar/EditEvent$37;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$4600(Lcom/android/calendar/EditEvent;)Landroid/app/Dialog;

    move-result-object v3

    #calls: Lcom/android/calendar/EditEvent;->hideSoftInput(Landroid/app/Dialog;)V
    invoke-static {v2, v3}, Lcom/android/calendar/EditEvent;->access$4000(Lcom/android/calendar/EditEvent;Landroid/app/Dialog;)V

    .line 1606
    iget-object v2, p0, Lcom/android/calendar/EditEvent$37;->val$mainView:Landroid/widget/LinearLayout;

    const v3, 0x7f0f00c5

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1608
    .local v0, mEdit:Landroid/widget/EditText;
    const/16 v1, 0xa

    .line 1610
    .local v1, value:I
    :try_start_18
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_48

    move-result v1

    .line 1611
    if-gtz v1, :cond_28

    .line 1612
    const/16 v1, 0xa

    .line 1616
    :cond_28
    :goto_28
    iget-object v2, p0, Lcom/android/calendar/EditEvent$37;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mRepeatUntilDayButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$4700(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1618
    iget-object v2, p0, Lcom/android/calendar/EditEvent$37;->this$0:Lcom/android/calendar/EditEvent;

    #setter for: Lcom/android/calendar/EditEvent;->mUtillRepeatCount:I
    invoke-static {v2, v1}, Lcom/android/calendar/EditEvent;->access$4802(Lcom/android/calendar/EditEvent;I)I

    .line 1619
    iget-object v2, p0, Lcom/android/calendar/EditEvent$37;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v3, 0x0

    #setter for: Lcom/android/calendar/EditEvent;->mRepeatUntilDayDialog:Landroid/app/Dialog;
    invoke-static {v2, v3}, Lcom/android/calendar/EditEvent;->access$4602(Lcom/android/calendar/EditEvent;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1621
    iget-object v2, p0, Lcom/android/calendar/EditEvent$37;->this$0:Lcom/android/calendar/EditEvent;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/calendar/EditEvent;->removeDialog(I)V

    .line 1622
    return-void

    .line 1613
    :catch_48
    move-exception v2

    goto :goto_28
.end method
