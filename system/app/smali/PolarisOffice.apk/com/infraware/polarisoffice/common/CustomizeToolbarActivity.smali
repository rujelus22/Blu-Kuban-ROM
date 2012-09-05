.class public Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;
.super Lcom/infraware/common/baseactivity/BaseListActivity;
.source "CustomizeToolbarActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/infraware/office/evengine/E$EV_EDITMODETYPE;
.implements Lcom/infraware/office/basetoolbar/ToolbarE$ToolbarID;
.implements Lcom/infraware/office/basetoolbar/ToolbarConfig;


# instance fields
.field private mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

.field private mDragListener:Lcom/infraware/common/control/dragndroplist/DragListener;

.field private mDropListener:Lcom/infraware/common/control/dragndroplist/DropListener;

.field private mMode:I

.field private mRemoveListener:Lcom/infraware/polarisoffice/common/RemoveListener;

.field private mSrcListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/polarisoffice/common/MultiListItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_btnCancel:Landroid/widget/Button;

.field private m_btnOk:Landroid/widget/Button;

.field private m_btnReset:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseListActivity;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    .line 33
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mSrcListItem:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mMode:I

    .line 36
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->m_btnReset:Landroid/widget/Button;

    .line 37
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->m_btnOk:Landroid/widget/Button;

    .line 38
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->m_btnCancel:Landroid/widget/Button;

    .line 117
    new-instance v0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity$1;-><init>(Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mDropListener:Lcom/infraware/common/control/dragndroplist/DropListener;

    .line 127
    new-instance v0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity$2;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity$2;-><init>(Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mRemoveListener:Lcom/infraware/polarisoffice/common/RemoveListener;

    .line 138
    new-instance v0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity$3;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity$3;-><init>(Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mDragListener:Lcom/infraware/common/control/dragndroplist/DragListener;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;)Lcom/infraware/polarisoffice/common/MultiAdapter;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    return-object v0
.end method

.method private setBtnText()V
    .registers 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->m_btnReset:Landroid/widget/Button;

    const v1, 0x7f08019b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 269
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->m_btnOk:Landroid/widget/Button;

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 270
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->m_btnCancel:Landroid/widget/Button;

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 271
    return-void
.end method

.method private setData()V
    .registers 15

    .prologue
    const/4 v13, -0x1

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, aItem:Lcom/infraware/polarisoffice/common/MultiListItem;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 99
    .local v4, color:I
    iget v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mMode:I

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getToolbarPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 101
    .local v9, pref:Landroid/content/SharedPreferences;
    const-string v1, "1"

    invoke-interface {v9, v1, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 102
    .local v5, nToolBarID:I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/infraware/polarisoffice/MyApplication;

    .line 103
    .local v8, myApp:Lcom/infraware/polarisoffice/MyApplication;
    invoke-virtual {v8}, Lcom/infraware/polarisoffice/MyApplication;->getToolbarDataMapping()Ljava/util/HashMap;

    move-result-object v10

    .line 104
    .local v10, toolbarDataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/infraware/office/basetoolbar/ToolbarItem;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_24
    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lt v6, v1, :cond_38

    .line 112
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    .line 113
    .local v7, listView:Landroid/widget/ListView;
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    return-void

    .line 105
    .end local v7           #listView:Landroid/widget/ListView;
    :cond_38
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 106
    if-eq v5, v13, :cond_68

    .line 107
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/infraware/office/basetoolbar/ToolbarItem;

    .line 108
    .local v11, toolbarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;
    new-instance v0, Lcom/infraware/polarisoffice/common/MultiListItem;

    .end local v0           #aItem:Lcom/infraware/polarisoffice/common/MultiListItem;
    const/16 v1, 0x8

    invoke-virtual {v11}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getIconNormalId()I

    move-result v2

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v11}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getTextId()I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/infraware/polarisoffice/common/MultiListItem;-><init>(IILjava/lang/String;II)V

    .line 109
    .restart local v0       #aItem:Lcom/infraware/polarisoffice/common/MultiListItem;
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v11           #toolbarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;
    :cond_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_24
.end method

.method private setToolbarPreferences()V
    .registers 6

    .prologue
    .line 168
    iget v3, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mMode:I

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getToolbarPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 169
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 171
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/MultiAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_17

    .line 173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 174
    return-void

    .line 172
    :cond_17
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    invoke-virtual {v4, v1}, Lcom/infraware/polarisoffice/common/MultiAdapter;->getItem(I)Lcom/infraware/polarisoffice/common/MultiListItem;

    move-result-object v4

    iget v4, v4, Lcom/infraware/polarisoffice/common/MultiListItem;->mToolBarID:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method


# virtual methods
.method public OnCancel(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 257
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->setResult(ILandroid/content/Intent;)V

    .line 258
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->finish()V

    .line 259
    return-void
.end method

.method public OnOk(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->setToolbarPreferences()V

    .line 252
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->setResult(ILandroid/content/Intent;)V

    .line 253
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->finish()V

    .line 254
    return-void
.end method

.method public OnReset(Landroid/view/View;)V
    .registers 13
    .parameter "view"

    .prologue
    const/16 v1, 0x8

    .line 208
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/infraware/polarisoffice/MyApplication;

    .line 209
    .local v8, myApp:Lcom/infraware/polarisoffice/MyApplication;
    invoke-virtual {v8}, Lcom/infraware/polarisoffice/MyApplication;->getToolbarDataMapping()Ljava/util/HashMap;

    move-result-object v9

    .line 210
    .local v9, toolbarDataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/infraware/office/basetoolbar/ToolbarItem;>;"
    const/4 v0, 0x0

    .line 211
    .local v0, aItem:Lcom/infraware/polarisoffice/common/MultiListItem;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 212
    .local v4, color:I
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 213
    iget v2, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mMode:I

    packed-switch v2, :pswitch_data_10c

    .line 238
    const/4 v6, 0x0

    .local v6, i:I
    :goto_23
    sget-object v2, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mBaseWordToolBar:[I

    array-length v2, v2

    if-lt v6, v2, :cond_dc

    .line 245
    :cond_28
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    .line 246
    .local v7, listView:Landroid/widget/ListView;
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 247
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/MultiAdapter;->notifyDataSetChanged()V

    .line 248
    return-void

    .line 215
    .end local v6           #i:I
    .end local v7           #listView:Landroid/widget/ListView;
    :pswitch_37
    invoke-static {p0}, Lcom/infraware/common/define/CMModelDefine;->isSupportFreeDraw(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 216
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3e
    sget-object v2, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mBaseFreeDrawPptToolBar:[I

    array-length v2, v2

    if-ge v6, v2, :cond_28

    .line 217
    sget-object v2, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mBaseFreeDrawPptToolBar:[I

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/office/basetoolbar/ToolbarItem;

    .line 218
    .local v10, toolbarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;
    new-instance v0, Lcom/infraware/polarisoffice/common/MultiListItem;

    .end local v0           #aItem:Lcom/infraware/polarisoffice/common/MultiListItem;
    invoke-virtual {v10}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getIconNormalId()I

    move-result v2

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v10}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getTextId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mBaseFreeDrawPptToolBar:[I

    aget v5, v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/infraware/polarisoffice/common/MultiListItem;-><init>(IILjava/lang/String;II)V

    .line 219
    .restart local v0       #aItem:Lcom/infraware/polarisoffice/common/MultiListItem;
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 223
    .end local v6           #i:I
    .end local v10           #toolbarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;
    :cond_72
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_73
    sget-object v2, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mBasePptToolBar:[I

    array-length v2, v2

    if-ge v6, v2, :cond_28

    .line 224
    sget-object v2, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mBasePptToolBar:[I

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/office/basetoolbar/ToolbarItem;

    .line 225
    .restart local v10       #toolbarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;
    new-instance v0, Lcom/infraware/polarisoffice/common/MultiListItem;

    .end local v0           #aItem:Lcom/infraware/polarisoffice/common/MultiListItem;
    invoke-virtual {v10}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getIconNormalId()I

    move-result v2

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v10}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getTextId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mBasePptToolBar:[I

    aget v5, v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/infraware/polarisoffice/common/MultiListItem;-><init>(IILjava/lang/String;II)V

    .line 226
    .restart local v0       #aItem:Lcom/infraware/polarisoffice/common/MultiListItem;
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v6, v6, 0x1

    goto :goto_73

    .line 231
    .end local v6           #i:I
    .end local v10           #toolbarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;
    :pswitch_a7
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_a8
    sget-object v2, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mBaseSheetToolBar:[I

    array-length v2, v2

    if-ge v6, v2, :cond_28

    .line 232
    sget-object v2, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mBaseSheetToolBar:[I

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/office/basetoolbar/ToolbarItem;

    .line 233
    .restart local v10       #toolbarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;
    new-instance v0, Lcom/infraware/polarisoffice/common/MultiListItem;

    .end local v0           #aItem:Lcom/infraware/polarisoffice/common/MultiListItem;
    invoke-virtual {v10}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getIconNormalId()I

    move-result v2

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v10}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getTextId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mBaseSheetToolBar:[I

    aget v5, v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/infraware/polarisoffice/common/MultiListItem;-><init>(IILjava/lang/String;II)V

    .line 234
    .restart local v0       #aItem:Lcom/infraware/polarisoffice/common/MultiListItem;
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v6, v6, 0x1

    goto :goto_a8

    .line 239
    .end local v10           #toolbarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;
    :cond_dc
    sget-object v2, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mBaseWordToolBar:[I

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/office/basetoolbar/ToolbarItem;

    .line 240
    .restart local v10       #toolbarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;
    new-instance v0, Lcom/infraware/polarisoffice/common/MultiListItem;

    .end local v0           #aItem:Lcom/infraware/polarisoffice/common/MultiListItem;
    invoke-virtual {v10}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getIconNormalId()I

    move-result v2

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v10}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getTextId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mBaseWordToolBar:[I

    aget v5, v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/infraware/polarisoffice/common/MultiListItem;-><init>(IILjava/lang/String;II)V

    .line 241
    .restart local v0       #aItem:Lcom/infraware/polarisoffice/common/MultiListItem;
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_23

    .line 213
    :pswitch_data_10c
    .packed-switch 0x2
        :pswitch_a7
        :pswitch_37
    .end packed-switch
.end method

.method protected getToolbarPreferences(I)Landroid/content/SharedPreferences;
    .registers 5
    .parameter "EV_EDITMODETYPE"

    .prologue
    const/4 v2, 0x0

    .line 78
    iget v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mMode:I

    packed-switch v1, :pswitch_data_28

    .line 89
    const-string v1, "WordToolbar"

    invoke-virtual {p0, v1, v2}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    .local v0, pref:Landroid/content/SharedPreferences;
    :goto_c
    return-object v0

    .line 80
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :pswitch_d
    invoke-static {p0}, Lcom/infraware/common/define/CMModelDefine;->isSupportFreeDraw(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 81
    const-string v1, "PptAnnotationToolbar"

    invoke-virtual {p0, v1, v2}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .restart local v0       #pref:Landroid/content/SharedPreferences;
    goto :goto_c

    .line 83
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_1a
    const-string v1, "PptToolbar"

    invoke-virtual {p0, v1, v2}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    .restart local v0       #pref:Landroid/content/SharedPreferences;
    goto :goto_c

    .line 86
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :pswitch_21
    const-string v1, "SheetToolbar"

    invoke-virtual {p0, v1, v2}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    .restart local v0       #pref:Landroid/content/SharedPreferences;
    goto :goto_c

    .line 78
    :pswitch_data_28
    .packed-switch 0x2
        :pswitch_21
        :pswitch_d
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 262
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->setResult(ILandroid/content/Intent;)V

    .line 263
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseListActivity;->onBackPressed()V

    .line 264
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 276
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 278
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 279
    .local v0, listView:Landroid/widget/ListView;
    instance-of v1, v0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    if-eqz v1, :cond_14

    .line 280
    check-cast v0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    .end local v0           #listView:Landroid/widget/ListView;
    invoke-virtual {v0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->StopDrag()V

    .line 282
    :cond_14
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 283
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v1, 0x7f03001a

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->setContentView(I)V

    .line 44
    const v1, 0x7f0801ae

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->setTitle(I)V

    .line 45
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->setTitleColor(I)V

    .line 46
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "DOCUMENT_MODE"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mMode:I

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mSrcListItem:Ljava/util/ArrayList;

    .line 48
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->setData()V

    .line 49
    new-instance v1, Lcom/infraware/polarisoffice/common/MultiAdapter;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/infraware/polarisoffice/common/MultiAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    .line 50
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 51
    .local v0, listView:Landroid/widget/ListView;
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    const v1, 0x7f0c007d

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->m_btnReset:Landroid/widget/Button;

    .line 54
    const v1, 0x7f0c007e

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->m_btnOk:Landroid/widget/Button;

    .line 55
    const v1, 0x7f0c007f

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->m_btnCancel:Landroid/widget/Button;

    .line 57
    instance-of v1, v0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    if-eqz v1, :cond_88

    move-object v1, v0

    .line 58
    check-cast v1, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mDropListener:Lcom/infraware/common/control/dragndroplist/DropListener;

    invoke-virtual {v1, v2}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->setDropListener(Lcom/infraware/common/control/dragndroplist/DropListener;)V

    move-object v1, v0

    .line 59
    check-cast v1, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mRemoveListener:Lcom/infraware/polarisoffice/common/RemoveListener;

    invoke-virtual {v1, v2}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->setRemoveListener(Lcom/infraware/polarisoffice/common/RemoveListener;)V

    move-object v1, v0

    .line 60
    check-cast v1, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mDragListener:Lcom/infraware/common/control/dragndroplist/DragListener;

    invoke-virtual {v1, v2}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->setDragListener(Lcom/infraware/common/control/dragndroplist/DragListener;)V

    .line 61
    check-cast v0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    .end local v0           #listView:Landroid/widget/ListView;
    invoke-virtual {v0, p0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 63
    :cond_88
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mSrcListItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 70
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mSrcListItem:Ljava/util/ArrayList;

    .line 73
    :cond_c
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseListActivity;->onDestroy()V

    .line 74
    return-void
.end method

.method public onLocaleChange(I)V
    .registers 4
    .parameter "nLocale"

    .prologue
    .line 288
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 289
    const v1, 0x7f0801ae

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->setTitle(I)V

    .line 290
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->setBtnText()V

    .line 291
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->setData()V

    .line 292
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 293
    .local v0, listView:Landroid/widget/ListView;
    instance-of v1, v0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    if-eqz v1, :cond_1e

    .line 294
    check-cast v0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    .end local v0           #listView:Landroid/widget/ListView;
    invoke-virtual {v0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->setRtolFlag()V

    .line 296
    :cond_1e
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/MultiAdapter;->notifyDataSetChanged()V

    .line 297
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 165
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 164
    return-void
.end method
