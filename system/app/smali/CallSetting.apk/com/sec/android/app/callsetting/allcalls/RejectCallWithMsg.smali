.class public Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;
.super Landroid/app/Activity;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static FROM:[Ljava/lang/String;

.field private static isItemSelected:[Z


# instance fields
.field bytesText:Landroid/widget/TextView;

.field createItem:Landroid/widget/LinearLayout;

.field editText:Landroid/widget/EditText;

.field emptyText:Landroid/widget/FrameLayout;

.field empty_create:Landroid/widget/LinearLayout;

.field factory:Landroid/view/LayoutInflater;

.field private handler:Landroid/os/Handler;

.field private header:Landroid/view/View;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field istoastshowing:Z

.field listView:Landroid/widget/ListView;

.field private mEdited:I

.field mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItem:I

.field private mSelectedItemForEdit:I

.field mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field private mState:I

.field private mTempEditString:Ljava/lang/String;

.field private mUpdated:Z

.field private rejectMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rejectMsgListID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selectAll:Landroid/widget/LinearLayout;

.field selectAllCheck:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "reject_message"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "edit_checked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mUpdated:Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->istoastshowing:Z

    .line 548
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$10;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Landroid/widget/ArrayAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItemForEdit:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->updateDeleteItems()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->deleteRejectMessage(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->updateRejectMessage()V

    return-void
.end method

.method private addRejectMessage(Ljava/lang/String;)J
    .registers 9
    .parameter "string"

    .prologue
    const/4 v6, 0x1

    .line 893
    iput v6, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    .line 894
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 895
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "reject_message"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v4, "edit_checked"

    iget v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 897
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 898
    .local v2, new_uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 899
    .local v0, id:J
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "edit_mode"

    iget v6, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 900
    return-wide v0
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .registers 6
    .parameter "string"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 866
    iget-boolean v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mUpdated:Z

    if-eqz v1, :cond_32

    .line 868
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e

    .line 872
    iget v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItemForEdit:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1f

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    move v1, v2

    .line 886
    :goto_1e
    return v1

    .line 874
    :cond_1f
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    move v1, v3

    .line 875
    goto :goto_1e

    .line 868
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 880
    .end local v0           #i:I
    :cond_32
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_33
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e

    .line 882
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    move v1, v3

    .line 883
    goto :goto_1e

    .line 880
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_4e
    move v1, v2

    .line 886
    goto :goto_1e
.end method

.method private deleteRejectMessage()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 908
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 909
    return-void
.end method

.method private deleteRejectMessage(I)V
    .registers 7
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 915
    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 916
    .local v0, rejectmsgUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 917
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1046
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1047
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1048
    return-void
.end method

.method private getRejectMessage()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 932
    const-string v5, "_id desc"

    .line 933
    .local v5, sortOrder:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 1175
    const-string v0, "RejectCallWithMsg"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    return-void
.end method

.method private persistSelectedListItems()V
    .registers 5

    .prologue
    .line 442
    const/4 v0, 0x1

    .local v0, index:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 443
    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->isItemSelected:[Z

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 445
    :cond_18
    return-void
.end method

.method private refreshDeleteScreenWithPersistedState()V
    .registers 5

    .prologue
    .line 425
    const/4 v0, 0x1

    .local v0, index:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 427
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->isItemSelected:[Z

    add-int/lit8 v3, v0, -0x1

    aget-boolean v2, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 430
    :cond_17
    return-void
.end method

.method private refreshRejectMessage(Landroid/database/Cursor;)V
    .registers 15
    .parameter "cursor"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 983
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "edit_mode"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    .line 984
    iget-object v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    if-eqz v8, :cond_20

    iget-object v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_20

    .line 985
    iget-object v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 986
    :cond_20
    iget-object v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    if-eqz v8, :cond_31

    iget-object v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_31

    .line 987
    iget-object v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 988
    :cond_31
    const/4 v2, 0x0

    .line 989
    .local v2, idx:I
    iput v10, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    .line 990
    if-eqz p1, :cond_95

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_95

    .line 993
    :goto_3c
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 994
    .local v0, id:J
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    .line 996
    iget v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    if-ne v8, v10, :cond_9c

    .line 998
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 999
    .local v4, message:Ljava/lang/String;
    const-string v8, "Edited"

    invoke-direct {p0, v8}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 1013
    :goto_54
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RejectMsg idx"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Reject Message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 1016
    iget-object v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1017
    iget-object v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .local v3, idx:I
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1018
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_ca

    move v2, v3

    .line 1021
    .end local v0           #id:J
    .end local v3           #idx:I
    .end local v4           #message:Ljava/lang/String;
    .restart local v2       #idx:I
    :cond_95
    const/4 v8, 0x6

    if-le v2, v8, :cond_9b

    .line 1023
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->deleteRejectMessage()V

    .line 1025
    :cond_9b
    return-void

    .line 1002
    .restart local v0       #id:J
    :cond_9c
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1003
    .local v6, resource:I
    invoke-virtual {p0, v6}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1004
    .restart local v4       #message:Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1005
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "reject_message"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const-string v8, "edit_checked"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1007
    sget-object v8, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1008
    .local v5, rejectmsgUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v5, v7, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1009
    const-string v8, "default"

    invoke-direct {p0, v8}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    goto :goto_54

    .end local v2           #idx:I
    .end local v5           #rejectmsgUri:Landroid/net/Uri;
    .end local v6           #resource:I
    .end local v7           #values:Landroid/content/ContentValues;
    .restart local v3       #idx:I
    :cond_ca
    move v2, v3

    .end local v3           #idx:I
    .restart local v2       #idx:I
    goto/16 :goto_3c
.end method

.method private saveRejectMessage(Ljava/lang/String;)V
    .registers 15
    .parameter "resultString"

    .prologue
    const v12, 0x7f0700a1

    const/4 v11, 0x6

    const/4 v6, 0x2

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 792
    move-object v3, p1

    .line 793
    .local v3, tempString:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 795
    .local v1, id:J
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_55

    const/4 v5, 0x1

    :goto_14
    iput v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    .line 799
    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 801
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f07009c

    invoke-virtual {p0, v6}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    .line 802
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 862
    :goto_54
    return-void

    :cond_55
    move v5, v6

    .line 795
    goto :goto_14

    .line 806
    :cond_57
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_70

    .line 808
    invoke-virtual {p0, v12}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    .line 809
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_54

    .line 815
    :cond_70
    const-string v5, " "

    const-string v7, ""

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 817
    invoke-virtual {p0, v12}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    .line 818
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_54

    .line 822
    :cond_9b
    iget v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I

    if-lez v5, :cond_f6

    .line 824
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 825
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 827
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    iget v7, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 828
    .local v4, update_id:I
    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->updateRejectMessage(Ljava/lang/String;I)V

    .line 829
    iput v9, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I

    .line 855
    .end local v4           #update_id:I
    :cond_c6
    :goto_c6
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    .line 856
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->editText:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_e7

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_e7

    .line 859
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 860
    :cond_e7
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v5, v7, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 861
    iput v6, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    goto/16 :goto_54

    .line 834
    :cond_f6
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    .line 835
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_13d

    .line 836
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-le v11, v5, :cond_14c

    .line 837
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 838
    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->addRejectMessage(Ljava/lang/String;)J

    move-result-wide v1

    .line 839
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v9, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 840
    const-string v5, "RejectCallWithMsg"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Added ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " message = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :goto_13a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 848
    :cond_13d
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v11, :cond_c6

    .line 850
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->createItem:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_c6

    .line 843
    :cond_14c
    const-string v5, "RejectCallWithMsg"

    const-string v7, "max in saveRejectMessage - no add"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13a
.end method

.method private showRejectMessage(Landroid/database/Cursor;)V
    .registers 15
    .parameter "cursor"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 940
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "edit_mode"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    .line 942
    const/4 v2, 0x0

    .line 943
    .local v2, idx:I
    iput v10, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    .line 944
    if-eqz p1, :cond_73

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_73

    .line 947
    :goto_1a
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 948
    .local v0, id:J
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    .line 950
    iget v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    if-ne v8, v10, :cond_7a

    .line 952
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 953
    .local v4, message:Ljava/lang/String;
    const-string v8, "Edited"

    invoke-direct {p0, v8}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 967
    :goto_32
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RejectMsg idx"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Reject Message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 970
    iget-object v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 971
    iget-object v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .local v3, idx:I
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 972
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_a8

    move v2, v3

    .line 975
    .end local v0           #id:J
    .end local v3           #idx:I
    .end local v4           #message:Ljava/lang/String;
    .restart local v2       #idx:I
    :cond_73
    const/4 v8, 0x6

    if-le v2, v8, :cond_79

    .line 977
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->deleteRejectMessage()V

    .line 979
    :cond_79
    return-void

    .line 956
    .restart local v0       #id:J
    :cond_7a
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 957
    .local v6, resource:I
    invoke-virtual {p0, v6}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 958
    .restart local v4       #message:Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 959
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "reject_message"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const-string v8, "edit_checked"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 961
    sget-object v8, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 962
    .local v5, rejectmsgUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v5, v7, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 963
    const-string v8, "default"

    invoke-direct {p0, v8}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    goto :goto_32

    .end local v2           #idx:I
    .end local v5           #rejectmsgUri:Landroid/net/Uri;
    .end local v6           #resource:I
    .end local v7           #values:Landroid/content/ContentValues;
    .restart local v3       #idx:I
    :cond_a8
    move v2, v3

    .end local v3           #idx:I
    .restart local v2       #idx:I
    goto/16 :goto_1a
.end method

.method private updateDeleteItems()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1179
    const/4 v0, 0x0

    .line 1180
    .local v0, checked_cnt:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_4
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 1182
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1183
    add-int/lit8 v0, v0, 0x1

    .line 1180
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1186
    :cond_19
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    if-lez v0, :cond_31

    move v2, v3

    :goto_1e
    invoke-virtual {v5, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 1187
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAllCheck:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_33

    :goto_2d
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1188
    return-void

    :cond_31
    move v2, v4

    .line 1186
    goto :goto_1e

    :cond_33
    move v4, v3

    .line 1187
    goto :goto_2d
.end method

.method private updateRejectMessage()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1160
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_a

    const/4 v0, 0x2

    :cond_a
    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current mState = :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 1163
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_6c

    .line 1164
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->createItem:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1168
    :goto_34
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070053

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/6)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1171
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->setTitle(Ljava/lang/CharSequence;)V

    .line 1172
    return-void

    .line 1166
    :cond_6c
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->createItem:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_34
.end method

.method private updateRejectMessage(Ljava/lang/String;I)V
    .registers 9
    .parameter "string"
    .parameter "rowId"

    .prologue
    const/4 v5, 0x0

    .line 920
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    .line 921
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 922
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "reject_message"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string v2, "edit_checked"

    iget v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 924
    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p2

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 925
    .local v0, rejectmsgUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 926
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "edit_mode"

    iget v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 927
    return-void
.end method

.method private updateTitleBar()V
    .registers 4

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070053

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/6)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1194
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->setTitle(Ljava/lang/CharSequence;)V

    .line 1195
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 711
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 675
    return-void
.end method

.method public deleteDialog()V
    .registers 4

    .prologue
    .line 1125
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1127
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700ad

    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$21;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$21;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700ae

    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$20;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$20;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$19;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$19;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1156
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1052
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1053
    const-string v0, ""

    .line 1054
    packed-switch p1, :pswitch_data_24

    .line 1065
    :cond_8
    :goto_8
    return-void

    .line 1056
    :pswitch_9
    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    .line 1057
    const-string v0, "REJECT_MESSAGE_RESULT_Intent"

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 1058
    const-string v0, "EDITED_MESSAGE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1059
    const-string v1, "UPDATED"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mUpdated:Z

    .line 1060
    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->saveRejectMessage(Ljava/lang/String;)V

    goto :goto_8

    .line 1054
    :pswitch_data_24
    .packed-switch 0x3
        :pswitch_9
    .end packed-switch
.end method

.method public onClickActionBar()V
    .registers 4

    .prologue
    .line 559
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 560
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 562
    const-string v1, "com.android.phone.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->startActivity(Landroid/content/Intent;)V

    .line 564
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->finish()V

    .line 565
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 497
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 498
    const-string v0, "onConfigurationChanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f08001a

    const/4 v7, 0x1

    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    const v3, 0x7f030012

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->setContentView(I)V

    .line 145
    const/4 v3, 0x6

    new-array v3, v3, [Z

    sput-object v3, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->isItemSelected:[Z

    .line 146
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 147
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1c

    .line 149
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 152
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "edit_mode"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    .line 153
    const v3, 0x7f080036

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    .line 156
    const v3, 0x7f080035

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    .line 157
    invoke-virtual {p0, v8}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->empty_create:Landroid/widget/LinearLayout;

    .line 162
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000a

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->header:Landroid/view/View;

    .line 163
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->header:Landroid/view/View;

    const v4, 0x7f080027

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    .line 164
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->header:Landroid/view/View;

    const v4, 0x7f080029

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAllCheck:Landroid/widget/CheckBox;

    .line 165
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->header:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->createItem:Landroid/widget/LinearLayout;

    .line 166
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->header:Landroid/view/View;

    invoke-virtual {v3, v4, v9, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 167
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 170
    const v3, 0x7f08000a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 171
    const v3, 0x7f08000b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 173
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->factory:Landroid/view/LayoutInflater;

    .line 174
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->factory:Landroid/view/LayoutInflater;

    const v4, 0x7f030009

    invoke-virtual {v3, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 175
    .local v2, textEntryView:Landroid/view/View;
    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->editText:Landroid/widget/EditText;

    .line 176
    const v3, 0x7f080025

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->bytesText:Landroid/widget/TextView;

    .line 182
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 191
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v1

    .line 192
    .local v1, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->showRejectMessage(Landroid/database/Cursor;)V

    .line 193
    if-eqz v1, :cond_d6

    .line 194
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_d6
    iput v7, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    .line 198
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_ea

    .line 200
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 201
    const/4 v3, 0x2

    iput v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    .line 204
    :cond_ea
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f030013

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    .line 205
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f030014

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    .line 208
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 211
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->empty_create:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$1;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->createItem:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$2;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAllCheck:Landroid/widget/CheckBox;

    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$3;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 328
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 343
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1069
    packed-switch p1, :pswitch_data_62

    move-object v0, v1

    .line 1120
    :goto_5
    return-object v0

    .line 1071
    :pswitch_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1072
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const v4, 0x7f0700af

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    const v4, 0x7f0700b2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1075
    :try_start_22
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_31
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_22 .. :try_end_31} :catch_46

    .line 1082
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$17;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$17;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1111
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1112
    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$18;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$18;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_5

    .line 1076
    :catch_46
    move-exception v0

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayIndexOutOfBoundsException mSelectedItem :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    move-object v0, v1

    .line 1079
    goto :goto_5

    .line 1069
    nop

    :pswitch_data_62
    .packed-switch 0x64
        :pswitch_6
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x8

    .line 606
    sparse-switch p1, :sswitch_data_26

    .line 669
    :cond_5
    :sswitch_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_9
    return v0

    .line 608
    :sswitch_a
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 611
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->updateRejectMessage()V

    .line 612
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 615
    const/4 v0, 0x1

    goto :goto_9

    .line 606
    nop

    :sswitch_data_26
    .sparse-switch
        0x4 -> :sswitch_a
        0x17 -> :sswitch_5
        0x42 -> :sswitch_5
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 570
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 572
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_42

    move v0, v1

    .line 597
    :cond_e
    :goto_e
    return v0

    .line 575
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->onClickActionBar()V

    goto :goto_e

    .line 578
    :sswitch_13
    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    if-ne v2, v4, :cond_e

    .line 580
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 581
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->createItem:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 584
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 585
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 586
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 589
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 590
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 593
    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    goto :goto_e

    .line 572
    :sswitch_data_42
    .sparse-switch
        0x2 -> :sswitch_13
        0x102002c -> :sswitch_f
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->persistSelectedListItems()V

    .line 437
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 438
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 517
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 518
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    packed-switch v0, :pswitch_data_2e

    .line 545
    :goto_9
    const/4 v0, 0x1

    return v0

    .line 521
    :pswitch_b
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_9

    .line 527
    :pswitch_f
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 528
    const/4 v0, 0x2

    const v1, 0x7f0700b2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020016

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_9

    .line 533
    :pswitch_25
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_9

    .line 540
    :pswitch_29
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_9

    .line 518
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_f
        :pswitch_25
        :pswitch_29
    .end packed-switch
.end method

.method protected onResume()V
    .registers 8

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 358
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 360
    const-string v3, "OnResume"

    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    .line 362
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->refreshRejectMessage(Landroid/database/Cursor;)V

    .line 363
    if-eqz v0, :cond_1a

    .line 364
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 366
    :cond_1a
    iget v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    if-ne v3, v4, :cond_6b

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6b

    .line 367
    iput v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    .line 375
    :goto_28
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    .line 376
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 379
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "edit_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current mState in onResume = :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 382
    iget v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    packed-switch v3, :pswitch_data_100

    .line 416
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v2, :cond_fc

    :goto_65
    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    .line 420
    :goto_67
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->updateTitleBar()V

    .line 421
    return-void

    .line 368
    :cond_6b
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7b

    .line 370
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 371
    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    goto :goto_28

    .line 374
    :cond_7b
    iput v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    goto :goto_28

    .line 385
    :pswitch_7e
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_98

    .line 386
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 388
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->createItem:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    iput v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    goto :goto_67

    .line 391
    :cond_98
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 392
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 393
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->refreshDeleteScreenWithPersistedState()V

    .line 394
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->updateDeleteItems()V

    .line 395
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->createItem:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v1, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 397
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_67

    .line 401
    :pswitch_ba
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 403
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->createItem:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 404
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    goto :goto_67

    .line 407
    :pswitch_cf
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 408
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 409
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_ea

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_f6

    .line 410
    :cond_ea
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->createItem:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 413
    :goto_ef
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    goto/16 :goto_67

    .line 412
    :cond_f6
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->createItem:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_ef

    :cond_fc
    move v1, v2

    .line 416
    goto/16 :goto_65

    .line 382
    nop

    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_ba
        :pswitch_cf
        :pswitch_7e
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 680
    return-void
.end method

.method public setAllItemChecked(Z)V
    .registers 5
    .parameter "bCheckStatus"

    .prologue
    .line 347
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 349
    .local v0, dataCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 350
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 352
    :cond_11
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v2, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 353
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .registers 6
    .parameter "target"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$7;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 481
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .registers 6
    .parameter "target"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$8;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 493
    return-void
.end method
