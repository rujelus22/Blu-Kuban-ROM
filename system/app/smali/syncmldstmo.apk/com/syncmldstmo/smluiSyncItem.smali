.class public Lcom/syncmldstmo/smluiSyncItem;
.super Landroid/app/Activity;
.source "smluiSyncItem.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# instance fields
.field private bCalClick:Ljava/lang/Boolean;

.field private bConClick:Ljava/lang/Boolean;

.field private chAll:Landroid/widget/CheckBox;

.field private chCal:Landroid/widget/CheckBox;

.field private chCon:Landroid/widget/CheckBox;

.field private chSelItem:Landroid/widget/CheckBox;

.field private dif:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

.field private edCalendar:Landroid/widget/EditText;

.field private edContact:Landroid/widget/EditText;

.field private edSelItem:Landroid/widget/EditText;

.field private profile:Lcom/syncmldstmo/database/smlDbProfileInfo;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->profile:Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 23
    iput-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->dif:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->bConClick:Ljava/lang/Boolean;

    .line 35
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->bCalClick:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/syncmldstmo/smluiSyncItem;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->chAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/syncmldstmo/smluiSyncItem;)Lcom/syncmldstmo/database/smlDbSyncItemInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->dif:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/syncmldstmo/smluiSyncItem;Lcom/syncmldstmo/database/smlDbSyncItemInfo;)Lcom/syncmldstmo/database/smlDbSyncItemInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/syncmldstmo/smluiSyncItem;->dif:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/syncmldstmo/smluiSyncItem;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->chSelItem:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/syncmldstmo/smluiSyncItem;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->edSelItem:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/syncmldstmo/smluiSyncItem;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->bConClick:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$402(Lcom/syncmldstmo/smluiSyncItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/syncmldstmo/smluiSyncItem;->bConClick:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/syncmldstmo/smluiSyncItem;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->chCon:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/syncmldstmo/smluiSyncItem;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->edContact:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/syncmldstmo/smluiSyncItem;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->bCalClick:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$702(Lcom/syncmldstmo/smluiSyncItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/syncmldstmo/smluiSyncItem;->bCalClick:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$800(Lcom/syncmldstmo/smluiSyncItem;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->chCal:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$900(Lcom/syncmldstmo/smluiSyncItem;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->edCalendar:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smluiSyncItem;->setContentView(I)V

    .line 43
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v2

    invoke-static {v2}, Lcom/syncmldstmo/database/smlDb;->smlGetProfileInfo(I)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/smluiSyncItem;->profile:Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 45
    const/4 v0, 0x1

    .line 47
    .local v0, bAllCheck:Z
    const v2, 0x7f07000d

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smluiSyncItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/syncmldstmo/smluiSyncItem;->chAll:Landroid/widget/CheckBox;

    .line 48
    const v2, 0x7f07000e

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smluiSyncItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/syncmldstmo/smluiSyncItem;->chCon:Landroid/widget/CheckBox;

    .line 49
    const v2, 0x7f070010

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smluiSyncItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/syncmldstmo/smluiSyncItem;->chCal:Landroid/widget/CheckBox;

    .line 51
    const v2, 0x7f07000f

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smluiSyncItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/syncmldstmo/smluiSyncItem;->edContact:Landroid/widget/EditText;

    .line 52
    const v2, 0x7f070011

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smluiSyncItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/syncmldstmo/smluiSyncItem;->edCalendar:Landroid/widget/EditText;

    .line 54
    invoke-virtual {p0}, Lcom/syncmldstmo/smluiSyncItem;->smlSyncItemInit()V

    .line 56
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_4f
    const/4 v2, 0x4

    if-ge v1, v2, :cond_8c

    .line 58
    invoke-static {v1}, Lcom/syncmldstmo/database/smlDb;->smlGetCurrentSyncDBInfo(I)Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/smluiSyncItem;->dif:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 60
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncItem;->dif:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    if-eqz v2, :cond_89

    .line 62
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncItem;->dif:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-nez v2, :cond_63

    .line 63
    const/4 v0, 0x0

    .line 65
    :cond_63
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncItem;->dif:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/syncmldstmo/smluiSyncItem;->smlSyncItemCheck(ILjava/lang/Boolean;)V

    .line 67
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncItem;->chSelItem:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/syncmldstmo/smluiSyncItem;->dif:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 68
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncItem;->edSelItem:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/syncmldstmo/smluiSyncItem;->dif:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 69
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncItem;->edSelItem:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/syncmldstmo/smluiSyncItem;->dif:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 73
    :cond_8c
    if-eqz v0, :cond_94

    .line 75
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncItem;->chAll:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 78
    :cond_94
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncItem;->chAll:Landroid/widget/CheckBox;

    new-instance v3, Lcom/syncmldstmo/smluiSyncItem$1;

    invoke-direct {v3, p0}, Lcom/syncmldstmo/smluiSyncItem$1;-><init>(Lcom/syncmldstmo/smluiSyncItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncItem;->chCon:Landroid/widget/CheckBox;

    new-instance v3, Lcom/syncmldstmo/smluiSyncItem$2;

    invoke-direct {v3, p0}, Lcom/syncmldstmo/smluiSyncItem$2;-><init>(Lcom/syncmldstmo/smluiSyncItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncItem;->chCal:Landroid/widget/CheckBox;

    new-instance v3, Lcom/syncmldstmo/smluiSyncItem$3;

    invoke-direct {v3, p0}, Lcom/syncmldstmo/smluiSyncItem$3;-><init>(Lcom/syncmldstmo/smluiSyncItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/16 v4, 0x72

    const/16 v3, 0x30

    const/4 v2, 0x0

    .line 131
    const/4 v0, 0x1

    const v1, 0x7f060003

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smluiSyncItem;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 132
    const/4 v0, 0x2

    const v1, 0x7f06003b

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smluiSyncItem;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 140
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 151
    :goto_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 143
    :pswitch_c
    invoke-virtual {p0}, Lcom/syncmldstmo/smluiSyncItem;->smlSetSyncItem()V

    .line 144
    invoke-virtual {p0}, Lcom/syncmldstmo/smluiSyncItem;->finish()V

    goto :goto_7

    .line 148
    :pswitch_13
    invoke-virtual {p0}, Lcom/syncmldstmo/smluiSyncItem;->finish()V

    goto :goto_7

    .line 140
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c
        :pswitch_13
    .end packed-switch
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 200
    return-void
.end method

.method public smlSetSyncItem()V
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->profile:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v1, p0, Lcom/syncmldstmo/smluiSyncItem;->bConClick:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 206
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->profile:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v1, p0, Lcom/syncmldstmo/smluiSyncItem;->edContact:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->profile:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v1, p0, Lcom/syncmldstmo/smluiSyncItem;->bCalClick:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 212
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->profile:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v1, p0, Lcom/syncmldstmo/smluiSyncItem;->edCalendar:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->profile:Lcom/syncmldstmo/database/smlDbProfileInfo;

    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/database/smlDb;->smlSetProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;I)V

    .line 217
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smluiSyncItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 218
    return-void
.end method

.method public smlSyncItemCheck(ILjava/lang/Boolean;)V
    .registers 4
    .parameter "nValue"
    .parameter "bCheck"

    .prologue
    .line 178
    packed-switch p1, :pswitch_data_1a

    .line 195
    :goto_3
    return-void

    .line 181
    :pswitch_4
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->chCon:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->chSelItem:Landroid/widget/CheckBox;

    .line 182
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->edContact:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->edSelItem:Landroid/widget/EditText;

    .line 183
    iput-object p2, p0, Lcom/syncmldstmo/smluiSyncItem;->bConClick:Ljava/lang/Boolean;

    goto :goto_3

    .line 187
    :pswitch_f
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->chCal:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->chSelItem:Landroid/widget/CheckBox;

    .line 188
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->edCalendar:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->edSelItem:Landroid/widget/EditText;

    .line 189
    iput-object p2, p0, Lcom/syncmldstmo/smluiSyncItem;->bCalClick:Ljava/lang/Boolean;

    goto :goto_3

    .line 178
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_4
        :pswitch_f
    .end packed-switch
.end method

.method public smlSyncItemInit()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->chAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 157
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->chAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->chCon:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 160
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->chCon:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->edContact:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->chCal:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 166
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->chCal:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem;->edCalendar:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 174
    return-void
.end method
