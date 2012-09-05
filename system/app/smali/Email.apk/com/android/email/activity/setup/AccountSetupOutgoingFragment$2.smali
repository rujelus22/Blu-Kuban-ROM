.class Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$2;
.super Ljava/lang/Object;
.source "AccountSetupOutgoingFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    #calls: Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->access$200(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V

    .line 201
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 204
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 207
    return-void
.end method
