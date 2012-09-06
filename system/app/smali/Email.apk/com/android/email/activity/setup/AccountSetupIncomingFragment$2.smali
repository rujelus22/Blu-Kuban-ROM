.class Lcom/android/email/activity/setup/AccountSetupIncomingFragment$2;
.super Ljava/lang/Object;
.source "AccountSetupIncomingFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    #calls: Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->validateFields()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->access$100(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V

    .line 170
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 172
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 173
    return-void
.end method
