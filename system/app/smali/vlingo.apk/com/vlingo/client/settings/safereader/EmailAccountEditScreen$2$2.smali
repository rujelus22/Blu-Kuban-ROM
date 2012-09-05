.class Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2$2;
.super Ljava/lang/Object;
.source "EmailAccountEditScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;


# direct methods
.method constructor <init>(Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2$2;->this$1:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2$2;->this$1:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;

    iget-object v0, v0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;

    iget-object v0, v0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->m_account:Lcom/vlingo/client/safereader/email/EmailAccount;

    iget v0, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->id:I

    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2$2;->this$1:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;

    iget-object v1, v1, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;

    invoke-static {v0, v1}, Lcom/vlingo/client/safereader/email/EmailAccountManager;->deleteAccount(ILandroid/content/Context;)V

    .line 61
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2$2;->this$1:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;

    iget-object v0, v0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;

    invoke-static {v0}, Lcom/vlingo/client/safereader/email/EmailAccountManager;->getEmailAccounts(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_21

    .line 63
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->setEMailReadbackEnabled(Z)V

    .line 65
    :cond_21
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2$2;->this$1:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;

    iget-object v0, v0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;

    invoke-virtual {v0}, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->finish()V

    .line 66
    return-void
.end method
