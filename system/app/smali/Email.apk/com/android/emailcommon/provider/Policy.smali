.class public final Lcom/android/emailcommon/provider/Policy;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "Policy.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/EmailContent$PolicyColumns;


# static fields
.field private static final ATTACHMENT_RESET_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/Policy;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_POLICY:Lcom/android/emailcommon/provider/Policy;


# instance fields
.field public mDontAllowAttachments:Z

.field public mDontAllowCamera:Z

.field public mDontAllowHtml:Z

.field public mMaxAttachmentSize:I

.field public mMaxCalendarLookback:I

.field public mMaxEmailLookback:I

.field public mMaxHtmlTruncationSize:I

.field public mMaxScreenLockTime:I

.field public mMaxTextTruncationSize:I

.field public mPasswordComplexChars:I

.field public mPasswordExpirationDays:I

.field public mPasswordHistory:I

.field public mPasswordMaxFails:I

.field public mPasswordMinLength:I

.field public mPasswordMode:I

.field public mPasswordRecoveryEnabled:Z

.field public mRequireEncryption:Z

.field public mRequireEncryptionExternal:Z

.field public mRequireManualSyncWhenRoaming:Z

.field public mRequireRemoteWipe:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/policy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    .line 102
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "passwordMode"

    aput-object v1, v0, v4

    const-string v1, "passwordMinLength"

    aput-object v1, v0, v5

    const-string v1, "passwordExpirationDays"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "passwordHistory"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "passwordComplexChars"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "passwordMaxFails"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "maxScreenLockTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "requireRemoteWipe"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "requireEncryption"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "requireEncryptionExternal"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "requireManualSyncRoaming"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dontAllowCamera"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dontAllowAttachments"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dontAllowHtml"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "maxAttachmentSize"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "maxTextTruncationSize"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "maxHTMLTruncationSize"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "maxEmailLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "maxCalendarLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "passwordRecoveryEnabled"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    .line 117
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "size"

    aput-object v1, v0, v4

    const-string v1, "flags"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->ATTACHMENT_RESET_PROJECTION:[Ljava/lang/String;

    .line 474
    new-instance v0, Lcom/android/emailcommon/provider/Policy$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Policy$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 124
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mBaseUri:Landroid/net/Uri;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 516
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 517
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mBaseUri:Landroid/net/Uri;

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/Policy;->mId:J

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_9f

    move v0, v1

    :goto_40
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_a1

    move v0, v1

    :goto_49
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_a3

    move v0, v1

    :goto_52
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_a5

    move v0, v1

    :goto_5b
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_a7

    move v0, v1

    :goto_64
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_a9

    move v0, v1

    :goto_6d
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_ab

    move v0, v1

    :goto_76
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_ad

    :goto_9c
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    .line 539
    return-void

    :cond_9f
    move v0, v2

    .line 526
    goto :goto_40

    :cond_a1
    move v0, v2

    .line 527
    goto :goto_49

    :cond_a3
    move v0, v2

    .line 528
    goto :goto_52

    :cond_a5
    move v0, v2

    .line 529
    goto :goto_5b

    :cond_a7
    move v0, v2

    .line 530
    goto :goto_64

    :cond_a9
    move v0, v2

    .line 531
    goto :goto_6d

    :cond_ab
    move v0, v2

    .line 532
    goto :goto_76

    :cond_ad
    move v1, v2

    .line 538
    goto :goto_9c
.end method

.method private appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .registers 5
    .parameter "sb"
    .parameter "code"
    .parameter "value"

    .prologue
    .line 417
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    return-void
.end method

.method public static clearAccountPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-static {p0, p1, v0, v0}, Lcom/android/emailcommon/provider/Policy;->setAccountPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static getAccountIdWithPolicyKey(Landroid/content/Context;J)J
    .registers 12
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 137
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "policyKey=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 132
    const-class v1, Lcom/android/emailcommon/provider/Policy;

    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Policy;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Policy;

    return-object v0
.end method

.method public static setAccountPolicy(Landroid/content/Context;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "accountId"
    .parameter "policy"
    .parameter "securitySyncKey"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 159
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    invoke-static {p0, v0, p3, p4}, Lcom/android/emailcommon/provider/Policy;->setAccountPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public static setAccountPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "policy"
    .parameter "securitySyncKey"

    .prologue
    const/4 v5, 0x0

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_67

    .line 183
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/Policy;->normalize()V

    .line 185
    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/Policy;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "policyKey"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "securitySyncKey"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :goto_3f
    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5a

    .line 203
    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_5a
    :try_start_5a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.email.provider"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 210
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/Account;->refresh(Landroid/content/Context;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_66} :catch_8c
    .catch Landroid/content/OperationApplicationException; {:try_start_5a .. :try_end_66} :catch_95

    .line 217
    :goto_66
    return-void

    .line 194
    :cond_67
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "securitySyncKey"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "policyKey"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 211
    :catch_8c
    move-exception v0

    .line 213
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Exception setting account policy."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_95
    move-exception v2

    goto :goto_66
.end method

.method public static setAttachmentFlagsForNewPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;)V
    .registers 22
    .parameter "context"
    .parameter "account"
    .parameter "policy"

    .prologue
    .line 229
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 230
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/Policy;->ATTACHMENT_RESET_PROJECTION:[Ljava/lang/String;

    const-string v5, "accountKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 233
    .local v8, c:Landroid/database/Cursor;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 236
    .local v9, cv:Landroid/content/ContentValues;
    :try_start_24
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-eqz v3, :cond_6b

    const/4 v14, 0x0

    .line 238
    .local v14, policyMax:I
    :cond_2b
    :goto_2b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 239
    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 240
    .local v10, flags:I
    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 241
    .local v15, size:I
    and-int/lit16 v3, v10, 0x200

    if-eqz v3, :cond_7a

    const/16 v16, 0x1

    .line 242
    .local v16, wasRestricted:Z
    :goto_41
    if-le v15, v14, :cond_7d

    const/4 v13, 0x1

    .line 243
    .local v13, isRestricted:Z
    :goto_44
    move/from16 v0, v16

    if-eq v13, v0, :cond_2b

    .line 244
    if-eqz v13, :cond_7f

    .line 245
    or-int/lit16 v10, v10, 0x200

    .line 249
    :goto_4c
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 250
    .local v11, id:J
    const-string v3, "flags"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v9, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_24 .. :try_end_65} :catchall_66

    goto :goto_2b

    .line 256
    .end local v10           #flags:I
    .end local v11           #id:J
    .end local v13           #isRestricted:Z
    .end local v14           #policyMax:I
    .end local v15           #size:I
    .end local v16           #wasRestricted:Z
    :catchall_66
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    .line 236
    :cond_6b
    :try_start_6b
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-lez v3, :cond_76

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I
    :try_end_75
    .catchall {:try_start_6b .. :try_end_75} :catchall_66

    goto :goto_2b

    :cond_76
    const v14, 0x7fffffff

    goto :goto_2b

    .line 241
    .restart local v10       #flags:I
    .restart local v14       #policyMax:I
    .restart local v15       #size:I
    :cond_7a
    const/16 v16, 0x0

    goto :goto_41

    .line 242
    .restart local v16       #wasRestricted:Z
    :cond_7d
    const/4 v13, 0x0

    goto :goto_44

    .line 247
    .restart local v13       #isRestricted:Z
    :cond_7f
    and-int/lit16 v10, v10, -0x201

    goto :goto_4c

    .line 256
    .end local v10           #flags:I
    .end local v13           #isRestricted:Z
    .end local v15           #size:I
    .end local v16           #wasRestricted:Z
    :cond_82
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 258
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 287
    instance-of v2, p1, Lcom/android/emailcommon/provider/Policy;

    if-nez v2, :cond_6

    .line 311
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 288
    check-cast v0, Lcom/android/emailcommon/provider/Policy;

    .line 289
    .local v0, otherPolicy:Lcom/android/emailcommon/provider/Policy;
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-ne v2, v3, :cond_5

    .line 290
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-ne v2, v3, :cond_5

    .line 291
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    if-ne v2, v3, :cond_5

    .line 292
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    if-ne v2, v3, :cond_5

    .line 293
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-ne v2, v3, :cond_5

    .line 294
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    if-ne v2, v3, :cond_5

    .line 295
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-ne v2, v3, :cond_5

    .line 296
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    if-ne v2, v3, :cond_5

    .line 297
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    if-ne v2, v3, :cond_5

    .line 298
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-ne v2, v3, :cond_5

    .line 299
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    if-ne v2, v3, :cond_5

    .line 302
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    if-ne v2, v3, :cond_5

    .line 303
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-ne v2, v3, :cond_5

    .line 304
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    if-ne v2, v3, :cond_5

    .line 305
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-ne v2, v3, :cond_5

    .line 306
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    if-ne v2, v3, :cond_5

    .line 307
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    if-ne v2, v3, :cond_5

    .line 308
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    if-ne v2, v3, :cond_5

    .line 309
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    if-ne v2, v3, :cond_5

    .line 310
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    if-ne v2, v3, :cond_5

    .line 311
    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getDPManagerPasswordExpirationTimeout()J
    .registers 7

    .prologue
    .line 406
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    int-to-long v2, v2

    const-wide/32 v4, 0x5265c00

    mul-long v0, v2, v4

    .line 410
    .local v0, result:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_12

    .line 411
    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    .line 413
    :cond_12
    return-wide v0
.end method

.method public getDPManagerPasswordQuality()I
    .registers 2

    .prologue
    .line 388
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    packed-switch v0, :pswitch_data_14

    .line 398
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 390
    :pswitch_7
    const/high16 v0, 0x2

    goto :goto_6

    .line 392
    :pswitch_a
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-nez v0, :cond_11

    .line 393
    const/high16 v0, 0x5

    goto :goto_6

    .line 395
    :cond_11
    const/high16 v0, 0x6

    goto :goto_6

    .line 388
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 316
    iget-boolean v3, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v3, :cond_3a

    move v0, v1

    .line 317
    .local v0, code:I
    :goto_7
    iget-boolean v3, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-eqz v3, :cond_3c

    move v3, v1

    :goto_c
    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 318
    iget-boolean v3, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    if-eqz v3, :cond_3e

    :goto_13
    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 319
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    shl-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 320
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    .line 321
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    shl-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    .line 322
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    shl-int/lit8 v1, v1, 0xf

    add-int/2addr v0, v1

    .line 323
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    shl-int/lit8 v1, v1, 0x12

    add-int/2addr v0, v1

    .line 324
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    shl-int/lit8 v1, v1, 0x16

    add-int/2addr v0, v1

    .line 325
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    shl-int/lit8 v1, v1, 0x1a

    add-int/2addr v0, v1

    .line 327
    return v0

    .end local v0           #code:I
    :cond_3a
    move v0, v2

    .line 316
    goto :goto_7

    .restart local v0       #code:I
    :cond_3c
    move v3, v2

    .line 317
    goto :goto_c

    :cond_3e
    move v1, v2

    .line 318
    goto :goto_13
.end method

.method public normalize()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 265
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-nez v0, :cond_13

    .line 266
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 267
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 268
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 269
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 270
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 271
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 283
    :cond_12
    :goto_12
    return-void

    .line 273
    :cond_13
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-eq v0, v3, :cond_24

    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    .line 275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_24
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-ne v0, v3, :cond_12

    .line 280
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    goto :goto_12
.end method

.method public restore(Landroid/database/Cursor;)V
    .registers 7
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 332
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mBaseUri:Landroid/net/Uri;

    .line 333
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/Policy;->mId:J

    .line 334
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 335
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 336
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 337
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 338
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 339
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 340
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 341
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_bc

    move v0, v1

    :goto_45
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 342
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_be

    move v0, v1

    :goto_50
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    .line 343
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_c0

    move v0, v1

    :goto_5b
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    .line 345
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_c2

    move v0, v1

    :goto_66
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    .line 347
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_c4

    move v0, v1

    :goto_71
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    .line 348
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_c6

    move v0, v1

    :goto_7c
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    .line 349
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_c8

    move v0, v1

    :goto_87
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    .line 350
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    .line 351
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    .line 352
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    .line 353
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    .line 354
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    .line 355
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_ca

    :goto_b9
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    .line 356
    return-void

    :cond_bc
    move v0, v2

    .line 341
    goto :goto_45

    :cond_be
    move v0, v2

    .line 342
    goto :goto_50

    :cond_c0
    move v0, v2

    .line 343
    goto :goto_5b

    :cond_c2
    move v0, v2

    .line 345
    goto :goto_66

    :cond_c4
    move v0, v2

    .line 347
    goto :goto_71

    :cond_c6
    move v0, v2

    .line 348
    goto :goto_7c

    :cond_c8
    move v0, v2

    .line 349
    goto :goto_87

    :cond_ca
    move v1, v2

    .line 355
    goto :goto_b9
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3
    .parameter "context"

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Policy;->normalize()V

    .line 146
    invoke-super {p0, p1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 4

    .prologue
    .line 360
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 361
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "passwordMode"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    const-string v1, "passwordMinLength"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 363
    const-string v1, "passwordMaxFails"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    const-string v1, "passwordHistory"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    const-string v1, "passwordExpirationDays"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    const-string v1, "passwordComplexChars"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    const-string v1, "maxScreenLockTime"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    const-string v1, "requireRemoteWipe"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 369
    const-string v1, "requireEncryption"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 370
    const-string v1, "requireEncryptionExternal"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 371
    const-string v1, "requireManualSyncRoaming"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 372
    const-string v1, "dontAllowCamera"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 373
    const-string v1, "dontAllowAttachments"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 374
    const-string v1, "dontAllowHtml"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 375
    const-string v1, "maxAttachmentSize"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    const-string v1, "maxTextTruncationSize"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 377
    const-string v1, "maxHTMLTruncationSize"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 378
    const-string v1, "maxEmailLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    const-string v1, "maxCalendarLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    const-string v1, "passwordRecoveryEnabled"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 381
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, sb:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/provider/Policy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 427
    const-string v1, "No policies]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :goto_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 429
    :cond_19
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-nez v1, :cond_60

    .line 430
    const-string v1, "Pwd none "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :goto_22
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v1, :cond_2b

    .line 441
    const-string v1, "encrypt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_2b
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-eqz v1, :cond_34

    .line 444
    const-string v1, "encryptsd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_34
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    if-eqz v1, :cond_3d

    .line 447
    const-string v1, "nocamera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_3d
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-eqz v1, :cond_46

    .line 450
    const-string v1, "noatts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_46
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    if-eqz v1, :cond_4f

    .line 453
    const-string v1, "nopushroam "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :cond_4f
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-lez v1, :cond_5a

    .line 456
    const-string v1, "attmax"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 458
    :cond_5a
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 432
    :cond_60
    const-string v2, "Pwd strong"

    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_96

    const/4 v1, 0x1

    :goto_68
    invoke-direct {p0, v0, v2, v1}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 433
    const-string v1, "len"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 434
    const-string v1, "cmpx"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 435
    const-string v1, "expy"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 436
    const-string v1, "hist"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 437
    const-string v1, "fail"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 438
    const-string v1, "idle"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto :goto_22

    .line 432
    :cond_96
    const/4 v1, 0x0

    goto :goto_68
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 490
    iget-wide v3, p0, Lcom/android/emailcommon/provider/Policy;->mId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 491
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    if-eqz v0, :cond_83

    move v0, v1

    :goto_2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v0, :cond_85

    move v0, v1

    :goto_37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-eqz v0, :cond_87

    move v0, v1

    :goto_3f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    if-eqz v0, :cond_89

    move v0, v1

    :goto_47
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    if-eqz v0, :cond_8b

    move v0, v1

    :goto_4f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-eqz v0, :cond_8d

    move v0, v1

    :goto_57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    if-eqz v0, :cond_8f

    move v0, v1

    :goto_5f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    if-eqz v0, :cond_91

    :goto_7f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    return-void

    :cond_83
    move v0, v2

    .line 498
    goto :goto_2f

    :cond_85
    move v0, v2

    .line 499
    goto :goto_37

    :cond_87
    move v0, v2

    .line 500
    goto :goto_3f

    :cond_89
    move v0, v2

    .line 501
    goto :goto_47

    :cond_8b
    move v0, v2

    .line 502
    goto :goto_4f

    :cond_8d
    move v0, v2

    .line 503
    goto :goto_57

    :cond_8f
    move v0, v2

    .line 504
    goto :goto_5f

    :cond_91
    move v1, v2

    .line 510
    goto :goto_7f
.end method
