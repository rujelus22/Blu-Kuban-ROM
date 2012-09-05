.class public Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
.super Lcom/android/common/widget/GroupingListAdapter;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;
    }
.end annotation


# instance fields
.field private final NOR_INT:I

.field private final SEP_INT:I

.field private final mCallFetcher:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;

.field private mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

.field private final mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

.field private final mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

.field private mCallerIdThread:Ljava/lang/Thread;

.field private mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/util/ExpirableCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/dialertab/calllog/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;

.field private volatile mDone:Z

.field private mFirst:Z

.field private mHandler:Landroid/os/Handler;

.field private mLoading:Z

.field mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private volatile mRequestProcessingDisabled:Z

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/dialertab/calllog/ContactInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field private seperatorIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private strSeparatorArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "context"
    .parameter "callLogFragment"
    .parameter "callFetcher"
    .parameter "currentCountryIso"
    .parameter "voicemailNumber"

    .prologue
    const/4 v3, 0x0

    .line 187
    invoke-direct {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    .line 83
    const/16 v2, 0xa

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->NOR_INT:I

    .line 84
    const/16 v2, 0x37

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->SEP_INT:I

    .line 113
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mLoading:Z

    .line 132
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    .line 137
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->seperatorIDList:Ljava/util/ArrayList;

    .line 138
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->strSeparatorArray:[Ljava/lang/String;

    .line 141
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 151
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 171
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    .line 189
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    .line 190
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCurrentCountryIso:Ljava/lang/String;

    .line 191
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallFetcher:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;

    .line 192
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .line 194
    const/16 v2, 0x64

    invoke-static {v2}, Lcom/android/contacts/util/ExpirableCache;->create(I)Lcom/android/contacts/util/ExpirableCache;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    .line 195
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    .line 196
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 198
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 199
    .local v1, resources:Landroid/content/res/Resources;
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    .line 201
    .local v0, callTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 202
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v2, v1, p5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 203
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v2, v1, v0, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    .line 205
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v2, v3, v4, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;-><init>(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    .line 208
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    return-object v0
.end method

.method private bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .registers 59
    .parameter "view"
    .parameter "c"
    .parameter "count"

    .prologue
    .line 614
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    .line 631
    .local v54, views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 633
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getSeperatorIDList()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->seperatorIDList:Ljava/util/ArrayList;

    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getStrSeparatorArray()[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->strSeparatorArray:[Ljava/lang/String;

    .line 635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->seperatorIDList:Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x37

    if-ne v3, v4, :cond_5a

    .line 637
    const/16 v51, 0x0

    .line 638
    .local v51, mDateText:Ljava/lang/String;
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->strSeparatorArray:[Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    aget-object v51, v3, v4

    .line 641
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_5a} :catch_231

    .line 648
    .end local v51           #mDateText:Ljava/lang/String;
    :cond_5a
    :goto_5a
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 649
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 650
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 652
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 653
    .local v8, number:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 654
    .local v13, date:J
    const/4 v3, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 655
    .local v15, duration:J
    const/16 v3, 0xf

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 657
    .local v42, callType:I
    const/4 v3, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 658
    .local v10, countryIso:Ljava/lang/String;
    const/16 v3, 0xf

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 659
    .local v17, logType:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v40

    .line 660
    .local v40, cachedContactInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    .line 662
    .local v50, mCallType:I
    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v3, p0

    move/from16 v7, p3

    invoke-static/range {v3 .. v8}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getCallDetailIntentProvider(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 666
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_268

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v3, "-1"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_268

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v3, "-2"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_268

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v3, "-3"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_268

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v3, "-4"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_268

    .line 670
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 673
    sparse-switch v17, :sswitch_data_354

    .line 696
    :goto_10d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v3, v8}, Lcom/android/contacts/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/contacts/util/ExpirableCache$CachedValue;

    move-result-object v41

    .line 698
    .local v41, cachedInfo:Lcom/android/contacts/util/ExpirableCache$CachedValue;,"Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    if-nez v41, :cond_272

    const/16 v47, 0x0

    .line 699
    .local v47, info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :goto_119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-virtual {v3, v8}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-virtual {v3, v8}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27c

    .line 703
    :cond_12d
    sget-object v47, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .line 704
    const/4 v9, 0x0

    .line 744
    .local v9, formattedNumber:Ljava/lang/String;
    :goto_130
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    move-object/from16 v35, v0

    .line 745
    .local v35, lookupUri:Landroid/net/Uri;
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 746
    .local v32, name:Ljava/lang/String;
    move-object/from16 v0, v47

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    move/from16 v33, v0

    .line 747
    .local v33, ntype:I
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 748
    .local v34, label:Ljava/lang/String;
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    move-wide/from16 v52, v0

    .line 749
    .local v52, photoId:J
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v12

    .line 750
    .local v12, callTypes:[I
    const/4 v3, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 754
    .local v11, geocode:Ljava/lang/String;
    const-string v3, "cdnip_number"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 755
    .local v44, idxCDNIPNumber:I
    const-string v3, "service_type"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    .line 756
    .local v46, idxServiceType:I
    const-string v3, "cnap_name"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v45

    .line 758
    .local v45, idxCNAPName:I
    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 759
    .local v18, serviceType:I
    move-object/from16 v0, p2

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 760
    .local v19, cnapName:Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 763
    .local v20, cdnipNumber:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_302

    .line 764
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    invoke-direct/range {v7 .. v20}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJIILjava/lang/String;Ljava/lang/String;)V

    .line 772
    .local v7, details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :goto_199
    const/16 v49, 0x0

    .line 774
    .local v49, isNew:Z
    const/16 v48, 0x0

    .line 775
    .local v48, isHighlighted:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v25, 0x0

    move-object/from16 v23, v54

    move-object/from16 v24, v7

    move/from16 v26, p3

    invoke-virtual/range {v21 .. v26}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZI)V

    .line 776
    if-nez v35, :cond_32e

    .line 777
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 778
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->imageLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 779
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->randomThumbnail(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 780
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-virtual {v3, v8}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_323

    .line 781
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    :goto_1f1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v3, :cond_20b

    .line 802
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mFirst:Z

    .line 803
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 804
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 807
    :cond_20b
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 808
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-object/from16 v0, v54

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->registerForList(Landroid/view/View;)V

    .line 810
    return-void

    .line 643
    .end local v7           #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .end local v8           #number:Ljava/lang/String;
    .end local v9           #formattedNumber:Ljava/lang/String;
    .end local v10           #countryIso:Ljava/lang/String;
    .end local v11           #geocode:Ljava/lang/String;
    .end local v12           #callTypes:[I
    .end local v13           #date:J
    .end local v15           #duration:J
    .end local v17           #logType:I
    .end local v18           #serviceType:I
    .end local v19           #cnapName:Ljava/lang/String;
    .end local v20           #cdnipNumber:Ljava/lang/String;
    .end local v32           #name:Ljava/lang/String;
    .end local v33           #ntype:I
    .end local v34           #label:Ljava/lang/String;
    .end local v35           #lookupUri:Landroid/net/Uri;
    .end local v40           #cachedContactInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .end local v41           #cachedInfo:Lcom/android/contacts/util/ExpirableCache$CachedValue;,"Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    .end local v42           #callType:I
    .end local v44           #idxCDNIPNumber:I
    .end local v45           #idxCNAPName:I
    .end local v46           #idxServiceType:I
    .end local v47           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .end local v48           #isHighlighted:Z
    .end local v49           #isNew:Z
    .end local v50           #mCallType:I
    .end local v52           #photoId:J
    :catch_231
    move-exception v43

    .line 644
    .local v43, e:Ljava/lang/Exception;
    const-string v3, "CallLogAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in bindView "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 680
    .end local v43           #e:Ljava/lang/Exception;
    .restart local v8       #number:Ljava/lang/String;
    .restart local v10       #countryIso:Ljava/lang/String;
    .restart local v13       #date:J
    .restart local v15       #duration:J
    .restart local v17       #logType:I
    .restart local v40       #cachedContactInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .restart local v42       #callType:I
    .restart local v50       #mCallType:I
    :sswitch_24e
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_10d

    .line 684
    :sswitch_25b
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getReturnMessageIntentProvider(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_10d

    .line 691
    :cond_268
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_10d

    .line 698
    .restart local v41       #cachedInfo:Lcom/android/contacts/util/ExpirableCache$CachedValue;,"Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    :cond_272
    invoke-interface/range {v41 .. v41}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object/from16 v47, v3

    goto/16 :goto_119

    .line 705
    .restart local v47       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_27c
    if-nez v41, :cond_2a5

    .line 706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-virtual {v3, v8, v4}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 708
    move-object/from16 v47, v40

    .line 711
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v8, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    .line 713
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 714
    .restart local v9       #formattedNumber:Ljava/lang/String;
    move-object/from16 v0, v47

    iput-object v9, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    goto/16 :goto_130

    .line 716
    .end local v9           #formattedNumber:Ljava/lang/String;
    :cond_2a5
    invoke-interface/range {v41 .. v41}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_2d7

    .line 719
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v8, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    .line 728
    :cond_2b3
    :goto_2b3
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object/from16 v0, v47

    if-eq v0, v3, :cond_2ec

    .line 730
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    if-nez v3, :cond_2d1

    .line 731
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v47

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 734
    :cond_2d1
    move-object/from16 v0, v47

    iget-object v9, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .restart local v9       #formattedNumber:Ljava/lang/String;
    goto/16 :goto_130

    .line 720
    .end local v9           #formattedNumber:Ljava/lang/String;
    :cond_2d7
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->callLogInfoMatches(Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z

    move-result v3

    if-nez v3, :cond_2b3

    .line 725
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v8, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    goto :goto_2b3

    .line 737
    :cond_2ec
    move-object/from16 v47, v40

    .line 739
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 740
    .restart local v9       #formattedNumber:Ljava/lang/String;
    move-object/from16 v0, v47

    iput-object v9, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    goto/16 :goto_130

    .line 768
    .restart local v11       #geocode:Ljava/lang/String;
    .restart local v12       #callTypes:[I
    .restart local v18       #serviceType:I
    .restart local v19       #cnapName:Ljava/lang/String;
    .restart local v20       #cdnipNumber:Ljava/lang/String;
    .restart local v32       #name:Ljava/lang/String;
    .restart local v33       #ntype:I
    .restart local v34       #label:Ljava/lang/String;
    .restart local v35       #lookupUri:Landroid/net/Uri;
    .restart local v44       #idxCDNIPNumber:I
    .restart local v45       #idxCNAPName:I
    .restart local v46       #idxServiceType:I
    .restart local v52       #photoId:J
    :cond_302
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v36, 0x0

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-wide/from16 v27, v13

    move-wide/from16 v29, v15

    move/from16 v31, v17

    move/from16 v37, v18

    move-object/from16 v38, v19

    move-object/from16 v39, v20

    invoke-direct/range {v21 .. v39}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V

    .restart local v7       #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_199

    .line 791
    .restart local v48       #isHighlighted:Z
    .restart local v49       #isNew:Z
    :cond_323
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1f1

    .line 794
    :cond_32e
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 795
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->imageLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 797
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-object/from16 v21, p0

    move-object/from16 v22, v54

    move-wide/from16 v23, v52

    move-object/from16 v25, v35

    invoke-direct/range {v21 .. v27}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setPhoto(Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;JLandroid/net/Uri;J)V

    goto/16 :goto_1f1

    .line 673
    nop

    :sswitch_data_354
    .sparse-switch
        0x64 -> :sswitch_24e
        0xc8 -> :sswitch_25b
        0x12c -> :sswitch_25b
        0x1f4 -> :sswitch_24e
        0x320 -> :sswitch_24e
    .end sparse-switch
.end method

.method private callLogInfoMatches(Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z
    .registers 5
    .parameter "callLogInfo"
    .parameter "info"

    .prologue
    .line 826
    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    iget v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    if-ne v0, v1, :cond_1c

    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private findAndCacheViews(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 600
    invoke-static {p1}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    move-result-object v0

    .line 601
    .local v0, views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 604
    return-void
.end method

.method private formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "number"
    .parameter "normalizedNumber"
    .parameter "countryIso"

    .prologue
    .line 967
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 968
    const-string p1, ""

    .line 977
    .end local p1
    :cond_8
    :goto_8
    return-object p1

    .line 971
    .restart local p1
    :cond_9
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 974
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 975
    iget-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCurrentCountryIso:Ljava/lang/String;

    .line 977
    :cond_17
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method private getCallTypes(Landroid/database/Cursor;I)[I
    .registers 7
    .parameter "cursor"
    .parameter "count"

    .prologue
    .line 918
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 919
    .local v2, position:I
    new-array v0, p2, [I

    .line 920
    .local v0, callTypes:[I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_7
    if-ge v1, p2, :cond_16

    .line 921
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v1

    .line 922
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 920
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 924
    :cond_16
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 925
    return-object v0
.end method

.method private getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .registers 6
    .parameter "c"

    .prologue
    .line 894
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 895
    .local v0, info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 896
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 897
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    .line 898
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 899
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 901
    .local v1, matchedNumber:Ljava/lang/String;
    if-nez v1, :cond_36

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1           #matchedNumber:Ljava/lang/String;
    :cond_36
    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 903
    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 904
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 906
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 907
    return-object v0
.end method

.method private queryContactInfo(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z
    .registers 9
    .parameter "number"
    .parameter "callLogInfo"

    .prologue
    const/4 v3, 0x0

    .line 472
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 474
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v2

    .line 475
    .local v2, sipInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    if-eqz v2, :cond_11

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-ne v2, v5, :cond_25

    .line 477
    :cond_11
    const/16 v5, 0x40

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, username:Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 479
    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->queryContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v2

    .line 482
    .end local v4           #username:Ljava/lang/String;
    :cond_25
    move-object v1, v2

    .line 487
    .end local v2           #sipInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .local v1, info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :goto_26
    if-nez v1, :cond_2e

    .line 507
    :goto_28
    return v3

    .line 484
    .end local v1           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_29
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->queryContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v1

    .restart local v1       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_26

    .line 494
    :cond_2e
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v5, p1}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .line 495
    .local v0, existingInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    const/4 v3, 0x1

    .line 496
    .local v3, updated:Z
    :cond_3d
    if-eqz v3, :cond_42

    .line 499
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 503
    :cond_42
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v5, p1, v1}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 506
    invoke-direct {p0, p1, v1, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->updateCallLogContactInfoCache(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V

    goto :goto_28
.end method

.method private queryContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .registers 13
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 393
    const/4 v10, 0x0

    .line 428
    .local v10, phonesCursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 434
    if-eqz v10, :cond_68

    .line 435
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 436
    new-instance v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v8}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 437
    .local v8, info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 438
    .local v6, contactId:J
    const/4 v0, 0x7

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 439
    .local v9, lookupKey:Ljava/lang/String;
    invoke-static {v6, v7, v9}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 440
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 441
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    .line 442
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 443
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 444
    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 445
    const/4 v0, 0x6

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 449
    .end local v6           #contactId:J
    .end local v9           #lookupKey:Ljava/lang/String;
    :goto_61
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 454
    :goto_64
    return-object v8

    .line 447
    .end local v8           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_65
    sget-object v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .restart local v8       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_61

    .line 452
    .end local v8           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_68
    const/4 v8, 0x0

    .restart local v8       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_64
.end method

.method private queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .registers 15
    .parameter "sipAddress"

    .prologue
    const/4 v2, 0x0

    .line 314
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 325
    .local v1, contactRef:Landroid/net/Uri;
    const-string v3, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 328
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 330
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 338
    .local v8, dataTableCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_73

    .line 339
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 340
    new-instance v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v9}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 350
    .local v9, info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const-string v0, "contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 352
    .local v6, contactId:J
    const-string v0, "lookup"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 354
    .local v10, lookupKey:Ljava/lang/String;
    invoke-static {v6, v7, v10}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 355
    const-string v0, "display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 358
    const/4 v0, 0x3

    iput v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    .line 359
    iput-object v2, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 363
    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 364
    iput-object v2, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 365
    const-string v0, "photo_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 370
    .end local v6           #contactId:J
    .end local v10           #lookupKey:Ljava/lang/String;
    :goto_6c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 375
    :goto_6f
    return-object v9

    .line 368
    .end local v9           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_70
    sget-object v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .restart local v9       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_6c

    .line 373
    .end local v9           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_73
    const/4 v9, 0x0

    .restart local v9       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_6f
.end method

.method private setPhoto(Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;JLandroid/net/Uri;J)V
    .registers 15
    .parameter "views"
    .parameter "photoId"
    .parameter "contactUri"
    .parameter "randomSeed"

    .prologue
    .line 929
    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 930
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->refreshCache()V

    .line 931
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide v2, p2

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZJ)V

    .line 933
    return-void
.end method

.method private updateCallLogContactInfoCache(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V
    .registers 12
    .parameter "number"
    .parameter "updatedInfo"
    .parameter "callLogInfo"

    .prologue
    .line 834
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 835
    .local v1, values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 837
    .local v0, needsUpdate:Z
    if-eqz p3, :cond_93

    .line 838
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 839
    const-string v3, "name"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const/4 v0, 0x1

    .line 843
    :cond_1a
    iget v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    iget v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    if-eq v3, v4, :cond_2c

    .line 844
    const-string v3, "numbertype"

    iget v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 845
    const/4 v0, 0x1

    .line 848
    :cond_2c
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 849
    const-string v3, "numberlabel"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const/4 v0, 0x1

    .line 852
    :cond_3e
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 853
    const-string v3, "lookup_uri"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const/4 v0, 0x1

    .line 856
    :cond_54
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 857
    const-string v3, "normalized_number"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const/4 v0, 0x1

    .line 860
    :cond_66
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    if-eqz v3, :cond_7c

    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7c

    .line 861
    const-string v3, "matched_number"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const/4 v0, 0x1

    .line 864
    :cond_7c
    iget-wide v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    iget-wide v5, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_90

    .line 865
    const-string v3, "photo_id"

    iget-wide v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 866
    const/4 v0, 0x1

    .line 880
    :cond_90
    :goto_90
    if-nez v0, :cond_d2

    .line 890
    :goto_92
    return-void

    .line 870
    :cond_93
    const-string v3, "name"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v3, "numbertype"

    iget v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 872
    const-string v3, "numberlabel"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const-string v3, "lookup_uri"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const-string v3, "matched_number"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string v3, "normalized_number"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string v3, "photo_id"

    iget-wide v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 877
    const/4 v0, 0x1

    goto :goto_90

    .line 884
    :cond_d2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    .local v2, where:Ljava/lang/StringBuilder;
    const-string v3, "number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_92
.end method


# virtual methods
.method public addGroup(IIZ)V
    .registers 4
    .parameter "cursorPosition"
    .parameter "size"
    .parameter "expanded"

    .prologue
    .line 951
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->addGroup(IIZ)V

    .line 952
    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;)V

    .line 547
    return-void
.end method

.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 578
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 579
    return-void
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .registers 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "groupSize"
    .parameter "expanded"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 595
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 596
    return-void
.end method

.method public bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 562
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 563
    return-void
.end method

.method public disableRequestProcessingForTest()V
    .registers 2

    .prologue
    .line 942
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    .line 943
    return-void
.end method

.method enqueueRequest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V
    .registers 7
    .parameter "number"
    .parameter "callLogInfo"
    .parameter "immediate"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 283
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    .local v0, request:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    .line 285
    :try_start_8
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 286
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 289
    :cond_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_28

    .line 290
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mFirst:Z

    if-eqz v1, :cond_27

    if-eqz p3, :cond_27

    .line 291
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->startRequestProcessing()V

    .line 292
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mFirst:Z

    .line 294
    :cond_27
    return-void

    .line 289
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public getBetterNumberFromContacts(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "number"

    .prologue
    .line 990
    const/4 v7, 0x0

    .line 992
    .local v7, matchingNumber:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0, p1}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .line 993
    .local v6, ci:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    if-eqz v6, :cond_2d

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-eq v6, v0, :cond_2d

    .line 994
    iget-object v7, v6, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 1046
    :cond_11
    :goto_11
    if-eqz v7, :cond_2c

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "+"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2c

    .line 1049
    :cond_2b
    move-object p1, v7

    .line 1051
    :cond_2c
    return-object p1

    .line 997
    :cond_2d
    const/4 v8, 0x0

    .line 1031
    .local v8, phonesCursor:Landroid/database/Cursor;
    :try_start_2e
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1036
    if-eqz v8, :cond_11

    .line 1037
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1038
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1040
    :cond_50
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_53} :catch_54

    goto :goto_11

    .line 1042
    :catch_54
    move-exception v0

    goto :goto_11
.end method

.method public injectContactInfoForTest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V
    .registers 4
    .parameter "number"
    .parameter "contactInfo"

    .prologue
    .line 946
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 947
    return-void
.end method

.method public invalidateCache()V
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/contacts/util/ExpirableCache;->expireAll()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 270
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mLoading:Z

    if-eqz v0, :cond_6

    .line 231
    const/4 v0, 0x0

    .line 233
    :goto_5
    return v0

    :cond_6
    invoke-super {p0}, Lcom/android/common/widget/GroupingListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_5
.end method

.method public newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "parent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 568
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 570
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040010

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 571
    .local v1, view:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 572
    return-object v1
.end method

.method public newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "parent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 584
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 586
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040010

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 587
    .local v1, view:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 588
    return-object v1
.end method

.method public newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "parent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 552
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 554
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040010

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 555
    .local v1, view:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 556
    return-object v1
.end method

.method protected onContentChanged()V
    .registers 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallFetcher:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;

    invoke-interface {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;->fetchLogs()V

    .line 220
    const-string v0, "CallLogAdapter"

    const-string v1, "onContentChanged is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method public onPreDraw()Z
    .registers 5

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mFirst:Z

    if-eqz v0, :cond_f

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mFirst:Z

    .line 168
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .registers 11

    .prologue
    .line 516
    const/4 v3, 0x0

    .line 517
    .local v3, needNotify:Z
    :cond_1
    :goto_1
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mDone:Z

    if-nez v6, :cond_52

    .line 518
    const/4 v4, 0x0

    .line 519
    .local v4, number:Ljava/lang/String;
    const/4 v1, 0x0

    .line 520
    .local v1, callLogInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v7

    .line 521
    :try_start_a
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_35

    .line 522
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 523
    .local v5, request:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 524
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object v1, v0

    .line 537
    .end local v5           #request:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    :goto_26
    monitor-exit v7
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_4f

    .line 538
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mDone:Z

    if-nez v6, :cond_1

    if-eqz v4, :cond_1

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->queryContactInfo(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 539
    const/4 v3, 0x1

    goto :goto_1

    .line 526
    :cond_35
    if-eqz v3, :cond_3e

    .line 527
    const/4 v3, 0x0

    .line 528
    :try_start_38
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_4f

    .line 531
    :cond_3e
    :try_start_3e
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_4f
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_45} :catch_46

    goto :goto_26

    .line 532
    :catch_46
    move-exception v2

    .line 534
    .local v2, ie:Ljava/lang/InterruptedException;
    :try_start_47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_26

    .line 537
    .end local v2           #ie:Ljava/lang/InterruptedException;
    :catchall_4f
    move-exception v6

    monitor-exit v7
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_4f

    throw v6

    .line 542
    .end local v1           #callLogInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .end local v4           #number:Ljava/lang/String;
    :cond_52
    return-void
.end method

.method setLoading(Z)V
    .registers 2
    .parameter "loading"

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mLoading:Z

    .line 225
    return-void
.end method

.method public startRequestProcessing()V
    .registers 3

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    if-eqz v0, :cond_5

    .line 250
    :goto_4
    return-void

    .line 246
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mDone:Z

    .line 247
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "CallLogContactLookup"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Ljava/lang/Thread;

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4
.end method

.method public stopRequestProcessing()V
    .registers 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mDone:Z

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Ljava/lang/Thread;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 264
    :cond_12
    return-void
.end method
