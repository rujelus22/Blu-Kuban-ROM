.class Lcom/google/android/apps/googlevoice/PhoneCallListActivity$5;
.super Ljava/lang/Object;
.source "PhoneCallListActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$5;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 458
    const/16 v0, 0x42

    if-ne p2, v0, :cond_42

    .line 459
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_26

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENTER down in number field, length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$5;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->numberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 462
    :cond_26
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$5;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->numberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result v0

    if-lez v0, :cond_40

    .line 463
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_39

    .line 464
    const-string v0, "Advancing to message field"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 466
    :cond_39
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$5;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 468
    :cond_40
    const/4 v0, 0x1

    .line 470
    :goto_41
    return v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method
