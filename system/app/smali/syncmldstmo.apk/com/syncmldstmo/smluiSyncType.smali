.class public Lcom/syncmldstmo/smluiSyncType;
.super Landroid/app/Activity;
.source "smluiSyncType.java"


# instance fields
.field private nIndex:I

.field private profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syncmldstmo/smluiSyncType;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    return-void
.end method

.method static synthetic access$002(Lcom/syncmldstmo/smluiSyncType;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/syncmldstmo/smluiSyncType;->nIndex:I

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v2, 0x7f030007

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smluiSyncType;->setContentView(I)V

    .line 28
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v2

    invoke-static {v2}, Lcom/syncmldstmo/database/smlDb;->smlGetProfileInfo(I)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/smluiSyncType;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 30
    const v2, 0x7f07001a

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smluiSyncType;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 31
    .local v1, list:Landroid/widget/ListView;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x109000f

    invoke-virtual {p0}, Lcom/syncmldstmo/smluiSyncType;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 33
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 35
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 37
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncType;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->UISyncType:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 38
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncType;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->UISyncType:I

    iput v2, p0, Lcom/syncmldstmo/smluiSyncType;->nIndex:I

    .line 40
    new-instance v2, Lcom/syncmldstmo/smluiSyncType$1;

    invoke-direct {v2, p0}, Lcom/syncmldstmo/smluiSyncType$1;-><init>(Lcom/syncmldstmo/smluiSyncType;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 47
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/16 v4, 0x72

    const/16 v3, 0x30

    const/4 v2, 0x0

    .line 51
    const/4 v0, 0x1

    const v1, 0x7f060003

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smluiSyncType;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 52
    const/4 v0, 0x2

    const v1, 0x7f06003b

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smluiSyncType;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 59
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 70
    :goto_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 62
    :pswitch_c
    invoke-virtual {p0}, Lcom/syncmldstmo/smluiSyncType;->smlSetSyncType()V

    .line 63
    invoke-virtual {p0}, Lcom/syncmldstmo/smluiSyncType;->finish()V

    goto :goto_7

    .line 67
    :pswitch_13
    invoke-virtual {p0}, Lcom/syncmldstmo/smluiSyncType;->finish()V

    goto :goto_7

    .line 59
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c
        :pswitch_13
    .end packed-switch
.end method

.method public smlSetSyncType()V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncType;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget v1, p0, Lcom/syncmldstmo/smluiSyncType;->nIndex:I

    iput v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->UISyncType:I

    .line 77
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncType;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v0, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v0, :cond_16

    .line 78
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncType;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v1, p0, Lcom/syncmldstmo/smluiSyncType;->nIndex:I

    iput v1, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 79
    :cond_16
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncType;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v0, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v0, :cond_26

    .line 80
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncType;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v1, p0, Lcom/syncmldstmo/smluiSyncType;->nIndex:I

    iput v1, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 81
    :cond_26
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncType;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v0, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v0, :cond_36

    .line 82
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncType;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v1, p0, Lcom/syncmldstmo/smluiSyncType;->nIndex:I

    iput v1, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 83
    :cond_36
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncType;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v0, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v0, :cond_46

    .line 84
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncType;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v1, p0, Lcom/syncmldstmo/smluiSyncType;->nIndex:I

    iput v1, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 86
    :cond_46
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncType;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/database/smlDb;->smlSetProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;I)V

    .line 88
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smluiSyncType;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    return-void
.end method
