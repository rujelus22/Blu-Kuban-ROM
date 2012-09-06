.class Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$1;
.super Ljava/lang/Object;
.source "AndroidClickToCallHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->showClickToCallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

.field final synthetic val$connectButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;Landroid/widget/Button;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$1;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$1;->val$connectButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 131
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 128
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$1;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$1;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$1;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    iget-object v2, v2, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->destinationNumberTextView:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->getDestinationNumber(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->destinationNumber:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$1;->val$connectButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$1;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->destinationNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    :goto_1f
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    return-void

    .line 124
    :cond_23
    const/4 v0, 0x0

    goto :goto_1f
.end method
