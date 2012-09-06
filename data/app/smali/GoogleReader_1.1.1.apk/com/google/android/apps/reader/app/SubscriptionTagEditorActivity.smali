.class public Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SubscriptionTagEditorActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$1;,
        Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;,
        Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagQueryHandler;,
        Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagListAdapter;,
        Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagsDataSetObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final COLUMN_LABEL:I = 0x2

.field static final COLUMN_STREAM_ID:I = 0x1

.field static final COLUMN_SUBSCRIPTION_COUNT:I = 0x3

.field private static final DATA_NEW_FOLDER:Ljava/lang/Object; = null

#the value of this static final field might be set in the static constructor
.field private static final ID_NEW_FOLDER:I = 0x0

.field private static final LOADER_TAGS:I = 0x1

.field private static final ORDER_BY:Ljava/lang/String; = "label COLLATE NOCASE ASC"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final REQUEST_CREATE_FOLDER:I = 0x1

.field private static final SELECTION:Ljava/lang/String; = "id LIKE ?"

.field private static final SELECTION_ARGS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SubscriptionTagEditor"

.field private static final TOKEN_UPDATE:I = 0x1


# instance fields
.field private mAdapter:Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mTagSelector:Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;

.field private mTags:Lcom/google/android/apps/reader/fragment/Loadable;

.field private mUpdateCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    const-class v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_40

    move v0, v4

    :goto_b
    sput-boolean v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->$assertionsDisabled:Z

    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "id"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "subscription_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->PROJECTION:[Ljava/lang/String;

    .line 80
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "%/label/%"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->SELECTION_ARGS:[Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->DATA_NEW_FOLDER:Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->DATA_NEW_FOLDER:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->ID_NEW_FOLDER:I

    return-void

    :cond_40
    move v0, v3

    .line 58
    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 379
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->updateListView()V

    return-void
.end method

.method private createNewFolder()V
    .registers 4

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->getTarget()Landroid/net/Uri;

    move-result-object v0

    .line 187
    if-nez v0, :cond_e

    .line 188
    const-string v0, "SubscriptionTagEditor"

    const-string v1, "Cannot create folder without account"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_d
    return-void

    .line 192
    :cond_e
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 193
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    .line 194
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d
.end method

.method private getTarget()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private onCheckedChanged(I)V
    .registers 23
    .parameter "position"

    .prologue
    .line 269
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->getTarget()Landroid/net/Uri;

    move-result-object v19

    .line 270
    .local v19, target:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mAdapter:Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagListAdapter;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v13

    .line 271
    .local v13, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mListView:Landroid/widget/ListView;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v14

    .line 272
    .local v14, item:Ljava/lang/Object;
    if-eqz v14, :cond_72

    if-ne v14, v13, :cond_72

    .line 273
    const/4 v6, 0x1

    .line 274
    .local v6, token:I
    move-object/from16 v7, v19

    .line 275
    .local v7, cookie:Landroid/net/Uri;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v11

    .line 276
    .local v11, account:Lcom/google/android/accounts/Account;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    .line 277
    .local v16, subscriptionId:Ljava/lang/String;
    move-object v0, v11

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->forSubscription(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 279
    .local v18, tagsUri:Landroid/net/Uri;
    const/4 v5, 0x1

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 280
    .local v15, streamId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mListView:Landroid/widget/ListView;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v12

    .line 281
    .local v12, checked:Z
    if-eqz v12, :cond_73

    .line 282
    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v5

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->setSyncToNetwork(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v8

    .line 283
    .local v8, uri:Landroid/net/Uri;
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 284
    .local v20, values:Landroid/content/ContentValues;
    const-string v5, "id"

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    move-object v5, v0

    move-object v0, v5

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/AsyncQueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 293
    .end local v20           #values:Landroid/content/ContentValues;
    :goto_66
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mUpdateCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mUpdateCount:I

    .line 295
    .end local v6           #token:I
    .end local v7           #cookie:Landroid/net/Uri;
    .end local v8           #uri:Landroid/net/Uri;
    .end local v11           #account:Lcom/google/android/accounts/Account;
    .end local v12           #checked:Z
    .end local v15           #streamId:Ljava/lang/String;
    .end local v16           #subscriptionId:Ljava/lang/String;
    .end local v18           #tagsUri:Landroid/net/Uri;
    :cond_72
    return-void

    .line 287
    .restart local v6       #token:I
    .restart local v7       #cookie:Landroid/net/Uri;
    .restart local v11       #account:Lcom/google/android/accounts/Account;
    .restart local v12       #checked:Z
    .restart local v15       #streamId:Ljava/lang/String;
    .restart local v16       #subscriptionId:Ljava/lang/String;
    .restart local v18       #tagsUri:Landroid/net/Uri;
    :cond_73
    invoke-static {v15}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 288
    .local v17, tagUri:Landroid/net/Uri;
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move v1, v5

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->setSyncToNetwork(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v8

    .line 289
    .restart local v8       #uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 290
    .local v9, selection:Ljava/lang/String;
    const/4 v10, 0x0

    .line 291
    .local v10, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    move-object v5, v0

    invoke-virtual/range {v5 .. v10}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_66
.end method

.method private updateListView()V
    .registers 5

    .prologue
    .line 176
    iget-object v3, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mAdapter:Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagListAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 177
    .local v0, cursor:Landroid/database/Cursor;
    sget-boolean v3, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->$assertionsDisabled:Z

    if-nez v3, :cond_12

    if-nez v0, :cond_12

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 178
    :cond_12
    sget-boolean v3, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->$assertionsDisabled:Z

    if-nez v3, :cond_24

    iget-object v3, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 179
    :cond_24
    const/4 v1, 0x0

    .local v1, position:I
    :goto_25
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 180
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v3, 0x1

    move v2, v3

    .line 181
    .local v2, subscribed:Z
    :goto_34
    iget-object v3, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 180
    .end local v2           #subscribed:Z
    :cond_3c
    const/4 v3, 0x0

    move v2, v3

    goto :goto_34

    .line 183
    :cond_3f
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    packed-switch p1, :pswitch_data_2c

    .line 237
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 239
    :cond_6
    :goto_6
    return-void

    .line 214
    :pswitch_7
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 220
    if-nez p3, :cond_14

    .line 221
    const-string v0, "SubscriptionTagEditor"

    const-string v1, "Result data not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 224
    :cond_14
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 225
    if-nez v0, :cond_22

    .line 226
    const-string v0, "SubscriptionTagEditor"

    const-string v1, "Tag URI not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 230
    :cond_22
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mTagSelector:Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->selectTag(Ljava/lang/String;)V

    goto :goto_6

    .line 212
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_16

    .line 312
    :goto_7
    return-void

    .line 303
    :sswitch_8
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->finish()V

    goto :goto_7

    .line 306
    :sswitch_c
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->createNewFolder()V

    goto :goto_7

    .line 309
    :sswitch_10
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mTags:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->retry()V

    goto :goto_7

    .line 301
    :sswitch_data_16
    .sparse-switch
        0x7f0b002f -> :sswitch_10
        0x7f0b0030 -> :sswitch_c
        0x7f0b0064 -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->setContentView(I)V

    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 118
    new-instance v0, Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-static {p0, p0, p0}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->forActivity(Landroid/app/Activity;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v2

    invoke-direct {v0, p0, v1, v5, v2}, Lcom/google/android/apps/reader/fragment/Loadable;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mTags:Lcom/google/android/apps/reader/fragment/Loadable;

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mTags:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->refreshAfterLoading()V

    .line 122
    new-instance v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagListAdapter;

    invoke-direct {v0, p0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mAdapter:Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagListAdapter;

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mAdapter:Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagListAdapter;

    new-instance v1, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagsDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagsDataSetObserver;-><init>(Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 125
    const v0, 0x7f0b0064

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 129
    .local v6, resolver:Landroid/content/ContentResolver;
    new-instance v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagQueryHandler;

    invoke-direct {v0, v6}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 131
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mListView:Landroid/widget/ListView;

    .line 132
    iget-object v7, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mListView:Landroid/widget/ListView;

    new-instance v8, Lcom/google/android/apps/reader/widget/CompositeAdapter;

    const/4 v0, 0x2

    new-array v9, v0, [Landroid/widget/Adapter;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mAdapter:Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagListAdapter;

    aput-object v1, v9, v0

    new-instance v0, Lcom/google/android/apps/reader/widget/SingletonListAdapter;

    const v1, 0x7f030023

    sget-object v2, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->DATA_NEW_FOLDER:Ljava/lang/Object;

    sget v3, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->ID_NEW_FOLDER:I

    int-to-long v3, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/reader/widget/SingletonListAdapter;-><init>(ILjava/lang/Object;JZ)V

    aput-object v0, v9, v5

    invoke-direct {v8, v9}, Lcom/google/android/apps/reader/widget/CompositeAdapter;-><init>([Landroid/widget/Adapter;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 135
    new-instance v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;

    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mAdapter:Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagListAdapter;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;-><init>(Landroid/widget/ListView;Landroid/support/v4/widget/CursorAdapter;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mTagSelector:Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mTags:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->initLoader()V

    .line 138
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 13
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    sget-boolean v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    if-eq v0, p1, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 150
    :cond_d
    move-object v1, p0

    .line 151
    .local v1, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->getTarget()Landroid/net/Uri;

    move-result-object v9

    .line 152
    .local v9, target:Landroid/net/Uri;
    sget-boolean v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_2c

    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 153
    :cond_2c
    invoke-static {v9}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v7

    .line 154
    .local v7, account:Lcom/google/android/accounts/Account;
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    .line 155
    .local v8, streamId:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->forSubscription(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 156
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    sget-object v3, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->PROJECTION:[Ljava/lang/String;

    const-string v4, "id LIKE ?"

    sget-object v5, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->SELECTION_ARGS:[Ljava/lang/String;

    const-string v6, "label COLLATE NOCASE ASC"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-object v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->DATA_NEW_FOLDER:Ljava/lang/Object;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_c

    .line 203
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->createNewFolder()V

    .line 208
    :goto_b
    return-void

    .line 206
    :cond_c
    invoke-direct {p0, p3}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->onCheckedChanged(I)V

    goto :goto_b
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 163
    sget-boolean v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 164
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mAdapter:Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagListAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 165
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    sget-boolean v0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 172
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mAdapter:Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 173
    return-void
.end method

.method protected onPause()V
    .registers 5

    .prologue
    .line 249
    iget v3, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mUpdateCount:I

    if-lez v3, :cond_10

    .line 252
    move-object v1, p0

    .line 253
    .local v1, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->getTarget()Landroid/net/Uri;

    move-result-object v2

    .line 254
    .local v2, target:Landroid/net/Uri;
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 255
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-static {v1, v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->requestSyncUpload(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 257
    .end local v0           #account:Lcom/google/android/accounts/Account;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #target:Landroid/net/Uri;
    :cond_10
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 258
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 243
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;->mUpdateCount:I

    .line 245
    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method
