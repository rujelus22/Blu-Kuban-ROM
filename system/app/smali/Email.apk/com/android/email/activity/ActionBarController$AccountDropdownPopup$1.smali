.class Lcom/android/email/activity/ActionBarController$AccountDropdownPopup$1;
.super Ljava/lang/Object;
.source "ActionBarController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;-><init>(Lcom/android/email/activity/ActionBarController;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;

.field final synthetic val$this$0:Lcom/android/email/activity/ActionBarController;


# direct methods
.method constructor <init>(Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;Lcom/android/email/activity/ActionBarController;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup$1;->this$1:Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;

    iput-object p2, p0, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup$1;->val$this$0:Lcom/android/email/activity/ActionBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup$1;->this$1:Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;

    iget-object v0, v0, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;->this$0:Lcom/android/email/activity/ActionBarController;

    #calls: Lcom/android/email/activity/ActionBarController;->onAccountSpinnerItemClicked(I)V
    invoke-static {v0, p3}, Lcom/android/email/activity/ActionBarController;->access$800(Lcom/android/email/activity/ActionBarController;I)V

    .line 559
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup$1;->this$1:Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;

    invoke-virtual {v0}, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;->dismiss()V

    .line 560
    return-void
.end method
