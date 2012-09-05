.class Lcom/android/email/activity/MessagesAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessagesAdapter$1;,
        Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;,
        Lcom/android/email/activity/MessagesAdapter$Callback;,
        Lcom/android/email/activity/MessagesAdapter$Position;,
        Lcom/android/email/activity/MessagesAdapter$SubTitle;
    }
.end annotation


# static fields
.field static final MESSAGE_PROJECTION:[Ljava/lang/String;

.field public static final SORT_QUERY:[Ljava/lang/String;

.field static final THREAD_PROJECTION:[Ljava/lang/String;

.field private static mIsPhoneDevice:Z

.field private static sCursor:Landroid/database/Cursor;

.field private static sHideViewPosition:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sHideViewPositionNew:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sListForSubTitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessagesAdapter$SubTitle;",
            ">;"
        }
    .end annotation
.end field

.field private static sListForSubTitleNew:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessagesAdapter$SubTitle;",
            ">;"
        }
    .end annotation
.end field

.field private static sListItemCountNew:I

.field private static sListPositionForAdapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessagesAdapter$Position;",
            ">;"
        }
    .end annotation
.end field

.field private static sListPositionForAdapterNew:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessagesAdapter$Position;",
            ">;"
        }
    .end annotation
.end field

.field public static sSortType:I

.field private static sSubtitleCountNew:I

.field private static sUnreadListItemCount:I

.field private static sUnreadListItemCountNew:I


# instance fields
.field private bFontChanged:Z

.field private mAdapterPosition:I

.field private final mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

.field private mCheckboxDisabled:Z

.field private mColor:I

.field private mEnforcer:Lcom/android/email/irm/IRMEnforcer;

.field private mFirstListItem:Landroid/view/View;

.field private mForwardBlockSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mItemMode:I

.field private mParentIndex:I

.field private mPosition:I

.field private mPreviewLineSize:I

.field private mReplyAllBlockSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mReplyBlockSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourceHelper:Lcom/android/email/ResourceHelper;

.field private final mSelectedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedTitleSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowColorChips:Z

.field private mfontSize:I

.field private sListItemCount:I

.field private sSubtitleCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    sput-boolean v4, Lcom/android/email/activity/MessagesAdapter;->mIsPhoneDevice:Z

    .line 80
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v4

    const-string v1, "accountKey"

    aput-object v1, v0, v5

    const-string v1, "displayName"

    aput-object v1, v0, v6

    const-string v1, "subject"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "timeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "threadId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "typeMsg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "flagStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "smimeFlags"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "messageType"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "lastVerb"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "conversationId"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "accountSchema"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "mailboxType"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, " substr(snippet,0,200)"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "flagReply"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "IRMTemplateId"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "EasLocalReadFlag"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 115
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v4

    const-string v1, "accountKey"

    aput-object v1, v0, v5

    const-string v1, "displayName"

    aput-object v1, v0, v6

    const-string v1, "subject"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "timeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "threadId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "typeMsg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "flagStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "smimeFlags"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "messageType"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "lastVerb"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "conversationId"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "accountSchema"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "mailboxType"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "flagReply"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "IRMTemplateId"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "EasLocalReadFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "childCount"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "childIndex"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->THREAD_PROJECTION:[Ljava/lang/String;

    .line 234
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "timeStamp COLLATE NOCASE DESC"

    aput-object v1, v0, v3

    const-string v1, "timeStamp COLLATE NOCASE ASC"

    aput-object v1, v0, v4

    const-string v1, "displayName COLLATE LOCALIZED COLLATE NOCASE ASC, timeStamp DESC"

    aput-object v1, v0, v5

    const-string v1, "displayName COLLATE LOCALIZED COLLATE NOCASE DESC, timeStamp DESC"

    aput-object v1, v0, v6

    const-string v1, "flagRead COLLATE NOCASE ASC, timeStamp DESC"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "flagFavorite COLLATE NOCASE DESC, timeStamp DESC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "timeStamp COLLATE NOCASE DESC"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "timeStamp COLLATE NOCASE DESC"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "importance COLLATE NOCASE DESC,timeStamp DESC"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "flagStatus COLLATE NOCASE DESC,timeStamp DESC"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "flags COLLATE NOCASE DESC,timeStamp DESC"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flagAttachment COLLATE NOCASE DESC, timeStamp DESC"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->SORT_QUERY:[Ljava/lang/String;

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    .line 297
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    .line 303
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    .line 309
    sput v3, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCount:I

    .line 311
    sput v3, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCountNew:I

    .line 313
    sput v3, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    .line 315
    sput v3, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCountNew:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/activity/MessagesAdapter$Callback;)V
    .registers 7
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v3, 0x0

    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 78
    iput-boolean v3, p0, Lcom/android/email/activity/MessagesAdapter;->bFontChanged:Z

    .line 305
    iput v3, p0, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    .line 307
    iput v3, p0, Lcom/android/email/activity/MessagesAdapter;->sListItemCount:I

    .line 319
    iput v3, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    .line 321
    iput v3, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    .line 323
    iput v3, p0, Lcom/android/email/activity/MessagesAdapter;->mParentIndex:I

    .line 331
    iput-boolean v3, p0, Lcom/android/email/activity/MessagesAdapter;->mCheckboxDisabled:Z

    .line 348
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    .line 352
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    .line 353
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    .line 354
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    .line 356
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/email/activity/MessagesAdapter;->mItemMode:I

    .line 364
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    .line 402
    invoke-static {p1}, Lcom/android/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    .line 403
    iput-object p2, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    .line 404
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 405
    .local v0, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessagesAdapter;->mfontSize:I

    .line 406
    iget v1, p0, Lcom/android/email/activity/MessagesAdapter;->mfontSize:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessagesAdapter;->setListItemSize(I)V

    .line 407
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getPreViewLine()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessagesAdapter;->mPreviewLineSize:I

    .line 408
    iget v1, p0, Lcom/android/email/activity/MessagesAdapter;->mPreviewLineSize:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessagesAdapter;->setPreviewLineSize(I)V

    .line 409
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getBGColor()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    .line 410
    iget v1, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessagesAdapter;->setBackgroundColor(I)V

    .line 411
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v1

    sput-boolean v1, Lcom/android/email/activity/MessagesAdapter;->mIsPhoneDevice:Z

    .line 412
    invoke-static {p1}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mEnforcer:Lcom/android/email/irm/IRMEnforcer;

    .line 413
    return-void
.end method

.method static synthetic access$000()Landroid/database/Cursor;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    sput-object p0, Lcom/android/email/activity/MessagesAdapter;->sCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    sput p0, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    return p0
.end method

.method static synthetic access$202(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    sput p0, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCountNew:I

    return p0
.end method

.method static synthetic access$302(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    sput p0, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCountNew:I

    return p0
.end method

.method static synthetic access$400()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    sput-object p0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500()Ljava/util/HashSet;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$502(Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    sput-object p0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$600()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    sput-object p0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800()Z
    .registers 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/email/activity/MessagesAdapter;->mIsPhoneDevice:Z

    return v0
.end method

.method static synthetic access$900()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    return-object v0
.end method

.method private changeFavoriteIcon(Lcom/android/email/activity/MessageListItemContainer;Z)V
    .registers 3
    .parameter "view"
    .parameter "isFavorite"

    .prologue
    .line 1152
    invoke-virtual {p1}, Lcom/android/email/activity/MessageListItemContainer;->invalidate()V

    .line 1153
    return-void
.end method

.method private changeFollowUpFlagIcon(Lcom/android/email/activity/MessageListItemContainer;I)V
    .registers 3
    .parameter "view"
    .parameter "newFollowUpFlag"

    .prologue
    .line 1171
    invoke-virtual {p1}, Lcom/android/email/activity/MessageListItemContainer;->invalidate()V

    .line 1172
    return-void
.end method

.method private changeSubtitleState(I)V
    .registers 4
    .parameter "subTitleIndex"

    .prologue
    .line 1055
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    if-eqz v0, :cond_42

    .line 1056
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-boolean v0, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    if-eqz v0, :cond_43

    .line 1057
    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v0, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1058
    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v0, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1059
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    .line 1067
    :goto_39
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v0, :cond_42

    .line 1068
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessagesAdapter$Callback;->onReDrawList()V

    .line 1071
    :cond_42
    return-void

    .line 1062
    :cond_43
    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v0, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1063
    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v0, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1064
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    goto :goto_39
.end method

.method private changeSubtitleStateAll(III)V
    .registers 8
    .parameter "expandFactor"
    .parameter "shrinkFactor"
    .parameter "factor"

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 987
    :cond_6
    :goto_6
    return-void

    .line 959
    :cond_7
    if-lt p1, p3, :cond_37

    .line 960
    :try_start_9
    const-string v2, "MessagesAdapter"

    const-string v3, "expand messagelist all!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    iget v2, p0, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    if-ge v1, v2, :cond_23

    .line 962
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    .line 961
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 964
    :cond_23
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 965
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V
    :try_end_2d
    .catch Ljava/util/ConcurrentModificationException; {:try_start_9 .. :try_end_2d} :catch_96

    .line 984
    .end local v1           #i:I
    :cond_2d
    :goto_2d
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v2, :cond_6

    .line 985
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v2}, Lcom/android/email/activity/MessagesAdapter$Callback;->onReDrawList()V

    goto :goto_6

    .line 966
    :cond_37
    if-lt p2, p3, :cond_71

    .line 967
    :try_start_39
    const-string v2, "MessagesAdapter"

    const-string v3, "shrink messagelist all!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_41
    iget v2, p0, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    if-ge v1, v2, :cond_2d

    .line 969
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    .line 970
    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v2, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 971
    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v2, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 968
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 974
    .end local v1           #i:I
    :cond_71
    const-string v2, "MessagesAdapter"

    const-string v3, "expand messagelist all!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_79
    iget v2, p0, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    if-ge v1, v2, :cond_8b

    .line 976
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    .line 975
    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    .line 978
    :cond_8b
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 979
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V
    :try_end_95
    .catch Ljava/util/ConcurrentModificationException; {:try_start_39 .. :try_end_95} :catch_96

    goto :goto_2d

    .line 981
    .end local v1           #i:I
    :catch_96
    move-exception v0

    .line 982
    .local v0, e:Ljava/util/ConcurrentModificationException;
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_2d
.end method

.method public static createLoader(Landroid/content/Context;JI)Landroid/content/Loader;
    .registers 10
    .parameter "context"
    .parameter "mailboxId"
    .parameter "sortType"
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
    .line 1180
    new-instance v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;

    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->SORT_QUERY:[Ljava/lang/String;

    aget-object v4, v1, p3

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;-><init>(Landroid/content/Context;JLjava/lang/String;I)V

    return-object v0
.end method

.method public static getHideViewPosition()Ljava/util/HashSet;
    .registers 1
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
    .line 480
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    return-object v0
.end method

.method private updateMultiSelected(IZ)V
    .registers 9
    .parameter "subTitleIndex"
    .parameter "isChecked"

    .prologue
    .line 1002
    if-nez p2, :cond_83

    .line 1003
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v4, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1004
    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    .line 1005
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v4, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1012
    :goto_2b
    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v4, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_39
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1013
    .local v1, id:J
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mEnforcer:Lcom/android/email/irm/IRMEnforcer;

    invoke-virtual {v4, v1, v2}, Lcom/android/email/irm/IRMEnforcer;->getIRMLicenseFlag(J)I

    move-result v3

    .line 1014
    .local v3, irmFlag:I
    invoke-static {v3}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllowed(I)Z

    move-result v4

    if-nez v4, :cond_60

    .line 1015
    if-nez p2, :cond_ae

    .line 1016
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1021
    :cond_60
    :goto_60
    invoke-static {v3}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllAllowed(I)Z

    move-result v4

    if-nez v4, :cond_71

    .line 1022
    if-nez p2, :cond_b8

    .line 1023
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1028
    :cond_71
    :goto_71
    invoke-static {v3}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(I)Z

    move-result v4

    if-nez v4, :cond_39

    .line 1029
    if-nez p2, :cond_c2

    .line 1030
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 1007
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:J
    .end local v3           #irmFlag:I
    :cond_83
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v4, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1008
    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    .line 1009
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v4, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2b

    .line 1018
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #id:J
    .restart local v3       #irmFlag:I
    :cond_ae
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_60

    .line 1025
    :cond_b8
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_71

    .line 1032
    :cond_c2
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_39

    .line 1036
    .end local v1           #id:J
    .end local v3           #irmFlag:I
    :cond_cd
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v4, :cond_d6

    .line 1037
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v4}, Lcom/android/email/activity/MessagesAdapter$Callback;->onAdapterSelectedAllChanged()V

    .line 1039
    :cond_d6
    return-void
.end method

.method private updateSelected(Lcom/android/email/activity/MessageListItemContainer;ZI)V
    .registers 9
    .parameter "itemContainer"
    .parameter "newSelected"
    .parameter "parentIndex"

    .prologue
    .line 1086
    invoke-virtual {p1}, Lcom/android/email/activity/MessageListItemContainer;->getListItem()Lcom/android/email/activity/MessageListItem;

    move-result-object v1

    .line 1087
    .local v1, itemView:Lcom/android/email/activity/MessageListItem;
    if-eqz p2, :cond_98

    .line 1088
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v3, v1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1094
    :goto_11
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mEnforcer:Lcom/android/email/irm/IRMEnforcer;

    iget-wide v3, v1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/irm/IRMEnforcer;->getIRMLicenseFlag(J)I

    move-result v0

    .line 1095
    .local v0, irmFlag:I
    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllowed(I)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 1096
    if-eqz p2, :cond_a5

    .line 1097
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    iget-wide v3, v1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1102
    :cond_2c
    :goto_2c
    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllAllowed(I)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 1103
    if-eqz p2, :cond_b2

    .line 1104
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    iget-wide v3, v1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1109
    :cond_3f
    :goto_3f
    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(I)Z

    move-result v2

    if-nez v2, :cond_52

    .line 1110
    if-eqz p2, :cond_be

    .line 1111
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    iget-wide v3, v1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1117
    :cond_52
    :goto_52
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_88

    const/4 v2, -0x1

    if-eq p3, v2, :cond_88

    .line 1118
    iget-object v3, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v2, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 1119
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    .line 1120
    iget-object v3, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v2, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1127
    :cond_88
    :goto_88
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v2, :cond_97

    .line 1128
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    iget-object v3, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Lcom/android/email/activity/MessagesAdapter$Callback;->onAdapterSelectedChanged(Lcom/android/email/activity/MessageListItemContainer;ZI)V

    .line 1130
    :cond_97
    return-void

    .line 1090
    .end local v0           #irmFlag:I
    :cond_98
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v3, v1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 1099
    .restart local v0       #irmFlag:I
    :cond_a5
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    iget-wide v3, v1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2c

    .line 1106
    :cond_b2
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    iget-wide v3, v1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 1113
    :cond_be
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    iget-wide v3, v1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_52

    .line 1122
    :cond_ca
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    .line 1123
    iget-object v3, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v2, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_88
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 719
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/email/activity/MessageListItemContainer;

    move-object v5, v0

    .line 720
    .local v5, itemContainer:Lcom/android/email/activity/MessageListItemContainer;
    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mItemMode:I

    iput v9, v5, Lcom/android/email/activity/MessageListItemContainer;->mItemMode:I

    .line 721
    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mfontSize:I

    invoke-virtual {v5, v9}, Lcom/android/email/activity/MessageListItemContainer;->setFontSize(I)V

    .line 722
    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mItemMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1e

    .line 723
    invoke-virtual {v5}, Lcom/android/email/activity/MessageListItemContainer;->updateBackground()V

    .line 724
    invoke-virtual {v5}, Lcom/android/email/activity/MessageListItemContainer;->clearItem()V

    .line 725
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Lcom/android/email/activity/MessageListItemContainer;->setVisibility(I)V

    .line 900
    .end local v5           #itemContainer:Lcom/android/email/activity/MessageListItemContainer;
    :cond_1d
    :goto_1d
    return-void

    .line 726
    .restart local v5       #itemContainer:Lcom/android/email/activity/MessageListItemContainer;
    :cond_1e
    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mItemMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_161

    .line 727
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/android/email/activity/MessageListItemContainer;->setVisibility(I)V

    .line 728
    invoke-virtual {v5, p2}, Lcom/android/email/activity/MessageListItemContainer;->getListSubTitleItem(Landroid/content/Context;)Lcom/android/email/activity/MessageListSubTitleItem;

    move-result-object v6

    .line 729
    .local v6, itemView:Lcom/android/email/activity/MessageListSubTitleItem;
    iget-object v9, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-virtual {v6, p0, v9}, Lcom/android/email/activity/MessageListSubTitleItem;->bindViewInit(Lcom/android/email/activity/MessagesAdapter;Lcom/android/email/activity/MessagesAdapter$Callback;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_12e

    .line 731
    :try_start_30
    sget-object v9, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v10, v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v9, v9, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mTextMain:Ljava/lang/String;

    .line 733
    sget-object v9, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v10, v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v9, v9, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListSub:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mTextSub:Ljava/lang/String;

    .line 735
    sget-object v9, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v10, v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v9, v9, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListDate:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mTextDate:Ljava/lang/String;

    .line 736
    sget-object v9, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v10, v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v9, v9, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mTextCount:Ljava/lang/String;

    .line 738
    sget-object v9, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v10, v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-boolean v9, v9, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    iput-boolean v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mIsExpanded:Z

    .line 739
    sget-object v9, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v10, v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v9, v9, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mSubtitleId:Ljava/lang/String;

    .line 740
    iget-object v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mSubtitleId:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mIsChecked:Z

    .line 741
    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v9, v9

    add-int/lit8 v9, v9, -0x1

    iput v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mSubTitleIndex:I

    .line 742
    iget-boolean v9, p0, Lcom/android/email/activity/MessagesAdapter;->mShowColorChips:Z

    iput-boolean v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mNeedMorePadding:Z

    .line 743
    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mfontSize:I

    iput v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mfontSize:I

    .line 744
    const/4 v9, 0x0

    iput v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mPreviewLineSize:I

    .line 750
    iget-boolean v9, p0, Lcom/android/email/activity/MessagesAdapter;->mCheckboxDisabled:Z

    iput-boolean v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mCheckboxDisabled:Z

    .line 751
    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    iput v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mPosition:I

    .line 752
    iget v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mBgColor:I

    iget v10, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    if-ne v9, v10, :cond_13b

    const/4 v9, 0x0

    :goto_bf
    iput-boolean v9, v5, Lcom/android/email/activity/MessageListItemContainer;->mIsBgColorChanged:Z

    .line 753
    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    iput v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mBgColor:I

    .line 754
    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v9, v9

    sget-object v10, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_13d

    const/4 v9, 0x1

    :goto_d1
    iput-boolean v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mIsLastSubtitle:Z

    .line 756
    sget-object v9, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v10, v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget v9, v9, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsRead:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13f

    const/4 v9, 0x1

    :goto_e6
    iput-boolean v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mIsRead:Z

    .line 757
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_118

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    sget-object v10, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_118

    .line 759
    sget-object v9, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v9, v9, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    iput v9, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    .line 760
    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    invoke-interface {p3, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 761
    const/16 v9, 0x19

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mSnippet:Ljava/lang/String;
    :try_end_118
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_30 .. :try_end_118} :catch_141
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_118} :catch_12e

    .line 767
    :cond_118
    :goto_118
    const/4 v9, 0x2

    :try_start_119
    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 768
    .local v1, accountId:J
    iget-boolean v9, p0, Lcom/android/email/activity/MessagesAdapter;->mShowColorChips:Z

    if-eqz v9, :cond_15f

    iget-object v9, p0, Lcom/android/email/activity/MessagesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    invoke-virtual {v9, v1, v2}, Lcom/android/email/ResourceHelper;->getAccountColorNinePatch(J)Landroid/graphics/NinePatch;

    move-result-object v9

    :goto_127
    iput-object v9, v6, Lcom/android/email/activity/MessageListSubTitleItem;->mColorChipBitmap:Landroid/graphics/NinePatch;

    .line 770
    invoke-virtual {v5}, Lcom/android/email/activity/MessageListItemContainer;->updateBackground()V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_12c} :catch_12e

    goto/16 :goto_1d

    .line 895
    .end local v1           #accountId:J
    .end local v5           #itemContainer:Lcom/android/email/activity/MessageListItemContainer;
    .end local v6           #itemView:Lcom/android/email/activity/MessageListSubTitleItem;
    :catch_12e
    move-exception v3

    .line 896
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "MessageAdapter"

    const-string v10, "Exception: MessageListAdapter.bindView() \n"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1d

    .line 752
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v5       #itemContainer:Lcom/android/email/activity/MessageListItemContainer;
    .restart local v6       #itemView:Lcom/android/email/activity/MessageListSubTitleItem;
    :cond_13b
    const/4 v9, 0x1

    goto :goto_bf

    .line 754
    :cond_13d
    const/4 v9, 0x0

    goto :goto_d1

    .line 756
    :cond_13f
    const/4 v9, 0x0

    goto :goto_e6

    .line 764
    :catch_141
    move-exception v3

    .line 765
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_142
    const-string v9, "MessagesAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception Occured::"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_118

    .line 768
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #accountId:J
    :cond_15f
    const/4 v9, 0x0

    goto :goto_127

    .line 771
    .end local v1           #accountId:J
    .end local v6           #itemView:Lcom/android/email/activity/MessageListSubTitleItem;
    :cond_161
    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mItemMode:I

    if-nez v9, :cond_1d

    .line 772
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/android/email/activity/MessageListItemContainer;->setVisibility(I)V

    .line 773
    invoke-virtual {v5, p2}, Lcom/android/email/activity/MessageListItemContainer;->getListItem(Landroid/content/Context;)Lcom/android/email/activity/MessageListItem;

    move-result-object v6

    .line 774
    .local v6, itemView:Lcom/android/email/activity/MessageListItem;
    iget-object v9, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-virtual {v6, p0, v9}, Lcom/android/email/activity/MessageListItem;->bindViewInit(Lcom/android/email/activity/MessagesAdapter;Lcom/android/email/activity/MessagesAdapter$Callback;)V

    .line 775
    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    sget-object v10, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_346

    .line 777
    sget-object v9, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v8, v9, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    .line 778
    .local v8, nextAdapterPosition:I
    if-gez v8, :cond_33c

    .line 779
    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->mHasDivider:Z

    .line 785
    :goto_191
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_1bb

    .line 786
    sget-object v9, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v9, v9, Lcom/android/email/activity/MessagesAdapter$Position;->parentIndex:I

    if-ltz v9, :cond_1b8

    sget-object v9, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v9, v9, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    if-gez v9, :cond_341

    .line 788
    :cond_1b8
    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->mNeedMorePadding:Z

    .line 799
    .end local v8           #nextAdapterPosition:I
    :cond_1bb
    :goto_1bb
    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mParentIndex:I

    iput v9, v6, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    .line 801
    const/4 v9, 0x0

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v6, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    .line 802
    const/4 v9, 0x1

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v6, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    .line 803
    const/4 v9, 0x2

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 804
    .restart local v1       #accountId:J
    iput-wide v1, v6, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    .line 807
    sget-boolean v9, Lcom/android/emailcommon/EasRefs;->EAS_LOCAL_DB_OPERATION:Z

    if-eqz v9, :cond_351

    .line 808
    const/16 v9, 0x1d

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 809
    .local v7, localRead:I
    if-eqz v7, :cond_1e6

    .line 810
    const/4 v9, 0x1

    if-ne v7, v9, :cond_34e

    const/4 v9, 0x1

    :goto_1e4
    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->mRead:Z

    .line 816
    .end local v7           #localRead:I
    :cond_1e6
    :goto_1e6
    const/4 v9, 0x7

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_35f

    const/4 v9, 0x1

    :goto_1ee
    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 818
    const/16 v9, 0xd

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v6, Lcom/android/email/activity/MessageListItem;->mFollowUpFlagStatus:I

    .line 820
    const/16 v9, 0xc

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v6, Lcom/android/email/activity/MessageListItem;->mPriority:I

    .line 821
    const/16 v9, 0x11

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v6, Lcom/android/email/activity/MessageListItem;->mLastVerb:I

    .line 824
    const/16 v9, 0x13

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v6, Lcom/android/email/activity/MessageListItem;->mConvThreadId:I

    .line 825
    const/16 v9, 0x12

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/email/activity/MessageListItem;->mConvId:Ljava/lang/String;

    .line 826
    const/16 v9, 0x14

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v6, Lcom/android/email/activity/MessageListItem;->mFlagReadConv:I

    .line 827
    const/16 v9, 0x15

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v6, Lcom/android/email/activity/MessageListItem;->mFlagSetFFConv:I

    .line 828
    const/16 v9, 0x16

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v6, Lcom/android/email/activity/MessageListItem;->mFlagComFFConv:I

    .line 830
    const/16 v9, 0xf

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    and-int/lit16 v9, v9, 0x100

    const/16 v10, 0x100

    if-ne v9, v10, :cond_362

    const/4 v9, 0x1

    :goto_23d
    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->isSms:Z

    .line 831
    const/16 v9, 0xf

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    and-int/lit16 v9, v9, 0x200

    const/16 v10, 0x200

    if-ne v9, v10, :cond_365

    const/4 v9, 0x1

    :goto_24c
    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->isVoiceMail:Z

    .line 832
    const/16 v9, 0xe

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_368

    const/4 v9, 0x1

    :goto_259
    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->isSigned:Z

    .line 833
    const/16 v9, 0xe

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_36b

    const/4 v9, 0x1

    :goto_266
    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->isEncrypted:Z

    .line 835
    const/16 v9, 0xb

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_36e

    const/4 v9, 0x1

    :goto_273
    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 836
    const/16 v9, 0x8

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_371

    const/4 v9, 0x1

    :goto_27e
    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 837
    const/4 v9, 0x5

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v6, Lcom/android/email/activity/MessageListItem;->mTimestamp:J

    .line 838
    const/16 v9, 0x19

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/String;

    .line 841
    const/16 v9, 0x1a

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_374

    const/4 v9, 0x1

    :goto_298
    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->mHasReplyIcon:Z

    .line 844
    const/16 v9, 0x1b

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 845
    .local v4, irmTemplate:Ljava/lang/String;
    if-eqz v4, :cond_377

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_377

    .line 846
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->mHasIrm:Z

    .line 851
    :goto_2ab
    const/16 v9, 0x1c

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/email/activity/MessageListItem;->mServerId:Ljava/lang/String;

    .line 853
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTopLineMode()I

    move-result v9

    if-nez v9, :cond_385

    .line 854
    const/4 v9, 0x3

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    .line 856
    iget-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->isSms:Z

    if-eqz v9, :cond_37c

    .line 857
    const/16 v9, 0x19

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    .line 869
    :goto_2cc
    const/16 v9, 0x17

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/email/activity/MessageListItem;->mAccountSchema:Ljava/lang/String;

    .line 870
    const/16 v9, 0x18

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v6, Lcom/android/email/activity/MessageListItem;->mMailboxType:I

    .line 871
    iget-boolean v9, p0, Lcom/android/email/activity/MessagesAdapter;->mShowColorChips:Z

    if-eqz v9, :cond_3a3

    iget-object v9, p0, Lcom/android/email/activity/MessagesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    invoke-virtual {v9, v1, v2}, Lcom/android/email/ResourceHelper;->getAccountColorNinePatch(J)Landroid/graphics/NinePatch;

    move-result-object v9

    :goto_2e6
    iput-object v9, v6, Lcom/android/email/activity/MessageListItem;->mColorChipBitmap:Landroid/graphics/NinePatch;

    .line 873
    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mfontSize:I

    iput v9, v6, Lcom/android/email/activity/MessageListItem;->mfontSize:I

    .line 874
    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mPreviewLineSize:I

    iput v9, v6, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    .line 875
    iget v9, v6, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    iget v10, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    if-ne v9, v10, :cond_3a6

    const/4 v9, 0x0

    :goto_2f7
    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->mIsBgColorChanged:Z

    .line 876
    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    iput v9, v6, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    .line 877
    iget-boolean v9, p0, Lcom/android/email/activity/MessagesAdapter;->mCheckboxDisabled:Z

    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->mCheckboxDisabled:Z

    .line 878
    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    iput v9, v6, Lcom/android/email/activity/MessageListItem;->mPosition:I

    .line 879
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_31c

    .line 880
    const/16 v9, 0x1e

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v6, Lcom/android/email/activity/MessageListItem;->mChildCount:I

    .line 881
    const/16 v9, 0x1f

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v6, Lcom/android/email/activity/MessageListItem;->mChildIndex:I

    .line 885
    :cond_31c
    iget v9, v6, Lcom/android/email/activity/MessageListItem;->mMailboxType:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3a9

    iget-object v9, v6, Lcom/android/email/activity/MessageListItem;->mServerId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_3a9

    .line 887
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->isSendingFailedMsg:Z

    .line 888
    iget-object v9, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f080612

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/email/activity/MessageListItem;->mSendingFailedText:Ljava/lang/String;

    .line 893
    :goto_337
    invoke-virtual {v5}, Lcom/android/email/activity/MessageListItemContainer;->updateBackground()V

    goto/16 :goto_1d

    .line 781
    .end local v1           #accountId:J
    .end local v4           #irmTemplate:Ljava/lang/String;
    .restart local v8       #nextAdapterPosition:I
    :cond_33c
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->mHasDivider:Z

    goto/16 :goto_191

    .line 790
    :cond_341
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->mNeedMorePadding:Z

    goto/16 :goto_1bb

    .line 794
    .end local v8           #nextAdapterPosition:I
    :cond_346
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->mHasDivider:Z

    .line 795
    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->mNeedMorePadding:Z

    goto/16 :goto_1bb

    .line 810
    .restart local v1       #accountId:J
    .restart local v7       #localRead:I
    :cond_34e
    const/4 v9, 0x0

    goto/16 :goto_1e4

    .line 814
    .end local v7           #localRead:I
    :cond_351
    const/4 v9, 0x6

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_35d

    const/4 v9, 0x1

    :goto_359
    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->mRead:Z

    goto/16 :goto_1e6

    :cond_35d
    const/4 v9, 0x0

    goto :goto_359

    .line 816
    :cond_35f
    const/4 v9, 0x0

    goto/16 :goto_1ee

    .line 830
    :cond_362
    const/4 v9, 0x0

    goto/16 :goto_23d

    .line 831
    :cond_365
    const/4 v9, 0x0

    goto/16 :goto_24c

    .line 832
    :cond_368
    const/4 v9, 0x0

    goto/16 :goto_259

    .line 833
    :cond_36b
    const/4 v9, 0x0

    goto/16 :goto_266

    .line 835
    :cond_36e
    const/4 v9, 0x0

    goto/16 :goto_273

    .line 836
    :cond_371
    const/4 v9, 0x0

    goto/16 :goto_27e

    .line 841
    :cond_374
    const/4 v9, 0x0

    goto/16 :goto_298

    .line 848
    .restart local v4       #irmTemplate:Ljava/lang/String;
    :cond_377
    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->mHasIrm:Z

    goto/16 :goto_2ab

    .line 859
    :cond_37c
    const/4 v9, 0x4

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    goto/16 :goto_2cc

    .line 861
    :cond_385
    const/4 v9, 0x3

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    .line 863
    iget-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->isSms:Z

    if-eqz v9, :cond_39a

    .line 864
    const/16 v9, 0x19

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    goto/16 :goto_2cc

    .line 866
    :cond_39a
    const/4 v9, 0x4

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    goto/16 :goto_2cc

    .line 871
    :cond_3a3
    const/4 v9, 0x0

    goto/16 :goto_2e6

    .line 875
    :cond_3a6
    const/4 v9, 0x1

    goto/16 :goto_2f7

    .line 890
    :cond_3a9
    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/android/email/activity/MessageListItem;->isSendingFailedMsg:Z

    .line 891
    const/4 v9, 0x0

    iput-object v9, v6, Lcom/android/email/activity/MessageListItem;->mSendingFailedText:Ljava/lang/String;
    :try_end_3af
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_3af} :catch_12e

    goto :goto_337
.end method

.method public clearBlockCounter()V
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 471
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 472
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 473
    return-void
.end method

.method public compareCount(I)Z
    .registers 6
    .parameter "totalCount"

    .prologue
    const/4 v0, 0x1

    .line 496
    const-string v1, "MessagesAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sListItemCountNew : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " totalCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    sget v1, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    if-ge v1, v0, :cond_2c

    if-lez p1, :cond_2c

    .line 500
    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public expandOrShinkListItemAll(III)V
    .registers 4
    .parameter "expandFactor"
    .parameter "shrinkFactor"
    .parameter "factor"

    .prologue
    .line 939
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessagesAdapter;->changeSubtitleStateAll(III)V

    .line 940
    return-void
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 665
    iget v0, p0, Lcom/android/email/activity/MessagesAdapter;->sListItemCount:I

    iget v1, p0, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getFirstListItem()Landroid/view/View;
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mFirstListItem:Landroid/view/View;

    return-object v0
.end method

.method public getItemId(I)J
    .registers 8
    .parameter "position"

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 619
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_17

    .line 620
    :cond_d
    const-string v4, "MessagesAdapter"

    const-string v5, "invalid cursor in getItemId()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-wide/16 v2, 0x0

    .line 637
    :goto_16
    return-wide v2

    .line 623
    :cond_17
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    if-nez v4, :cond_22

    .line 624
    const-string v4, "MessagesAdapter"

    const-string v5, "context is null in getItemId()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_22
    sget-boolean v4, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    if-nez v4, :cond_2d

    .line 628
    const-string v4, "MessagesAdapter"

    const-string v5, "activity is hidden in getItemId()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_2d
    const-wide/16 v2, 0x0

    .line 632
    .local v2, returnId:J
    :try_start_2f
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_34

    move-result-wide v2

    goto :goto_16

    .line 633
    :catch_34
    move-exception v1

    .line 634
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/email/activity/MessageListFragment;->setLoadReserved()V

    .line 635
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public getListItemCountNew()I
    .registers 2

    .prologue
    .line 537
    sget v0, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    return v0
.end method

.method public getRealPositionForCurrentId(J)I
    .registers 7
    .parameter "Id"

    .prologue
    .line 650
    const/4 v0, -0x1

    .line 651
    .local v0, adapterPosition:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 652
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v0, v2, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    .line 653
    if-gez v0, :cond_19

    .line 651
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 655
    :cond_19
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 656
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_16

    .line 659
    .end local v1           #i:I
    :goto_29
    return v1

    .restart local v1       #i:I
    :cond_2a
    const/4 v1, -0x1

    goto :goto_29
.end method

.method public getSelectedSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getSelectedTitleSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getTotalCount()I
    .registers 2

    .prologue
    .line 533
    iget v0, p0, Lcom/android/email/activity/MessagesAdapter;->sListItemCount:I

    return v0
.end method

.method public getUnreadCount()I
    .registers 2

    .prologue
    .line 529
    sget v0, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCount:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x2

    .line 670
    const/4 v2, 0x0

    .line 672
    .local v2, v:Landroid/view/View;
    :try_start_2
    iput p1, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    .line 673
    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v3, v3, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    iput v3, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    .line 674
    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v3, v3, Lcom/android/email/activity/MessagesAdapter$Position;->parentIndex:I

    iput v3, p0, Lcom/android/email/activity/MessagesAdapter;->mParentIndex:I

    .line 675
    iget v3, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    if-gez v3, :cond_55

    .line 676
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v3, v3, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    invoke-interface {v4, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 680
    :goto_33
    iget v3, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    if-gez v3, :cond_8f

    .line 681
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/email/activity/MessagesAdapter;->mItemMode:I

    .line 689
    :goto_3a
    if-nez p2, :cond_ac

    .line 690
    iget-object v3, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p3}, Lcom/android/email/activity/MessagesAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 694
    :goto_46
    iget-object v3, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 695
    if-nez p1, :cond_53

    .line 696
    iput-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mFirstListItem:Landroid/view/View;

    :cond_53
    move-object v1, v2

    .line 712
    :cond_54
    :goto_54
    return-object v1

    .line 678
    :cond_55
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5e} :catch_5f

    goto :goto_33

    .line 698
    :catch_5f
    move-exception v0

    .line 699
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 700
    new-instance v1, Lcom/android/email/activity/MessageListItemContainer;

    iget-object v3, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/email/activity/MessagesAdapter;->mItemMode:I

    invoke-direct {v1, v3, v4}, Lcom/android/email/activity/MessageListItemContainer;-><init>(Landroid/content/Context;I)V

    .line 701
    .local v1, item:Lcom/android/email/activity/MessageListItemContainer;
    iput v6, v1, Lcom/android/email/activity/MessageListItemContainer;->mItemMode:I

    .line 702
    invoke-virtual {v1}, Lcom/android/email/activity/MessageListItemContainer;->updateBackground()V

    .line 703
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageListItemContainer;->setVisibility(I)V

    .line 704
    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_83

    .line 705
    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessagesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 707
    :cond_83
    if-ltz p1, :cond_54

    const/16 v3, 0xa

    if-gt p1, v3, :cond_54

    .line 708
    iget-object v3, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v3}, Lcom/android/email/activity/MessagesAdapter$Callback;->needRefreshList()V

    goto :goto_54

    .line 683
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #item:Lcom/android/email/activity/MessageListItemContainer;
    :cond_8f
    :try_start_8f
    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 684
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/email/activity/MessagesAdapter;->mItemMode:I

    goto :goto_3a

    .line 686
    :cond_a8
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/email/activity/MessagesAdapter;->mItemMode:I
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_ab} :catch_5f

    goto :goto_3a

    .line 692
    :cond_ac
    move-object v2, p2

    goto :goto_46
.end method

.method public initAdapter()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 548
    iput v0, p0, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    .line 549
    iput v0, p0, Lcom/android/email/activity/MessagesAdapter;->sListItemCount:I

    .line 550
    sput v0, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCount:I

    .line 551
    sput v0, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCountNew:I

    .line 552
    sput v0, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    .line 553
    sput v0, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCountNew:I

    .line 555
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 556
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 557
    sput-object v1, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    .line 559
    :cond_19
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    .line 560
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 561
    sput-object v1, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    .line 563
    :cond_24
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    if-eqz v0, :cond_2f

    .line 564
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 565
    sput-object v1, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    .line 567
    :cond_2f
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    if-eqz v0, :cond_3a

    .line 568
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 569
    sput-object v1, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    .line 571
    :cond_3a
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    if-eqz v0, :cond_45

    .line 572
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 573
    sput-object v1, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    .line 575
    :cond_45
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    if-eqz v0, :cond_50

    .line 576
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 577
    sput-object v1, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    .line 579
    :cond_50
    return-void
.end method

.method public isForwardBlock()Z
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isReplyAllBlock()Z
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isReplyBlock()Z
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isSelected(Lcom/android/email/activity/MessageListItemContainer;)Z
    .registers 5
    .parameter "itemView"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/android/email/activity/MessageListItemContainer;->getListItem()Lcom/android/email/activity/MessageListItem;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelected(Ljava/lang/String;)Z
    .registers 3
    .parameter "convId"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadState(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    .line 436
    .local v2, checkedset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v1

    .line 437
    .local v1, checkedStrSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v8, "com.android.email.activity.MessagesAdapter.checkedItems"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .local v0, arr$:[J
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_10
    if-ge v3, v6, :cond_1e

    aget-wide v4, v0, v3

    .line 438
    .local v4, l:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 437
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 440
    .end local v4           #l:J
    :cond_1e
    const-string v8, "com.android.email.activity.MessagesAdapter.subTitlecheckedItems"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v6, :cond_30

    aget-object v7, v0, v3

    .line 441
    .local v7, s:Ljava/lang/String;
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 440
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 443
    .end local v7           #s:Ljava/lang/String;
    :cond_30
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 904
    new-instance v0, Lcom/android/email/activity/MessageListItemContainer;

    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/email/activity/MessagesAdapter;->mItemMode:I

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageListItemContainer;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 12
    .parameter "outState"

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v3

    .line 417
    .local v3, checkedset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v1

    .line 418
    .local v1, checkedStrSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v8

    new-array v2, v8, [J

    .line 419
    .local v2, checkedarray:[J
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v8

    new-array v0, v8, [Ljava/lang/String;

    .line 420
    .local v0, checkedStrArray:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 421
    .local v4, i:I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 422
    .local v6, l:Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v2, v4

    .line 423
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 425
    .end local v6           #l:Ljava/lang/Long;
    :cond_2e
    const/4 v4, 0x0

    .line 426
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_44

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 427
    .local v7, s:Ljava/lang/String;
    aput-object v7, v0, v4

    .line 428
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 430
    .end local v7           #s:Ljava/lang/String;
    :cond_44
    const-string v8, "com.android.email.activity.MessagesAdapter.checkedItems"

    invoke-virtual {p1, v8, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 431
    const-string v8, "com.android.email.activity.MessagesAdapter.subTitlecheckedItems"

    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public setAdapterInfo()V
    .registers 5

    .prologue
    .line 589
    sget v3, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    iput v3, p0, Lcom/android/email/activity/MessagesAdapter;->sListItemCount:I

    .line 590
    sget v3, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCountNew:I

    sput v3, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCount:I

    .line 591
    sget v3, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCountNew:I

    iput v3, p0, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    .line 592
    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    .line 593
    .local v1, tempListForSubTitle:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MessagesAdapter$SubTitle;>;"
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    .line 594
    .local v0, tempHideViewPosition:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    .line 596
    .local v2, tempListPositionForAdapter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MessagesAdapter$Position;>;"
    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    if-eqz v3, :cond_43

    .line 597
    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    sput-object v3, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    .line 598
    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    sput-object v3, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    .line 599
    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    sput-object v3, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    .line 606
    :goto_34
    if-eqz v1, :cond_42

    .line 607
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 608
    const/4 v1, 0x0

    .line 609
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 610
    const/4 v0, 0x0

    .line 611
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 612
    const/4 v2, 0x0

    .line 614
    :cond_42
    return-void

    .line 601
    :cond_43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    .line 602
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    .line 603
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    goto :goto_34
.end method

.method public setBackgroundColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 929
    iput p1, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    .line 931
    :try_start_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->notifyDataSetInvalidated()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 935
    :goto_5
    return-void

    .line 932
    :catch_6
    move-exception v0

    .line 933
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public setCheckboxStatus(Z)V
    .registers 2
    .parameter "bool"

    .prologue
    .line 582
    iput-boolean p1, p0, Lcom/android/email/activity/MessagesAdapter;->mCheckboxDisabled:Z

    .line 583
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->notifyDataSetChanged()V

    .line 584
    return-void
.end method

.method public setListItemSize(I)V
    .registers 4
    .parameter "fontSize"

    .prologue
    .line 908
    iget v1, p0, Lcom/android/email/activity/MessagesAdapter;->mfontSize:I

    if-eq v1, p1, :cond_7

    .line 909
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/MessagesAdapter;->bFontChanged:Z

    .line 911
    :cond_7
    iput p1, p0, Lcom/android/email/activity/MessagesAdapter;->mfontSize:I

    .line 913
    :try_start_9
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->notifyDataSetInvalidated()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    .line 917
    :goto_c
    return-void

    .line 914
    :catch_d
    move-exception v0

    .line 915
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public setPreviewLineSize(I)V
    .registers 3
    .parameter "previewLineSize"

    .prologue
    .line 920
    iput p1, p0, Lcom/android/email/activity/MessagesAdapter;->mPreviewLineSize:I

    .line 922
    :try_start_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->notifyDataSetInvalidated()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 926
    :goto_5
    return-void

    .line 923
    :catch_6
    move-exception v0

    .line 924
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public setShowColorChips(Z)V
    .registers 2
    .parameter "show"

    .prologue
    .line 449
    iput-boolean p1, p0, Lcom/android/email/activity/MessagesAdapter;->mShowColorChips:Z

    .line 450
    return-void
.end method

.method public toggleMultiSelected(IZ)V
    .registers 3
    .parameter "subTitleIndex"
    .parameter "isChecked"

    .prologue
    .line 990
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessagesAdapter;->updateMultiSelected(IZ)V

    .line 991
    return-void
.end method

.method public toggleSelected(Lcom/android/email/activity/MessageListItemContainer;I)V
    .registers 4
    .parameter "itemView"
    .parameter "parentIndex"

    .prologue
    .line 1074
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItemContainer;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-direct {p0, p1, v0, p2}, Lcom/android/email/activity/MessagesAdapter;->updateSelected(Lcom/android/email/activity/MessageListItemContainer;ZI)V

    .line 1075
    return-void

    .line 1074
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public unCheckAllSubTitleCheckBox()V
    .registers 5

    .prologue
    .line 505
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    if-eqz v2, :cond_1b

    .line 506
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 507
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v1, :cond_1b

    .line 508
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 511
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1b
    return-void
.end method

.method public updateArrow(I)V
    .registers 2
    .parameter "subTitleIndex"

    .prologue
    .line 1042
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessagesAdapter;->changeSubtitleState(I)V

    .line 1043
    return-void
.end method

.method public updateFavorite(Lcom/android/email/activity/MessageListItemContainer;Z)V
    .registers 7
    .parameter "itemView"
    .parameter "newFavorite"

    .prologue
    .line 1141
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessagesAdapter;->changeFavoriteIcon(Lcom/android/email/activity/MessageListItemContainer;Z)V

    .line 1142
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v0, :cond_c

    .line 1143
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessagesAdapter$Callback;->onAdapterFavoriteChanged(Lcom/android/email/activity/MessageListItemContainer;Z)V

    .line 1146
    :cond_c
    if-nez p2, :cond_22

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v0

    const-wide/16 v2, -0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    .line 1147
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/email/activity/MessageListItemContainer;->getListItem()Lcom/android/email/activity/MessageListItem;

    move-result-object v1

    iget v1, v1, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/activity/MessagesAdapter;->updateSelected(Lcom/android/email/activity/MessageListItemContainer;ZI)V

    .line 1149
    :cond_22
    return-void
.end method

.method public updateFollowUpFlag(Lcom/android/email/activity/MessageListItemContainer;I)V
    .registers 4
    .parameter "itemView"
    .parameter "newFollowUpFlag"

    .prologue
    .line 1164
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessagesAdapter;->changeFollowUpFlagIcon(Lcom/android/email/activity/MessageListItemContainer;I)V

    .line 1165
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v0, :cond_c

    .line 1166
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessagesAdapter$Callback;->onAdapterFollowUpChanged(Lcom/android/email/activity/MessageListItemContainer;I)V

    .line 1168
    :cond_c
    return-void
.end method
