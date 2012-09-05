.class public final Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;
.super Ljava/lang/Object;
.source "SocialHubColumn.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SocialHub"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EMAIL_PROJECTION:[Ljava/lang/String;

.field public static final MESSAGES_PROJECTION:[Ljava/lang/String;

.field public static final PROJECTION_CNT:I

.field public static final SENDER_SORT_ORDER:Ljava/lang/String;

.field public static final SNS_PROJECTION:[Ljava/lang/String;

.field public static final SNS_RECEIVER_MAP_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    const-string v0, "content://com.sec.android.socialhub.unifiedinbox/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    .line 81
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "app_type"

    aput-object v1, v0, v4

    const-string v1, "sp_type"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_id_origin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m_subject"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "m_content"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sns_pkey"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "email_address"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sns_receiver_count"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "contactid"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "account_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "new"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "hasAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "count"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "flag_view"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ext1"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "flagStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "smimeFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "umCallerId"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "messageType"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "lastVerb"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "presence"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "error"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "name_original"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->MESSAGES_PROJECTION:[Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->MESSAGES_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->PROJECTION_CNT:I

    .line 153
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "service_provider"

    aput-object v1, v0, v4

    const-string v1, "message_id"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v6

    const-string v1, "content"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "send_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sender_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sender_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "folder"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "representative_receiver_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "representative_receiver"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "receiver_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->SNS_PROJECTION:[Ljava/lang/String;

    .line 169
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "message_id"

    aput-object v1, v0, v4

    const-string v1, "receiver_id"

    aput-object v1, v0, v5

    const-string v1, "receiver_name"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->SNS_RECEIVER_MAP_PROJECTION:[Ljava/lang/String;

    .line 176
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "lookup"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getLocalOrder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ASC , date DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->SENDER_SORT_ORDER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
