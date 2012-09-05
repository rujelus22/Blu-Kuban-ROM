.class public Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "InteractionPickerFavoritesFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$InteractionPickFavoritesListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$Listener;"
    }
.end annotation


# instance fields
.field private mActionCode:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCurrentCount:I

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mFromSelectAll:Z

.field protected mGroupFilter:Z

.field protected mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field protected mHasGalSearchData:Z

.field protected mHasPhoneData:Z

.field protected mHasPhoneSearchData:Z

.field private mHeaderView:Landroid/view/View;

.field private mInteractionPickFavoritesListener:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$InteractionPickFavoritesListener;

.field private mIsDoneButtonClicked:Z

.field private mIsSelectAllRunning:Z

.field private mLimitedCount:I

.field protected mListContainer:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

.field protected mSearchView:Landroid/widget/SearchView;

.field private mSearchViewHasFocus:Z

.field private mSelectedContactHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeedDial:Z

.field private nUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 91
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    .line 93
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDoneButtonClicked:Z

    .line 104
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasPhoneData:Z

    .line 105
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasPhoneSearchData:Z

    .line 106
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasGalSearchData:Z

    .line 125
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "InteractionPickerFavoritesFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setPhotoLoaderEnabled(Z)V

    .line 127
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setVisibleScrollbarEnabled(Z)V

    .line 130
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 132
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setQuickContactEnabled(Z)V

    .line 133
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDirectorySearchMode(I)V

    .line 135
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSweepActionEnabled(Z)V

    .line 138
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setFakeQueryModeEnabled(Z)V

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->excuteSelectAllVcard()V

    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDoneButtonClicked:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDoneButtonClicked:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSelectAllCheckedContacts(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->excuteSelectAllContacts()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFromSelectAll:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->nUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSelectAllCheckedVcard(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxCountAlertDialog()V

    return-void
.end method

.method private addContactFromSelectAll(JILandroid/net/Uri;)V
    .registers 9
    .parameter "id"
    .parameter "partition"
    .parameter "uri"

    .prologue
    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, keyString:Ljava/lang/String;
    invoke-virtual {p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, selectedLookup:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    return-void
.end method

.method private addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V
    .registers 8
    .parameter "id"
    .parameter "partition"
    .parameter "uri"

    .prologue
    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, keyString:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, selectedLookup:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedInfoChanged()V

    .line 686
    return-void
.end method

.method private addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 8
    .parameter "dataInfo"
    .parameter "partition"
    .parameter "uri"

    .prologue
    .line 656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, keyString:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, dataString:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSpeedDial:Z

    if-eqz v2, :cond_2a

    .line 661
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedSpeedDialInfoChanged(Landroid/net/Uri;)V

    .line 665
    :goto_29
    return-void

    .line 664
    :cond_2a
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedInfoChanged()V

    goto :goto_29
.end method

.method private addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V
    .registers 10
    .parameter "dataInfo"
    .parameter "partition"
    .parameter "uri"
    .parameter "dataid"

    .prologue
    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, keyString:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, dataString:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSpeedDial:Z

    if-eqz v2, :cond_2a

    .line 674
    invoke-virtual {p0, p3, p4, p5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedSpeedDialInfoChanged(Landroid/net/Uri;J)V

    .line 678
    :goto_29
    return-void

    .line 677
    :cond_2a
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedInfoChanged()V

    goto :goto_29
.end method

.method private configureEmptyView(Z)V
    .registers 6
    .parameter "isEmpty"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1247
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_c

    .line 1253
    :cond_b
    :goto_b
    return-void

    .line 1251
    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_1c

    move v0, v1

    :goto_11
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1252
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_1e

    :goto_18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_1c
    move v0, v2

    .line 1251
    goto :goto_11

    :cond_1e
    move v2, v1

    .line 1252
    goto :goto_18
.end method

.method private excuteSelectAllContacts()V
    .registers 3

    .prologue
    .line 316
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    if-nez v1, :cond_13

    .line 317
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    .line 318
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;)V

    .line 319
    .local v0, selectAllTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 321
    .end local v0           #selectAllTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;
    :cond_13
    return-void
.end method

.method private excuteSelectAllVcard()V
    .registers 3

    .prologue
    .line 308
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    if-nez v1, :cond_13

    .line 309
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    .line 310
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;)V

    .line 311
    .local v0, selectAllTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 313
    .end local v0           #selectAllTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;
    :cond_13
    return-void
.end method

.method private isMaxAdded()Z
    .registers 4

    .prologue
    .line 841
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_14

    .line 842
    const/4 v0, 0x1

    .line 844
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private isSelectedContact(Ljava/lang/String;I)Z
    .registers 6
    .parameter "id"
    .parameter "partition"

    .prologue
    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, keyString:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas$DataInfo;)Ljava/lang/String;
    .registers 9
    .parameter "dataInfo"

    .prologue
    .line 710
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas$DataInfo;->dataId:Ljava/lang/String;

    .line 711
    .local v0, dataId:Ljava/lang/String;
    iget-object v1, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas$DataInfo;->displayName:Ljava/lang/String;

    .line 712
    .local v1, displayName:Ljava/lang/String;
    iget-object v4, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas$DataInfo;->data:Ljava/lang/String;

    const-string v5, ","

    const-string v6, "P"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    const-string v6, "W"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 714
    .local v3, selectedInfo:Ljava/lang/String;
    const-string v4, ";"

    invoke-direct {p0, v0, v3, v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->margeStringWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 715
    .local v2, result:Ljava/lang/String;
    return-object v2
.end method

.method private margeStringWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "args1"
    .parameter "args2"
    .parameter "args3"
    .parameter "token"

    .prologue
    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private refreshSelectAllState()V
    .registers 8

    .prologue
    .line 816
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 818
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    const/4 v4, 0x0

    .local v4, position:I
    :goto_7
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2f

    .line 820
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 821
    .local v1, id:J
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v3

    .line 823
    .local v3, partition:I
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_1e

    .line 818
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 827
    :cond_1e
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 828
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 834
    .end local v1           #id:J
    .end local v3           #partition:I
    :goto_2e
    return-void

    .line 833
    :cond_2f
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2e
.end method

.method private removeContact(Ljava/lang/String;I)V
    .registers 6
    .parameter "id"
    .parameter "partition"

    .prologue
    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, keyString:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedInfoChanged()V

    .line 652
    return-void
.end method

.method private removeContactFromSelectAll(Ljava/lang/String;I)V
    .registers 6
    .parameter "id"
    .parameter "partition"

    .prologue
    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, keyString:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    return-void
.end method

.method private removeVcardFromSelectAll(JI)V
    .registers 7
    .parameter "id"
    .parameter "partition"

    .prologue
    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, keyString:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    return-void
.end method

.method private setSelectAllCheckedContacts(Z)Z
    .registers 15
    .parameter "isChecked"

    .prologue
    .line 772
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 773
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 777
    .local v1, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 778
    .local v0, CurrentSelectItem:I
    const/4 v7, 0x0

    .local v7, position:I
    :goto_10
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I

    move-result v9

    if-ge v7, v9, :cond_83

    .line 779
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFromSelectAll:Z

    .line 780
    iget v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    iget v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    sub-int/2addr v9, v11

    if-lt v0, v9, :cond_2a

    .line 781
    const-string v9, "InteractionPickerFavoritesFragment"

    const-string v11, "isMaxAdded "

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/4 v9, 0x0

    monitor-exit v10
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_6e

    .line 812
    :goto_29
    return v9

    .line 785
    :cond_2a
    :try_start_2a
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v8

    .line 786
    .local v8, uri:Landroid/net/Uri;
    if-nez v8, :cond_33

    .line 778
    :cond_30
    :goto_30
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 789
    :cond_33
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 790
    .local v2, contactId:Ljava/lang/String;
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 791
    .local v4, id:J
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 792
    .local v6, partition:I
    if-nez p1, :cond_71

    .line 793
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_30

    .line 794
    const/4 v9, 0x1

    invoke-virtual {p0, v8, v6, v9}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->pickContact(Landroid/net/Uri;IZ)V

    .line 795
    add-int/lit8 v0, v0, 0x1

    .line 796
    const-string v9, "InteractionPickerFavoritesFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CurrentSelectItem = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_2a .. :try_end_69} :catchall_6e
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_69} :catch_6a
    .catch Landroid/database/StaleDataException; {:try_start_2a .. :try_end_69} :catch_7f

    goto :goto_30

    .line 804
    .end local v2           #contactId:Ljava/lang/String;
    .end local v4           #id:J
    .end local v6           #partition:I
    .end local v8           #uri:Landroid/net/Uri;
    :catch_6a
    move-exception v3

    .line 805
    .local v3, e:Ljava/lang/IllegalStateException;
    const/4 v9, 0x1

    :try_start_6c
    monitor-exit v10

    goto :goto_29

    .line 810
    .end local v0           #CurrentSelectItem:I
    .end local v1           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .end local v3           #e:Ljava/lang/IllegalStateException;
    .end local v7           #position:I
    :catchall_6e
    move-exception v9

    monitor-exit v10
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_6e

    throw v9

    .line 800
    .restart local v0       #CurrentSelectItem:I
    .restart local v1       #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .restart local v2       #contactId:Ljava/lang/String;
    .restart local v4       #id:J
    .restart local v6       #partition:I
    .restart local v7       #position:I
    .restart local v8       #uri:Landroid/net/Uri;
    :cond_71
    const/4 v9, 0x0

    :try_start_72
    iput-boolean v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFromSelectAll:Z

    .line 801
    const-string v9, "InteractionPickerFavoritesFragment"

    const-string v11, "mFromSelectAll set false"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-direct {p0, v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->removeContactFromSelectAll(Ljava/lang/String;I)V
    :try_end_7e
    .catchall {:try_start_72 .. :try_end_7e} :catchall_6e
    .catch Ljava/lang/IllegalStateException; {:try_start_72 .. :try_end_7e} :catch_6a
    .catch Landroid/database/StaleDataException; {:try_start_72 .. :try_end_7e} :catch_7f

    goto :goto_30

    .line 806
    .end local v2           #contactId:Ljava/lang/String;
    .end local v4           #id:J
    .end local v6           #partition:I
    .end local v8           #uri:Landroid/net/Uri;
    :catch_7f
    move-exception v3

    .line 807
    .local v3, e:Landroid/database/StaleDataException;
    const/4 v9, 0x1

    :try_start_81
    monitor-exit v10

    goto :goto_29

    .line 810
    .end local v3           #e:Landroid/database/StaleDataException;
    :cond_83
    monitor-exit v10
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_6e

    .line 812
    const/4 v9, 0x1

    goto :goto_29
.end method

.method private setSelectAllCheckedVcard(Z)Z
    .registers 12
    .parameter "isChecked"

    .prologue
    const/4 v8, 0x1

    .line 732
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 733
    :try_start_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 738
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    const/4 v5, 0x0

    .local v5, position:I
    :goto_b
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_57

    move-result v7

    if-ge v5, v7, :cond_54

    .line 740
    :try_start_11
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMaxAdded()Z
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_57
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_14} :catch_48
    .catch Landroid/database/StaleDataException; {:try_start_11 .. :try_end_14} :catch_50

    move-result v7

    if-eqz v7, :cond_1a

    .line 741
    const/4 v7, 0x0

    :try_start_18
    monitor-exit v9
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_57

    .line 768
    :goto_19
    return v7

    .line 743
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isLegacyCompatibilityMode()Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 744
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v7, v5}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v6

    .line 748
    .local v6, uri:Landroid/net/Uri;
    :goto_2a
    if-nez v6, :cond_3a

    .line 738
    :goto_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 746
    .end local v6           #uri:Landroid/net/Uri;
    :cond_2f
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    invoke-virtual {v7, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v6

    .restart local v6       #uri:Landroid/net/Uri;
    goto :goto_2a

    .line 751
    :cond_3a
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 752
    .local v2, id:J
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v4

    .line 754
    .local v4, partition:I
    if-nez p1, :cond_4c

    .line 755
    invoke-direct {p0, v2, v3, v4, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->addContactFromSelectAll(JILandroid/net/Uri;)V
    :try_end_47
    .catchall {:try_start_1a .. :try_end_47} :catchall_57
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_47} :catch_48
    .catch Landroid/database/StaleDataException; {:try_start_1a .. :try_end_47} :catch_50

    goto :goto_2c

    .line 760
    .end local v2           #id:J
    .end local v4           #partition:I
    .end local v6           #uri:Landroid/net/Uri;
    :catch_48
    move-exception v1

    .line 761
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_49
    monitor-exit v9
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_57

    move v7, v8

    goto :goto_19

    .line 758
    .end local v1           #e:Ljava/lang/IllegalStateException;
    .restart local v2       #id:J
    .restart local v4       #partition:I
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_4c
    :try_start_4c
    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->removeVcardFromSelectAll(JI)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_57
    .catch Ljava/lang/IllegalStateException; {:try_start_4c .. :try_end_4f} :catch_48
    .catch Landroid/database/StaleDataException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_2c

    .line 762
    .end local v2           #id:J
    .end local v4           #partition:I
    .end local v6           #uri:Landroid/net/Uri;
    :catch_50
    move-exception v1

    .line 763
    .local v1, e:Landroid/database/StaleDataException;
    :try_start_51
    monitor-exit v9

    move v7, v8

    goto :goto_19

    .line 766
    .end local v1           #e:Landroid/database/StaleDataException;
    :cond_54
    monitor-exit v9

    move v7, v8

    .line 768
    goto :goto_19

    .line 766
    .end local v0           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .end local v5           #position:I
    :catchall_57
    move-exception v7

    monitor-exit v9
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_57

    throw v7
.end method

.method private showMaxCountAlertDialog()V
    .registers 7

    .prologue
    .line 848
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02ea

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 851
    return-void
.end method


# virtual methods
.method public clearCustomSearchResult()V
    .registers 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 298
    return-void
.end method

.method public clearSelectedArray()V
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 612
    return-void
.end method

.method protected configureAdapter()V
    .registers 4

    .prologue
    .line 349
    const-string v1, "InteractionPickerFavoritesFragment"

    const-string v2, "configureAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 352
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 353
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 354
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 325
    const-string v1, "InteractionPickerFavoritesFragment"

    const-string v2, "createListAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 327
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 328
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 329
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mGroupFilter:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setGroupFilter(Z)V

    .line 330
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setGroupExtra(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 331
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 332
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setDisplayPhotos(Z)V

    .line 333
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setQuickContactEnabled(Z)V

    .line 334
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setActionCode(I)V

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_3c

    .line 336
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setTopDividerEnabled(Z)V

    .line 343
    .end local v0           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    :cond_3c
    :goto_3c
    return-object v0

    .line 340
    :cond_3d
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 341
    .local v0, adapter:Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 342
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_3c
.end method

.method public getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;)Ljava/lang/String;
    .registers 4
    .parameter "contactDatas"

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 604
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;->mDisplayName:Ljava/lang/String;

    .line 606
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    goto :goto_9
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 234
    const-string v1, "InteractionPickerFavoritesFragment"

    const-string v2, " === inflateView() === "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const v1, 0x7f04003c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 236
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0d00e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 239
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x7f0a01ad

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSearchQuery()V

    .line 250
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 178
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 180
    if-eqz p1, :cond_1e

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 182
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 184
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mInteractionPickFavoritesListener:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$InteractionPickFavoritesListener;

    if-eqz v0, :cond_2d

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mInteractionPickFavoritesListener:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$InteractionPickFavoritesListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$InteractionPickFavoritesListener;->onSelected(I)V

    .line 187
    :cond_2d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 191
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 193
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 6
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 208
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 211
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListContainer:Landroid/view/View;

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mEmptyView:Landroid/view/View;

    .line 214
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 215
    const v0, 0x7f0400b2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHeaderView:Landroid/view/View;

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0d008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCheckBox:Landroid/widget/CheckBox;

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHeaderView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    :cond_55
    return-void
.end method

.method public onDataChosen(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas$DataInfo;Ljava/lang/String;ZLandroid/net/Uri;)V
    .registers 12
    .parameter "dataInfo"
    .parameter "partition"
    .parameter "checked"
    .parameter "uri"

    .prologue
    .line 1007
    const-wide/16 v4, 0x0

    .line 1010
    .local v4, dataid:J
    :try_start_2
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    .line 1012
    if-eqz p3, :cond_1a

    .line 1013
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v6

    .line 1015
    .local v6, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_1a} :catch_22

    .end local v6           #serviceIntent:Landroid/content/Intent;
    :cond_1a
    :goto_1a
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    .line 1019
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1020
    return-void

    .line 1017
    :catch_22
    move-exception v0

    goto :goto_1a
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .registers 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 855
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    .line 857
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1e

    .line 858
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_1b

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    const/16 v1, 0xfa

    if-ne v0, v1, :cond_1f

    .line 860
    :cond_1b
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->excuteSelectAllVcard()V

    .line 865
    :cond_1e
    :goto_1e
    return-void

    .line 862
    :cond_1f
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->excuteSelectAllContacts()V

    goto :goto_1e
.end method

.method protected onItemClick(IJ)V
    .registers 11
    .parameter "position"
    .parameter "id"

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 368
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 370
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_d

    .line 412
    :goto_c
    return-void

    .line 374
    :cond_d
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, contactId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v2

    .line 377
    .local v2, partition:I
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    sparse-switch v4, :sswitch_data_64

    .line 407
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or unhandled action code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 381
    :sswitch_39
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 382
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->removeContact(Ljava/lang/String;I)V

    goto :goto_c

    .line 384
    :cond_43
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMaxAdded()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 386
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->pickContact(Landroid/net/Uri;IZ)V

    goto :goto_c

    .line 388
    :cond_4e
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxCountAlertDialog()V

    goto :goto_c

    .line 395
    :sswitch_52
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 396
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->removeContact(Ljava/lang/String;I)V

    goto :goto_c

    .line 398
    :cond_5c
    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_c

    .line 403
    :sswitch_60
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->pickContact(Landroid/net/Uri;)V

    goto :goto_c

    .line 377
    :sswitch_data_64
    .sparse-switch
        0xf -> :sswitch_60
        0x96 -> :sswitch_39
        0xa0 -> :sswitch_39
        0xaa -> :sswitch_39
        0xf0 -> :sswitch_52
        0xfa -> :sswitch_52
    .end sparse-switch
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 361
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 10
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 417
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mEnabled:Z

    if-nez v2, :cond_9

    .line 494
    :goto_8
    return-void

    .line 421
    :cond_9
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 422
    .local v1, loaderId:I
    if-ne v1, v6, :cond_43

    .line 423
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mDirectoryListStatus:I

    .line 424
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 425
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->startLoading()V

    .line 478
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_32

    .line 479
    if-nez v1, :cond_2b

    .line 480
    if-eqz p2, :cond_ac

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_ac

    .line 482
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasPhoneData:Z

    .line 486
    :cond_2b
    :goto_2b
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasPhoneData:Z

    if-nez v2, :cond_b0

    :goto_2f
    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->configureEmptyView(Z)V

    .line 489
    :cond_32
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMultiSelectEnabled()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 490
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->refreshSelectAllState()V

    .line 492
    :cond_3b
    const-string v2, "InteractionPickerFavoritesFragment"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 429
    :cond_43
    invoke-virtual {p0, v1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 430
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 432
    if-eqz p2, :cond_7c

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7c

    .line 433
    if-nez v1, :cond_79

    .line 435
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasPhoneSearchData:Z

    .line 450
    :goto_58
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getDirectorySearchMode()I

    move-result v0

    .line 451
    .local v0, directorySearchMode:I
    if-eqz v0, :cond_6c

    .line 452
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_84

    .line 453
    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mDirectoryListStatus:I

    .line 454
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v6, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 461
    :cond_6c
    :goto_6c
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasPhoneSearchData:Z

    if-nez v2, :cond_88

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasGalSearchData:Z

    if-nez v2, :cond_88

    move v2, v3

    :goto_75
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->configureEmptyView(Z)V

    goto :goto_19

    .line 437
    .end local v0           #directorySearchMode:I
    :cond_79
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasGalSearchData:Z

    goto :goto_58

    .line 441
    :cond_7c
    if-nez v1, :cond_81

    .line 442
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasPhoneSearchData:Z

    goto :goto_58

    .line 445
    :cond_81
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasGalSearchData:Z

    goto :goto_58

    .line 456
    .restart local v0       #directorySearchMode:I
    :cond_84
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->startLoading()V

    goto :goto_6c

    :cond_88
    move v2, v4

    .line 461
    goto :goto_75

    .line 463
    .end local v0           #directorySearchMode:I
    :cond_8a
    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mDirectoryListStatus:I

    .line 464
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 467
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFakeQueryModeEnabled:Z

    if-eqz v2, :cond_19

    .line 468
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFakeQueryStatus:I

    if-ne v2, v3, :cond_a2

    .line 469
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFakeQueryStatus:I

    .line 470
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->startFullQuery()V

    goto/16 :goto_19

    .line 471
    :cond_a2
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFakeQueryStatus:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_19

    .line 472
    const/4 v2, 0x4

    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFakeQueryStatus:I

    goto/16 :goto_19

    .line 484
    :cond_ac
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasPhoneData:Z

    goto/16 :goto_2b

    :cond_b0
    move v3, v4

    .line 486
    goto/16 :goto_2f
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPickerResult()V
    .registers 4

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    if-eqz v0, :cond_8

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDoneButtonClicked:Z

    .line 571
    :goto_7
    return-void

    .line 555
    :cond_8
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    sparse-switch v0, :sswitch_data_38

    .line 568
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unhandled action code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :sswitch_28
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickDataAction(Ljava/util/HashMap;)V

    goto :goto_7

    .line 564
    :sswitch_30
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V

    goto :goto_7

    .line 555
    :sswitch_data_38
    .sparse-switch
        0x96 -> :sswitch_28
        0xa0 -> :sswitch_28
        0xaa -> :sswitch_28
        0xf0 -> :sswitch_30
        0xfa -> :sswitch_30
    .end sparse-switch
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V

    .line 535
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickSpeedDialAction(Landroid/net/Uri;)V

    .line 540
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;J)V
    .registers 5
    .parameter "uri"
    .parameter "dataid"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickSpeedDialAction(Landroid/net/Uri;J)V

    .line 546
    return-void
.end method

.method public onQueryCompleted(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;Z)V
    .registers 13
    .parameter "cursor"
    .parameter "partition"
    .parameter "uri"
    .parameter "flag"

    .prologue
    const/4 v7, 0x0

    .line 578
    const-string v1, "InteractionPickerFavoritesFragment"

    const-string v2, " === onQueryCompleted === "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 581
    .local v0, contactDatas:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_30

    .line 582
    iget v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;->mAvailableDataCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    .line 583
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas$DataInfo;

    iget-object v2, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;->mPartition:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;)V

    .line 594
    :goto_2e
    iput-boolean v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFromSelectAll:Z

    .line 596
    :cond_30
    return-void

    .line 586
    :cond_31
    new-instance v6, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;

    invoke-direct {v6}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;-><init>()V

    .line 587
    .local v6, dialog:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;
    invoke-virtual {v6, p0, v7}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 588
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->setName(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v6, v0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->setContactDatas(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;)V

    .line 590
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$ContactDatas;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->setUri(Landroid/net/Uri;)V

    .line 591
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DataBrowseDialogFragment"

    invoke-virtual {v6, v1, v2}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 197
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onResume()V

    .line 199
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchViewHasFocus:Z

    if-ne v0, v2, :cond_1c

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setFocusableInTouchMode(Z)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchViewHasFocus:Z

    .line 204
    :cond_1c
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 158
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 160
    const-string v0, "selectIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 161
    const-string v0, "searchViewFocus"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    return-void
.end method

.method public onSelectedInfoChanged()V
    .registers 3

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 627
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onPickerResult()V

    .line 640
    :cond_9
    :goto_9
    return-void

    .line 631
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 632
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 634
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mInteractionPickFavoritesListener:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$InteractionPickFavoritesListener;

    if-eqz v0, :cond_2b

    .line 635
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mInteractionPickFavoritesListener:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$InteractionPickFavoritesListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$InteractionPickFavoritesListener;->onSelected(I)V

    .line 637
    :cond_2b
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 638
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->refreshSelectAllState()V

    goto :goto_9
.end method

.method public onSelectedSpeedDialInfoChanged(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 615
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onPickerResult(Landroid/net/Uri;)V

    .line 616
    return-void
.end method

.method public onSelectedSpeedDialInfoChanged(Landroid/net/Uri;J)V
    .registers 4
    .parameter "uri"
    .parameter "dataid"

    .prologue
    .line 620
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onPickerResult(Landroid/net/Uri;J)V

    .line 621
    return-void
.end method

.method public pickContact(Landroid/net/Uri;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onInteractionPickerAction(Landroid/net/Uri;)V

    .line 498
    return-void
.end method

.method public pickContact(Landroid/net/Uri;IZ)V
    .registers 9
    .parameter "uri"
    .parameter "partition"
    .parameter "flag"

    .prologue
    .line 501
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, contactId:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setUri(Landroid/net/Uri;)V

    .line 503
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setFromSelectall(Z)V

    .line 504
    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V

    .line 505
    .local v1, dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 506
    return-void
.end method

.method public reloadData()V
    .registers 1

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 154
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedState"

    .prologue
    .line 166
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "restoreSavedState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 169
    if-nez p1, :cond_d

    .line 174
    :goto_c
    return-void

    .line 172
    :cond_d
    const-string v0, "selectIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 173
    const-string v0, "searchViewFocus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchViewHasFocus:Z

    goto :goto_c
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .registers 2
    .parameter "filter"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 150
    return-void
.end method

.method public setFromSelectall(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 837
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFromSelectAll:Z

    .line 838
    return-void
.end method

.method public setInteractionPickFavoritesListener(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$InteractionPickFavoritesListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mInteractionPickFavoritesListener:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$InteractionPickFavoritesListener;

    .line 122
    return-void
.end method

.method public setMMSinformation(III)V
    .registers 4
    .parameter "ActionCode"
    .parameter "LimitedCount"
    .parameter "CurrentCount"

    .prologue
    .line 1256
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    .line 1257
    iput p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    .line 1258
    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    .line 1259
    return-void
.end method

.method public setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .line 145
    return-void
.end method

.method public setSearchMode(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 510
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 511
    return-void
.end method

.method public setSearchQuery()V
    .registers 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 292
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->nUri:Landroid/net/Uri;

    .line 600
    return-void
.end method
