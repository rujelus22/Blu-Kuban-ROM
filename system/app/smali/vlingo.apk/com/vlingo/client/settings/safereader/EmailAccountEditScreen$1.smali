.class Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$1;
.super Ljava/lang/Object;
.source "EmailAccountEditScreen.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$1;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$1;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;

    iget-object v0, v0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->m_account:Lcom/vlingo/client/safereader/email/EmailAccount;

    iget v0, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->id:I

    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$1;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;

    invoke-static {v0, p2, v1}, Lcom/vlingo/client/safereader/email/EmailAccountManager;->setEnabled(IZLandroid/content/Context;)V

    .line 46
    return-void
.end method
