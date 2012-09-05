.class public Lcom/samsung/wimax/napid/MainList;
.super Landroid/app/ListActivity;
.source "MainList.java"


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

    iput-object v0, p0, Lcom/samsung/wimax/napid/MainList;->napIdArray:[Ljava/lang/String;

    .line 21
    const/4 v0, 0x6

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

    iput-object v0, p0, Lcom/samsung/wimax/napid/MainList;->mOptionItems:[Ljava/lang/String;

    .line 22
    const-string v0, "MAINLIST"

    iput-object v0, p0, Lcom/samsung/wimax/napid/MainList;->TAG:Ljava/lang/String;

    return-void
.end method

.method private CheckWimaxOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 43
    iget-object v1, p0, Lcom/samsung/wimax/napid/MainList;->TAG:Ljava/lang/String;

    const-string v2, "CheckWimaxOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v1, p0, Lcom/samsung/wimax/napid/MainList;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 46
    iget-object v1, p0, Lcom/samsung/wimax/napid/MainList;->TAG:Ljava/lang/String;

    const-string v2, "WiMAX modem is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_17
    return v0

    .line 50
    :cond_18
    const-string v1, "WiMAX modem is OFF or VI, Please turn on WiMAX in Settings!"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 51
    iget-object v0, p0, Lcom/samsung/wimax/napid/MainList;->TAG:Ljava/lang/String;

    const-string v1, "WiMAX modem is OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
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

    iput-object v0, p0, Lcom/samsung/wimax/napid/MainList;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 33
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/MainList;->setContentView(I)V

    .line 34
    invoke-direct {p0}, Lcom/samsung/wimax/napid/MainList;->CheckWimaxOn()Z

    .line 35
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/samsung/wimax/napid/MainList;->mOptionItems:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/MainList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/MainList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 39
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 59
    if-nez p3, :cond_f

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v0, napidIntent:Landroid/content/Intent;
    const-class v2, Lcom/samsung/wimax/napid/NAPIDActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/MainList;->startActivity(Landroid/content/Intent;)V

    .line 66
    .end local v0           #napidIntent:Landroid/content/Intent;
    :cond_f
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1f

    .line 68
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v1, rmIntent:Landroid/content/Intent;
    const-class v2, Lcom/samsung/wimax/napid/MruActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v1}, Lcom/samsung/wimax/napid/MainList;->startActivity(Landroid/content/Intent;)V

    .line 73
    .end local v1           #rmIntent:Landroid/content/Intent;
    :cond_1f
    const/4 v2, 0x2

    if-ne p3, v2, :cond_2f

    .line 75
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 76
    .restart local v1       #rmIntent:Landroid/content/Intent;
    const-class v2, Lcom/samsung/wimax/napid/RealmActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v1}, Lcom/samsung/wimax/napid/MainList;->startActivity(Landroid/content/Intent;)V

    .line 81
    .end local v1           #rmIntent:Landroid/content/Intent;
    :cond_2f
    const/4 v2, 0x3

    if-ne p3, v2, :cond_3f

    .line 83
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 84
    .restart local v1       #rmIntent:Landroid/content/Intent;
    const-class v2, Lcom/samsung/wimax/napid/Activated;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v1}, Lcom/samsung/wimax/napid/MainList;->startActivity(Landroid/content/Intent;)V

    .line 88
    .end local v1           #rmIntent:Landroid/content/Intent;
    :cond_3f
    const/4 v2, 0x4

    if-ne p3, v2, :cond_4f

    .line 90
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 91
    .restart local v1       #rmIntent:Landroid/content/Intent;
    const-class v2, Lcom/samsung/wimax/napid/EapNodeName;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v1}, Lcom/samsung/wimax/napid/MainList;->startActivity(Landroid/content/Intent;)V

    .line 95
    .end local v1           #rmIntent:Landroid/content/Intent;
    :cond_4f
    const/4 v2, 0x5

    if-ne p3, v2, :cond_5f

    .line 97
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 98
    .restart local v1       #rmIntent:Landroid/content/Intent;
    const-class v2, Lcom/samsung/wimax/napid/EapMethodType;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v1}, Lcom/samsung/wimax/napid/MainList;->startActivity(Landroid/content/Intent;)V

    .line 102
    .end local v1           #rmIntent:Landroid/content/Intent;
    :cond_5f
    return-void
.end method
