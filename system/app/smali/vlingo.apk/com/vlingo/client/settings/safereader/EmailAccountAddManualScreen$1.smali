.class Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen$1;
.super Ljava/lang/Object;
.source "EmailAccountAddManualScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen$1;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen$1;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;

    iget-object v0, v0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_txtUsername:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen$1;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;

    iget-object v1, v1, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_txtEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen$1;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;

    invoke-virtual {v0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->updateNextButton()V

    .line 71
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 67
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 65
    return-void
.end method
