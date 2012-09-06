.class Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity$1;
.super Ljava/lang/Object;
.source "AddAccountActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->onBaseCreateCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity$1;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity$1;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->setSignInUsername(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 50
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 48
    return-void
.end method
