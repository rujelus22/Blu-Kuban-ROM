.class Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity$3;
.super Ljava/lang/Object;
.source "AddAccountActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 71
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity$3;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 74
    const/4 v0, 0x6

    if-ne p2, v0, :cond_14

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity$3;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->rightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity$3;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->rightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 79
    :cond_14
    const/4 v0, 0x0

    return v0
.end method
