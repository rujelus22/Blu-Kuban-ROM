.class public final Lcom/android/emailcommon/provider/Account;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "Account.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/EmailContent$AccountColumns;


# static fields
.field public static final ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

.field public static final ADD_TO_FIELD_URI:Landroid/net/Uri;

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ACCOUNT_ID_URI:Landroid/net/Uri;

.field private static final DEFAULT_ID_PROJECTION:[Ljava/lang/String;

.field public static final ID_TYPE_PROJECTION:[Ljava/lang/String;

.field public static final NOTIFIER_URI:Landroid/net/Uri;

.field public static final RESET_NEW_MESSAGE_COUNT_URI:Landroid/net/Uri;


# instance fields
.field public transient mAmAccount:Landroid/accounts/Account;

.field public mCompatibilityUuid:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mEmailAddress:Ljava/lang/String;

.field public mFlags:I

.field public mHostAuthKeyRecv:J

.field public mHostAuthKeySend:J

.field public transient mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

.field public transient mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

.field public mIsDefault:Z

.field public mNewMessageCount:I

.field public mNotifiedMessageCount:I

.field public mNotifiedMessageId:J

.field public transient mPolicy:Lcom/android/emailcommon/provider/Policy;

.field public mPolicyKey:J

.field public mProtocolVersion:Ljava/lang/String;

.field public mRingtoneUri:Ljava/lang/String;

.field public mSecuritySyncKey:Ljava/lang/String;

.field public mSenderName:Ljava/lang/String;

.field public mSignature:Ljava/lang/String;

.field public mSyncInterval:I

.field public mSyncKey:Ljava/lang/String;

.field public mSyncLookback:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/accountIdAddToField"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Account;->ADD_TO_FIELD_URI:Landroid/net/Uri;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/resetNewMessageCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Account;->RESET_NEW_MESSAGE_COUNT_URI:Landroid/net/Uri;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_NOTIFIER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Account;->NOTIFIER_URI:Landroid/net/Uri;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/account/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Account;->DEFAULT_ACCOUNT_ID_URI:Landroid/net/Uri;

    .line 161
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "emailAddress"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "syncKey"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "syncLookback"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "syncInterval"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hostAuthKeyRecv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hostAuthKeySend"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "isDefault"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "compatibilityUuid"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "senderName"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ringtoneUri"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "protocolVersion"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "newMessageCount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "securitySyncKey"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "signature"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "policyKey"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "notifiedMessageId"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "notifiedMessageCount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 178
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/Account;->ID_TYPE_PROJECTION:[Ljava/lang/String;

    .line 184
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "flags"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    .line 205
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "isDefault"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/Account;->DEFAULT_ID_PROJECTION:[Ljava/lang/String;

    .line 890
    new-instance v0, Lcom/android/emailcommon/provider/Account$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Account$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 212
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 213
    sget-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mBaseUri:Landroid/net/Uri;

    .line 216
    const-string v0, "content://settings/system/notification_sound"

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    .line 217
    iput v1, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 218
    iput v1, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 219
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 220
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 948
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 949
    sget-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mBaseUri:Landroid/net/Uri;

    .line 950
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mId:J

    .line 951
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    .line 952
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 953
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 954
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 955
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 956
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    .line 957
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    .line 958
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 959
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_a3

    move v0, v1

    :goto_46
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Account;->mIsDefault:Z

    .line 960
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 961
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    .line 962
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    .line 963
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 964
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mNewMessageCount:I

    .line 965
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 966
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    .line 967
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    .line 968
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mNotifiedMessageId:J

    .line 969
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mNotifiedMessageCount:I

    .line 971
    iput-object v4, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 972
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_93

    .line 973
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/provider/HostAuth;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 976
    :cond_93
    iput-object v4, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    .line 977
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_a2

    .line 978
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/provider/HostAuth;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    .line 980
    :cond_a2
    return-void

    .line 959
    :cond_a3
    const/4 v0, 0x0

    goto :goto_46
.end method

.method private getId(Landroid/net/Uri;)J
    .registers 4
    .parameter "u"

    .prologue
    .line 280
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 224
    const-class v1, Lcom/android/emailcommon/provider/Account;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 884
    const/4 v0, 0x0

    return v0
.end method

.method public getProtocol(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    .line 600
    iget-wide v1, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 601
    .local v0, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v0, :cond_b

    .line 602
    iget-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 604
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public refresh(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Account;->getUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 245
    .local v6, c:Landroid/database/Cursor;
    :try_start_11
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 246
    invoke-virtual {p0, v6}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1d

    .line 248
    if-eqz v6, :cond_1c

    .line 249
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_1c
    return-void

    .line 248
    :catchall_1d
    move-exception v0

    if-eqz v6, :cond_23

    .line 249
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_23
    throw v0
.end method

.method public restore(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 256
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mId:J

    .line 257
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/emailcommon/provider/Account;->mBaseUri:Landroid/net/Uri;

    .line 258
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    .line 259
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 260
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 261
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 262
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 263
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    .line 264
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    .line 265
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 266
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_9f

    :goto_4c
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Account;->mIsDefault:Z

    .line 267
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 268
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    .line 269
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    .line 270
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 271
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mNewMessageCount:I

    .line 272
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 273
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    .line 274
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    .line 275
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mNotifiedMessageId:J

    .line 276
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mNotifiedMessageCount:I

    .line 277
    return-void

    :cond_9f
    move v0, v1

    .line 266
    goto :goto_4c
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .registers 17
    .parameter "context"

    .prologue
    .line 755
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Account;->isSaved()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 756
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v13}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v13

    .line 761
    :cond_c
    iget-object v13, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v13, :cond_21

    iget-object v13, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v13, :cond_21

    iget-boolean v13, p0, Lcom/android/emailcommon/provider/Account;->mIsDefault:Z

    if-nez v13, :cond_21

    iget-object v13, p0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    if-eqz v13, :cond_21

    .line 763
    invoke-super/range {p0 .. p1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v12

    .line 851
    :goto_20
    return-object v12

    .line 766
    :cond_21
    const/4 v3, 0x0

    .line 767
    .local v3, index:I
    const/4 v9, -0x1

    .line 768
    .local v9, recvIndex:I
    const/4 v11, -0x1

    .line 769
    .local v11, sendIndex:I
    const/4 v8, -0x1

    .line 773
    .local v8, policyIndex:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v7, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v13, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v13, :cond_4b

    .line 775
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    move v9, v3

    .line 776
    iget-object v13, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v13, v13, Lcom/android/emailcommon/provider/HostAuth;->mBaseUri:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v14}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    .line 780
    .end local v4           #index:I
    .restart local v3       #index:I
    :cond_4b
    iget-object v13, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v13, :cond_6c

    .line 781
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    move v11, v3

    .line 782
    iget-object v13, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v13, v13, Lcom/android/emailcommon/provider/HostAuth;->mBaseUri:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v14}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    .line 786
    .end local v4           #index:I
    .restart local v3       #index:I
    :cond_6c
    iget-object v13, p0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    if-eqz v13, :cond_8d

    .line 787
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    move v8, v3

    .line 788
    iget-object v13, p0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    iget-object v13, v13, Lcom/android/emailcommon/provider/Policy;->mBaseUri:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {v14}, Lcom/android/emailcommon/provider/Policy;->toContentValues()Landroid/content/ContentValues;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    .line 795
    .end local v4           #index:I
    .restart local v3       #index:I
    :cond_8d
    iget-boolean v13, p0, Lcom/android/emailcommon/provider/Account;->mIsDefault:Z

    if-eqz v13, :cond_b3

    .line 796
    add-int/lit8 v3, v3, 0x1

    .line 797
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 798
    .local v2, cv1:Landroid/content/ContentValues;
    const-string v13, "isDefault"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 799
    sget-object v13, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    .end local v2           #cv1:Landroid/content/ContentValues;
    :cond_b3
    const/4 v1, 0x0

    .line 804
    .local v1, cv:Landroid/content/ContentValues;
    if-gez v9, :cond_ba

    if-gez v11, :cond_ba

    if-ltz v8, :cond_e0

    .line 805
    :cond_ba
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #cv:Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 806
    .restart local v1       #cv:Landroid/content/ContentValues;
    if-ltz v9, :cond_ca

    .line 807
    const-string v13, "hostAuthKeyRecv"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 809
    :cond_ca
    if-ltz v11, :cond_d5

    .line 810
    const-string v13, "hostAuthKeySend"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 812
    :cond_d5
    if-ltz v8, :cond_e0

    .line 813
    const-string v13, "policyKey"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 817
    :cond_e0
    iget-object v13, p0, Lcom/android/emailcommon/provider/Account;->mBaseUri:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 818
    .local v0, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 819
    if-eqz v1, :cond_f2

    .line 820
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 822
    :cond_f2
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    :try_start_f9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "com.android.email.provider"

    invoke-virtual {v13, v14, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v10

    .line 828
    .local v10, results:[Landroid/content/ContentProviderResult;
    if-ltz v9, :cond_113

    .line 829
    aget-object v13, v10, v9

    iget-object v13, v13, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-direct {p0, v13}, Lcom/android/emailcommon/provider/Account;->getId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 830
    .local v5, newId:J
    iput-wide v5, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    .line 831
    iget-object v13, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iput-wide v5, v13, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    .line 833
    .end local v5           #newId:J
    :cond_113
    if-ltz v11, :cond_123

    .line 834
    aget-object v13, v10, v11

    iget-object v13, v13, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-direct {p0, v13}, Lcom/android/emailcommon/provider/Account;->getId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 835
    .restart local v5       #newId:J
    iput-wide v5, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    .line 836
    iget-object v13, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    iput-wide v5, v13, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    .line 838
    .end local v5           #newId:J
    :cond_123
    if-ltz v8, :cond_133

    .line 839
    aget-object v13, v10, v8

    iget-object v13, v13, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-direct {p0, v13}, Lcom/android/emailcommon/provider/Account;->getId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 840
    .restart local v5       #newId:J
    iput-wide v5, p0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    .line 841
    iget-object v13, p0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    iput-wide v5, v13, Lcom/android/emailcommon/provider/Policy;->mId:J

    .line 843
    .end local v5           #newId:J
    :cond_133
    aget-object v13, v10, v3

    iget-object v12, v13, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 844
    .local v12, u:Landroid/net/Uri;
    invoke-direct {p0, v12}, Lcom/android/emailcommon/provider/Account;->getId(Landroid/net/Uri;)J

    move-result-wide v13

    iput-wide v13, p0, Lcom/android/emailcommon/provider/Account;->mId:J
    :try_end_13d
    .catch Landroid/os/RemoteException; {:try_start_f9 .. :try_end_13d} :catch_13f
    .catch Landroid/content/OperationApplicationException; {:try_start_f9 .. :try_end_13d} :catch_143

    goto/16 :goto_20

    .line 846
    .end local v10           #results:[Landroid/content/ContentProviderResult;
    .end local v12           #u:Landroid/net/Uri;
    :catch_13f
    move-exception v13

    .line 851
    :goto_140
    const/4 v12, 0x0

    goto/16 :goto_20

    .line 848
    :catch_143
    move-exception v13

    goto :goto_140
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 856
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 857
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v1, "emailAddress"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v1, "syncLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 861
    const-string v1, "syncInterval"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 862
    const-string v1, "hostAuthKeyRecv"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 863
    const-string v1, "hostAuthKeySend"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 864
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 865
    const-string v1, "isDefault"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Account;->mIsDefault:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 866
    const-string v1, "compatibilityUuid"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const-string v1, "senderName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const-string v1, "ringtoneUri"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const-string v1, "protocolVersion"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v1, "newMessageCount"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mNewMessageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 871
    const-string v1, "securitySyncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string v1, "signature"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const-string v1, "policyKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 874
    const-string v1, "notifiedMessageId"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mNotifiedMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 875
    const-string v1, "notifiedMessageCount"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mNotifiedMessageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 876
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x3a

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 988
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 989
    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 992
    :cond_1d
    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    :cond_26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 994
    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    :cond_32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 996
    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    :cond_3e
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 998
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/content/Context;Landroid/content/ContentValues;)I
    .registers 10
    .parameter "context"
    .parameter "cv"

    .prologue
    const/4 v2, 0x0

    .line 720
    iget-object v3, p0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    if-eqz v3, :cond_13

    iget-wide v3, p0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_13

    .line 722
    iget-object v3, p0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    const/4 v4, 0x0

    invoke-static {p1, p0, v3, v4}, Lcom/android/emailcommon/provider/Policy;->setAccountPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 724
    :cond_13
    const-string v3, "isDefault"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6d

    const-string v3, "isDefault"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 726
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .local v1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 728
    .local v0, cv1:Landroid/content/ContentValues;
    const-string v3, "isDefault"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 730
    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    :try_start_62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.android.email.provider"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6b} :catch_74
    .catch Landroid/content/OperationApplicationException; {:try_start_62 .. :try_end_6b} :catch_72

    .line 737
    const/4 v2, 0x1

    .line 745
    .end local v0           #cv1:Landroid/content/ContentValues;
    .end local v1           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_6c
    return v2

    :cond_6d
    invoke-super {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v2

    goto :goto_6c

    .line 740
    .restart local v0       #cv1:Landroid/content/ContentValues;
    .restart local v1       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_72
    move-exception v3

    goto :goto_6c

    .line 738
    :catch_74
    move-exception v3

    goto :goto_6c
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 909
    iget-wide v3, p0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 910
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 913
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    iget-wide v3, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 916
    iget-wide v3, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 917
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Account;->mIsDefault:Z

    if-eqz v0, :cond_82

    move v0, v1

    :goto_34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 919
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 923
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mNewMessageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 925
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 926
    iget-wide v3, p0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 927
    iget-wide v3, p0, Lcom/android/emailcommon/provider/Account;->mNotifiedMessageId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 928
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mNotifiedMessageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v0, :cond_84

    .line 931
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 932
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/provider/HostAuth;->writeToParcel(Landroid/os/Parcel;I)V

    .line 937
    :goto_75
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v0, :cond_88

    .line 938
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 939
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/provider/HostAuth;->writeToParcel(Landroid/os/Parcel;I)V

    .line 943
    :goto_81
    return-void

    :cond_82
    move v0, v2

    .line 918
    goto :goto_34

    .line 934
    :cond_84
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_75

    .line 941
    :cond_88
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_81
.end method
