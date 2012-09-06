.class Lcom/android/email/activity/ActionBarController$1;
.super Ljava/lang/Object;
.source "ActionBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/ActionBarController;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;Landroid/app/ActionBar;Lcom/android/email/activity/ActionBarController$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/ActionBarController;


# direct methods
.method constructor <init>(Lcom/android/email/activity/ActionBarController;)V
    .registers 2
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/email/activity/ActionBarController$1;->this$0:Lcom/android/email/activity/ActionBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$1;->this$0:Lcom/android/email/activity/ActionBarController;

    #getter for: Lcom/android/email/activity/ActionBarController;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;
    invoke-static {v0}, Lcom/android/email/activity/ActionBarController;->access$000(Lcom/android/email/activity/ActionBarController;)Lcom/android/email/activity/AccountSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/AccountSelectorAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_15

    .line 234
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$1;->this$0:Lcom/android/email/activity/ActionBarController;

    #getter for: Lcom/android/email/activity/ActionBarController;->mAccountDropdown:Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;
    invoke-static {v0}, Lcom/android/email/activity/ActionBarController;->access$100(Lcom/android/email/activity/ActionBarController;)Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;->show()V

    .line 236
    :cond_15
    return-void
.end method
