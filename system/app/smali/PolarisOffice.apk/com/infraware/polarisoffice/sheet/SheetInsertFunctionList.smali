.class public Lcom/infraware/polarisoffice/sheet/SheetInsertFunctionList;
.super Lcom/infraware/common/baseactivity/BaseListActivity;
.source "SheetInsertFunctionList.java"


# static fields
.field private static final REQUEST_OK:I


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/common/baseactivity/BaseListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 48
    packed-switch p1, :pswitch_data_32

    .line 67
    :cond_7
    :goto_7
    return-void

    .line 50
    :pswitch_8
    if-ne p2, v4, :cond_7

    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, strFunction:Ljava/lang/String;
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 53
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_7

    .line 54
    const-string v3, "function"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    new-instance v1, Landroid/content/Intent;

    const-string v3, "result"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, result:Landroid/content/Intent;
    const-string v3, "function"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v4, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunctionList;->setResult(ILandroid/content/Intent;)V

    .line 60
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunctionList;->finish()V

    goto :goto_7

    .line 48
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v4, 0x7f03004d

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunctionList;->setContentView(I)V

    .line 25
    const v4, 0x7f0801a8

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunctionList;->setTitle(I)V

    .line 27
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunctionList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 28
    .local v2, res:Landroid/content/res/Resources;
    const v4, 0x7f06002a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, upList:[Ljava/lang/String;
    array-length v0, v3

    .line 30
    .local v0, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunctionList;->list:Ljava/util/ArrayList;

    .line 31
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    if-lt v1, v0, :cond_37

    .line 33
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090003

    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunctionList;->list:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunctionList;->adapter:Landroid/widget/ArrayAdapter;

    .line 34
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunctionList;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunctionList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    return-void

    .line 32
    :cond_37
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunctionList;->list:Ljava/util/ArrayList;

    aget-object v5, v3, v1

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_23
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v0, functionIntent:Landroid/content/Intent;
    const-string v1, "key_sortType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunctionList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 42
    return-void
.end method

.method public onLocaleChange(I)V
    .registers 3
    .parameter "nLocale"

    .prologue
    .line 71
    const v0, 0x7f0801a8

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunctionList;->setTitle(I)V

    .line 72
    return-void
.end method
