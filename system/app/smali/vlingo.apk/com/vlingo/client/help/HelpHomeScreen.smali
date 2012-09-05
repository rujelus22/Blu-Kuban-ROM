.class public Lcom/vlingo/client/help/HelpHomeScreen;
.super Lcom/vlingo/client/ui/SimpleIconListScreen;
.source "HelpHomeScreen.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/vlingo/client/ui/SimpleIconListScreen;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/SimpleIconListScreen;->onCreate(Landroid/os/Bundle;)V

    .line 19
    return-void
.end method

.method protected onInitListItems()V
    .registers 5

    .prologue
    .line 23
    const v0, 0x7f09028c

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/HelpHomeScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902a5

    invoke-virtual {p0, v1}, Lcom/vlingo/client/help/HelpHomeScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200a9

    const-class v3, Lcom/vlingo/client/help/InCarScreen;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vlingo/client/help/HelpHomeScreen;->addListItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    .line 24
    const v0, 0x7f090291

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/HelpHomeScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902aa

    invoke-virtual {p0, v1}, Lcom/vlingo/client/help/HelpHomeScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200af

    const-class v3, Lcom/vlingo/client/settings/SettingsScreen;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vlingo/client/help/HelpHomeScreen;->addListItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    .line 25
    const v0, 0x7f090292

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/HelpHomeScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902ab

    invoke-virtual {p0, v1}, Lcom/vlingo/client/help/HelpHomeScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200ac

    const-class v3, Lcom/vlingo/client/help/AboutScreen;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vlingo/client/help/HelpHomeScreen;->addListItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    .line 26
    return-void
.end method
