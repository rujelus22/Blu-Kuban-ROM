.class public Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;
.super Ljava/lang/Object;
.source "MessageActivityWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;
    }
.end annotation


# static fields
.field private static mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;


# instance fields
.field private final TRUNCATE_LENGTH:I

.field public cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

.field public mContext:Landroid/content/Context;

.field public mReceiverEmails:[Ljava/lang/String;

.field public mReceiverIds:[Ljava/lang/String;

.field public mReceiverNames:[Ljava/lang/String;

.field public mbThreadItem:Z

.field public miAccountId:I

.field public miAppType:I

.field public miCount:I

.field public miDate:Ljava/lang/String;

.field public miError:I

.field public miFlagFavorite:I

.field public miFlagStatus:I

.field public miFlagView:I

.field public miHasAttachment:I

.field public miId:I

.field public miImportance:I

.field public miMessageType:I

.field public miNew:I

.field public miPresence:I

.field public miSmimeFlag:I

.field public miSnsKey:I

.field public miSnsReceiver:I

.field public miSpType:I

.field public miType:I

.field public miflags:I

.field public milastVerb:I

.field public mstrContactId:Ljava/lang/String;

.field public mstrContent:Ljava/lang/String;

.field public mstrEmailAddr:Ljava/lang/String;

.field public mstrExt1:Ljava/lang/String;

.field public mstrMessageID:Ljava/lang/String;

.field public mstrName:Ljava/lang/String;

.field public mstrNumber:Ljava/lang/String;

.field public mstrOriginalName:Ljava/lang/String;

.field public mstrSubject:Ljava/lang/String;

.field public mstrThreadID:Ljava/lang/String;

.field public mstrumCallerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "minimum"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mbThreadItem:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;-><init>(Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    .line 73
    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->TRUNCATE_LENGTH:I

    .line 85
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mContext:Landroid/content/Context;

    .line 87
    if-ne p3, v2, :cond_43

    .line 90
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miId:I

    .line 92
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    .line 93
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miType:I

    .line 94
    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    .line 95
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    .line 96
    const/16 v0, 0xb

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrThreadID:Ljava/lang/String;

    .line 102
    :goto_42
    return-void

    .line 100
    :cond_43
    invoke-direct {p0, p2}, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_42
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mbThreadItem:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;-><init>(Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    .line 73
    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->TRUNCATE_LENGTH:I

    .line 106
    iput-object p2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 108
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->getLayout(Landroid/view/View;)V

    .line 109
    invoke-direct {p0, p3}, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->changeCursor(Landroid/database/Cursor;)V

    .line 110
    return-void
.end method

.method private changeCursor(Landroid/database/Cursor;)V
    .registers 9
    .parameter "cursor"

    .prologue
    const/16 v6, 0x32

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miId:I

    .line 115
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miDate:Ljava/lang/String;

    .line 116
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miType:I

    .line 117
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    .line 118
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrNumber:Ljava/lang/String;

    .line 119
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrName:Ljava/lang/String;

    .line 120
    const/16 v2, 0x1f

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrOriginalName:Ljava/lang/String;

    .line 121
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrEmailAddr:Ljava/lang/String;

    .line 123
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContent:Ljava/lang/String;

    .line 125
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContent:Ljava/lang/String;

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_58

    .line 126
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContent:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContent:Ljava/lang/String;

    .line 128
    :cond_58
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrSubject:Ljava/lang/String;

    .line 129
    const/16 v2, 0x10

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miNew:I

    .line 130
    const/16 v2, 0x13

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miCount:I

    .line 131
    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAccountId:I

    .line 132
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    .line 133
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSnsKey:I

    .line 134
    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSnsReceiver:I

    .line 135
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContactId:Ljava/lang/String;

    .line 136
    const/16 v2, 0x11

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miHasAttachment:I

    .line 137
    const/16 v2, 0x12

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miFlagFavorite:I

    .line 138
    const/16 v2, 0x14

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miFlagView:I

    .line 139
    const/16 v2, 0x15

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrExt1:Ljava/lang/String;

    .line 140
    const/16 v2, 0x16

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miFlagStatus:I

    .line 141
    const/16 v2, 0x17

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miImportance:I

    .line 142
    const/16 v2, 0x18

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSmimeFlag:I

    .line 143
    const/16 v2, 0x19

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrumCallerId:Ljava/lang/String;

    .line 144
    const/16 v2, 0x1a

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miMessageType:I

    .line 145
    const/16 v2, 0x1b

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miflags:I

    .line 146
    const/16 v2, 0x1c

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->milastVerb:I

    .line 147
    const/16 v2, 0x1d

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miPresence:I

    .line 148
    const/16 v2, 0x1e

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miError:I

    .line 150
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    .line 151
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrThreadID:Ljava/lang/String;

    .line 153
    iget v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    const/16 v3, 0x258

    if-ne v2, v3, :cond_129

    .line 155
    iget v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    invoke-static {v2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v1

    .line 159
    .local v1, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    if-eqz v1, :cond_129

    const/4 v2, 0x4

    :try_start_11d
    invoke-interface {v1, v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isNeeds(I)Z

    move-result v2

    if-ne v2, v4, :cond_129

    .line 161
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->getReceiverNames()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrName:Ljava/lang/String;
    :try_end_129
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_11d .. :try_end_129} :catch_12a

    .line 170
    .end local v1           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :cond_129
    :goto_129
    return-void

    .line 164
    .restart local v1       #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :catch_12a
    move-exception v0

    .line 166
    .local v0, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_129
.end method

.method private getReceiverNames()Ljava/lang/String;
    .registers 18

    .prologue
    .line 175
    const-string v1, "content://com.sec.android.app.provider.sns/message/thread/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrThreadID:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 180
    .local v7, baseUri:Landroid/net/Uri;
    const-string v1, "receiver"

    invoke-static {v7, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 181
    .local v2, msgReceiver:Landroid/net/Uri;
    new-instance v15, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v15, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 183
    .local v15, receiverNames:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "receiver_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "receiver_name"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 190
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_49

    .line 191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080046

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 260
    :cond_48
    :goto_48
    return-object v13

    .line 194
    :cond_49
    const/4 v13, 0x0

    .line 198
    .local v13, receiver:Ljava/lang/String;
    :try_start_4a
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 199
    .local v14, receiverCount:I
    if-eqz v14, :cond_f6

    .line 201
    new-array v1, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mReceiverIds:[Ljava/lang/String;

    .line 202
    new-array v1, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mReceiverNames:[Ljava/lang/String;

    .line 203
    new-array v1, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mReceiverEmails:[Ljava/lang/String;

    .line 205
    sget-object v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    invoke-virtual {v1, v3}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->getActorID(I)Ljava/lang/String;

    move-result-object v11

    .line 206
    .local v11, myId:Ljava/lang/String;
    const/4 v12, 0x0

    .line 207
    .local v12, name:Ljava/lang/String;
    const/16 v16, 0x0

    .line 208
    .local v16, tempReceiverid:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 210
    const/4 v10, 0x0

    .local v10, i:I
    :goto_73
    if-ge v10, v14, :cond_ca

    .line 212
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mReceiverIds:[Ljava/lang/String;

    aput-object v16, v1, v10

    .line 216
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 218
    if-nez v12, :cond_96

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08001f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 223
    :cond_96
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mReceiverIds:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrNumber:Ljava/lang/String;

    aput-object v3, v1, v10

    .line 226
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrOriginalName:Ljava/lang/String;

    .line 229
    :cond_ac
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mReceiverEmails:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrEmailAddr:Ljava/lang/String;

    aput-object v3, v1, v10

    .line 230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mReceiverNames:[Ljava/lang/String;

    aput-object v12, v1, v10

    .line 231
    invoke-virtual {v15, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    const-string v1, ", "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 210
    add-int/lit8 v10, v10, 0x1

    goto :goto_73

    .line 236
    :cond_ca
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 237
    const/4 v1, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v13, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 239
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080046

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_ed
    .catchall {:try_start_4a .. :try_end_ed} :catchall_121
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_ed} :catch_106

    move-result-object v13

    .line 254
    .end local v10           #i:I
    .end local v11           #myId:Ljava/lang/String;
    .end local v12           #name:Ljava/lang/String;
    .end local v16           #tempReceiverid:Ljava/lang/String;
    :cond_ee
    :goto_ee
    if-eqz v8, :cond_48

    .line 256
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 257
    const/4 v8, 0x0

    goto/16 :goto_48

    .line 244
    :cond_f6
    :try_start_f6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080046

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_104
    .catchall {:try_start_f6 .. :try_end_104} :catchall_121
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_104} :catch_106

    move-result-object v13

    goto :goto_ee

    .line 248
    .end local v14           #receiverCount:I
    :catch_106
    move-exception v9

    .line 250
    .local v9, e:Ljava/lang/Exception;
    :try_start_107
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08001f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_118
    .catchall {:try_start_107 .. :try_end_118} :catchall_121

    move-result-object v13

    .line 254
    if-eqz v8, :cond_48

    .line 256
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 257
    const/4 v8, 0x0

    goto/16 :goto_48

    .line 254
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_121
    move-exception v1

    if-eqz v8, :cond_128

    .line 256
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 257
    const/4 v8, 0x0

    :cond_128
    throw v1
.end method


# virtual methods
.method public getLayout(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    const v5, 0x7f0b0074

    const v4, 0x7f0b0073

    const v3, 0x7f0b006c

    .line 265
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    const v1, 0x7f0b000c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->headerView:Landroid/view/View;

    .line 266
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    const v0, 0x7f0b0068

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout:Landroid/widget/RelativeLayout;

    .line 267
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    const v0, 0x7f0b006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout2:Landroid/widget/LinearLayout;

    .line 268
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    const v0, 0x7f0b0075

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout3:Landroid/widget/LinearLayout;

    .line 269
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    const v0, 0x7f0b0067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->UpperDivider:Landroid/view/View;

    .line 270
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout3:Landroid/widget/LinearLayout;

    const v2, 0x7f0b007e

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->listExpander:Landroid/widget/LinearLayout;

    .line 271
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout3:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0077

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->profile:Landroid/widget/LinearLayout;

    .line 272
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout3:Landroid/widget/LinearLayout;

    const v2, 0x7f0b007b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iType3:Landroid/widget/LinearLayout;

    .line 274
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout3:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0078

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPic3:Landroid/widget/ImageView;

    .line 275
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout2:Landroid/widget/LinearLayout;

    const v2, 0x7f0b006b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iEmailColor:Landroid/widget/ImageView;

    .line 276
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout3:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0076

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iEmailColorType3:Landroid/widget/ImageView;

    .line 277
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout3:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0079

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iIsp3:Landroid/widget/ImageView;

    .line 279
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout2:Landroid/widget/LinearLayout;

    const v2, 0x7f0b006d

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iAttachment2:Landroid/widget/ImageView;

    .line 280
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout2:Landroid/widget/LinearLayout;

    const v2, 0x7f0b006e

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iPriority2:Landroid/widget/ImageView;

    .line 281
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout2:Landroid/widget/LinearLayout;

    const v2, 0x7f0b006f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iIcon2:Landroid/widget/ImageView;

    .line 282
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout2:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0070

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iFavorite2:Landroid/widget/ImageView;

    .line 284
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout2:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0071

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iState2:Landroid/widget/ImageView;

    .line 285
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout3:Landroid/widget/LinearLayout;

    const v2, 0x7f0b007f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->ExpanderIcon:Landroid/widget/ImageView;

    .line 286
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    const v0, 0x7f0b007d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->iImPresence:Landroid/widget/ImageView;

    .line 288
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tName2:Landroid/widget/TextView;

    .line 289
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout3:Landroid/widget/LinearLayout;

    const v2, 0x7f0b007a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tNameCnt3:Landroid/widget/TextView;

    .line 290
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tName3:Landroid/widget/TextView;

    .line 291
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout2:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0072

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tNumber2:Landroid/widget/TextView;

    .line 292
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tContents2:Landroid/widget/TextView;

    .line 293
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tContents3:Landroid/widget/TextView;

    .line 294
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tTime2:Landroid/widget/TextView;

    .line 295
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tTime3:Landroid/widget/TextView;

    .line 296
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->layout3:Landroid/widget/LinearLayout;

    const v2, 0x7f0b007c

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->tUnreadCnt:Landroid/widget/TextView;

    .line 298
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    const v0, 0x7f0b0069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->mCheckBox:Landroid/widget/CheckBox;

    .line 299
    return-void
.end method
