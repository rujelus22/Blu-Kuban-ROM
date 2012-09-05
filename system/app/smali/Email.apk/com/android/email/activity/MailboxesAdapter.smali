.class Lcom/android/email/activity/MailboxesAdapter;
.super Landroid/widget/CursorAdapter;
.source "MailboxesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxesAdapter$1;,
        Lcom/android/email/activity/MailboxesAdapter$CombinedMailboxesLoader;,
        Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;,
        Lcom/android/email/activity/MailboxesAdapter$EmptyCallback;,
        Lcom/android/email/activity/MailboxesAdapter$Callback;,
        Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    }
.end annotation


# static fields
.field static final HIERARCHY_PROJECTION:[Ljava/lang/String;

.field static final PROJECTION:[Ljava/lang/String;

.field private static mParentSelectedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static mSelectedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static needToChangeMailbox:Z

.field private static sAllMailboxCursor:Landroid/database/Cursor;

.field private static sEnableUpdate:Z

.field private static sExpandItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private static sExpandItemMapNew:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private static sExpandItemMapPrev:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private static sExpandItemMapPrevNew:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private static sInit:Z

.field private static sLeftPane:Landroid/view/View;

.field private static sListItemAllMargin:I

.field private static sListItemCountAllMargin:I

.field private static sListItemHierarchyLeftMarginFactor:I

.field private static sListItemSelectionMargin:I

.field private static sMailboxCursor:Landroid/database/Cursor;

.field private static sMailboxDisableNameColorDarkTheme:I

.field private static sMailboxDisableNameColorWhiteTheme:I

.field private static sMailboxListNameLand:I

.field private static sMailboxListNamePort:I

.field private static sMailboxNameColorDarkTheme:I

.field private static sMailboxNameColorWhiteTheme:I

.field private static sMailboxNameSelectedColorDarkTheme:Landroid/content/res/ColorStateList;

.field private static sMailboxNameSelectedColorWhiteTheme:Landroid/content/res/ColorStateList;

.field private static sSelectedMailboxId:J


# instance fields
.field private isFolderOperation:Z

.field private mBackgroundColor:I

.field private mCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mDeleteMode:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mListViewSize:I

.field private mMailboxDisableNameColor:I

.field private mMailboxNameColor:I

.field private mMailboxNameSelectedColor:Landroid/content/res/ColorStateList;

.field private final mMode:I

.field private final mResourceHelper:Lcom/android/email/ResourceHelper;

.field private mfontSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_id AS org_mailbox_id"

    aput-object v1, v0, v4

    const-string v1, "displayName"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "unreadCount"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "messageCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0 AS row_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagNoSelect"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "parentKey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "serverId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "delimiter"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MailboxesAdapter;->PROJECTION:[Ljava/lang/String;

    .line 123
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_id AS org_mailbox_id"

    aput-object v1, v0, v4

    const-string v1, "displayName"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "unreadCount"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "messageCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0 AS row_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagNoSelect"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "parentKey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hierarchyLevel"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "hasChild"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MailboxesAdapter;->HIERARCHY_PROJECTION:[Ljava/lang/String;

    .line 188
    sput-boolean v4, Lcom/android/email/activity/MailboxesAdapter;->sEnableUpdate:Z

    .line 190
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    .line 192
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    .line 198
    sput-boolean v3, Lcom/android/email/activity/MailboxesAdapter;->needToChangeMailbox:Z

    .line 204
    sput v3, Lcom/android/email/activity/MailboxesAdapter;->sMailboxListNamePort:I

    .line 206
    sput v3, Lcom/android/email/activity/MailboxesAdapter;->sMailboxListNameLand:I

    .line 208
    sput v3, Lcom/android/email/activity/MailboxesAdapter;->sListItemSelectionMargin:I

    .line 210
    sput v3, Lcom/android/email/activity/MailboxesAdapter;->sListItemAllMargin:I

    .line 212
    sput v3, Lcom/android/email/activity/MailboxesAdapter;->sListItemCountAllMargin:I

    .line 214
    sput v3, Lcom/android/email/activity/MailboxesAdapter;->sListItemHierarchyLeftMarginFactor:I

    .line 216
    sput-boolean v3, Lcom/android/email/activity/MailboxesAdapter;->sInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/email/activity/MailboxesAdapter$Callback;)V
    .registers 8
    .parameter "context"
    .parameter "mode"
    .parameter "callback"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 296
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 202
    iput v2, p0, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    .line 228
    iput v3, p0, Lcom/android/email/activity/MailboxesAdapter;->mfontSize:I

    .line 234
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxesAdapter;->mDeleteMode:Z

    .line 273
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxesAdapter;->isFolderOperation:Z

    .line 297
    iput-object p1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    .line 298
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 299
    iput p2, p0, Lcom/android/email/activity/MailboxesAdapter;->mMode:I

    .line 300
    iput-object p3, p0, Lcom/android/email/activity/MailboxesAdapter;->mCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

    .line 301
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxesAdapter;->mDeleteMode:Z

    .line 302
    sget-object v1, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 303
    sget-object v1, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 304
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    .line 305
    sget-boolean v1, Lcom/android/email/activity/MailboxesAdapter;->sInit:Z

    if-nez v1, :cond_10f

    .line 306
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxListNamePort:I

    .line 308
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxListNameLand:I

    .line 310
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sListItemSelectionMargin:I

    .line 312
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sListItemAllMargin:I

    .line 314
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sListItemCountAllMargin:I

    .line 316
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sListItemHierarchyLeftMarginFactor:I

    .line 320
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    .line 321
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    .line 322
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    .line 323
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    .line 325
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameColorWhiteTheme:I

    .line 329
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameSelectedColorWhiteTheme:Landroid/content/res/ColorStateList;

    .line 334
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxDisableNameColorWhiteTheme:I

    .line 336
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 337
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameColorDarkTheme:I

    .line 342
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameSelectedColorDarkTheme:Landroid/content/res/ColorStateList;

    .line 347
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxDisableNameColorDarkTheme:I

    .line 350
    :cond_10c
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/email/activity/MailboxesAdapter;->sInit:Z

    .line 352
    :cond_10f
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 353
    .local v0, settingValue:Lcom/android/email/Preferences;
    iput v3, p0, Lcom/android/email/activity/MailboxesAdapter;->mfontSize:I

    .line 354
    iget v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mfontSize:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxesAdapter;->setListItemSize(I)V

    .line 355
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getBGColor()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    .line 356
    iget v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxesAdapter;->setBackgroundColor(I)V

    .line 357
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/email/activity/MailboxesAdapter;->sEnableUpdate:Z

    return v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$402(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$502(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$600()Landroid/database/Cursor;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$602(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$702(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sAllMailboxCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method private static addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V
    .registers 10
    .parameter "context"
    .parameter "cursor"
    .parameter "id"
    .parameter "type"
    .parameter "count"
    .parameter "showAlways"

    .prologue
    .line 1650
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-ltz v1, :cond_c

    .line 1651
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1654
    :cond_c
    if-nez p6, :cond_10

    if-lez p5, :cond_63

    .line 1655
    :cond_10
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 1656
    .local v0, row:Landroid/database/MatrixCursor$RowBuilder;
    const-wide v1, 0x7fffffffffffffffL

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1658
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1659
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1660
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1661
    const-wide/16 v1, -0x4

    cmp-long v1, p2, v1

    if-eqz v1, :cond_40

    const-wide/16 v1, -0x2

    cmp-long v1, p2, v1

    if-nez v1, :cond_57

    .line 1662
    :cond_40
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1667
    :goto_47
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1668
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1674
    .end local v0           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_56
    :goto_56
    return-void

    .line 1665
    .restart local v0       #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_57
    invoke-static {p0, p4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUnreadCountByMailboxType(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_47

    .line 1670
    .end local v0           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_63
    sget-wide v1, Lcom/android/email/activity/MailboxesAdapter;->sSelectedMailboxId:J

    cmp-long v1, p2, v1

    if-nez v1, :cond_56

    .line 1671
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/email/activity/MailboxesAdapter;->needToChangeMailbox:Z

    goto :goto_56
.end method

.method private bindViewMoveToTargetMode(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1120
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 1121
    .local v0, t:Landroid/widget/TextView;
    invoke-static {p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    return-void
.end method

.method private bindViewNormalMode(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 46
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 839
    invoke-static/range {p3 .. p3}, Lcom/android/email/activity/MailboxesAdapter;->isAccountRow(Landroid/database/Cursor;)Z

    move-result v22

    .line 841
    .local v22, isAccount:Z
    const/16 v38, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 842
    .local v36, type:I
    const/16 v38, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 844
    .local v20, id:J
    const/16 v38, 0xb

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 845
    .local v18, hasChild:I
    const/16 v38, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 846
    .local v19, hierarchyLevel:I
    const/16 v38, 0x9

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 847
    .local v30, parentKey:J
    const/16 v38, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 848
    .local v15, flagNoSelected:I
    const/16 v23, 0x0

    .local v23, isMailboxItemChecked:Z
    move-object/from16 v25, p1

    .line 849
    check-cast v25, Lcom/android/email/activity/MailboxListItem;

    .line 850
    .local v25, listItem:Lcom/android/email/activity/MailboxListItem;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxListItem;->bindViewInit(Lcom/android/email/activity/MailboxesAdapter;)V

    .line 851
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    .line 852
    move-wide/from16 v0, v20

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    .line 853
    move/from16 v0, v18

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/email/activity/MailboxListItem;->mHasChild:I

    .line 854
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/email/activity/MailboxListItem;->mAdapter:Lcom/android/email/activity/MailboxesAdapter;

    .line 855
    move-object/from16 v0, v25

    iput v15, v0, Lcom/android/email/activity/MailboxListItem;->mFlagNoSelected:I

    .line 856
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    move/from16 v38, v0

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/email/activity/MailboxListItem;->mBackgroundColor:I

    .line 862
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mCurrentOrientation:I

    move/from16 v38, v0

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_3ed

    .line 863
    sget v38, Lcom/android/email/activity/MailboxesAdapter;->sMailboxListNamePort:I

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    .line 867
    :goto_8f
    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->sLeftPane:Landroid/view/View;

    if-eqz v38, :cond_9f

    .line 868
    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->sLeftPane:Landroid/view/View;

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredWidth()I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    .line 870
    :cond_9f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    move/from16 v28, v0

    .line 881
    .local v28, mailboxNameWidth:I
    const/16 v38, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 882
    .local v37, unReadCount:I
    const/16 v38, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 896
    .local v35, totalCount:I
    const v38, 0x7f100165

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 897
    .local v9, countView:Landroid/widget/TextView;
    const v38, 0x7f100163

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 900
    .local v7, countFrameLayout:Landroid/widget/FrameLayout;
    if-lez v37, :cond_411

    const/16 v38, 0x8

    move/from16 v0, v36

    move/from16 v1, v38

    if-eq v0, v1, :cond_411

    .line 901
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 903
    sget-wide v38, Lcom/android/email/activity/MailboxesAdapter;->sSelectedMailboxId:J

    cmp-long v38, v38, v20

    if-nez v38, :cond_3f7

    .line 904
    invoke-virtual {v9}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v9, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameSelectedColor:Landroid/content/res/ColorStateList;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 910
    :goto_102
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout$LayoutParams;

    .line 912
    .local v26, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ")"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 913
    .local v8, countStr:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v34, v0

    .line 914
    .local v34, textSize:I
    sget v38, Lcom/android/email/activity/MailboxesAdapter;->sListItemCountAllMargin:I

    add-int v38, v38, v34

    move/from16 v0, v38

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 915
    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 916
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 917
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v38, v0

    sub-int v28, v28, v38

    .line 924
    .end local v8           #countStr:Ljava/lang/String;
    .end local v26           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v34           #textSize:I
    :goto_14e
    const v38, 0x7f100009

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 925
    .local v16, folderIcon:Landroid/widget/ImageView;
    const v38, 0x7f100167

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/CheckBox;

    .line 926
    .local v24, itemCheckBox:Landroid/widget/CheckBox;
    const/16 v38, 0x1

    move/from16 v0, v18

    move/from16 v1, v38

    if-ne v0, v1, :cond_41a

    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_41a

    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_41a

    const/16 v33, 0x1

    .line 928
    .local v33, showPlusImage:Z
    :goto_192
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mDeleteMode:Z

    move/from16 v38, v0

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_49d

    if-eqz v24, :cond_49d

    .line 929
    const/16 v38, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 930
    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    .line 932
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 934
    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_1e0

    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_41e

    .line 936
    :cond_1e0
    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 937
    const/16 v38, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 938
    const/16 v38, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 957
    :cond_1fb
    :goto_1fb
    invoke-static/range {p2 .. p2}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v36

    move-wide/from16 v2, v20

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/FolderProperties;->getIcon(IJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 960
    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    if-eqz v38, :cond_4aa

    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    move/from16 v38, v0

    if-eqz v38, :cond_4aa

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0200c2

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 967
    :goto_24a
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/email/activity/MailboxListItem;->mFolderIcon:Landroid/widget/ImageView;

    .line 970
    sget v38, Lcom/android/email/activity/MailboxesAdapter;->sListItemHierarchyLeftMarginFactor:I

    mul-int v38, v38, v19

    add-int/lit8 v14, v38, 0xa

    .line 971
    .local v14, factor:I
    const v38, 0x7f100160

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 972
    .local v5, anymationView:Landroid/view/View;
    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v5, v14, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 973
    sub-int v28, v28, v14

    .line 974
    move-object/from16 v0, v25

    iput v14, v0, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    .line 977
    const v38, 0x7f100168

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 979
    .local v13, dragImpossibleIcon:Landroid/widget/ImageView;
    move-object/from16 v0, v25

    iput-object v13, v0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    .line 982
    const v38, 0x7f100169

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/ImageView;

    .line 983
    .local v32, selectedIcon:Landroid/widget/ImageView;
    sget-wide v38, Lcom/android/email/activity/MailboxesAdapter;->sSelectedMailboxId:J

    cmp-long v38, v38, v20

    if-nez v38, :cond_4ed

    sget v38, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_4ed

    .line 986
    sget v38, Lcom/android/email/activity/MailboxesAdapter;->sListItemSelectionMargin:I

    sub-int v28, v28, v38

    .line 988
    const/16 v38, 0x8

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 989
    sget-boolean v38, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v38, :cond_4cf

    .line 990
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v38

    if-eqz v38, :cond_4c3

    .line 991
    const v38, 0x7f0203bf

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1007
    :goto_2c5
    invoke-virtual/range {v32 .. v32}, Landroid/widget/ImageView;->getVisibility()I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/email/activity/MailboxListItem;->mSelectedIconVisibility:I

    .line 1010
    const v38, 0x7f100162

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 1012
    .local v29, nameView:Landroid/widget/TextView;
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/email/activity/MailboxListItem;->mFlagNoSelected:I

    move/from16 v38, v0

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_4f8

    .line 1013
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/email/activity/MailboxListItem;->mIsSelected:Z

    .line 1014
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxDisableNameColor:I

    move/from16 v38, v0

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1015
    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1027
    :goto_30e
    invoke-static/range {p2 .. p3}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v39

    sget v40, Lcom/android/email/activity/MailboxesAdapter;->sListItemAllMargin:I

    sub-int v40, v28, v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    sget-object v41, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static/range {v38 .. v41}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v27

    .line 1029
    .local v27, mFormattedName:Ljava/lang/CharSequence;
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/email/activity/MailboxListItem;->mNameView:Landroid/widget/TextView;

    .line 1031
    invoke-static/range {p2 .. p3}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/email/activity/MailboxListItem;->mNameText:Ljava/lang/String;

    .line 1032
    sget v38, Lcom/android/email/activity/MailboxesAdapter;->sListItemAllMargin:I

    sub-int v38, v28, v38

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/email/activity/MailboxListItem;->mNameViewWidth:I

    .line 1034
    const v38, 0x7f100161

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1035
    .local v6, chipView:Landroid/view/View;
    if-eqz v22, :cond_54a

    .line 1036
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1037
    const/16 v38, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1056
    :goto_363
    const v38, 0x7f10015f

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1057
    .local v10, dividerLine:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v38

    if-eqz v38, :cond_55c

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f020062

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1065
    :goto_38c
    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout$LayoutParams;

    .line 1066
    .local v17, frameLp:Landroid/widget/FrameLayout$LayoutParams;
    sget v38, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_574

    .line 1067
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1074
    :goto_3a4
    const v38, 0x7f10015e

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 1075
    .local v11, dividerLineTop:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v38

    if-eqz v38, :cond_598

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f020062

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1082
    :goto_3cd
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v38

    if-nez v38, :cond_5b0

    .line 1083
    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 1085
    .local v12, dividerLineTopframeLp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x2

    move/from16 v0, v38

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1086
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1090
    .end local v12           #dividerLineTopframeLp:Landroid/widget/FrameLayout$LayoutParams;
    :goto_3ec
    return-void

    .line 865
    .end local v5           #anymationView:Landroid/view/View;
    .end local v6           #chipView:Landroid/view/View;
    .end local v7           #countFrameLayout:Landroid/widget/FrameLayout;
    .end local v9           #countView:Landroid/widget/TextView;
    .end local v10           #dividerLine:Landroid/widget/ImageView;
    .end local v11           #dividerLineTop:Landroid/widget/ImageView;
    .end local v13           #dragImpossibleIcon:Landroid/widget/ImageView;
    .end local v14           #factor:I
    .end local v16           #folderIcon:Landroid/widget/ImageView;
    .end local v17           #frameLp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v24           #itemCheckBox:Landroid/widget/CheckBox;
    .end local v27           #mFormattedName:Ljava/lang/CharSequence;
    .end local v28           #mailboxNameWidth:I
    .end local v29           #nameView:Landroid/widget/TextView;
    .end local v32           #selectedIcon:Landroid/widget/ImageView;
    .end local v33           #showPlusImage:Z
    .end local v35           #totalCount:I
    .end local v37           #unReadCount:I
    :cond_3ed
    sget v38, Lcom/android/email/activity/MailboxesAdapter;->sMailboxListNameLand:I

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    goto/16 :goto_8f

    .line 907
    .restart local v7       #countFrameLayout:Landroid/widget/FrameLayout;
    .restart local v9       #countView:Landroid/widget/TextView;
    .restart local v28       #mailboxNameWidth:I
    .restart local v35       #totalCount:I
    .restart local v37       #unReadCount:I
    :cond_3f7
    invoke-virtual {v9}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v9, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 908
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameColor:I

    move/from16 v38, v0

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_102

    .line 919
    :cond_411
    const/16 v38, 0x8

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_14e

    .line 926
    .restart local v16       #folderIcon:Landroid/widget/ImageView;
    .restart local v24       #itemCheckBox:Landroid/widget/CheckBox;
    :cond_41a
    const/16 v33, 0x0

    goto/16 :goto_192

    .line 939
    .restart local v33       #showPlusImage:Z
    :cond_41e
    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_447

    .line 940
    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 941
    const/16 v38, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 942
    const/16 v38, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1fb

    .line 943
    :cond_447
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    if-eqz v38, :cond_477

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    const/16 v39, 0x3

    move/from16 v0, v38

    move/from16 v1, v39

    if-lt v0, v1, :cond_48b

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    const/16 v39, 0x6

    move/from16 v0, v38

    move/from16 v1, v39

    if-gt v0, v1, :cond_48b

    .line 945
    :cond_477
    const/16 v38, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 946
    const/16 v38, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1fb

    .line 948
    :cond_48b
    const/16 v38, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 949
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1fb

    .line 953
    :cond_49d
    if-eqz v24, :cond_1fb

    .line 954
    const/16 v38, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_1fb

    .line 964
    :cond_4aa
    invoke-static/range {p2 .. p2}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v36

    move-wide/from16 v2, v20

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/FolderProperties;->getIcon(IJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_24a

    .line 994
    .restart local v5       #anymationView:Landroid/view/View;
    .restart local v13       #dragImpossibleIcon:Landroid/widget/ImageView;
    .restart local v14       #factor:I
    .restart local v32       #selectedIcon:Landroid/widget/ImageView;
    :cond_4c3
    const v38, 0x7f0203bc

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2c5

    .line 997
    :cond_4cf
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v38

    if-eqz v38, :cond_4e1

    .line 998
    const v38, 0x7f0203a6

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2c5

    .line 1001
    :cond_4e1
    const v38, 0x7f0203a4

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2c5

    .line 1005
    :cond_4ed
    const/16 v38, 0x8

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2c5

    .line 1017
    .restart local v29       #nameView:Landroid/widget/TextView;
    :cond_4f8
    sget-wide v38, Lcom/android/email/activity/MailboxesAdapter;->sSelectedMailboxId:J

    cmp-long v38, v38, v20

    if-nez v38, :cond_524

    .line 1018
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/email/activity/MailboxListItem;->mIsSelected:Z

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameSelectedColor:Landroid/content/res/ColorStateList;

    move-object/from16 v38, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1020
    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_30e

    .line 1022
    :cond_524
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/email/activity/MailboxListItem;->mIsSelected:Z

    .line 1023
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameColor:I

    move/from16 v38, v0

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1024
    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_30e

    .line 1052
    .restart local v6       #chipView:Landroid/view/View;
    .restart local v27       #mFormattedName:Ljava/lang/CharSequence;
    :cond_54a
    const/16 v38, 0x8

    move/from16 v0, v38

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1053
    const/16 v38, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_363

    .line 1061
    .restart local v10       #dividerLine:Landroid/widget/ImageView;
    :cond_55c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f020062

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_38c

    .line 1068
    .restart local v17       #frameLp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_574
    sget-boolean v38, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v38, :cond_588

    .line 1069
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x16

    move/from16 v0, v38

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_3a4

    .line 1071
    :cond_588
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x11

    move/from16 v0, v38

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_3a4

    .line 1079
    .restart local v11       #dividerLineTop:Landroid/widget/ImageView;
    :cond_598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f020062

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3cd

    .line 1088
    :cond_5b0
    const/16 v38, 0x8

    move/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3ec
.end method

.method public static createLoader(Landroid/content/Context;JI)Landroid/content/Loader;
    .registers 6
    .parameter "context"
    .parameter "accountId"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI)",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1144
    const-wide/high16 v0, 0x1000

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    const/4 v0, 0x2

    if-ne p3, v0, :cond_f

    .line 1145
    :cond_9
    new-instance v0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;-><init>(Landroid/content/Context;JI)V

    .line 1147
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lcom/android/email/activity/MailboxesAdapter$CombinedMailboxesLoader;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxesAdapter$CombinedMailboxesLoader;-><init>(Landroid/content/Context;)V

    goto :goto_e
.end method

.method private getCountType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 438
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->isAccountRow(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 439
    const/4 v0, 0x0

    .line 441
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/email/activity/MailboxesAdapter;->getCountTypeForMailboxType(Landroid/database/Cursor;)I

    move-result v0

    goto :goto_7
.end method

.method private static getCountTypeForMailboxType(Landroid/database/Cursor;)I
    .registers 3
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 422
    invoke-static {p0}, Lcom/android/email/activity/MailboxesAdapter;->isAccountRow(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 430
    :goto_7
    return v0

    .line 425
    :cond_8
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_14

    goto :goto_7

    .line 428
    :pswitch_11
    const/4 v0, 0x1

    goto :goto_7

    .line 425
    nop

    :pswitch_data_14
    .packed-switch 0x3
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method private static getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 823
    const/4 v2, 0x0

    .line 824
    .local v2, name:Ljava/lang/String;
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_1a

    .line 828
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 829
    .local v3, type:I
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 830
    .local v0, mailboxId:J
    invoke-static {p0}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v4

    invoke-virtual {v4, v3, v0, v1}, Lcom/android/email/FolderProperties;->getDisplayName(IJ)Ljava/lang/String;

    move-result-object v2

    .line 832
    .end local v0           #mailboxId:J
    .end local v3           #type:I
    :cond_1a
    if-nez v2, :cond_21

    .line 833
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 835
    :cond_21
    return-object v2
.end method

.method static getIdForTest(Landroid/database/Cursor;)J
    .registers 3
    .parameter "cursor"

    .prologue
    .line 1677
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static getMessageCountForTest(Landroid/database/Cursor;)I
    .registers 2
    .parameter "cursor"

    .prologue
    .line 1685
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getSpecialMailboxesCursor(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .registers 9
    .parameter "context"
    .parameter "innerCursor"

    .prologue
    .line 1621
    new-instance v1, Lcom/android/email/data/ClosingMatrixCursor;

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->HIERARCHY_PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Lcom/android/email/data/ClosingMatrixCursor;-><init>([Ljava/lang/String;Landroid/database/Cursor;)V

    .line 1623
    .local v1, cursor:Landroid/database/MatrixCursor;
    const-wide/16 v2, -0x2

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUnreadCountByMailboxType(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    .line 1627
    const-wide/16 v2, -0x4

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getFavoriteMessageCount(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    .line 1631
    const-wide/16 v2, -0x5

    const/4 v4, 0x3

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMessageCountByMailboxType(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    .line 1635
    const-wide/16 v2, -0x6

    const/4 v4, 0x4

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMessageCountByMailboxType(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    .line 1639
    const-wide/16 v2, -0x8

    const/4 v4, 0x5

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMessageCountByMailboxType(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    .line 1643
    const-wide/16 v2, -0x7

    const/4 v4, 0x6

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMessageCountByMailboxType(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    .line 1645
    return-object v1
.end method

.method static getTypeForTest(Landroid/database/Cursor;)I
    .registers 2
    .parameter "cursor"

    .prologue
    .line 1681
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getUnreadCountForTest(Landroid/database/Cursor;)I
    .registers 2
    .parameter "cursor"

    .prologue
    .line 1689
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private static isAccountRow(Landroid/database/Cursor;)Z
    .registers 3
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 407
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private newViewMoveToTargetMode(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private newViewNormalMode(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const v1, 0x7f040079

    const/4 v2, 0x0

    .line 1104
    iget v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mfontSize:I

    packed-switch v0, :pswitch_data_40

    .line 1116
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_f
    return-object v0

    .line 1106
    :pswitch_10
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04007d

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_f

    .line 1108
    :pswitch_1a
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04007c

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_f

    .line 1110
    :pswitch_24
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_f

    .line 1112
    :pswitch_2b
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04007b

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_f

    .line 1114
    :pswitch_35
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04007a

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_f

    .line 1104
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_10
        :pswitch_1a
        :pswitch_24
        :pswitch_2b
        :pswitch_35
    .end packed-switch
.end method

.method public static setLeftPane(Landroid/view/View;)V
    .registers 1
    .parameter "leftPane"

    .prologue
    .line 518
    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sLeftPane:Landroid/view/View;

    .line 519
    return-void
.end method

.method private updateSelected(Lcom/android/email/activity/MailboxListItem;Z)V
    .registers 6
    .parameter "itemView"
    .parameter "newSelected"

    .prologue
    .line 636
    if-eqz p2, :cond_e

    .line 637
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 646
    :goto_d
    return-void

    .line 639
    :cond_e
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_d
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 579
    iget v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMode:I

    packed-switch v0, :pswitch_data_14

    .line 587
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 581
    :pswitch_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->bindViewNormalMode(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 585
    :goto_e
    return-void

    .line 584
    :pswitch_f
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->bindViewMoveToTargetMode(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_e

    .line 579
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method public enableUpdates(Z)V
    .registers 2
    .parameter "state"

    .prologue
    .line 494
    sput-boolean p1, Lcom/android/email/activity/MailboxesAdapter;->sEnableUpdate:Z

    .line 495
    return-void
.end method

.method public getAllMailboxCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 1133
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sAllMailboxCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getChangeMailboxFlag()Z
    .registers 2

    .prologue
    .line 502
    sget-boolean v0, Lcom/android/email/activity/MailboxesAdapter;->needToChangeMailbox:Z

    return v0
.end method

.method public getDeleteMode()Z
    .registers 2

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mDeleteMode:Z

    return v0
.end method

.method public getDisplayName(I)Ljava/lang/String;
    .registers 4
    .parameter "position"

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 470
    .local v0, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 479
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public getMailboxCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 1129
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getMailboxType(I)I
    .registers 4
    .parameter "position"

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 484
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    return v1
.end method

.method public getSelectedSet()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getTotalCount(I)I
    .registers 4
    .parameter "position"

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 457
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    return v1
.end method

.method public getType(I)I
    .registers 4
    .parameter "position"

    .prologue
    .line 462
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 463
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    return v1
.end method

.method public getUnreadCount(I)I
    .registers 4
    .parameter "position"

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getCountType(I)I

    move-result v1

    if-eqz v1, :cond_8

    .line 449
    const/4 v1, 0x0

    .line 452
    :goto_7
    return v1

    .line 451
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 452
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_7
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 525
    :try_start_0
    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_9

    .line 526
    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 528
    :cond_9
    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v7, 0x9

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 529
    .local v1, parentKey:J
    sget-object v6, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    if-eqz v6, :cond_47

    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_47

    sget-object v6, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    sget-object v6, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    iget-boolean v6, v6, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    if-nez v6, :cond_47

    const/4 v3, 0x1

    .line 532
    .local v3, shouldGone:Z
    :goto_36
    if-eqz v3, :cond_49

    .line 533
    const/4 p2, 0x0

    .line 534
    new-instance v4, Lcom/android/email/activity/MailboxListNullItem;

    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/email/activity/MailboxListNullItem;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_94

    .line 535
    .end local p2
    .local v4, view:Landroid/view/View;
    const/16 v6, 0x8

    :try_start_42
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_a1

    move-object p2, v4

    .line 574
    .end local v1           #parentKey:J
    .end local v3           #shouldGone:Z
    .end local v4           #view:Landroid/view/View;
    :goto_46
    return-object v4

    .line 529
    .restart local v1       #parentKey:J
    .restart local p2
    :cond_47
    const/4 v3, 0x0

    goto :goto_36

    .line 538
    .restart local v3       #shouldGone:Z
    :cond_49
    const/4 v5, -0x1

    .line 539
    .local v5, viewId:I
    :try_start_4a
    iget v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mfontSize:I

    packed-switch v6, :pswitch_data_a4

    .line 557
    :goto_4f
    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_77

    .line 558
    if-eqz p2, :cond_5b

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v5, v6, :cond_64

    .line 559
    :cond_5b
    const/4 p2, 0x0

    .line 560
    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v6, v7, p3}, Lcom/android/email/activity/MailboxesAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 563
    :cond_64
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 564
    const v6, 0x7f0202ad

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 568
    :goto_70
    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v6, v7}, Lcom/android/email/activity/MailboxesAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .end local v1           #parentKey:J
    .end local v3           #shouldGone:Z
    .end local v5           #viewId:I
    :cond_77
    :goto_77
    move-object v4, p2

    .line 574
    .local v4, view:Ljava/lang/Object;
    goto :goto_46

    .line 541
    .end local v4           #view:Ljava/lang/Object;
    .restart local v1       #parentKey:J
    .restart local v3       #shouldGone:Z
    .restart local v5       #viewId:I
    :pswitch_79
    const v5, 0x7f10016d

    .line 542
    goto :goto_4f

    .line 544
    :pswitch_7d
    const v5, 0x7f10016c

    .line 545
    goto :goto_4f

    .line 547
    :pswitch_81
    const v5, 0x7f10015d

    .line 548
    goto :goto_4f

    .line 550
    :pswitch_85
    const v5, 0x7f10016b

    .line 551
    goto :goto_4f

    .line 553
    :pswitch_89
    const v5, 0x7f10016a

    goto :goto_4f

    .line 566
    :cond_8d
    const v6, 0x7f0202ae

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_93} :catch_94

    goto :goto_70

    .line 570
    .end local v1           #parentKey:J
    .end local v3           #shouldGone:Z
    .end local v5           #viewId:I
    :catch_94
    move-exception v0

    .line 571
    .local v0, e:Ljava/lang/Exception;
    :goto_95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 572
    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v6, v7, p3}, Lcom/android/email/activity/MailboxesAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_77

    .line 570
    .end local v0           #e:Ljava/lang/Exception;
    .end local p2
    .restart local v1       #parentKey:J
    .restart local v3       #shouldGone:Z
    .local v4, view:Landroid/view/View;
    :catch_a1
    move-exception v0

    move-object p2, v4

    .end local v4           #view:Landroid/view/View;
    .restart local p2
    goto :goto_95

    .line 539
    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_79
        :pswitch_7d
        :pswitch_81
        :pswitch_85
        :pswitch_89
    .end packed-switch
.end method

.method public initAdapter()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 669
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    .line 670
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 671
    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    .line 673
    :cond_c
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    if-eqz v0, :cond_17

    .line 674
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 675
    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    .line 677
    :cond_17
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    if-eqz v0, :cond_22

    .line 678
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 679
    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    .line 681
    :cond_22
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    if-eqz v0, :cond_2d

    .line 682
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 683
    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    .line 685
    :cond_2d
    return-void
.end method

.method public isAccountRow(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 414
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/email/activity/MailboxesAdapter;->isAccountRow(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxesAdapter;->isFolderOperation:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getMailboxType(I)I

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getMailboxType(I)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1a

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getMailboxType(I)I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1a

    .line 392
    :cond_18
    const/4 v0, 0x0

    .line 395
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public isSelected(Lcom/android/email/activity/MailboxListItem;)Z
    .registers 5
    .parameter "itemView"

    .prologue
    .line 514
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 592
    iget v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMode:I

    packed-switch v0, :pswitch_data_16

    .line 598
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 594
    :pswitch_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->newViewNormalMode(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 596
    :goto_f
    return-object v0

    :pswitch_10
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->newViewMoveToTargetMode(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_f

    .line 592
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method

.method public setAdapterInfo()V
    .registers 4

    .prologue
    .line 690
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    .line 691
    .local v0, temItemMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;>;"
    sget-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    .line 693
    .local v1, temPrevItemMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;>;"
    sget-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    if-eqz v2, :cond_27

    .line 694
    sget-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    sput-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    .line 695
    sget-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    sput-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    .line 701
    :goto_1c
    if-eqz v0, :cond_26

    .line 702
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 703
    const/4 v0, 0x0

    .line 704
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 705
    const/4 v1, 0x0

    .line 707
    :cond_26
    return-void

    .line 697
    :cond_27
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    .line 698
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    goto :goto_1c
.end method

.method public setBackgroundColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 649
    iput p1, p0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    .line 650
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 651
    sget v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameColorDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameColor:I

    .line 653
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameSelectedColorDarkTheme:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameSelectedColor:Landroid/content/res/ColorStateList;

    .line 654
    sget v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxDisableNameColorDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxDisableNameColor:I

    .line 664
    :goto_14
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxesAdapter;->notifyDataSetInvalidated()V

    .line 665
    return-void

    .line 657
    :cond_18
    sget v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameColor:I

    .line 659
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameSelectedColorWhiteTheme:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameSelectedColor:Landroid/content/res/ColorStateList;

    .line 660
    sget v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxDisableNameColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxDisableNameColor:I

    goto :goto_14
.end method

.method public setChangeMailboxFlag(Z)V
    .registers 2
    .parameter "bool"

    .prologue
    .line 506
    sput-boolean p1, Lcom/android/email/activity/MailboxesAdapter;->needToChangeMailbox:Z

    .line 507
    return-void
.end method

.method public setDeleteMode(Z)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 615
    iput-boolean p1, p0, Lcom/android/email/activity/MailboxesAdapter;->mDeleteMode:Z

    .line 616
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mDeleteMode:Z

    if-nez v0, :cond_10

    .line 617
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 618
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 620
    :cond_10
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxesAdapter;->notifyDataSetChanged()V

    .line 621
    return-void
.end method

.method public setIsCreateOrRename(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 400
    iput-boolean p1, p0, Lcom/android/email/activity/MailboxesAdapter;->isFolderOperation:Z

    .line 401
    return-void
.end method

.method public setListItemSize(I)V
    .registers 2
    .parameter "fontSize"

    .prologue
    .line 610
    iput p1, p0, Lcom/android/email/activity/MailboxesAdapter;->mfontSize:I

    .line 611
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxesAdapter;->notifyDataSetInvalidated()V

    .line 612
    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .parameter "orientation"

    .prologue
    .line 606
    iput p1, p0, Lcom/android/email/activity/MailboxesAdapter;->mCurrentOrientation:I

    .line 607
    return-void
.end method

.method public toggleSelected(Lcom/android/email/activity/MailboxListItem;)V
    .registers 3
    .parameter "itemView"

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->isSelected(Lcom/android/email/activity/MailboxListItem;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_7
    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MailboxesAdapter;->updateSelected(Lcom/android/email/activity/MailboxListItem;Z)V

    .line 361
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxesAdapter;->notifyDataSetChanged()V

    .line 362
    return-void

    .line 360
    :cond_e
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public updateCurrentOrientation(I)V
    .registers 2
    .parameter "orientation"

    .prologue
    .line 498
    iput p1, p0, Lcom/android/email/activity/MailboxesAdapter;->mCurrentOrientation:I

    .line 499
    return-void
.end method

.method public updateMailboxVisivility(J)V
    .registers 16
    .parameter "mailboxId"

    .prologue
    .line 711
    sget-object v11, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    .line 712
    .local v10, selectedExtraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    if-nez v10, :cond_f

    .line 762
    :goto_e
    return-void

    .line 715
    :cond_f
    iget-boolean v11, v10, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    if-nez v11, :cond_55

    const/4 v11, 0x1

    :goto_14
    iput-boolean v11, v10, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 716
    sget-object v11, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    iget-boolean v1, v10, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 719
    .local v1, expand:Z
    const-wide/16 v6, -0x1

    .line 720
    .local v6, mId:J
    const/4 v8, 0x0

    .line 721
    .local v8, needToSaveOrRestore:Z
    const/4 v4, -0x1

    .line 722
    .local v4, hierarchyLevel:I
    const/4 v3, -0x1

    .line 724
    .local v3, hLevel:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_27
    iget-object v11, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-ge v5, v11, :cond_59

    .line 725
    iget-object v11, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 726
    iget-object v11, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 727
    iget-object v11, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xa

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 728
    if-nez v8, :cond_57

    .line 729
    cmp-long v11, v6, p1

    if-nez v11, :cond_52

    .line 730
    const/4 v8, 0x1

    .line 731
    iget-object v11, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xa

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 724
    :cond_52
    :goto_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 715
    .end local v1           #expand:Z
    .end local v3           #hLevel:I
    .end local v4           #hierarchyLevel:I
    .end local v5           #i:I
    .end local v6           #mId:J
    .end local v8           #needToSaveOrRestore:Z
    :cond_55
    const/4 v11, 0x0

    goto :goto_14

    .line 736
    .restart local v1       #expand:Z
    .restart local v3       #hLevel:I
    .restart local v4       #hierarchyLevel:I
    .restart local v5       #i:I
    .restart local v6       #mId:J
    .restart local v8       #needToSaveOrRestore:Z
    :cond_57
    if-lt v4, v3, :cond_5f

    .line 761
    :cond_59
    iget-object v11, p0, Lcom/android/email/activity/MailboxesAdapter;->mCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

    invoke-interface {v11}, Lcom/android/email/activity/MailboxesAdapter$Callback;->onReDrawList()V

    goto :goto_e

    .line 740
    :cond_5f
    if-eqz v1, :cond_89

    .line 742
    :try_start_61
    sget-object v11, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    .line 743
    .local v2, extraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    sget-object v11, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    .line 744
    .local v9, prevExtraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    iget-boolean v11, v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    iput-boolean v11, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 745
    sget-object v11, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 755
    .end local v2           #extraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    .end local v9           #prevExtraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    :catch_87
    move-exception v0

    .line 756
    .local v0, e:Ljava/lang/Exception;
    goto :goto_52

    .line 748
    .end local v0           #e:Ljava/lang/Exception;
    :cond_89
    sget-object v11, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    .line 749
    .restart local v2       #extraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    sget-object v11, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    .line 750
    .restart local v9       #prevExtraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    iget-boolean v11, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    iput-boolean v11, v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 751
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 752
    sget-object v11, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    sget-object v11, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_ba} :catch_87

    goto :goto_52
.end method

.method public updateMailboxVisivility(JZ)V
    .registers 17
    .parameter "mailboxId"
    .parameter "isExpand"

    .prologue
    .line 765
    sget-object v11, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    .line 766
    .local v10, selectedExtraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    if-nez v10, :cond_f

    .line 820
    :cond_e
    :goto_e
    return-void

    .line 769
    :cond_f
    iget-boolean v1, v10, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 770
    .local v1, expand:Z
    if-nez v1, :cond_15

    if-nez p3, :cond_e

    .line 773
    :cond_15
    iget-boolean v11, v10, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    if-nez v11, :cond_5b

    const/4 v11, 0x1

    :goto_1a
    iput-boolean v11, v10, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 774
    sget-object v11, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-boolean v1, v10, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 776
    const-wide/16 v6, -0x1

    .line 777
    .local v6, mId:J
    const/4 v8, 0x0

    .line 778
    .local v8, needToSaveOrRestore:Z
    const/4 v4, -0x1

    .line 779
    .local v4, hierarchyLevel:I
    const/4 v3, -0x1

    .line 781
    .local v3, hLevel:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2d
    iget-object v11, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-ge v5, v11, :cond_5f

    .line 782
    iget-object v11, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 783
    iget-object v11, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 784
    iget-object v11, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xa

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 785
    if-nez v8, :cond_5d

    .line 786
    cmp-long v11, v6, p1

    if-nez v11, :cond_58

    .line 787
    const/4 v8, 0x1

    .line 788
    iget-object v11, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xa

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 781
    :cond_58
    :goto_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 773
    .end local v3           #hLevel:I
    .end local v4           #hierarchyLevel:I
    .end local v5           #i:I
    .end local v6           #mId:J
    .end local v8           #needToSaveOrRestore:Z
    :cond_5b
    const/4 v11, 0x0

    goto :goto_1a

    .line 793
    .restart local v3       #hLevel:I
    .restart local v4       #hierarchyLevel:I
    .restart local v5       #i:I
    .restart local v6       #mId:J
    .restart local v8       #needToSaveOrRestore:Z
    :cond_5d
    if-lt v4, v3, :cond_65

    .line 819
    :cond_5f
    iget-object v11, p0, Lcom/android/email/activity/MailboxesAdapter;->mCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

    invoke-interface {v11}, Lcom/android/email/activity/MailboxesAdapter$Callback;->onReDrawList()V

    goto :goto_e

    .line 797
    :cond_65
    if-eqz v1, :cond_58

    .line 799
    :try_start_67
    sget-object v11, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    .line 800
    .local v2, extraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    sget-object v11, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    .line 801
    .local v9, prevExtraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    iget-boolean v11, v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    iput-boolean v11, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 802
    sget-object v11, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_8c} :catch_8d

    goto :goto_58

    .line 813
    .end local v2           #extraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    .end local v9           #prevExtraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    :catch_8d
    move-exception v0

    .line 814
    .local v0, e:Ljava/lang/Exception;
    goto :goto_58
.end method

.method public updateSelectedMailbox(J)V
    .registers 3
    .parameter "selectedMailboxId"

    .prologue
    .line 602
    sput-wide p1, Lcom/android/email/activity/MailboxesAdapter;->sSelectedMailboxId:J

    .line 603
    return-void
.end method
