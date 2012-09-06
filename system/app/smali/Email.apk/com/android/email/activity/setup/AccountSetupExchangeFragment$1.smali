.class Lcom/android/email/activity/setup/AccountSetupExchangeFragment$1;
.super Ljava/lang/Object;
.source "AccountSetupExchangeFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupExchangeFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    #calls: Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->access$000(Lcom/android/email/activity/setup/AccountSetupExchangeFragment;)Z

    .line 122
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 124
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 125
    return-void
.end method
