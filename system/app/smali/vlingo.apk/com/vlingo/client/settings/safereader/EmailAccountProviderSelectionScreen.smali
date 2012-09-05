.class public Lcom/vlingo/client/settings/safereader/EmailAccountProviderSelectionScreen;
.super Lcom/vlingo/client/ui/SimpleIconListScreen;
.source "EmailAccountProviderSelectionScreen.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/vlingo/client/ui/SimpleIconListScreen;-><init>()V

    return-void
.end method


# virtual methods
.method protected addListItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;I)V
    .registers 12
    .parameter "title"
    .parameter "description"
    .parameter "iconResource"
    .parameter
    .parameter "emailAccountType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p4, activityToStart:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-super/range {v0 .. v5}, Lcom/vlingo/client/ui/SimpleIconListScreen;->addListItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 18
    const v0, 0x7f03005a

    iput v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountProviderSelectionScreen;->m_listItemResource:I

    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vlingo/client/settings/safereader/EmailAccountProviderSelectionScreen;->setForwardToNextActivity(Z)V

    .line 20
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/SimpleIconListScreen;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const-string v0, "Email Accounts > Add Account"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/settings/safereader/EmailAccountProviderSelectionScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    return-void
.end method

.method protected onInitListItems()V
    .registers 7

    .prologue
    .line 26
    const-string v1, "Gmail"

    const-string v2, ""

    const v3, 0x7f020085

    const-class v4, Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/settings/safereader/EmailAccountProviderSelectionScreen;->addListItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;I)V

    .line 27
    const-string v1, "Windows Live Hotmail"

    const-string v2, ""

    const v3, 0x7f020086

    const-class v4, Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/settings/safereader/EmailAccountProviderSelectionScreen;->addListItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;I)V

    .line 28
    const-string v1, "Yahoo! Mail"

    const-string v2, ""

    const v3, 0x7f020088

    const-class v4, Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;

    const/4 v5, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/settings/safereader/EmailAccountProviderSelectionScreen;->addListItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;I)V

    .line 29
    const-string v1, "AOL or AIM Mail"

    const-string v2, ""

    const v3, 0x7f020084

    const-class v4, Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;

    const/4 v5, 0x3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/settings/safereader/EmailAccountProviderSelectionScreen;->addListItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;I)V

    .line 30
    const-string v0, "Other"

    const-string v1, "Any other IMAP or POP3 email"

    const v2, 0x7f020087

    const-class v3, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vlingo/client/settings/safereader/EmailAccountProviderSelectionScreen;->addListItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    .line 31
    return-void
.end method
