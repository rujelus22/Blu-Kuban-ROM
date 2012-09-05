.class public Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;
.super Landroid/app/ListFragment;
.source "InteractionRecentFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;,
        Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$ItemView;
    }
.end annotation


# static fields
.field public static SELECT_MAX_COUNT:I

.field private static bDBChanged:Z


# instance fields
.field ITEM_ARRAY:Ljava/lang/String;

.field ITEM_COUNT:Ljava/lang/String;

.field VIEW_BY:Ljava/lang/String;

.field private checkedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

.field mBundle:Landroid/os/Bundle;

.field mCallHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/EmailCursorAdapter;

.field private mFromEmail:Z

.field private mIntent:Landroid/content/Intent;

.field private mItemCursor:Landroid/database/Cursor;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

.field private mViewBy:I

.field statecheck:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->bDBChanged:Z

    .line 114
    const/16 v0, 0xa

    sput v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 82
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    .line 118
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    .line 251
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    .line 253
    const-string v0, "view_by"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->VIEW_BY:Ljava/lang/String;

    .line 255
    const-string v0, "item_count"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_COUNT:Ljava/lang/String;

    .line 257
    const-string v0, "item_array"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_ARRAY:Ljava/lang/String;

    .line 258
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->statecheck:Z

    .line 474
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCallHandler:Landroid/os/Handler;

    .line 484
    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->bDBChanged:Z

    return p0
.end method

.method private setObserver()V
    .registers 5

    .prologue
    .line 479
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 480
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCallHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;-><init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    .line 481
    const-string v1, "content://logs/allcalls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 482
    return-void
.end method

.method private updateAllCheckState()V
    .registers 10

    .prologue
    .line 332
    const/4 v3, 0x1

    .line 333
    .local v3, everyBodyIsOn:Z
    const/4 v2, 0x1

    .line 334
    .local v2, everyBodyIsOff:Z
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 336
    .local v1, dataCount:I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 337
    .local v4, i:I
    :goto_e
    if-ge v4, v1, :cond_2e

    or-int v7, v3, v2

    if-eqz v7, :cond_2e

    .line 338
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 339
    .local v5, id:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_29

    .line 340
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 341
    .local v0, checked:Z
    if-nez v0, :cond_2c

    .line 342
    const/4 v3, 0x0

    .line 337
    .end local v0           #checked:Z
    :cond_29
    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 344
    .restart local v0       #checked:Z
    :cond_2c
    const/4 v2, 0x0

    goto :goto_29

    .line 347
    .end local v0           #checked:Z
    .end local v5           #id:J
    :cond_2e
    if-eqz v2, :cond_36

    .line 348
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v7}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataDeleted()V

    .line 351
    :goto_35
    return-void

    .line 350
    :cond_36
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v7}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onOneDataInputed()V

    goto :goto_35
.end method


# virtual methods
.method public clearSelectedArray()V
    .registers 2

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setAllItemChecked(Z)V

    .line 299
    return-void
.end method

.method public isSelectedItemMaxCount()Z
    .registers 15

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 356
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getCount()I

    move-result v5

    .line 357
    .local v5, itmeCount:I
    const/4 v7, 0x0

    .line 359
    .local v7, selectedItemCount:I
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .local v2, i:I
    :goto_f
    if-ge v2, v5, :cond_2a

    .line 360
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v3

    .line 361
    .local v3, id:J
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-eqz v10, :cond_27

    .line 362
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    .line 363
    .local v1, checked:Z
    if-eqz v1, :cond_27

    .line 364
    add-int/lit8 v7, v7, 0x1

    .line 359
    .end local v1           #checked:Z
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 369
    .end local v3           #id:J
    :cond_2a
    sget v10, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "existingRecipientCount"

    invoke-virtual {v11, v12, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    sub-int v6, v10, v11

    .line 371
    .local v6, remainderCount:I
    if-le v7, v6, :cond_6f

    .line 373
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 374
    .local v0, alertDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a02ea

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 375
    const v9, 0x7f0a02ba

    new-instance v10, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$1;

    invoke-direct {v10, p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$1;-><init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 380
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 381
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 386
    .end local v0           #alertDialog:Landroid/app/AlertDialog$Builder;
    :goto_6e
    return v8

    :cond_6f
    move v8, v9

    goto :goto_6e
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 137
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    .line 139
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIntent:Landroid/content/Intent;

    .line 140
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    .line 141
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_37

    .line 142
    const-string v0, "InteractionRecentFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate>>>>>>>>>>> boram mIntent == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_37
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "additional"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "email-multi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 145
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    .line 177
    :goto_53
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    .line 180
    return-void

    .line 148
    :cond_66
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    goto :goto_53
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 184
    const-string v1, "InteractionRecentFragment"

    const-string v2, "========= onCreateView ========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const v1, 0x7f04009a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, view:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 190
    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 238
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    .line 241
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 244
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    .line 247
    :cond_1f
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->bDBChanged:Z

    .line 248
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 249
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->updateAllCheckState()V

    .line 324
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    if-nez v0, :cond_14

    .line 325
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->isSelectedItemMaxCount()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 329
    :cond_14
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    if-eqz v0, :cond_12

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    .line 130
    :cond_12
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 131
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "bundle"

    .prologue
    .line 277
    if-nez p1, :cond_3

    .line 295
    :goto_2
    return-void

    .line 284
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 285
    .local v2, itemCnt:I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->VIEW_BY:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mViewBy:I

    .line 286
    if-lez v2, :cond_2b

    .line 287
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 288
    .local v0, checkedarray:[Z
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, i:I
    :goto_1f
    if-ge v1, v2, :cond_2b

    .line 289
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    aget-boolean v4, v0, v1

    invoke-virtual {v3, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 293
    .end local v0           #checkedarray:[Z
    .end local v1           #i:I
    :cond_2b
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    goto :goto_2
.end method

.method public onResume()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 195
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setObserver()V

    .line 196
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, currentCountryIso:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, voiceMailNumber:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    if-ne v3, v5, :cond_62

    .line 201
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/EmailCursorAdapter;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-direct {v3, v4, v5}, Lcom/sec/android/app/dialertab/calllog/EmailCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/EmailCursorAdapter;

    .line 202
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/EmailCursorAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_45

    .line 204
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/EmailCursorAdapter;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/calllog/EmailCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 205
    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->statecheck:Z

    if-eqz v3, :cond_45

    .line 206
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 207
    iput-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->statecheck:Z

    .line 224
    :cond_45
    :goto_45
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    if-eqz v3, :cond_5e

    .line 225
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    .line 226
    .local v1, mActivity:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getCurrentTab()Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->LOGS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v3, v4, :cond_5e

    .line 227
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->updateAllCheckState()V

    .line 230
    .end local v1           #mActivity:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
    :cond_5e
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 231
    return-void

    .line 211
    :cond_62
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0, v2, v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    .line 212
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setLoading(Z)V

    .line 214
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_45

    .line 215
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 216
    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->statecheck:Z

    if-eqz v3, :cond_45

    .line 217
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 218
    iput-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->statecheck:Z

    goto :goto_45
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "outState"

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 263
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 265
    .local v2, itemCnt:I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->VIEW_BY:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mViewBy:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    new-array v0, v2, [Z

    .line 268
    .local v0, checkedArray:[Z
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, i:I
    :goto_1d
    if-ge v1, v2, :cond_2a

    .line 269
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 271
    :cond_2a
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 272
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    .line 273
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->statecheck:Z

    .line 274
    return-void
.end method

.method public sendNum()V
    .registers 10

    .prologue
    .line 391
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 392
    const/4 v3, 0x0

    .line 393
    .local v3, selectedItemCount:I
    const-string v6, "InteractionRecentFragment"

    const-string v7, "sendNum"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-ge v0, v6, :cond_8f

    .line 395
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 396
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 397
    .local v4, viewid:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_81

    .line 398
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_84

    .line 399
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/EmailCursorAdapter;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/dialertab/calllog/EmailCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    .line 405
    :goto_39
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    const-string v8, "number"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, number:Ljava/lang/String;
    const-string v6, "-1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_81

    const-string v6, "-2"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_81

    const-string v6, "-3"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_81

    const-string v6, "-4"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_81

    .line 411
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "5583;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v3, v3, 0x1

    .line 394
    .end local v1           #number:Ljava/lang/String;
    .end local v4           #viewid:J
    :cond_81
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 401
    .restart local v4       #viewid:J
    :cond_84
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    goto :goto_39

    .line 418
    .end local v4           #viewid:J
    :cond_8f
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_a8

    .line 419
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 420
    .local v2, resultIntent:Landroid/content/Intent;
    const-string v6, "result"

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 421
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v6, v2}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onRecentListAction(Landroid/content/Intent;)V

    .line 423
    .end local v2           #resultIntent:Landroid/content/Intent;
    :cond_a8
    return-void
.end method

.method public setAllItemChecked(Z)V
    .registers 5
    .parameter "bCheckStatus"

    .prologue
    .line 426
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 428
    .local v0, dataCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 429
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 431
    :cond_11
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v2}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataDeleted()V

    .line 432
    return-void
.end method

.method public setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .line 122
    return-void
.end method
