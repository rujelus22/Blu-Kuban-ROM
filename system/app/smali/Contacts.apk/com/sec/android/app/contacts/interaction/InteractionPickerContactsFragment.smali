.class public Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "InteractionPickerContactsFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$InteractionPickContactsListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment$Listener;"
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

.field private mInteractionPickContactsListener:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$InteractionPickContactsListener;

.field private mIsDoneButtonClicked:Z

.field private mIsSelectAllRunning:Z

.field private mLimitedCount:I

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

.field protected mSearchView:Landroid/widget/SearchView;

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

    .line 122
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 91
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    .line 93
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z

    .line 104
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasPhoneData:Z

    .line 105
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasPhoneSearchData:Z

    .line 106
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasGalSearchData:Z

    .line 123
    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "InteractionPickerContactsFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setPhotoLoaderEnabled(Z)V

    .line 125
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 127
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setVisibleScrollbarEnabled(Z)V

    .line 128
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 130
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setQuickContactEnabled(Z)V

    .line 131
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDirectorySearchMode(I)V

    .line 133
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSweepActionEnabled(Z)V

    .line 136
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setFakeQueryModeEnabled(Z)V

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->excuteSelectAllVcard()V

    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllCheckedContacts(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->excuteSelectAllContacts()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFromSelectAll:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->nUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllCheckedVcard(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxCountAlertDialog()V

    return-void
.end method

.method private addContactFromSelectAll(JILandroid/net/Uri;)V
    .registers 9
    .parameter "id"
    .parameter "partition"
    .parameter "uri"

    .prologue
    .line 674
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

    .line 675
    .local v0, keyString:Ljava/lang/String;
    invoke-virtual {p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, selectedLookup:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    return-void
.end method

.method private addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V
    .registers 8
    .parameter "id"
    .parameter "partition"
    .parameter "uri"

    .prologue
    .line 666
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

    .line 667
    .local v0, keyString:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, selectedLookup:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedInfoChanged()V

    .line 671
    return-void
.end method

.method private addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 8
    .parameter "dataInfo"
    .parameter "partition"
    .parameter "uri"

    .prologue
    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, keyString:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, dataString:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSpeedDial:Z

    if-eqz v2, :cond_2a

    .line 646
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedSpeedDialInfoChanged(Landroid/net/Uri;)V

    .line 650
    :goto_29
    return-void

    .line 649
    :cond_2a
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedInfoChanged()V

    goto :goto_29
.end method

.method private addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V
    .registers 10
    .parameter "dataInfo"
    .parameter "partition"
    .parameter "uri"
    .parameter "dataid"

    .prologue
    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, keyString:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, dataString:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSpeedDial:Z

    if-eqz v2, :cond_2a

    .line 659
    invoke-virtual {p0, p3, p4, p5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedSpeedDialInfoChanged(Landroid/net/Uri;J)V

    .line 663
    :goto_29
    return-void

    .line 662
    :cond_2a
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedInfoChanged()V

    goto :goto_29
.end method

.method private configureEmptyView(Z)V
    .registers 6
    .parameter "isEmpty"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1232
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_c

    .line 1238
    :cond_b
    :goto_b
    return-void

    .line 1236
    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_1c

    move v0, v1

    :goto_11
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1237
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_1e

    :goto_18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_1c
    move v0, v2

    .line 1236
    goto :goto_11

    :cond_1e
    move v2, v1

    .line 1237
    goto :goto_18
.end method

.method private excuteSelectAllContacts()V
    .registers 3

    .prologue
    .line 301
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    if-nez v1, :cond_13

    .line 302
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    .line 303
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;)V

    .line 304
    .local v0, selectAllTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 306
    .end local v0           #selectAllTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;
    :cond_13
    return-void
.end method

.method private excuteSelectAllVcard()V
    .registers 3

    .prologue
    .line 293
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    if-nez v1, :cond_13

    .line 294
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    .line 295
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;)V

    .line 296
    .local v0, selectAllTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 298
    .end local v0           #selectAllTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;
    :cond_13
    return-void
.end method

.method private isMaxAdded()Z
    .registers 4

    .prologue
    .line 826
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_14

    .line 827
    const/4 v0, 0x1

    .line 829
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
    .line 628
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

    .line 630
    .local v0, keyString:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;)Ljava/lang/String;
    .registers 9
    .parameter "dataInfo"

    .prologue
    .line 695
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;->dataId:Ljava/lang/String;

    .line 696
    .local v0, dataId:Ljava/lang/String;
    iget-object v1, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;->displayName:Ljava/lang/String;

    .line 697
    .local v1, displayName:Ljava/lang/String;
    iget-object v4, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;->data:Ljava/lang/String;

    const-string v5, ","

    const-string v6, "P"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    const-string v6, "W"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 699
    .local v3, selectedInfo:Ljava/lang/String;
    const-string v4, ";"

    invoke-direct {p0, v0, v3, v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->margeStringWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 700
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
    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private refreshSelectAllState()V
    .registers 8

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 803
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    const/4 v4, 0x0

    .local v4, position:I
    :goto_7
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2f

    .line 805
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 806
    .local v1, id:J
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v3

    .line 808
    .local v3, partition:I
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_1e

    .line 803
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 812
    :cond_1e
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 813
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 819
    .end local v1           #id:J
    .end local v3           #partition:I
    :goto_2e
    return-void

    .line 818
    :cond_2f
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2e
.end method

.method private removeContact(Ljava/lang/String;I)V
    .registers 6
    .parameter "id"
    .parameter "partition"

    .prologue
    .line 634
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

    .line 635
    .local v0, keyString:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedInfoChanged()V

    .line 637
    return-void
.end method

.method private removeContactFromSelectAll(Ljava/lang/String;I)V
    .registers 6
    .parameter "id"
    .parameter "partition"

    .prologue
    .line 685
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

    .line 686
    .local v0, keyString:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    return-void
.end method

.method private removeVcardFromSelectAll(JI)V
    .registers 7
    .parameter "id"
    .parameter "partition"

    .prologue
    .line 680
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

    .line 681
    .local v0, keyString:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    return-void
.end method

.method private setSelectAllCheckedContacts(Z)Z
    .registers 15
    .parameter "isChecked"

    .prologue
    .line 757
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 758
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 762
    .local v1, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 763
    .local v0, CurrentSelectItem:I
    const/4 v7, 0x0

    .local v7, position:I
    :goto_10
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I

    move-result v9

    if-ge v7, v9, :cond_83

    .line 764
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFromSelectAll:Z

    .line 765
    iget v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    iget v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    sub-int/2addr v9, v11

    if-lt v0, v9, :cond_2a

    .line 766
    const-string v9, "InteractionPickerContactsFragment"

    const-string v11, "isMaxAdded "

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v9, 0x0

    monitor-exit v10
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_6e

    .line 797
    :goto_29
    return v9

    .line 770
    :cond_2a
    :try_start_2a
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v8

    .line 771
    .local v8, uri:Landroid/net/Uri;
    if-nez v8, :cond_33

    .line 763
    :cond_30
    :goto_30
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 774
    :cond_33
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, contactId:Ljava/lang/String;
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 776
    .local v4, id:J
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 777
    .local v6, partition:I
    if-nez p1, :cond_71

    .line 778
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_30

    .line 779
    const/4 v9, 0x1

    invoke-virtual {p0, v8, v6, v9}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->pickContact(Landroid/net/Uri;IZ)V

    .line 780
    add-int/lit8 v0, v0, 0x1

    .line 781
    const-string v9, "InteractionPickerContactsFragment"

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

    .line 789
    .end local v2           #contactId:Ljava/lang/String;
    .end local v4           #id:J
    .end local v6           #partition:I
    .end local v8           #uri:Landroid/net/Uri;
    :catch_6a
    move-exception v3

    .line 790
    .local v3, e:Ljava/lang/IllegalStateException;
    const/4 v9, 0x1

    :try_start_6c
    monitor-exit v10

    goto :goto_29

    .line 795
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

    .line 785
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
    iput-boolean v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFromSelectAll:Z

    .line 786
    const-string v9, "InteractionPickerContactsFragment"

    const-string v11, "mFromSelectAll set false"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-direct {p0, v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->removeContactFromSelectAll(Ljava/lang/String;I)V
    :try_end_7e
    .catchall {:try_start_72 .. :try_end_7e} :catchall_6e
    .catch Ljava/lang/IllegalStateException; {:try_start_72 .. :try_end_7e} :catch_6a
    .catch Landroid/database/StaleDataException; {:try_start_72 .. :try_end_7e} :catch_7f

    goto :goto_30

    .line 791
    .end local v2           #contactId:Ljava/lang/String;
    .end local v4           #id:J
    .end local v6           #partition:I
    .end local v8           #uri:Landroid/net/Uri;
    :catch_7f
    move-exception v3

    .line 792
    .local v3, e:Landroid/database/StaleDataException;
    const/4 v9, 0x1

    :try_start_81
    monitor-exit v10

    goto :goto_29

    .line 795
    .end local v3           #e:Landroid/database/StaleDataException;
    :cond_83
    monitor-exit v10
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_6e

    .line 797
    const/4 v9, 0x1

    goto :goto_29
.end method

.method private setSelectAllCheckedVcard(Z)Z
    .registers 12
    .parameter "isChecked"

    .prologue
    const/4 v8, 0x1

    .line 717
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 718
    :try_start_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 723
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    const/4 v5, 0x0

    .local v5, position:I
    :goto_b
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_57

    move-result v7

    if-ge v5, v7, :cond_54

    .line 725
    :try_start_11
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMaxAdded()Z
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_57
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_14} :catch_48
    .catch Landroid/database/StaleDataException; {:try_start_11 .. :try_end_14} :catch_50

    move-result v7

    if-eqz v7, :cond_1a

    .line 726
    const/4 v7, 0x0

    :try_start_18
    monitor-exit v9
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_57

    .line 753
    :goto_19
    return v7

    .line 728
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isLegacyCompatibilityMode()Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 729
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v7, v5}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v6

    .line 733
    .local v6, uri:Landroid/net/Uri;
    :goto_2a
    if-nez v6, :cond_3a

    .line 723
    :goto_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 731
    .end local v6           #uri:Landroid/net/Uri;
    :cond_2f
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    invoke-virtual {v7, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v6

    .restart local v6       #uri:Landroid/net/Uri;
    goto :goto_2a

    .line 736
    :cond_3a
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 737
    .local v2, id:J
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v4

    .line 739
    .local v4, partition:I
    if-nez p1, :cond_4c

    .line 740
    invoke-direct {p0, v2, v3, v4, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->addContactFromSelectAll(JILandroid/net/Uri;)V
    :try_end_47
    .catchall {:try_start_1a .. :try_end_47} :catchall_57
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_47} :catch_48
    .catch Landroid/database/StaleDataException; {:try_start_1a .. :try_end_47} :catch_50

    goto :goto_2c

    .line 745
    .end local v2           #id:J
    .end local v4           #partition:I
    .end local v6           #uri:Landroid/net/Uri;
    :catch_48
    move-exception v1

    .line 746
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_49
    monitor-exit v9
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_57

    move v7, v8

    goto :goto_19

    .line 743
    .end local v1           #e:Ljava/lang/IllegalStateException;
    .restart local v2       #id:J
    .restart local v4       #partition:I
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_4c
    :try_start_4c
    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->removeVcardFromSelectAll(JI)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_57
    .catch Ljava/lang/IllegalStateException; {:try_start_4c .. :try_end_4f} :catch_48
    .catch Landroid/database/StaleDataException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_2c

    .line 747
    .end local v2           #id:J
    .end local v4           #partition:I
    .end local v6           #uri:Landroid/net/Uri;
    :catch_50
    move-exception v1

    .line 748
    .local v1, e:Landroid/database/StaleDataException;
    :try_start_51
    monitor-exit v9

    move v7, v8

    goto :goto_19

    .line 751
    .end local v1           #e:Landroid/database/StaleDataException;
    :cond_54
    monitor-exit v9

    move v7, v8

    .line 753
    goto :goto_19

    .line 751
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
    .line 833
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02ea

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

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

    .line 836
    return-void
.end method


# virtual methods
.method public clearCustomSearchResult()V
    .registers 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 283
    return-void
.end method

.method public clearSelectedArray()V
    .registers 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 597
    return-void
.end method

.method protected configureAdapter()V
    .registers 4

    .prologue
    .line 334
    const-string v1, "InteractionPickerContactsFragment"

    const-string v2, "configureAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 337
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 338
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 339
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 310
    const-string v1, "InteractionPickerContactsFragment"

    const-string v2, "createListAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 312
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 313
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 314
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mGroupFilter:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setGroupFilter(Z)V

    .line 315
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setGroupExtra(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 316
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 317
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setDisplayPhotos(Z)V

    .line 318
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setQuickContactEnabled(Z)V

    .line 319
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setActionCode(I)V

    .line 320
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_3c

    .line 321
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setTopDividerEnabled(Z)V

    .line 328
    .end local v0           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    :cond_3c
    :goto_3c
    return-object v0

    .line 325
    :cond_3d
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 326
    .local v0, adapter:Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 327
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_3c
.end method

.method public getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;)Ljava/lang/String;
    .registers 4
    .parameter "contactDatas"

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 589
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->mDisplayName:Ljava/lang/String;

    .line 591
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    goto :goto_9
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 219
    const-string v1, "InteractionPickerContactsFragment"

    const-string v2, " === inflateView() === "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const v1, 0x7f04003c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 221
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0d00e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 225
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x7f0a01ad

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSearchQuery()V

    .line 235
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 174
    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 176
    if-eqz p1, :cond_1e

    .line 177
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 180
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mInteractionPickContactsListener:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$InteractionPickContactsListener;

    if-eqz v0, :cond_2d

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mInteractionPickContactsListener:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$InteractionPickContactsListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$InteractionPickContactsListener;->onSelected(I)V

    .line 183
    :cond_2d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 187
    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 189
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 6
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 193
    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListContainer:Landroid/view/View;

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mEmptyView:Landroid/view/View;

    .line 199
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 200
    const v0, 0x7f0400b2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    .line 201
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0d008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCheckBox:Landroid/widget/CheckBox;

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    :cond_55
    return-void
.end method

.method public onDataChosen(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;Ljava/lang/String;ZLandroid/net/Uri;)V
    .registers 12
    .parameter "dataInfo"
    .parameter "partition"
    .parameter "checked"
    .parameter "uri"

    .prologue
    .line 992
    const-wide/16 v4, 0x0

    .line 995
    .local v4, dataid:J
    :try_start_2
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    .line 997
    if-eqz p3, :cond_1a

    .line 998
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v6

    .line 1000
    .local v6, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

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

    .line 1004
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1005
    return-void

    .line 1002
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
    .line 840
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    .line 842
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1e

    .line 843
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_1b

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0xfa

    if-ne v0, v1, :cond_1f

    .line 845
    :cond_1b
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->excuteSelectAllVcard()V

    .line 850
    :cond_1e
    :goto_1e
    return-void

    .line 847
    :cond_1f
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->excuteSelectAllContacts()V

    goto :goto_1e
.end method

.method protected onItemClick(IJ)V
    .registers 11
    .parameter "position"
    .parameter "id"

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 353
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 355
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_d

    .line 397
    :goto_c
    return-void

    .line 359
    :cond_d
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, contactId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v2

    .line 362
    .local v2, partition:I
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    sparse-switch v4, :sswitch_data_64

    .line 392
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or unhandled action code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 366
    :sswitch_39
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 367
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->removeContact(Ljava/lang/String;I)V

    goto :goto_c

    .line 369
    :cond_43
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMaxAdded()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 371
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->pickContact(Landroid/net/Uri;IZ)V

    goto :goto_c

    .line 373
    :cond_4e
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxCountAlertDialog()V

    goto :goto_c

    .line 380
    :sswitch_52
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 381
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->removeContact(Ljava/lang/String;I)V

    goto :goto_c

    .line 383
    :cond_5c
    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_c

    .line 388
    :sswitch_60
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->pickContact(Landroid/net/Uri;)V

    goto :goto_c

    .line 362
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
    .line 344
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 346
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

    .line 402
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mEnabled:Z

    if-nez v2, :cond_9

    .line 479
    :goto_8
    return-void

    .line 406
    :cond_9
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 407
    .local v1, loaderId:I
    if-ne v1, v6, :cond_43

    .line 408
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mDirectoryListStatus:I

    .line 409
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 410
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->startLoading()V

    .line 463
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_32

    .line 464
    if-nez v1, :cond_2b

    .line 465
    if-eqz p2, :cond_ac

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_ac

    .line 467
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasPhoneData:Z

    .line 471
    :cond_2b
    :goto_2b
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasPhoneData:Z

    if-nez v2, :cond_b0

    :goto_2f
    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->configureEmptyView(Z)V

    .line 474
    :cond_32
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 475
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->refreshSelectAllState()V

    .line 477
    :cond_3b
    const-string v2, "InteractionPickerContactsFragment"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 414
    :cond_43
    invoke-virtual {p0, v1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 415
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 417
    if-eqz p2, :cond_7c

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7c

    .line 418
    if-nez v1, :cond_79

    .line 420
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasPhoneSearchData:Z

    .line 435
    :goto_58
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getDirectorySearchMode()I

    move-result v0

    .line 436
    .local v0, directorySearchMode:I
    if-eqz v0, :cond_6c

    .line 437
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_84

    .line 438
    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mDirectoryListStatus:I

    .line 439
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v6, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 446
    :cond_6c
    :goto_6c
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasPhoneSearchData:Z

    if-nez v2, :cond_88

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasGalSearchData:Z

    if-nez v2, :cond_88

    move v2, v3

    :goto_75
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->configureEmptyView(Z)V

    goto :goto_19

    .line 422
    .end local v0           #directorySearchMode:I
    :cond_79
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasGalSearchData:Z

    goto :goto_58

    .line 426
    :cond_7c
    if-nez v1, :cond_81

    .line 427
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasPhoneSearchData:Z

    goto :goto_58

    .line 430
    :cond_81
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasGalSearchData:Z

    goto :goto_58

    .line 441
    .restart local v0       #directorySearchMode:I
    :cond_84
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->startLoading()V

    goto :goto_6c

    :cond_88
    move v2, v4

    .line 446
    goto :goto_75

    .line 448
    .end local v0           #directorySearchMode:I
    :cond_8a
    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mDirectoryListStatus:I

    .line 449
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 452
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFakeQueryModeEnabled:Z

    if-eqz v2, :cond_19

    .line 453
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFakeQueryStatus:I

    if-ne v2, v3, :cond_a2

    .line 454
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFakeQueryStatus:I

    .line 455
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->startFullQuery()V

    goto/16 :goto_19

    .line 456
    :cond_a2
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFakeQueryStatus:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_19

    .line 457
    const/4 v2, 0x4

    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFakeQueryStatus:I

    goto/16 :goto_19

    .line 469
    :cond_ac
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasPhoneData:Z

    goto/16 :goto_2b

    :cond_b0
    move v3, v4

    .line 471
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
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPickerResult()V
    .registers 4

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    if-eqz v0, :cond_8

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z

    .line 556
    :goto_7
    return-void

    .line 540
    :cond_8
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    sparse-switch v0, :sswitch_data_38

    .line 553
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unhandled action code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :sswitch_28
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickDataAction(Ljava/util/HashMap;)V

    goto :goto_7

    .line 549
    :sswitch_30
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V

    goto :goto_7

    .line 540
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
    .line 519
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V

    .line 520
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickSpeedDialAction(Landroid/net/Uri;)V

    .line 525
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;J)V
    .registers 5
    .parameter "uri"
    .parameter "dataid"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickSpeedDialAction(Landroid/net/Uri;J)V

    .line 531
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

    .line 563
    const-string v1, "InteractionPickerContactsFragment"

    const-string v2, " === onQueryCompleted === "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 566
    .local v0, contactDatas:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_30

    .line 567
    iget v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->mAvailableDataCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    .line 568
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;

    iget-object v2, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->mPartition:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;)V

    .line 579
    :goto_2e
    iput-boolean v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFromSelectAll:Z

    .line 581
    :cond_30
    return-void

    .line 571
    :cond_31
    new-instance v6, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;

    invoke-direct {v6}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;-><init>()V

    .line 572
    .local v6, dialog:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;
    invoke-virtual {v6, p0, v7}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 573
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;->setName(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v6, v0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;->setContactDatas(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;)V

    .line 575
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;->setUri(Landroid/net/Uri;)V

    .line 576
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DataBrowseDialogContactsFragment"

    invoke-virtual {v6, v1, v2}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogContactsFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 156
    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 158
    const-string v0, "selectIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 159
    return-void
.end method

.method public onSelectedInfoChanged()V
    .registers 3

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 612
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPickerResult()V

    .line 625
    :cond_9
    :goto_9
    return-void

    .line 616
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 617
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 619
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mInteractionPickContactsListener:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$InteractionPickContactsListener;

    if-eqz v0, :cond_2b

    .line 620
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mInteractionPickContactsListener:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$InteractionPickContactsListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$InteractionPickContactsListener;->onSelected(I)V

    .line 622
    :cond_2b
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 623
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->refreshSelectAllState()V

    goto :goto_9
.end method

.method public onSelectedSpeedDialInfoChanged(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 600
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPickerResult(Landroid/net/Uri;)V

    .line 601
    return-void
.end method

.method public onSelectedSpeedDialInfoChanged(Landroid/net/Uri;J)V
    .registers 4
    .parameter "uri"
    .parameter "dataid"

    .prologue
    .line 605
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPickerResult(Landroid/net/Uri;J)V

    .line 606
    return-void
.end method

.method public pickContact(Landroid/net/Uri;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onInteractionPickerAction(Landroid/net/Uri;)V

    .line 483
    return-void
.end method

.method public pickContact(Landroid/net/Uri;IZ)V
    .registers 9
    .parameter "uri"
    .parameter "partition"
    .parameter "flag"

    .prologue
    .line 486
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, contactId:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setUri(Landroid/net/Uri;)V

    .line 488
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setFromSelectall(Z)V

    .line 489
    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V

    .line 490
    .local v1, dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;
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

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 491
    return-void
.end method

.method public reloadData()V
    .registers 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 152
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedState"

    .prologue
    .line 163
    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "restoreSavedState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 166
    if-nez p1, :cond_d

    .line 170
    :goto_c
    return-void

    .line 169
    :cond_d
    const-string v0, "selectIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    goto :goto_c
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .registers 2
    .parameter "filter"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 148
    return-void
.end method

.method public setFromSelectall(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 822
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFromSelectAll:Z

    .line 823
    return-void
.end method

.method public setInteractionPickContactsListener(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$InteractionPickContactsListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mInteractionPickContactsListener:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$InteractionPickContactsListener;

    .line 120
    return-void
.end method

.method public setMMSinformation(III)V
    .registers 4
    .parameter "ActionCode"
    .parameter "LimitedCount"
    .parameter "CurrentCount"

    .prologue
    .line 1241
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    .line 1242
    iput p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    .line 1243
    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    .line 1244
    return-void
.end method

.method public setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .line 143
    return-void
.end method

.method public setSearchMode(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 495
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 496
    return-void
.end method

.method public setSearchQuery()V
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 277
    return-void
.end method

.method public setSpeedDial(Z)V
    .registers 2
    .parameter "SpeedDial"

    .prologue
    .line 1247
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSpeedDial:Z

    .line 1249
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 584
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->nUri:Landroid/net/Uri;

    .line 585
    return-void
.end method
