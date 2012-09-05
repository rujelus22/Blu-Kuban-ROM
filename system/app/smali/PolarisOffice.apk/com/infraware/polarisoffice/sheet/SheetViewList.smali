.class public Lcom/infraware/polarisoffice/sheet/SheetViewList;
.super Lcom/infraware/common/baseactivity/BaseListActivity;
.source "SheetViewList.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/infraware/office/evengine/E$EV_SHEET_EDIT;
.implements Lcom/infraware/office/evengine/E$EV_MOVE_TYPE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;,
        Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;
    }
.end annotation


# instance fields
.field arItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;",
            ">;"
        }
    .end annotation
.end field

.field editNameWatcher:Landroid/text/TextWatcher;

.field public handler:Landroid/os/Handler;

.field private mDragListener:Lcom/infraware/common/control/dragndroplist/DragListener;

.field private mDropListener:Lcom/infraware/common/control/dragndroplist/DropListener;

.field private mEvInterface:Lcom/infraware/office/evengine/EvInterface;

.field private mIconList:Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mRemoveListener:Lcom/infraware/polarisoffice/common/RemoveListener;

.field private mSelectedItem:I

.field private mSelectiedName:Ljava/lang/String;

.field private mSheetNameDialog:Landroid/app/AlertDialog;

.field private mSheetNameEdit:Landroid/widget/EditText;

.field private mSheeteDeleteDialog:Landroid/app/AlertDialog;

.field m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseListActivity;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 47
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 49
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheeteDeleteDialog:Landroid/app/AlertDialog;

    .line 50
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameEdit:Landroid/widget/EditText;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSelectedItem:I

    .line 52
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSelectiedName:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    .line 55
    new-instance v0, Lcom/infraware/polarisoffice/sheet/SheetViewList$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/sheet/SheetViewList$1;-><init>(Lcom/infraware/polarisoffice/sheet/SheetViewList;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->handler:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/infraware/polarisoffice/sheet/SheetViewList$2;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/sheet/SheetViewList$2;-><init>(Lcom/infraware/polarisoffice/sheet/SheetViewList;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mDropListener:Lcom/infraware/common/control/dragndroplist/DropListener;

    .line 120
    new-instance v0, Lcom/infraware/polarisoffice/sheet/SheetViewList$3;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/sheet/SheetViewList$3;-><init>(Lcom/infraware/polarisoffice/sheet/SheetViewList;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mRemoveListener:Lcom/infraware/polarisoffice/common/RemoveListener;

    .line 130
    new-instance v0, Lcom/infraware/polarisoffice/sheet/SheetViewList$4;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/sheet/SheetViewList$4;-><init>(Lcom/infraware/polarisoffice/sheet/SheetViewList;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mDragListener:Lcom/infraware/common/control/dragndroplist/DragListener;

    .line 279
    new-instance v0, Lcom/infraware/polarisoffice/sheet/SheetViewList$5;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/sheet/SheetViewList$5;-><init>(Lcom/infraware/polarisoffice/sheet/SheetViewList;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->editNameWatcher:Landroid/text/TextWatcher;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/sheet/SheetViewList;)Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mIconList:Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/sheet/SheetViewList;)Lcom/infraware/office/evengine/EvInterface;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/sheet/SheetViewList;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/sheet/SheetViewList;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/sheet/SheetViewList;)I
    .registers 2
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSelectedItem:I

    return v0
.end method


# virtual methods
.method public OnSheetDelete()V
    .registers 4

    .prologue
    .line 300
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 301
    const v1, 0x7f08021c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 302
    const v1, 0x7f080043

    new-instance v2, Lcom/infraware/polarisoffice/sheet/SheetViewList$8;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/sheet/SheetViewList$8;-><init>(Lcom/infraware/polarisoffice/sheet/SheetViewList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 309
    const v1, 0x7f080045

    new-instance v2, Lcom/infraware/polarisoffice/sheet/SheetViewList$9;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/sheet/SheetViewList$9;-><init>(Lcom/infraware/polarisoffice/sheet/SheetViewList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 300
    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheeteDeleteDialog:Landroid/app/AlertDialog;

    .line 312
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheeteDeleteDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 313
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheeteDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 314
    return-void
.end method

.method public OnSheetEditName()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 243
    .local v2, view:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f08020a

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 247
    const v3, 0x7f0c0005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameEdit:Landroid/widget/EditText;

    .line 248
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSelectiedName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameEdit:Landroid/widget/EditText;

    new-array v4, v8, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x1f

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 250
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 251
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->editNameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 253
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 254
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 256
    const v3, 0x7f080043

    new-instance v4, Lcom/infraware/polarisoffice/sheet/SheetViewList$6;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/sheet/SheetViewList$6;-><init>(Lcom/infraware/polarisoffice/sheet/SheetViewList;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 266
    const v3, 0x7f080045

    new-instance v4, Lcom/infraware/polarisoffice/sheet/SheetViewList$7;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/sheet/SheetViewList$7;-><init>(Lcom/infraware/polarisoffice/sheet/SheetViewList;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 271
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 272
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 274
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameDialog:Landroid/app/AlertDialog;

    .line 275
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 276
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 277
    return-void
.end method

.method public isExistFile(Ljava/lang/String;)Z
    .registers 4
    .parameter "fileName"

    .prologue
    .line 292
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_b

    .line 296
    const/4 v1, 0x0

    :goto_a
    return v1

    .line 293
    :cond_b
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;

    iget-object v1, v1, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;->mName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1d

    .line 294
    const/4 v1, 0x1

    goto :goto_a

    .line 292
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->arItem:Ljava/util/ArrayList;

    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;

    iget-object v0, v0, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSelectiedName:Ljava/lang/String;

    .line 231
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c0328

    if-ne v0, v1, :cond_1c

    .line 232
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->OnSheetEditName()V

    .line 233
    const/4 v0, 0x1

    .line 238
    :goto_1b
    return v0

    .line 235
    :cond_1c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c0329

    if-ne v0, v1, :cond_28

    .line 236
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->OnSheetDelete()V

    .line 238
    :cond_28
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v6, 0x7f030053

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->setContentView(I)V

    .line 67
    const v6, 0x7f080136

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->setTitle(I)V

    .line 69
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v6

    iput-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 70
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v6}, Lcom/infraware/office/evengine/EvInterface;->EV()Lcom/infraware/office/evengine/EV;

    move-result-object v6

    invoke-virtual {v6}, Lcom/infraware/office/evengine/EV;->getSheetInfo()Lcom/infraware/office/evengine/EV$SHEET_INFO;

    move-result-object v6

    iput-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    .line 71
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v6}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v6

    iget v5, v6, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nTotalPages:I

    .line 73
    .local v5, totalPageNum:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->arItem:Ljava/util/ArrayList;

    .line 76
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v6}, Lcom/infraware/office/evengine/EvInterface;->IGetSheetNameList()[Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, pPageList:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_37
    if-lt v0, v5, :cond_7a

    .line 86
    new-instance v6, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;

    const v7, 0x7f030028

    iget-object v8, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->arItem:Ljava/util/ArrayList;

    invoke-direct {v6, p0, p0, v7, v8}, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;-><init>(Lcom/infraware/polarisoffice/sheet/SheetViewList;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mIconList:Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;

    .line 87
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 88
    .local v3, list:Landroid/widget/ListView;
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mIconList:Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    instance-of v6, v3, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    if-eqz v6, :cond_6f

    move-object v6, v3

    .line 91
    check-cast v6, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    iget-object v7, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mDropListener:Lcom/infraware/common/control/dragndroplist/DropListener;

    invoke-virtual {v6, v7}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->setDropListener(Lcom/infraware/common/control/dragndroplist/DropListener;)V

    move-object v6, v3

    .line 92
    check-cast v6, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    iget-object v7, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mRemoveListener:Lcom/infraware/polarisoffice/common/RemoveListener;

    invoke-virtual {v6, v7}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->setRemoveListener(Lcom/infraware/polarisoffice/common/RemoveListener;)V

    move-object v6, v3

    .line 93
    check-cast v6, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    iget-object v7, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mDragListener:Lcom/infraware/common/control/dragndroplist/DragListener;

    invoke-virtual {v6, v7}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->setDragListener(Lcom/infraware/common/control/dragndroplist/DragListener;)V

    .line 94
    check-cast v3, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    .end local v3           #list:Landroid/widget/ListView;
    invoke-virtual {v3, p0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 97
    :cond_6f
    const v6, 0x102000a

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->registerForContextMenu(Landroid/view/View;)V

    .line 98
    return-void

    .line 78
    :cond_7a
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v7, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    invoke-virtual {v6, v7, v0}, Lcom/infraware/office/evengine/EvInterface;->IGetSheetInfo(Lcom/infraware/office/evengine/EV$SHEET_INFO;I)V

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, icon:I
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    iget v6, v6, Lcom/infraware/office/evengine/EV$SHEET_INFO;->bProtectSheet:I

    if-lez v6, :cond_8b

    .line 81
    const v1, 0x7f020195

    .line 82
    :cond_8b
    new-instance v2, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;

    aget-object v6, v4, v0

    invoke-direct {v2, p0, v1, v6}, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;-><init>(Lcom/infraware/polarisoffice/sheet/SheetViewList;ILjava/lang/String;)V

    .line 83
    .local v2, iconItem:Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;
    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_37
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v4, 0x1

    .line 214
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-ne p2, v1, :cond_3e

    move-object v1, p3

    .line 215
    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSelectedItem:I

    .line 217
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    iget v3, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSelectedItem:I

    invoke-virtual {v1, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->IGetSheetInfo(Lcom/infraware/office/evengine/EV$SHEET_INFO;I)V

    .line 218
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->m_sSheetInfo:Lcom/infraware/office/evengine/EV$SHEET_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_INFO;->bProtectSheet:I

    if-lez v1, :cond_1e

    .line 226
    :goto_1d
    return-void

    .line 219
    :cond_1e
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 220
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 221
    const v1, 0x7f080221

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 222
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_3e

    .line 223
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 225
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_3e
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/common/baseactivity/BaseListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_1d
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x6

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/evengine/EvInterface;->IMovePage(II)V

    .line 205
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->finish()V

    .line 206
    return-void
.end method

.method public onLocaleChange(I)V
    .registers 9
    .parameter "nLocale"

    .prologue
    const v6, 0x7f080045

    const v5, 0x7f080043

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 318
    const v1, 0x7f080136

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->setTitle(I)V

    .line 319
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheeteDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheeteDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 321
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheeteDeleteDialog:Landroid/app/AlertDialog;

    const v2, 0x7f08021c

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheeteDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 323
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheeteDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 325
    :cond_38
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 327
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameDialog:Landroid/app/AlertDialog;

    const v2, 0x7f08020a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 328
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameDialog:Landroid/app/AlertDialog;

    const v2, 0x7f0c0004

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 329
    .local v0, tvTitle:Landroid/widget/TextView;
    const v1, 0x7f08020c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 330
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 331
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 333
    .end local v0           #tvTitle:Landroid/widget/TextView;
    :cond_6f
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 103
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_1c

    .line 104
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 106
    :cond_1c
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseListActivity;->onPause()V

    .line 107
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 210
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 209
    return-void
.end method
