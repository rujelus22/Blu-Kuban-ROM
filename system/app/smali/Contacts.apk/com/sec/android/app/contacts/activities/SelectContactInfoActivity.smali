.class public Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
.super Landroid/app/ListActivity;
.source "SelectContactInfoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$StatusQuery;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedQuery;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedInfo;
    }
.end annotation


# static fields
.field static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String;


# instance fields
.field actionBar:Landroid/app/ActionBar;

.field private mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCkTitle:Z

.field private mCursor:Landroid/database/Cursor;

.field private mData:Ljava/lang/String;

.field private mDateType:C

.field private mDay:I

.field private mDisplayName:Ljava/lang/String;

.field private mDisplayNameSource:I

.field mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

.field private mHasEntities:Z

.field private mHasLinked:Z

.field private mHasStatuses:Z

.field private mHeaderView:Landroid/view/View;

.field mImEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mInternetEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDirectLaunch:Z

.field private mIsFirstOther:I

.field private mItemCount:I

.field private mLabel:Ljava/lang/String;

.field private mLinked:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mLookupUri:Landroid/net/Uri;

.field private mMimetype:Ljava/lang/String;

.field private mMode:I

.field private mMonth:I

.field private mNameCount:I

.field private mNameRawContactId:J

.field private mNumPhoneNumbers:I

.field private mObserver:Landroid/database/ContentObserver;

.field mOrganizationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mOtherEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mReadOnlySourcesCnt:I

.field private mResolver:Landroid/content/ContentResolver;

.field mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSelectableItem:I

.field mSelectedContactUri:Landroid/net/Uri;

.field mSelectedContactsId:J

.field private mSendDataList:[Ljava/lang/String;

.field private mShowSmsLinksForAllPhones:Z

.field private mStatuses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/util/DataStatus;",
            ">;"
        }
    .end annotation
.end field

.field protected mWritableRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mWritableSourcesCnt:I

.field private mYear:I

.field sendMenuItem:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 201
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 119
    iput v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNumPhoneNumbers:I

    .line 121
    iput v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNameCount:I

    .line 123
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCkTitle:Z

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mRawContactIds:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mInternetEntries:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOtherEntries:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWritableRawContactIds:Ljava/util/ArrayList;

    .line 166
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasEntities:Z

    .line 168
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasStatuses:Z

    .line 170
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasLinked:Z

    .line 172
    iput-wide v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNameRawContactId:J

    .line 174
    iput v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayNameSource:I

    .line 177
    const/16 v0, 0x41

    iput-char v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDateType:C

    .line 185
    iput-wide v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectedContactsId:J

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectedContactUri:Landroid/net/Uri;

    .line 206
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEntities:Ljava/util/ArrayList;

    .line 208
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mStatuses:Ljava/util/HashMap;

    .line 210
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLinked:Ljava/util/ArrayList;

    .line 235
    new-instance v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mObserver:Landroid/database/ContentObserver;

    .line 699
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsFirstOther:I

    .line 2016
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->startEntityQuery()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)C
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-char v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDateType:C

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->performSendAction(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEntities:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasEntities:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->considerBindData()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsFirstOther:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setDateData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addAllMember()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1959
    const/4 v0, 0x1

    .local v0, i:I
    :goto_2
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectableItem:I

    if-gt v0, v1, :cond_c

    .line 1960
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->addSelectedContact(IZ)V

    .line 1959
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1961
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1962
    return-void
.end method

.method private bindData()V
    .registers 4

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->buildEntries()V

    .line 597
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mInternetEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 600
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 601
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 604
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectableItem:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 621
    :goto_26
    return-void

    .line 607
    :cond_27
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCkTitle:Z

    if-nez v0, :cond_36

    .line 608
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->actionBar:Landroid/app/ActionBar;

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->actionBar:Landroid/app/ActionBar;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setupTitle(Landroid/app/ActionBar;)V

    .line 612
    :cond_36
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;

    if-nez v0, :cond_56

    .line 613
    new-instance v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;

    .line 614
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 620
    :goto_4c
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_26

    .line 617
    :cond_56
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->setSections(Ljava/util/ArrayList;Z)V

    goto :goto_4c
.end method

.method static buildActionString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;ZLandroid/content/Context;)Ljava/lang/String;
    .registers 7
    .parameter "kind"
    .parameter "values"
    .parameter "lowerCase"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1120
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    if-nez v2, :cond_6

    .line 1128
    :cond_5
    :goto_5
    return-object v1

    .line 1123
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    invoke-interface {v2, p3, p1}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1125
    .local v0, actionHeader:Ljava/lang/CharSequence;
    if-eqz v0, :cond_5

    .line 1128
    if-eqz p2, :cond_19

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method

.method static buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter "kind"
    .parameter "values"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1132
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-nez v2, :cond_6

    .line 1136
    :cond_5
    :goto_5
    return-object v1

    .line 1135
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    invoke-interface {v2, p2, p1}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1136
    .local v0, actionBody:Ljava/lang/CharSequence;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method

.method private final buildEntries()V
    .registers 25

    .prologue
    .line 706
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNameCount:I

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 709
    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v4, :cond_22

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 709
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_f

    .line 713
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 714
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mReadOnlySourcesCnt:I

    .line 715
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWritableSourcesCnt:I

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWritableRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 718
    const/4 v5, 0x0

    .line 719
    const/4 v4, 0x0

    .line 720
    const/4 v3, 0x0

    .line 721
    const/4 v2, 0x0

    .line 722
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsFirstOther:I

    .line 725
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v15

    .line 728
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    if-eqz v6, :cond_390

    .line 730
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v7, v4

    move v8, v5

    move v4, v3

    move v3, v2

    :goto_59
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_390

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    .line 731
    invoke-virtual {v2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v17

    .line 733
    const-string v5, "account_type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 734
    const-string v5, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 736
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_96

    .line 737
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    :cond_96
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWritableSourcesCnt:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWritableSourcesCnt:I

    .line 741
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWritableRawContactIds:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    invoke-virtual {v2}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move v11, v3

    move v12, v4

    move v10, v7

    move v13, v8

    :cond_b7
    :goto_b7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 744
    iget-object v9, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 746
    const-string v2, "raw_contact_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 748
    const-string v2, "_id"

    invoke-virtual {v9, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 749
    const-string v2, "mimetype"

    invoke-virtual {v9, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 750
    const-string v2, "data_set"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 752
    if-eqz v3, :cond_b7

    .line 755
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1, v3}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 757
    if-eqz v4, :cond_b7

    .line 762
    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b7

    move-object/from16 v2, p0

    .line 766
    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JJLandroid/content/ContentValues;)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    move-result-object v21

    .line 769
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a7

    const/4 v2, 0x1

    move v14, v2

    .line 771
    :goto_10c
    const-string v2, "is_super_primary"

    invoke-virtual {v9, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1ab

    const/4 v2, 0x1

    .line 773
    :goto_119
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "vnd.android.cursor.item/name"

    invoke-static/range {v22 .. v23}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_135

    .line 774
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNameCount:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNameCount:I

    .line 777
    :cond_135
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "vnd.android.cursor.item/name"

    invoke-static/range {v22 .. v23}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_b7

    .line 778
    const-string v22, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1ae

    if-eqz v14, :cond_1ae

    .line 780
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNumPhoneNumbers:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNumPhoneNumbers:I

    .line 782
    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isPrimary:Z

    .line 784
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setFirstEntry(ZLcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z

    move-result v13

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    move-object/from16 v0, v21

    iget v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_17b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mShowSmsLinksForAllPhones:Z

    if-eqz v2, :cond_17b

    .line 908
    :cond_17b
    :goto_17b
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    if-eqz v2, :cond_b7

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    if-eqz v2, :cond_b7

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    if-eqz v2, :cond_b7

    .line 909
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLabel:Ljava/lang/String;

    .line 910
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mData:Ljava/lang/String;

    .line 911
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMimetype:Ljava/lang/String;

    goto/16 :goto_b7

    .line 769
    :cond_1a7
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_10c

    .line 771
    :cond_1ab
    const/4 v2, 0x0

    goto/16 :goto_119

    .line 792
    :cond_1ae
    const-string v22, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_20c

    if-eqz v14, :cond_20c

    .line 795
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v10, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setFirstEntry(ZLcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z

    move-result v14

    .line 797
    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isPrimary:Z

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mStatuses:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/contacts/util/DataStatus;

    .line 804
    if-eqz v10, :cond_209

    .line 805
    const-string v2, "vnd.android.cursor.item/im"

    .line 806
    const-string v2, "vnd.android.cursor.item/im"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 808
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JJLandroid/content/ContentValues;)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    move-result-object v2

    .line 811
    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    .line 812
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setFirstEntry(ZLcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z

    move-result v12

    .line 813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_209
    move v10, v14

    .line 816
    goto/16 :goto_17b

    :cond_20c
    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25e

    if-eqz v14, :cond_25e

    .line 818
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_231

    .line 819
    const v2, 0x7f0a0158

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    .line 823
    :cond_231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mStatuses:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/util/DataStatus;

    .line 824
    if-eqz v2, :cond_24b

    .line 825
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    .line 827
    :cond_24b
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setFirstEntry(ZLcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z

    move-result v12

    .line 828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17b

    .line 829
    :cond_25e
    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c8

    if-nez v14, :cond_272

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c8

    .line 832
    :cond_272
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNameRawContactId:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_2c4

    const/4 v2, 0x1

    .line 834
    :goto_27b
    if-eqz v2, :cond_2c6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayNameSource:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_2c6

    if-eqz v14, :cond_291

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c6

    :cond_291
    const/4 v2, 0x1

    .line 838
    :goto_292
    if-nez v2, :cond_17b

    .line 839
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 841
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b1

    .line 842
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    .line 843
    const-string v2, ""

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    .line 845
    :cond_2b1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setFirstEntryForOther(ILcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)V

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17b

    .line 832
    :cond_2c4
    const/4 v2, 0x0

    goto :goto_27b

    .line 834
    :cond_2c6
    const/4 v2, 0x0

    goto :goto_292

    .line 848
    :cond_2c8
    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ea

    if-eqz v14, :cond_2ea

    .line 851
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 852
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setFirstEntryForOther(ILcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)V

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOtherEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17b

    .line 854
    :cond_2ea
    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_304

    if-eqz v14, :cond_304

    .line 856
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOtherEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17b

    .line 862
    :cond_304
    const-string v2, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_326

    if-eqz v14, :cond_326

    .line 864
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 866
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v11, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setFirstEntry(ZLcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z

    move-result v11

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mInternetEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17b

    .line 882
    :cond_326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mStatuses:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-wide v7, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/util/DataStatus;

    .line 883
    iget-boolean v3, v4, Lcom/android/contacts/model/DataKind;->actionBodySocial:Z

    if-eqz v3, :cond_371

    if-eqz v2, :cond_371

    const/4 v3, 0x1

    .line 884
    :goto_33f
    if-eqz v3, :cond_347

    .line 885
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    .line 888
    :cond_347
    if-nez v3, :cond_34b

    if-eqz v14, :cond_17b

    .line 889
    :cond_34b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setFirstEntryForOther(ILcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)V

    .line 890
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    const-string v3, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37f

    .line 894
    :try_start_35f
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->checkDateValue(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)V
    :try_end_366
    .catch Ljava/lang/NumberFormatException; {:try_start_35f .. :try_end_366} :catch_373
    .catch Ljava/lang/NullPointerException; {:try_start_35f .. :try_end_366} :catch_379

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOtherEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17b

    .line 883
    :cond_371
    const/4 v3, 0x0

    goto :goto_33f

    .line 895
    :catch_373
    move-exception v2

    .line 896
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_b7

    .line 898
    :catch_379
    move-exception v2

    .line 899
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_b7

    .line 904
    :cond_37f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOtherEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17b

    :cond_38a
    move v3, v11

    move v4, v12

    move v7, v10

    move v8, v13

    .line 915
    goto/16 :goto_59

    .line 917
    :cond_390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mInternetEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectableItem:I

    .line 920
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectableItem:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_40d

    .line 921
    new-instance v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;-><init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLabel:Ljava/lang/String;

    iput-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    .line 923
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mData:Ljava/lang/String;

    iput-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    .line 924
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMimetype:Ljava/lang/String;

    iput-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    .line 925
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectableItem:I

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    .line 926
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectableItem:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->parseSendData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 927
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->performSendAction(Z)V

    .line 928
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->closeCursor()V

    .line 930
    :cond_40d
    return-void
.end method

.method private checkDateValue(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)V
    .registers 12
    .parameter "entry"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 646
    new-instance v3, Ljava/util/StringTokenizer;

    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const-string v5, "."

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    .local v3, tokens:Ljava/util/StringTokenizer;
    new-array v0, v9, [Ljava/lang/String;

    .line 649
    .local v0, dateSplitted:[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_10
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 650
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 649
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 654
    :cond_21
    aget-object v4, v0, v6

    if-eqz v4, :cond_48

    aget-object v4, v0, v7

    if-eqz v4, :cond_2d

    aget-object v4, v0, v8

    if-nez v4, :cond_48

    .line 655
    :cond_2d
    new-instance v3, Ljava/util/StringTokenizer;

    .end local v3           #tokens:Ljava/util/StringTokenizer;
    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const-string v5, "-"

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    .restart local v3       #tokens:Ljava/util/StringTokenizer;
    const/4 v2, 0x1

    :goto_37
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 658
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 657
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 670
    :cond_48
    aget-object v4, v0, v6

    if-eqz v4, :cond_6e

    aget-object v4, v0, v7

    if-eqz v4, :cond_54

    aget-object v4, v0, v8

    if-nez v4, :cond_6e

    .line 671
    :cond_54
    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 672
    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 673
    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    .line 678
    :cond_6e
    const/4 v2, 0x0

    :goto_6f
    if-ge v2, v9, :cond_8b

    .line 681
    :try_start_71
    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_76} :catch_79
    .catch Ljava/lang/NullPointerException; {:try_start_71 .. :try_end_76} :catch_82

    .line 678
    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    .line 682
    :catch_79
    move-exception v1

    .line 683
    .local v1, e:Ljava/lang/NumberFormatException;
    if-eqz v2, :cond_76

    .line 686
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4

    .line 688
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_82
    move-exception v1

    .line 689
    .local v1, e:Ljava/lang/NullPointerException;
    if-eqz v2, :cond_76

    .line 692
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 697
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_8b
    return-void
.end method

.method private closeCursor()V
    .registers 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_13

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    .line 314
    :cond_13
    return-void
.end method

.method private considerBindData()V
    .registers 2

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasEntities:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasStatuses:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasLinked:Z

    if-eqz v0, :cond_f

    .line 588
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindData()V

    .line 590
    :cond_f
    return-void
.end method

.method private extractDate(C[Ljava/lang/String;)V
    .registers 7
    .parameter "type"
    .parameter "dateSplitted"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1914
    packed-switch p1, :pswitch_data_82

    .line 1941
    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I

    .line 1943
    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    .line 1945
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    .line 1946
    aget-object v0, p2, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDay:I

    .line 1949
    :goto_24
    return-void

    .line 1916
    :pswitch_25
    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I

    .line 1918
    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    .line 1920
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    .line 1921
    aget-object v0, p2, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDay:I

    goto :goto_24

    .line 1924
    :pswitch_44
    aget-object v0, p2, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I

    .line 1926
    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    .line 1928
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    .line 1929
    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDay:I

    goto :goto_24

    .line 1932
    :pswitch_63
    aget-object v0, p2, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I

    .line 1934
    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    .line 1936
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    .line 1937
    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDay:I

    goto :goto_24

    .line 1914
    :pswitch_data_82
    .packed-switch 0x41
        :pswitch_25
        :pswitch_44
        :pswitch_63
    .end packed-switch
.end method

.method private getDateTypeInSetting()V
    .registers 4

    .prologue
    const/16 v2, 0x41

    .line 1978
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1981
    if-nez v0, :cond_10

    .line 1982
    const-string v0, "MM/dd/yyyy"

    .line 1984
    :cond_10
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_28

    .line 1996
    iput-char v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDateType:C

    .line 2000
    :goto_1a
    return-void

    .line 1987
    :sswitch_1b
    iput-char v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDateType:C

    goto :goto_1a

    .line 1990
    :sswitch_1e
    const/16 v0, 0x42

    iput-char v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDateType:C

    goto :goto_1a

    .line 1993
    :sswitch_23
    const/16 v0, 0x43

    iput-char v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDateType:C

    goto :goto_1a

    .line 1984
    :sswitch_data_28
    .sparse-switch
        0x4d -> :sswitch_1e
        0x64 -> :sswitch_23
        0x79 -> :sswitch_1b
    .end sparse-switch
.end method

.method private performSendAction(Z)V
    .registers 9
    .parameter "isDirect"

    .prologue
    const/4 v5, 0x1

    .line 533
    const-string v0, ""

    .line 534
    .local v0, data:Ljava/lang/String;
    if-eqz p1, :cond_9

    .line 535
    iget v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectableItem:I

    iput v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mItemCount:I

    .line 536
    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    if-eqz v3, :cond_6f

    .line 537
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    iget v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mItemCount:I

    if-ge v1, v3, :cond_94

    .line 538
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_50

    .line 539
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_53

    .line 540
    iget v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    if-ne v3, v5, :cond_3b

    .line 541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    :cond_50
    :goto_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 544
    :cond_53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_50

    .line 546
    .end local v1           #i:I
    :cond_6f
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    if-nez v3, :cond_94

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_94

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v3, v5, :cond_94

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    :cond_94
    iget v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    if-ne v3, v5, :cond_ca

    .line 550
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsDirectLaunch:Z

    if-eqz v3, :cond_b8

    .line 551
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "smsto"

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 553
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "sms_body"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 555
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->finish()V

    .line 570
    .end local v2           #intent:Landroid/content/Intent;
    :cond_b7
    :goto_b7
    return-void

    .line 557
    :cond_b8
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 558
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "namecard_string"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setResult(ILandroid/content/Intent;)V

    .line 560
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->finish()V

    goto :goto_b7

    .line 562
    .end local v2           #intent:Landroid/content/Intent;
    :cond_ca
    iget v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b7

    .line 563
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.mobileprint.PRINT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 564
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.TITLE"

    const-string v4, "Contact"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    const-string v3, "android.intent.extra.SUBJECT"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 568
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->finish()V

    goto :goto_b7
.end method

.method private reArrangeDate(CLjava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1855
    .line 1858
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v4, :cond_f8

    move v0, v1

    .line 1861
    :goto_b
    iget v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDay:I

    if-ge v3, v4, :cond_10

    move v2, v1

    .line 1864
    :cond_10
    packed-switch p1, :pswitch_data_fc

    .line 1898
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1899
    if-eqz v0, :cond_f0

    .line 1900
    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1902
    :goto_27
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1903
    if-eqz v2, :cond_3d

    .line 1904
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1906
    :cond_3d
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1910
    :goto_49
    return-object v0

    .line 1867
    :pswitch_4a
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1868
    if-eqz v0, :cond_f5

    .line 1869
    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1871
    :goto_5e
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1872
    if-eqz v2, :cond_74

    .line 1873
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1875
    :cond_74
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_49

    .line 1878
    :pswitch_81
    if-eqz v0, :cond_89

    .line 1879
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1881
    :cond_89
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1882
    if-eqz v2, :cond_9f

    .line 1883
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1885
    :cond_9f
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_49

    .line 1888
    :pswitch_b8
    if-eqz v2, :cond_c0

    .line 1889
    const-string v1, "0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1891
    :cond_c0
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDay:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1892
    if-eqz v0, :cond_f3

    .line 1893
    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1895
    :goto_d4
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto/16 :goto_49

    :cond_f0
    move-object v0, v1

    goto/16 :goto_27

    :cond_f3
    move-object v0, v1

    goto :goto_d4

    :cond_f5
    move-object v0, v1

    goto/16 :goto_5e

    :cond_f8
    move v0, v2

    goto/16 :goto_b

    .line 1864
    nop

    :pswitch_data_fc
    .packed-switch 0x41
        :pswitch_4a
        :pswitch_81
        :pswitch_b8
    .end packed-switch
.end method

.method private declared-synchronized readLinked(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 933
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLinked:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 935
    if-eqz p1, :cond_38

    .line 937
    :goto_8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 939
    new-instance v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedInfo;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedInfo;-><init>()V

    .line 940
    .local v0, info:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedInfo;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedInfo;->id:I

    .line 942
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedInfo;->accountName:Ljava/lang/String;

    .line 944
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedInfo;->accountType:Ljava/lang/String;

    .line 946
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedInfo;->displayName:Ljava/lang/String;

    .line 948
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLinked:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_35

    goto :goto_8

    .line 933
    .end local v0           #info:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedInfo;
    :catchall_35
    move-exception v1

    monitor-exit p0

    throw v1

    .line 952
    :cond_38
    const/4 v1, 0x1

    :try_start_39
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasLinked:Z
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_35

    .line 953
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized readStatuses(Landroid/database/Cursor;)V
    .registers 7
    .parameter "cursor"

    .prologue
    .line 573
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mStatuses:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 576
    :goto_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 577
    new-instance v2, Lcom/android/contacts/util/DataStatus;

    invoke-direct {v2, p1}, Lcom/android/contacts/util/DataStatus;-><init>(Landroid/database/Cursor;)V

    .line 578
    .local v2, status:Lcom/android/contacts/util/DataStatus;
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 579
    .local v0, dataId:J
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mStatuses:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_20

    goto :goto_6

    .line 573
    .end local v0           #dataId:J
    .end local v2           #status:Lcom/android/contacts/util/DataStatus;
    :catchall_20
    move-exception v3

    monitor-exit p0

    throw v3

    .line 582
    :cond_23
    const/4 v3, 0x1

    :try_start_24
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasStatuses:Z
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_20

    .line 583
    monitor-exit p0

    return-void
.end method

.method private removeAllMember()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1952
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    .line 1953
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1954
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1955
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->sendMenuItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1956
    return-void
.end method

.method private setDateData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Ljava/lang/String;
    .registers 13
    .parameter

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1364
    new-instance v4, Ljava/util/StringTokenizer;

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const-string v5, "."

    invoke-direct {v4, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    new-array v5, v10, [Ljava/lang/String;

    move v0, v1

    .line 1367
    :goto_16
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1368
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1367
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1372
    :cond_27
    aget-object v0, v5, v2

    if-eqz v0, :cond_4e

    aget-object v0, v5, v1

    if-eqz v0, :cond_33

    aget-object v0, v5, v8

    if-nez v0, :cond_4e

    .line 1373
    :cond_33
    new-instance v4, Ljava/util/StringTokenizer;

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const-string v6, "-"

    invoke-direct {v4, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1375
    :goto_3d
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 1376
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1375
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_4e
    move v0, v2

    .line 1389
    :goto_4f
    if-ge v0, v10, :cond_72

    .line 1390
    aget-object v4, v5, v0

    if-eqz v4, :cond_6f

    aget-object v4, v5, v0

    const-string v6, "T"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 1392
    aget-object v4, v5, v8

    const/16 v6, 0x54

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1393
    aget-object v6, v5, v0

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    .line 1389
    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 1399
    :cond_72
    aget-object v0, v5, v2

    if-eqz v0, :cond_a2

    aget-object v0, v5, v1

    if-eqz v0, :cond_a2

    aget-object v0, v5, v8

    if-nez v0, :cond_a2

    .line 1401
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 1402
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 1403
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    :cond_97
    :goto_97
    move v0, v2

    .line 1447
    :goto_98
    if-ge v0, v10, :cond_1d6

    .line 1449
    :try_start_9a
    aget-object v4, v5, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9f
    .catch Ljava/lang/NumberFormatException; {:try_start_9a .. :try_end_9f} :catch_178
    .catch Ljava/lang/NullPointerException; {:try_start_9a .. :try_end_9f} :catch_1a7

    .line 1447
    :goto_9f
    add-int/lit8 v0, v0, 0x1

    goto :goto_98

    .line 1405
    :cond_a2
    aget-object v0, v5, v2

    if-eqz v0, :cond_97

    aget-object v0, v5, v1

    if-nez v0, :cond_97

    aget-object v0, v5, v8

    if-nez v0, :cond_97

    .line 1411
    const/4 v0, 0x0

    :try_start_af
    aget-object v0, v5, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_97

    .line 1412
    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1414
    const/4 v0, 0x0

    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    .line 1415
    const/4 v0, 0x1

    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const/4 v6, 0x4

    const/4 v7, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    .line 1416
    const/4 v0, 0x2

    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    .line 1420
    const/4 v0, 0x1

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1421
    const/4 v4, 0x2

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1423
    if-lez v0, :cond_f3

    const/16 v6, 0xd

    if-lt v0, v6, :cond_146

    .line 1424
    :cond_f3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1425
    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 1426
    const/4 v4, 0x1

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 1427
    const/4 v4, 0x2

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4
    :try_end_11d
    .catch Ljava/lang/NumberFormatException; {:try_start_af .. :try_end_11d} :catch_11f

    goto/16 :goto_97

    .line 1437
    :catch_11f
    move-exception v0

    .line 1438
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1439
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    .line 1440
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    .line 1441
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    goto/16 :goto_97

    .line 1428
    :cond_146
    if-lez v4, :cond_14c

    const/16 v0, 0x20

    if-lt v4, v0, :cond_97

    .line 1429
    :cond_14c
    :try_start_14c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1430
    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 1431
    const/4 v4, 0x1

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 1432
    const/4 v4, 0x2

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4
    :try_end_176
    .catch Ljava/lang/NumberFormatException; {:try_start_14c .. :try_end_176} :catch_11f

    goto/16 :goto_97

    .line 1450
    :catch_178
    move-exception v4

    .line 1451
    if-nez v0, :cond_181

    .line 1452
    const-string v4, "0"

    aput-object v4, v5, v2

    goto/16 :goto_9f

    .line 1456
    :cond_181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1457
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1458
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1459
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v8

    goto/16 :goto_9f

    .line 1462
    :catch_1a7
    move-exception v4

    .line 1463
    if-nez v0, :cond_1b0

    .line 1464
    const-string v4, "0"

    aput-object v4, v5, v2

    goto/16 :goto_9f

    .line 1468
    :cond_1b0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1469
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1470
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1471
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v8

    goto/16 :goto_9f

    .line 1479
    :cond_1d6
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->dateType:Ljava/lang/String;

    if-eqz v0, :cond_1f6

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->dateType:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f6

    .line 1480
    const/16 v0, 0x41

    invoke-direct {p0, v0, v5}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->extractDate(C[Ljava/lang/String;)V

    .line 1482
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getDateTypeInSetting()V

    .line 1484
    iget-char v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDateType:C

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->reArrangeDate(CLjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1501
    :goto_1f1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1487
    :cond_1f6
    const/16 v0, 0x41

    invoke-direct {p0, v0, v5}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->extractDate(C[Ljava/lang/String;)V

    .line 1489
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getDateTypeInSetting()V

    .line 1491
    iget-char v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDateType:C

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->reArrangeDate(CLjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_1f1
.end method

.method private setFirstEntry(ZLcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z
    .registers 4
    .parameter "isFirstType"
    .parameter "entry"

    .prologue
    .line 624
    if-nez p1, :cond_6

    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isFirst:Z

    .line 626
    const/4 p1, 0x1

    .line 629
    :cond_6
    return p1
.end method

.method private setFirstEntryForOther(ILcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)V
    .registers 4
    .parameter "isFirstEntryType"
    .parameter "entry"

    .prologue
    .line 634
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsFirstOther:I

    if-ge v0, p1, :cond_9

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isFirst:Z

    .line 636
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsFirstOther:I

    .line 639
    :cond_9
    return-void
.end method

.method private static setupContactCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 15
    .parameter "resolver"
    .parameter "lookupUri"

    .prologue
    const/4 v4, 0x4

    const/4 v12, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 384
    if-nez p1, :cond_7

    .line 417
    :cond_6
    :goto_6
    return-object v3

    .line 387
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    .line 388
    .local v8, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 392
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 393
    .local v9, uriContactId:J
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 394
    .local v11, uriLookupKey:Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "data"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 402
    .local v1, dataUri:Landroid/net/Uri;
    new-array v2, v4, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "name_raw_contact_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "display_name_source"

    aput-object v4, v2, v0

    const-string v0, "lookup"

    aput-object v0, v2, v5

    const-string v0, "mimetype"

    aput-object v0, v2, v12

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 407
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 408
    const-string v0, "lookup"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 409
    .local v7, lookupKey:Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 411
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :cond_66
    move-object v3, v6

    .line 414
    goto :goto_6

    .line 416
    .end local v7           #lookupKey:Ljava/lang/String;
    :cond_68
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_6
.end method

.method private setupTitle(Landroid/app/ActionBar;)V
    .registers 13
    .parameter "actionBar"

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x1e

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 320
    iput-boolean v6, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCkTitle:Z

    .line 321
    if-eqz p1, :cond_a3

    .line 322
    const-string v2, ""

    .line 323
    .local v2, displayName:Ljava/lang/CharSequence;
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    if-ne v5, v6, :cond_ad

    .line 324
    iget-boolean v5, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsDirectLaunch:Z

    if-eqz v5, :cond_a4

    .line 325
    const v5, 0x7f0a020d

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 333
    :cond_1b
    :goto_1b
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 335
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040018

    invoke-virtual {v3, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 336
    .local v1, customActionBarView:Landroid/view/View;
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    if-nez v5, :cond_52

    .line 337
    const v5, 0x7f040037

    invoke-virtual {v3, v5, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    .line 338
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 339
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    const v6, 0x7f0d008f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 340
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 342
    :cond_52
    const v5, 0x7f0d009d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->sendMenuItem:Landroid/view/View;

    .line 343
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->sendMenuItem:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 344
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->sendMenuItem:Landroid/view/View;

    new-instance v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    const v5, 0x7f0d009e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 353
    .local v4, revertMenuItem:Landroid/view/View;
    new-instance v5, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    invoke-virtual {p1, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 365
    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 367
    const-string v0, ""

    .line 368
    .local v0, currentLang:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 369
    const-string v5, "he"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_99

    const-string v5, "iw"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 371
    :cond_99
    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x13

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v1, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 380
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v1           #customActionBarView:Landroid/view/View;
    .end local v2           #displayName:Ljava/lang/CharSequence;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #revertMenuItem:Landroid/view/View;
    :cond_a3
    :goto_a3
    return-void

    .line 327
    .restart local v2       #displayName:Ljava/lang/CharSequence;
    :cond_a4
    const v5, 0x7f0a023b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1b

    .line 328
    :cond_ad
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1b

    .line 329
    const v5, 0x7f0a0210

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1b

    .line 375
    .restart local v0       #currentLang:Ljava/lang/String;
    .restart local v1       #customActionBarView:Landroid/view/View;
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #revertMenuItem:Landroid/view/View;
    :cond_bb
    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v1, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_a3
.end method

.method private declared-synchronized startEntityQuery()V
    .registers 20

    .prologue
    .line 437
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->closeCursor()V

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2, v4}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setupContactCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    if-eqz v2, :cond_40

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2, v4}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setupContactCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    .line 450
    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mItemCount:I

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    const-string v5, "name_raw_contact_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNameRawContactId:J

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    const-string v5, "display_name_source"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayNameSource:I

    .line 455
    const-string v16, ""

    .line 457
    .local v16, mimeType:Ljava/lang/String;
    :cond_83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    const-string v5, "mimetype"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 458
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 459
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mItemCount:I

    .line 461
    :cond_a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_83

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_d6

    .line 465
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNameRawContactId:J

    .line 466
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayNameSource:I

    .line 470
    const v2, 0x7f0a0047

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->finish()V
    :try_end_d4
    .catchall {:try_start_1 .. :try_end_d4} :catchall_1ab

    .line 530
    :goto_d4
    monitor-exit p0

    return-void

    .line 475
    :cond_d6
    const/16 v18, 0x0

    .line 476
    .local v18, uri:Landroid/net/Uri;
    :try_start_d8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    if-eqz v2, :cond_f0

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2, v4}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v18

    .line 479
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectedContactUri:Landroid/net/Uri;

    .line 482
    :cond_f0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 484
    .local v12, contactId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 486
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "data"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 490
    .local v3, dataUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 494
    .local v17, nameCursor:Landroid/database/Cursor;
    if-eqz v17, :cond_147

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_147

    .line 495
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getColumnCount()I

    move-result v14

    .line 497
    .local v14, count:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_12f
    if-ge v15, v14, :cond_144

    .line 498
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_141

    .line 499
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    .line 497
    :cond_141
    add-int/lit8 v15, v15, 0x1

    goto :goto_12f

    .line 501
    :cond_144
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 504
    .end local v14           #count:I
    .end local v15           #i:I
    :cond_147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_15a

    .line 505
    const v2, 0x7f0a007f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    .line 507
    :cond_15a
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectedContactsId:J

    .line 510
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasEntities:Z

    .line 511
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasStatuses:Z

    .line 513
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectedContactUri:Landroid/net/Uri;

    const-string v7, "raw_contacts2"

    invoke-static {v2, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const-string v9, "contact_id=?"

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v8, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$StatusQuery;->PROJECTION:[Ljava/lang/String;

    const-string v9, "mode IS NOT NULL OR status IS NOT NULL"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v3

    invoke-virtual/range {v4 .. v11}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a9
    .catchall {:try_start_d8 .. :try_end_1a9} :catchall_1ab

    goto/16 :goto_d4

    .line 437
    .end local v3           #dataUri:Landroid/net/Uri;
    .end local v12           #contactId:J
    .end local v16           #mimeType:Ljava/lang/String;
    .end local v17           #nameCursor:Landroid/database/Cursor;
    .end local v18           #uri:Landroid/net/Uri;
    :catchall_1ab
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private updateHeaderView()V
    .registers 6

    .prologue
    const v4, 0x7f0d008f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1965
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1e

    .line 1966
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1967
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->sendMenuItem:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1975
    :goto_1d
    return-void

    .line 1968
    :cond_1e
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectableItem:I

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_39

    .line 1969
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1970
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->sendMenuItem:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1d

    .line 1972
    :cond_39
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1973
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->sendMenuItem:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1d
.end method


# virtual methods
.method public addSelectedContact(IZ)V
    .registers 8
    .parameter "position"
    .parameter "allItem"

    .prologue
    .line 1049
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    move-result-object v0

    .line 1050
    .local v0, entry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    if-nez p2, :cond_8a

    if-lez p1, :cond_8a

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    add-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    add-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 1052
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    add-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    :goto_40
    if-lez p1, :cond_9b

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    add-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    add-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 1058
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    if-nez v1, :cond_72

    .line 1059
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mItemCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    .line 1061
    :cond_72
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    if-nez v1, :cond_86

    .line 1062
    if-eqz v0, :cond_86

    .line 1063
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->parseSendData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1071
    :cond_86
    :goto_86
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->updateHeaderView()V

    .line 1072
    return-void

    .line 1054
    :cond_8a
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    add-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 1067
    :cond_9b
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_86

    .line 1068
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_86
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 261
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 263
    const v1, 0x7f0400b4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setContentView(I)V

    .line 264
    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    .line 265
    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 267
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 269
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "CONTACT_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    .line 270
    const-string v1, "mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    .line 271
    const-string v1, "direct_launch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsDirectLaunch:Z

    .line 272
    new-instance v1, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-direct {v1, p0, p0}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 275
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 277
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mResolver:Landroid/content/ContentResolver;

    .line 279
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mInternetEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    .line 287
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 303
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCkTitle:Z

    .line 305
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->closeCursor()V

    .line 306
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter "view"
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
    .line 1036
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_18

    .line 1037
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1038
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->removeAllMember()V

    .line 1044
    :goto_d
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->startEntityQuery()V

    .line 1045
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->updateHeaderView()V

    .line 1046
    return-void

    .line 1040
    :cond_14
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->addAllMember()V

    goto :goto_d

    .line 1042
    :cond_18
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->addSelectedContact(IZ)V

    goto :goto_d
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 2005
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 2013
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 2007
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->finish()V

    .line 2008
    const/4 v0, 0x1

    goto :goto_b

    .line 2005
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 297
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 298
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->closeCursor()V

    .line 299
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 956
    const/4 v1, 0x1

    if-ne v1, p1, :cond_16

    .line 959
    :try_start_3
    invoke-direct {p0, p3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->readStatuses(Landroid/database/Cursor;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 961
    if-eqz p3, :cond_b

    .line 962
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 965
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->considerBindData()V

    .line 1026
    :goto_e
    return-void

    .line 961
    :catchall_f
    move-exception v1

    if-eqz p3, :cond_15

    .line 962
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_15
    throw v1

    .line 967
    :cond_16
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2c

    .line 970
    :try_start_19
    invoke-direct {p0, p3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->readLinked(Landroid/database/Cursor;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_25

    .line 973
    if-eqz p3, :cond_21

    .line 974
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 977
    :cond_21
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->considerBindData()V

    goto :goto_e

    .line 973
    :catchall_25
    move-exception v1

    if-eqz p3, :cond_2b

    .line 974
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_2b
    throw v1

    .line 990
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEntities:Ljava/util/ArrayList;

    .line 991
    .local v0, oldEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    new-instance v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;

    invoke-direct {v1, p0, p3, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;-><init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Landroid/database/Cursor;Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_e
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 291
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 292
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->startEntityQuery()V

    .line 293
    return-void
.end method

.method public parseSendData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 1075
    const-string v0, ""

    .line 1076
    const-string v0, " "

    .line 1078
    iget v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_36

    .line 1079
    const-string v0, "\n"

    .line 1083
    :cond_d
    :goto_d
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    iget-object v3, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1084
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1085
    :goto_1c
    iget-object v3, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_47

    .line 1086
    iget-object v3, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3d

    .line 1087
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1080
    :cond_36
    iget v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    if-ne v2, v4, :cond_d

    .line 1081
    const-string v0, " : "

    goto :goto_d

    .line 1089
    :cond_3d
    iget-object v3, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 1091
    :cond_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1115
    :goto_62
    return-object v0

    .line 1093
    :cond_63
    const-string v2, "vnd.android.cursor.item/contact_event"

    iget-object v3, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 1094
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setDateData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Ljava/lang/String;

    move-result-object v2

    .line 1095
    iget v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I

    if-nez v3, :cond_cb

    .line 1096
    iget-char v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDateType:C

    packed-switch v3, :pswitch_data_ce

    .line 1107
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1111
    :goto_7e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    .line 1098
    :pswitch_96
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7e

    .line 1101
    :pswitch_9b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_7e

    .line 1104
    :pswitch_a6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_7e

    .line 1113
    :cond_b1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    :cond_cb
    move-object v1, v2

    goto :goto_7e

    .line 1096
    nop

    :pswitch_data_ce
    .packed-switch 0x41
        :pswitch_96
        :pswitch_9b
        :pswitch_a6
    .end packed-switch
.end method
