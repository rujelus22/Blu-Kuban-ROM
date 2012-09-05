.class public Lcom/syncmldstmo/smluiProfileList;
.super Landroid/app/Activity;
.source "smluiProfileList.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# instance fields
.field private nProfileIndex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/syncmldstmo/smluiProfileList;->nProfileIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/syncmldstmo/smluiProfileList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/syncmldstmo/smluiProfileList;->nProfileIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/syncmldstmo/smluiProfileList;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/syncmldstmo/smluiProfileList;->nProfileIndex:I

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "icicle"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v4, 0x7f030007

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/smluiProfileList;->setContentView(I)V

    .line 28
    new-array v0, v6, [Ljava/lang/String;

    .line 30
    .local v0, ProfileName:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v6, :cond_19

    .line 32
    invoke-static {v2}, Lcom/syncmldstmo/database/smlDb;->smlGetProfileName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 35
    :cond_19
    const v4, 0x7f07001a

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/smluiProfileList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 36
    .local v3, list:Landroid/widget/ListView;
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v4, 0x109000f

    invoke-direct {v1, p0, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 38
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 40
    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 42
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 43
    new-instance v4, Lcom/syncmldstmo/smluiProfileList$1;

    invoke-direct {v4, p0}, Lcom/syncmldstmo/smluiProfileList$1;-><init>(Lcom/syncmldstmo/smluiProfileList;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
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

    const v1, 0x7f060020

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smluiProfileList;->getString(I)Ljava/lang/String;

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

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smluiProfileList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 67
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 77
    :goto_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 70
    :pswitch_c
    invoke-virtual {p0}, Lcom/syncmldstmo/smluiProfileList;->smlEditProfile()V

    goto :goto_7

    .line 74
    :pswitch_10
    invoke-virtual {p0}, Lcom/syncmldstmo/smluiProfileList;->finish()V

    goto :goto_7

    .line 67
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method

.method public smlEditProfile()V
    .registers 3

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/syncmldstmo/smluiProfile;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smluiProfileList;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method
