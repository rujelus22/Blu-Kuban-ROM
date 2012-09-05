.class public Lcom/samsung/wimax/napid/Wimax_CFG;
.super Landroid/app/ListActivity;
.source "Wimax_CFG.java"


# instance fields
.field TAG:Ljava/lang/String;

.field mOptionItems:[Ljava/lang/String;

.field private mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field napIdArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 20
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/wimax/napid/Wimax_CFG;->napIdArray:[Ljava/lang/String;

    .line 21
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NAP-ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MRU"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "REALM"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ACTIVATED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EAP NODE NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EAP METHOD TYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EXTENSIONS"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/wimax/napid/Wimax_CFG;->mOptionItems:[Ljava/lang/String;

    .line 22
    const-string v0, "MAINLIST"

    iput-object v0, p0, Lcom/samsung/wimax/napid/Wimax_CFG;->TAG:Ljava/lang/String;

    return-void
.end method

.method private CheckWimaxOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 57
    iget-object v1, p0, Lcom/samsung/wimax/napid/Wimax_CFG;->TAG:Ljava/lang/String;

    const-string v2, "CheckWimaxOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v1, p0, Lcom/samsung/wimax/napid/Wimax_CFG;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 60
    iget-object v1, p0, Lcom/samsung/wimax/napid/Wimax_CFG;->TAG:Ljava/lang/String;

    const-string v2, "WiMAX modem is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_17
    return v0

    .line 64
    :cond_18
    const-string v1, "WiMAX modem is OFF, Please turn on WiMAX in Settings!"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 65
    iget-object v0, p0, Lcom/samsung/wimax/napid/Wimax_CFG;->TAG:Ljava/lang/String;

    const-string v1, "WiMAX modem is OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wimax/napid/Wimax_CFG;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 34
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/Wimax_CFG;->setContentView(I)V

    .line 35
    invoke-direct {p0}, Lcom/samsung/wimax/napid/Wimax_CFG;->CheckWimaxOn()Z

    .line 36
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/samsung/wimax/napid/Wimax_CFG;->mOptionItems:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/Wimax_CFG;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/Wimax_CFG;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 40
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 14
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 73
    if-nez p3, :cond_10

    .line 75
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v5, napidIntent:Landroid/content/Intent;
    const-class v7, Lcom/samsung/wimax/napid/NAPIDActivity;

    invoke-virtual {v5, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v5}, Lcom/samsung/wimax/napid/Wimax_CFG;->startActivity(Landroid/content/Intent;)V

    .line 129
    .end local v5           #napidIntent:Landroid/content/Intent;
    :cond_f
    :goto_f
    return-void

    .line 80
    :cond_10
    const/4 v7, 0x1

    if-ne p3, v7, :cond_21

    .line 82
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v4, mruIntent:Landroid/content/Intent;
    const-class v7, Lcom/samsung/wimax/napid/MruActivity;

    invoke-virtual {v4, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v4}, Lcom/samsung/wimax/napid/Wimax_CFG;->startActivity(Landroid/content/Intent;)V

    goto :goto_f

    .line 87
    .end local v4           #mruIntent:Landroid/content/Intent;
    :cond_21
    const/4 v7, 0x2

    if-ne p3, v7, :cond_32

    .line 89
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v6, rmIntent:Landroid/content/Intent;
    const-class v7, Lcom/samsung/wimax/napid/RealmActivity;

    invoke-virtual {v6, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v6}, Lcom/samsung/wimax/napid/Wimax_CFG;->startActivity(Landroid/content/Intent;)V

    goto :goto_f

    .line 95
    .end local v6           #rmIntent:Landroid/content/Intent;
    :cond_32
    const/4 v7, 0x3

    if-ne p3, v7, :cond_43

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, actIntent:Landroid/content/Intent;
    const-class v7, Lcom/samsung/wimax/napid/Activated;

    invoke-virtual {v0, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/Wimax_CFG;->startActivity(Landroid/content/Intent;)V

    goto :goto_f

    .line 102
    .end local v0           #actIntent:Landroid/content/Intent;
    :cond_43
    const/4 v7, 0x4

    if-ne p3, v7, :cond_54

    .line 104
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v1, eapNameIntent:Landroid/content/Intent;
    const-class v7, Lcom/samsung/wimax/napid/EapNodeName;

    invoke-virtual {v1, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v1}, Lcom/samsung/wimax/napid/Wimax_CFG;->startActivity(Landroid/content/Intent;)V

    goto :goto_f

    .line 109
    .end local v1           #eapNameIntent:Landroid/content/Intent;
    :cond_54
    const/4 v7, 0x5

    if-ne p3, v7, :cond_65

    .line 111
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v2, eapTypeIntent:Landroid/content/Intent;
    const-class v7, Lcom/samsung/wimax/napid/EapMethodType;

    invoke-virtual {v2, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v2}, Lcom/samsung/wimax/napid/Wimax_CFG;->startActivity(Landroid/content/Intent;)V

    goto :goto_f

    .line 122
    .end local v2           #eapTypeIntent:Landroid/content/Intent;
    :cond_65
    const/4 v7, 0x6

    if-ne p3, v7, :cond_f

    .line 124
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v3, extIntent:Landroid/content/Intent;
    const-class v7, Lcom/samsung/wimax/napid/Extensions;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v3}, Lcom/samsung/wimax/napid/Wimax_CFG;->startActivity(Landroid/content/Intent;)V

    goto :goto_f
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 53
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 46
    return-void
.end method
