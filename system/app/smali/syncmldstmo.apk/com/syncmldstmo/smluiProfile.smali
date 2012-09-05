.class public Lcom/syncmldstmo/smluiProfile;
.super Landroid/app/TabActivity;
.source "smluiProfile.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# instance fields
.field private NetProfileIdx:I

.field private ProfileName:Ljava/lang/String;

.field private nActiveProfileIndex:I

.field private networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

.field private profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/syncmldstmo/smluiProfile;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 22
    iput-object v0, p0, Lcom/syncmldstmo/smluiProfile;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    .line 24
    iput-object v0, p0, Lcom/syncmldstmo/smluiProfile;->ProfileName:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/syncmldstmo/smluiProfile;->NetProfileIdx:I

    .line 26
    iput v1, p0, Lcom/syncmldstmo/smluiProfile;->nActiveProfileIndex:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    const v6, 0x7f06001f

    const v5, 0x7f06001e

    .line 30
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    iput v0, p0, Lcom/syncmldstmo/smluiProfile;->nActiveProfileIndex:I

    .line 34
    const/high16 v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nActiveProfileIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/syncmldstmo/smluiProfile;->nActiveProfileIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 36
    iget v0, p0, Lcom/syncmldstmo/smluiProfile;->nActiveProfileIndex:I

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDb;->smlSetActivedProfileIndex(I)V

    .line 38
    iget v0, p0, Lcom/syncmldstmo/smluiProfile;->nActiveProfileIndex:I

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDb;->smlGetProfileInfo(I)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smluiProfile;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 39
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetNetworkProfile()Lcom/syncmldstmo/database/smlDbNetworkProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smluiProfile;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    .line 41
    iget v0, p0, Lcom/syncmldstmo/smluiProfile;->nActiveProfileIndex:I

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDb;->smlGetProfileName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smluiProfile;->ProfileName:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetNetworkConnIndex()I

    move-result v0

    iput v0, p0, Lcom/syncmldstmo/smluiProfile;->NetProfileIdx:I

    .line 44
    invoke-virtual {p0}, Lcom/syncmldstmo/smluiProfile;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    .line 46
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    invoke-virtual {p0, v5}, Lcom/syncmldstmo/smluiProfile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/smluiProfile;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/syncmldstmo/smluiServer;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 51
    invoke-virtual {p0, v6}, Lcom/syncmldstmo/smluiProfile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/syncmldstmo/smluiProfile;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/syncmldstmo/smluiNetwork;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 54
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/16 v4, 0x72

    const/16 v3, 0x30

    const/4 v2, 0x0

    .line 58
    const/4 v0, 0x1

    const v1, 0x7f060003

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smluiProfile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 59
    const/4 v0, 0x2

    const v1, 0x7f06003b

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smluiProfile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 61
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 77
    :goto_7
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 69
    :pswitch_c
    invoke-virtual {p0}, Lcom/syncmldstmo/smluiProfile;->smlSetProfile()V

    .line 70
    invoke-virtual {p0}, Lcom/syncmldstmo/smluiProfile;->finish()V

    goto :goto_7

    .line 74
    :pswitch_13
    invoke-virtual {p0}, Lcom/syncmldstmo/smluiProfile;->finish()V

    goto :goto_7

    .line 66
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c
        :pswitch_13
    .end packed-switch
.end method

.method public smlSetProfile()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/syncmldstmo/smluiProfile;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iput v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->CredType:I

    .line 85
    sget-object v0, Lcom/syncmldstmo/smluiServer;->edProfileName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smluiProfile;->ProfileName:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    iget-object v1, p0, Lcom/syncmldstmo/smluiProfile;->ProfileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/syncmldstmo/database/smlDb;->smlSetProfileName(ILjava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/syncmldstmo/smluiProfile;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    sget-object v1, Lcom/syncmldstmo/smluiServer;->edSyncServer:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerUrl:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/syncmldstmo/smluiProfile;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    sget-object v1, Lcom/syncmldstmo/smluiServer;->edSyncServerID:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerID:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/syncmldstmo/smluiProfile;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    sget-object v1, Lcom/syncmldstmo/smluiServer;->edSyncServerPW:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerPS:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/syncmldstmo/smluiNetwork;->edNetworkName:Landroid/widget/EditText;

    if-eqz v0, :cond_5c

    .line 93
    iget-object v0, p0, Lcom/syncmldstmo/smluiProfile;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    iget v1, p0, Lcom/syncmldstmo/smluiProfile;->NetProfileIdx:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/syncmldstmo/smluiNetwork;->edNetworkName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->NetProfileName:Ljava/lang/String;

    .line 95
    :cond_5c
    sget-object v0, Lcom/syncmldstmo/smluiNetwork;->edNetworkAPN:Landroid/widget/EditText;

    if-eqz v0, :cond_74

    .line 96
    iget-object v0, p0, Lcom/syncmldstmo/smluiProfile;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    iget v1, p0, Lcom/syncmldstmo/smluiProfile;->NetProfileIdx:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/syncmldstmo/smluiNetwork;->edNetworkAPN:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->APN:Ljava/lang/String;

    .line 98
    :cond_74
    sget-object v0, Lcom/syncmldstmo/smluiNetwork;->edNetworkID:Landroid/widget/EditText;

    if-eqz v0, :cond_8c

    .line 99
    iget-object v0, p0, Lcom/syncmldstmo/smluiProfile;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    iget v1, p0, Lcom/syncmldstmo/smluiProfile;->NetProfileIdx:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/syncmldstmo/smluiNetwork;->edNetworkID:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnLoginID:Ljava/lang/String;

    .line 101
    :cond_8c
    sget-object v0, Lcom/syncmldstmo/smluiNetwork;->edNetworkPW:Landroid/widget/EditText;

    if-eqz v0, :cond_a4

    .line 102
    iget-object v0, p0, Lcom/syncmldstmo/smluiProfile;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    iget v1, p0, Lcom/syncmldstmo/smluiProfile;->NetProfileIdx:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/syncmldstmo/smluiNetwork;->edNetworkPW:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnPassword:Ljava/lang/String;

    .line 104
    :cond_a4
    sget-object v0, Lcom/syncmldstmo/smluiNetwork;->edProxyAddr:Landroid/widget/EditText;

    if-eqz v0, :cond_bc

    .line 105
    iget-object v0, p0, Lcom/syncmldstmo/smluiProfile;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    iget v1, p0, Lcom/syncmldstmo/smluiProfile;->NetProfileIdx:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/syncmldstmo/smluiNetwork;->edProxyAddr:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyAddress:Ljava/lang/String;

    .line 107
    :cond_bc
    sget-object v0, Lcom/syncmldstmo/smluiNetwork;->edPort:Landroid/widget/EditText;

    if-eqz v0, :cond_d4

    .line 108
    iget-object v0, p0, Lcom/syncmldstmo/smluiProfile;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    iget v1, p0, Lcom/syncmldstmo/smluiProfile;->NetProfileIdx:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/syncmldstmo/smluiNetwork;->edPort:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyPort:Ljava/lang/String;

    .line 110
    :cond_d4
    iget-object v0, p0, Lcom/syncmldstmo/smluiProfile;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDb;->smlSetNetworkProfile(Lcom/syncmldstmo/database/smlDbNetworkProfile;)V

    .line 111
    iget-object v0, p0, Lcom/syncmldstmo/smluiProfile;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/database/smlDb;->smlSetProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;I)V

    .line 113
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smluiProfile;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 114
    return-void
.end method
