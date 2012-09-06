.class Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "ActionBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ActionBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountDropdownPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/ActionBarController;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/ActionBarController;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;->this$0:Lcom/android/email/activity/ActionBarController;

    .line 552
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 553
    #getter for: Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;
    invoke-static {p1}, Lcom/android/email/activity/ActionBarController;->access$700(Lcom/android/email/activity/ActionBarController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 554
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;->setModal(Z)V

    .line 555
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;->setPromptPosition(I)V

    .line 556
    new-instance v0, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup$1;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup$1;-><init>(Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;Lcom/android/email/activity/ActionBarController;)V

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 562
    return-void
.end method


# virtual methods
.method public show()V
    .registers 3

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;->this$0:Lcom/android/email/activity/ActionBarController;

    #getter for: Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/activity/ActionBarController;->access$300(Lcom/android/email/activity/ActionBarController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;->setWidth(I)V

    .line 568
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;->setInputMethodMode(I)V

    .line 569
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 571
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 572
    return-void
.end method
