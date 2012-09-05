.class public Lcom/wssnps/database/smlBackupRestoreItem;
.super Ljava/lang/Object;
.source "smlBackupRestoreItem.java"


# static fields
.field static BACKUP_READY_POLLING:I

.field public static BR_CALENDAR:Z

.field public static BR_TASK:Z

.field public static CONTACT_BACKUP_FINISH:Z

.field static CONTACT_BR_CANCLE:I

.field public static CONTACT_RESTORE_FINISH:Z

.field public static DIARY_BACKUP_FINISH:Z

.field public static DIARY_RESTORE_FINISH:Z

.field public static EMAIL_BACKUP_FINISH:Z

.field public static EMAIL_RESTORE_FINISH:Z

.field public static FM_BACKUP_FINISH:Z

.field public static FM_RESTORE_FINISH:Z

.field public static LOG_BACKUP_FINISH:Z

.field public static LOG_RESTORE_FINISH:Z

.field public static MESSAGE_BACKUP_FINISH:Z

.field public static MESSAGE_RESTORE_FINISH:Z

.field public static ModelDefine:Lcom/wssnps/smlModelDefine;

.field public static PENMEMO_BACKUP_FINISH:Z

.field public static PENMEMO_RESTORE_FINISH:Z

.field public static SMEMO_BACKUP_FINISH:Z

.field public static SMEMO_RESTORE_FINISH:Z

.field public static final SML_BOOKMARK_URI:Landroid/net/Uri;

.field public static final SML_CALENDAR_URI:Landroid/net/Uri;

.field public static final SML_CALLLOG_URI:Landroid/net/Uri;

.field public static final SML_CONFIGURATION_URI:Landroid/net/Uri;

.field public static final SML_EMAIL_ACCOUNT_URI:Landroid/net/Uri;

.field public static final SML_EMAIL_HOSTAUTH_URI:Landroid/net/Uri;

.field public static final SML_MEMO_URI:Landroid/net/Uri;

.field public static final SML_MMSLOG_URI:Landroid/net/Uri;

.field public static final SML_SMSLOG_URI:Landroid/net/Uri;

.field public static final SML_VIDEOLOG_URI:Landroid/net/Uri;

.field public static final SML_VOICELOG_URI:Landroid/net/Uri;

.field public static URI_SYNC:Ljava/lang/String;

.field private static appdatasize:J

.field public static m_ContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlBackupRestoreItem;",
            ">;"
        }
    .end annotation
.end field

.field public static m_context:Landroid/content/Context;

.field public static nCategory:J

.field private static numLookups:I

.field public static ready_count:I

.field public static ready_retCategory:[I

.field public static ready_subRet:[I

.field private static smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static smlBRDatabase_calllog:Landroid/database/sqlite/SQLiteDatabase;

.field public static targetName:[Ljava/lang/String;


# instance fields
.field public Bookmark_account_name:Ljava/lang/String;

.field public Bookmark_account_type:Ljava/lang/String;

.field public Bookmark_created:I

.field public Bookmark_deleted:I

.field public Bookmark_dirty:I

.field public Bookmark_folder:I

.field public Bookmark_id:I

.field public Bookmark_insert_after:I

.field public Bookmark_modified:I

.field public Bookmark_parent:I

.field public Bookmark_parent_title:Ljava/lang/String;

.field public Bookmark_position:I

.field public Bookmark_sourceid:Ljava/lang/String;

.field public Bookmark_sync1:Ljava/lang/String;

.field public Bookmark_sync2:Ljava/lang/String;

.field public Bookmark_sync3:Ljava/lang/String;

.field public Bookmark_sync4:Ljava/lang/String;

.field public Bookmark_sync5:Ljava/lang/String;

.field public Bookmark_title:Ljava/lang/String;

.field public Bookmark_url:Ljava/lang/String;

.field public Bookmark_version:I

.field public Configuration_id:I

.field public Configuration_name:Ljava/lang/String;

.field public Configuration_value:Ljava/lang/String;

.field public Email_Account_calendarSyncLookback:Ljava/lang/String;

.field public Email_Account_compatibilityUuid:Ljava/lang/String;

.field public Email_Account_conflict:Ljava/lang/String;

.field public Email_Account_conversationMode:Ljava/lang/String;

.field public Email_Account_deviceBlockedType:Ljava/lang/String;

.field public Email_Account_deviceInfoSent:Ljava/lang/String;

.field public Email_Account_displayName:Ljava/lang/String;

.field public Email_Account_emailAddress:Ljava/lang/String;

.field public Email_Account_emailsize:Ljava/lang/String;

.field public Email_Account_flags:Ljava/lang/String;

.field public Email_Account_hostAuthKeyRecv:Ljava/lang/String;

.field public Email_Account_hostAuthKeySend:Ljava/lang/String;

.field public Email_Account_id:I

.field public Email_Account_isDefault:Ljava/lang/String;

.field public Email_Account_newMessageCount:Ljava/lang/String;

.field public Email_Account_offPeakSchedule:Ljava/lang/String;

.field public Email_Account_peakDays:Ljava/lang/String;

.field public Email_Account_peakEndMinute:Ljava/lang/String;

.field public Email_Account_peakSchedule:Ljava/lang/String;

.field public Email_Account_peakStartMinute:Ljava/lang/String;

.field public Email_Account_policyKey:Ljava/lang/String;

.field public Email_Account_protocolVersion:Ljava/lang/String;

.field public Email_Account_ringtoneUri:Ljava/lang/String;

.field public Email_Account_roamingSchedule:Ljava/lang/String;

.field public Email_Account_securityFlags:Ljava/lang/String;

.field public Email_Account_securitySyncKey:Ljava/lang/String;

.field public Email_Account_senderName:Ljava/lang/String;

.field public Email_Account_signature:Ljava/lang/String;

.field public Email_Account_smimeEncryptionAlgorithm:Ljava/lang/String;

.field public Email_Account_smimeOptionsFlags:Ljava/lang/String;

.field public Email_Account_smimeOwnCertificateAlias:Ljava/lang/String;

.field public Email_Account_smimeSignAlgorithm:Ljava/lang/String;

.field public Email_Account_syncInterval:Ljava/lang/String;

.field public Email_Account_syncKey:Ljava/lang/String;

.field public Email_Account_syncLookback:Ljava/lang/String;

.field public Email_Account_textPreview:Ljava/lang/String;

.field public Email_HostAuth_accountKey:Ljava/lang/String;

.field public Email_HostAuth_address:Ljava/lang/String;

.field public Email_HostAuth_domain:Ljava/lang/String;

.field public Email_HostAuth_flags:Ljava/lang/String;

.field public Email_HostAuth_id:I

.field public Email_HostAuth_login:Ljava/lang/String;

.field public Email_HostAuth_password:Ljava/lang/String;

.field public Email_HostAuth_port:Ljava/lang/String;

.field public Email_HostAuth_protocol:Ljava/lang/String;

.field public Log_account_id:Ljava/lang/String;

.field public Log_account_name:Ljava/lang/String;

.field public Log_address:Ljava/lang/String;

.field public Log_cdnip_number:Ljava/lang/String;

.field public Log_cnap_name:Ljava/lang/String;

.field public Log_contactid:Ljava/lang/String;

.field public Log_date:Ljava/lang/String;

.field public Log_duration:Ljava/lang/String;

.field public Log_frequent:Ljava/lang/String;

.field public Log_id:I

.field public Log_logtype:Ljava/lang/String;

.field public Log_m_content:Ljava/lang/String;

.field public Log_m_subject:Ljava/lang/String;

.field public Log_messageid:Ljava/lang/String;

.field public Log_name:Ljava/lang/String;

.field public Log_name_reversed:Ljava/lang/String;

.field public Log_new_:Ljava/lang/String;

.field public Log_number:Ljava/lang/String;

.field public Log_numberlabel:Ljava/lang/String;

.field public Log_numbertype:Ljava/lang/String;

.field public Log_raw_contact_id:Ljava/lang/String;

.field public Log_service_type:Ljava/lang/String;

.field public Log_sns_pkey:Ljava/lang/String;

.field public Log_sns_receiver_count:Ljava/lang/String;

.field public Log_sns_tid:Ljava/lang/String;

.field public Log_sp_type:Ljava/lang/String;

.field public Log_type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 53
    const-string v0, "content://settings/system"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->SML_CONFIGURATION_URI:Landroid/net/Uri;

    .line 61
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "volume_system"

    aput-object v1, v0, v4

    const-string v1, "volume_ring"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "volume_notification"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "volume_music"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "volume_alarm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "video_call_ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "screen_off_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "screen_brightness"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "screen_brightness_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "notification_sound"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lockscreen_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "airplane_mode_on"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->targetName:[Ljava/lang/String;

    .line 95
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->SML_CALENDAR_URI:Landroid/net/Uri;

    .line 107
    const-string v0, "content://com.samsung.sec.android/memo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->SML_MEMO_URI:Landroid/net/Uri;

    .line 166
    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->SML_EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    .line 167
    const-string v0, "content://com.android.email.provider/hostauth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->SML_EMAIL_HOSTAUTH_URI:Landroid/net/Uri;

    .line 258
    const-string v0, "content://com.android.browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->SML_BOOKMARK_URI:Landroid/net/Uri;

    .line 299
    const-string v0, "content://logs/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->SML_CALLLOG_URI:Landroid/net/Uri;

    .line 300
    const-string v0, "content://logs/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->SML_VOICELOG_URI:Landroid/net/Uri;

    .line 301
    const-string v0, "content://logs/video_call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->SML_VIDEOLOG_URI:Landroid/net/Uri;

    .line 302
    const-string v0, "content://logs/sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->SML_SMSLOG_URI:Landroid/net/Uri;

    .line 303
    const-string v0, "content://logs/mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->SML_MMSLOG_URI:Landroid/net/Uri;

    .line 427
    const/4 v0, 0x0

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    .line 447
    new-instance v0, Lcom/wssnps/smlModelDefine;

    invoke-direct {v0}, Lcom/wssnps/smlModelDefine;-><init>()V

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->ModelDefine:Lcom/wssnps/smlModelDefine;

    .line 543
    sput v4, Lcom/wssnps/database/smlBackupRestoreItem;->BACKUP_READY_POLLING:I

    .line 545
    sput v4, Lcom/wssnps/database/smlBackupRestoreItem;->CONTACT_BR_CANCLE:I

    .line 547
    sput-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_BACKUP_FINISH:Z

    .line 548
    sput-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_RESTORE_FINISH:Z

    .line 549
    sput-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->LOG_BACKUP_FINISH:Z

    .line 550
    sput-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->LOG_RESTORE_FINISH:Z

    .line 551
    sput-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->EMAIL_BACKUP_FINISH:Z

    .line 552
    sput-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->EMAIL_RESTORE_FINISH:Z

    .line 553
    sput-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->FM_BACKUP_FINISH:Z

    .line 554
    sput-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->FM_RESTORE_FINISH:Z

    .line 555
    sput-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->DIARY_BACKUP_FINISH:Z

    .line 556
    sput-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->DIARY_RESTORE_FINISH:Z

    .line 557
    sput-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->PENMEMO_BACKUP_FINISH:Z

    .line 558
    sput-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->PENMEMO_RESTORE_FINISH:Z

    .line 559
    sput-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->SMEMO_BACKUP_FINISH:Z

    .line 560
    sput-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->SMEMO_RESTORE_FINISH:Z

    .line 562
    sput-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->CONTACT_BACKUP_FINISH:Z

    .line 563
    sput-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->CONTACT_RESTORE_FINISH:Z

    .line 565
    sput v4, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    .line 569
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->BR_CALENDAR:Z

    .line 570
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->BR_TASK:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/wssnps/database/smlBackupRestoreItem;->changeNumLookups(I)V

    return-void
.end method

.method static synthetic access$100(J)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/wssnps/database/smlBackupRestoreItem;->save_data_size(J)V

    return-void
.end method

.method private static changeNumLookups(I)V
    .registers 1
    .parameter "change"

    .prologue
    .line 440
    sput p0, Lcom/wssnps/database/smlBackupRestoreItem;->numLookups:I

    return-void
.end method

.method private static getNumLookups()I
    .registers 1

    .prologue
    .line 441
    sget v0, Lcom/wssnps/database/smlBackupRestoreItem;->numLookups:I

    return v0
.end method

.method private static get_data_size()J
    .registers 2

    .prologue
    .line 445
    sget-wide v0, Lcom/wssnps/database/smlBackupRestoreItem;->appdatasize:J

    return-wide v0
.end method

.method private static save_data_size(J)V
    .registers 2
    .parameter "size"

    .prologue
    .line 444
    sput-wide p0, Lcom/wssnps/database/smlBackupRestoreItem;->appdatasize:J

    return-void
.end method

.method public static smlBRAppKill(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 2388
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2390
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 2400
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2401
    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2402
    invoke-virtual {v0, p0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_12

    .line 2405
    :cond_2a
    return-void
.end method

.method public static smlBRBackupFinish()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    .line 873
    sget-wide v0, Lcom/wssnps/database/smlBackupRestoreItem;->nCategory:J

    .line 874
    .local v0, nCategory:J
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v2, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 875
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smlBRBackupFinish "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 877
    cmp-long v2, v0, v4

    if-eqz v2, :cond_f0

    .line 879
    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->BACKUP_READY_POLLING:I

    .line 880
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_BACKUP_FINISH:Z

    .line 881
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->LOG_BACKUP_FINISH:Z

    .line 882
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->EMAIL_BACKUP_FINISH:Z

    .line 883
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->FM_BACKUP_FINISH:Z

    .line 884
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->DIARY_BACKUP_FINISH:Z

    .line 885
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->PENMEMO_BACKUP_FINISH:Z

    .line 886
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->SMEMO_BACKUP_FINISH:Z

    .line 888
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->CONTACT_BACKUP_FINISH:Z

    .line 890
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_44

    .line 892
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRConfigurationDelete()V

    .line 895
    :cond_44
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4b

    .line 899
    :cond_4b
    const-wide/16 v2, 0x8

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_54

    .line 901
    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->BR_CALENDAR:Z

    .line 904
    :cond_54
    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5b

    .line 908
    :cond_5b
    const-wide/16 v2, 0x20

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_64

    .line 910
    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->BR_TASK:Z

    .line 913
    :cond_64
    const-wide/16 v2, 0x100

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6b

    .line 917
    :cond_6b
    const-wide/16 v2, 0x200

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_72

    .line 921
    :cond_72
    const-wide/16 v2, 0x400

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_79

    .line 925
    :cond_79
    const-wide/32 v2, 0x40000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_81

    .line 929
    :cond_81
    const-wide/16 v2, 0x800

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_88

    .line 933
    :cond_88
    const-wide/16 v2, 0x1000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_92

    .line 935
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBREmailDelete()V

    .line 938
    :cond_92
    const-wide/16 v2, 0x4000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9c

    .line 940
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRNetworkDelete()V

    .line 943
    :cond_9c
    const-wide/32 v2, 0x8000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a7

    .line 945
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRCallLogDelete()V

    .line 948
    :cond_a7
    const-wide/16 v2, 0x40

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b1

    .line 950
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMessageDelete()V

    .line 953
    :cond_b1
    const-wide/32 v2, 0x1000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_bc

    .line 955
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMiniDiaryDelete()V

    .line 958
    :cond_bc
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c7

    .line 960
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRPenMemoDelete()V

    .line 963
    :cond_c7
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d2

    .line 965
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRSMemoDelete()V

    .line 973
    :cond_d2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_ef
    return-object v2

    .line 970
    :cond_f0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_ef
.end method

.method public static smlBRBackupReady(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "parm"

    .prologue
    .line 575
    const-wide/16 v1, 0x0

    .line 576
    .local v1, nCategory:J
    sget-object v7, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 578
    const/4 v7, 0x0

    sput-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 579
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v7, :cond_10

    .line 580
    const-string v3, "2\nERROR:DB null\n"

    .line 868
    :cond_f
    :goto_f
    return-object v3

    .line 582
    :cond_10
    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 583
    sput-wide v1, Lcom/wssnps/database/smlBackupRestoreItem;->nCategory:J

    .line 585
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->BACKUP_READY_POLLING:I

    if-nez v7, :cond_331

    .line 587
    const/16 v7, 0x14

    new-array v7, v7, [I

    sput-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    .line 588
    const/16 v7, 0x14

    new-array v7, v7, [I

    sput-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    .line 589
    const/4 v7, 0x0

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    .line 591
    const/4 v7, 0x1

    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_BACKUP_FINISH:Z

    .line 592
    const/4 v7, 0x1

    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->LOG_BACKUP_FINISH:Z

    .line 593
    const/4 v7, 0x1

    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->EMAIL_BACKUP_FINISH:Z

    .line 594
    const/4 v7, 0x1

    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->FM_BACKUP_FINISH:Z

    .line 595
    const/4 v7, 0x1

    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->DIARY_BACKUP_FINISH:Z

    .line 596
    const/4 v7, 0x1

    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->PENMEMO_BACKUP_FINISH:Z

    .line 597
    const/4 v7, 0x1

    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->SMEMO_BACKUP_FINISH:Z

    .line 599
    const/4 v7, 0x1

    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->CONTACT_BACKUP_FINISH:Z

    .line 600
    const/4 v7, 0x0

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->CONTACT_BR_CANCLE:I

    .line 602
    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "smlBRBackupReady "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 604
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-eqz v7, :cond_41f

    .line 606
    const-wide/16 v7, 0x1

    and-long/2addr v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_97

    .line 608
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRConfigurationDelete()V

    .line 609
    const-string v7, "com.android.providers.settings"

    invoke-static {v7}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMemorycheck(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3cf

    .line 611
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRConfigurationBackup()V

    .line 612
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 617
    :goto_8a
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x1

    aput v9, v7, v8

    .line 618
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    .line 621
    :cond_97
    const-wide/16 v7, 0x4

    and-long/2addr v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_b4

    .line 623
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 624
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x4

    aput v9, v7, v8

    .line 625
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    .line 628
    :cond_b4
    const-wide/16 v7, 0x8

    and-long/2addr v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_d5

    .line 630
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 631
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/16 v9, 0x8

    aput v9, v7, v8

    .line 632
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    .line 633
    const/4 v7, 0x1

    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->BR_CALENDAR:Z

    .line 636
    :cond_d5
    const-wide/16 v7, 0x10

    and-long/2addr v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_f3

    .line 638
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 639
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/16 v9, 0x10

    aput v9, v7, v8

    .line 640
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    .line 643
    :cond_f3
    const-wide/16 v7, 0x20

    and-long/2addr v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_114

    .line 645
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 646
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/16 v9, 0x20

    aput v9, v7, v8

    .line 647
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    .line 648
    const/4 v7, 0x1

    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->BR_TASK:Z

    .line 651
    :cond_114
    const-wide/16 v7, 0x100

    and-long/2addr v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_132

    .line 653
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 654
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/16 v9, 0x100

    aput v9, v7, v8

    .line 655
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    .line 658
    :cond_132
    const-wide/16 v7, 0x200

    and-long/2addr v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_150

    .line 660
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 661
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/16 v9, 0x200

    aput v9, v7, v8

    .line 662
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    .line 665
    :cond_150
    const-wide/16 v7, 0x400

    and-long/2addr v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_16e

    .line 667
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 668
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/16 v9, 0x400

    aput v9, v7, v8

    .line 669
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    .line 672
    :cond_16e
    const-wide/16 v7, 0x800

    and-long/2addr v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_18c

    .line 674
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 675
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/16 v9, 0x800

    aput v9, v7, v8

    .line 676
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    .line 679
    :cond_18c
    const-wide/32 v7, 0x40000

    and-long/2addr v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1ab

    .line 681
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 682
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/high16 v9, 0x4

    aput v9, v7, v8

    .line 683
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    .line 686
    :cond_1ab
    const-wide/16 v7, 0x1000

    and-long/2addr v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1d7

    .line 688
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBREmailDelete()V

    .line 689
    const-string v7, "com.android.email"

    invoke-static {v7}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMemorycheck(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3d8

    .line 691
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBREmailBackup()V

    .line 692
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 697
    :goto_1c9
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/16 v9, 0x1000

    aput v9, v7, v8

    .line 698
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    .line 701
    :cond_1d7
    const-wide/16 v7, 0x4000

    and-long/2addr v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_214

    .line 703
    const/4 v5, 0x0

    .line 704
    .local v5, ret_size_1:I
    const/4 v6, 0x0

    .line 705
    .local v6, ret_size_2:I
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRNetworkDelete()V

    .line 706
    const-string v7, "com.android.browser"

    invoke-static {v7}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMemorycheck(Ljava/lang/String;)I

    move-result v5

    .line 707
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getFmRadioType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1f8

    .line 708
    const-string v7, "com.sec.android.app.fm"

    invoke-static {v7}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMemorycheck(Ljava/lang/String;)I

    move-result v6

    .line 710
    :cond_1f8
    if-nez v5, :cond_3e1

    if-nez v6, :cond_3e1

    .line 712
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRNetworkBackup()V

    .line 713
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 718
    :goto_206
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/16 v9, 0x4000

    aput v9, v7, v8

    .line 719
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    .line 722
    .end local v5           #ret_size_1:I
    .end local v6           #ret_size_2:I
    :cond_214
    const-wide/32 v7, 0x8000

    and-long/2addr v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_24f

    .line 724
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRCallLogDelete()V

    .line 725
    const-string v7, "com.sec.android.provider.logsprovider"

    invoke-static {v7}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMemorycheck(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3ea

    .line 727
    const/4 v7, 0x0

    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->LOG_BACKUP_FINISH:Z

    .line 728
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/wssnps/database/smlBackupRestoreItem$2;

    invoke-direct {v8}, Lcom/wssnps/database/smlBackupRestoreItem$2;-><init>()V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 736
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 741
    :goto_240
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const v9, 0x8000

    aput v9, v7, v8

    .line 742
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    .line 745
    :cond_24f
    const-wide/16 v7, 0x40

    and-long/2addr v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_290

    .line 747
    const/4 v4, 0x0

    .line 748
    .local v4, ret_size:I
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMessageDelete()V

    .line 749
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getKorMessageType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3f3

    .line 750
    const-string v7, "com.sec.mms"

    invoke-static {v7}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMemorycheck(Ljava/lang/String;)I

    move-result v4

    .line 753
    :goto_269
    if-nez v4, :cond_3fb

    .line 755
    const/4 v7, 0x0

    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_BACKUP_FINISH:Z

    .line 756
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/wssnps/database/smlBackupRestoreItem$3;

    invoke-direct {v8}, Lcom/wssnps/database/smlBackupRestoreItem$3;-><init>()V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 764
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 769
    :goto_282
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/16 v9, 0x40

    aput v9, v7, v8

    .line 770
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    .line 773
    .end local v4           #ret_size:I
    :cond_290
    const-wide/32 v7, 0x1000000

    and-long/2addr v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2bd

    .line 775
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMiniDiaryDelete()V

    .line 776
    const-string v7, "com.sec.android.app.minidiary"

    invoke-static {v7}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMemorycheck(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_404

    .line 778
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMiniDiaryBackup()V

    .line 779
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 784
    :goto_2af
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/high16 v9, 0x100

    aput v9, v7, v8

    .line 785
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    .line 788
    :cond_2bd
    const-wide/32 v7, 0x2000000

    and-long/2addr v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2f7

    .line 790
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRPenMemoDelete()V

    .line 791
    const-string v7, "com.diotek.penmemo"

    invoke-static {v7}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMemorycheck(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_40d

    .line 793
    const/4 v7, 0x0

    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->PENMEMO_BACKUP_FINISH:Z

    .line 794
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/wssnps/database/smlBackupRestoreItem$4;

    invoke-direct {v8}, Lcom/wssnps/database/smlBackupRestoreItem$4;-><init>()V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 802
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 807
    :goto_2e9
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/high16 v9, 0x200

    aput v9, v7, v8

    .line 808
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    .line 811
    :cond_2f7
    const-wide/32 v7, 0x40000000

    and-long/2addr v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_331

    .line 813
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRSMemoDelete()V

    .line 814
    const-string v7, "com.sec.android.widgetapp.diotek.smemo"

    invoke-static {v7}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMemorycheck(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_416

    .line 816
    const/4 v7, 0x0

    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->SMEMO_BACKUP_FINISH:Z

    .line 817
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/wssnps/database/smlBackupRestoreItem$5;

    invoke-direct {v8}, Lcom/wssnps/database/smlBackupRestoreItem$5;-><init>()V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 825
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 830
    :goto_323
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/high16 v9, 0x4000

    aput v9, v7, v8

    .line 831
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    .line 845
    :cond_331
    sget-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_BACKUP_FINISH:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_499

    sget-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->LOG_BACKUP_FINISH:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_499

    sget-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->EMAIL_BACKUP_FINISH:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_499

    sget-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->FM_BACKUP_FINISH:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_499

    sget-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->DIARY_BACKUP_FINISH:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_499

    sget-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->PENMEMO_BACKUP_FINISH:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_499

    sget-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->SMEMO_BACKUP_FINISH:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_499

    .line 848
    const/4 v7, 0x1

    const-string v8, "smlBRBackupReady COMPLEATE"

    invoke-static {v7, v8}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 849
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x18

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 850
    .local v3, ret:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_38a
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    if-ge v0, v7, :cond_494

    .line 852
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    aget v8, v8, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 853
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    aget v8, v8, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 850
    add-int/lit8 v0, v0, 0x1

    goto :goto_38a

    .line 615
    .end local v0           #i:I
    .end local v3           #ret:Ljava/lang/String;
    :cond_3cf
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x6

    aput v9, v7, v8

    goto/16 :goto_8a

    .line 695
    :cond_3d8
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x6

    aput v9, v7, v8

    goto/16 :goto_1c9

    .line 716
    .restart local v5       #ret_size_1:I
    .restart local v6       #ret_size_2:I
    :cond_3e1
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x6

    aput v9, v7, v8

    goto/16 :goto_206

    .line 739
    .end local v5           #ret_size_1:I
    .end local v6           #ret_size_2:I
    :cond_3ea
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x6

    aput v9, v7, v8

    goto/16 :goto_240

    .line 752
    .restart local v4       #ret_size:I
    :cond_3f3
    const-string v7, "com.android.providers.telephony"

    invoke-static {v7}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMemorycheck(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_269

    .line 767
    :cond_3fb
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x6

    aput v9, v7, v8

    goto/16 :goto_282

    .line 782
    .end local v4           #ret_size:I
    :cond_404
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x6

    aput v9, v7, v8

    goto/16 :goto_2af

    .line 805
    :cond_40d
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x6

    aput v9, v7, v8

    goto/16 :goto_2e9

    .line 828
    :cond_416
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    const/4 v9, 0x6

    aput v9, v7, v8

    goto/16 :goto_323

    .line 836
    :cond_41f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "2\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x18

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 837
    .restart local v3       #ret:Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_44f
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    if-ge v0, v7, :cond_f

    .line 838
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    aget v8, v8, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 839
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    aget v8, v8, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_44f

    .line 855
    :cond_494
    const/4 v7, 0x0

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->BACKUP_READY_POLLING:I

    goto/16 :goto_f

    .line 859
    .end local v0           #i:I
    .end local v3           #ret:Ljava/lang/String;
    :cond_499
    const/4 v7, 0x1

    const-string v8, "smlBRBackupReady BUSY"

    invoke-static {v7, v8}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 860
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "9\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x18

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 861
    .restart local v3       #ret:Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4cf
    sget v7, Lcom/wssnps/database/smlBackupRestoreItem;->ready_count:I

    if-ge v0, v7, :cond_514

    .line 863
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_retCategory:[I

    aget v8, v8, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 864
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/wssnps/database/smlBackupRestoreItem;->ready_subRet:[I

    aget v8, v8, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 861
    add-int/lit8 v0, v0, 0x1

    goto :goto_4cf

    .line 866
    :cond_514
    const/4 v7, 0x1

    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->BACKUP_READY_POLLING:I

    goto/16 :goto_f
.end method

.method public static smlBRBackupRestoreCancel()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    .line 978
    sget-wide v0, Lcom/wssnps/database/smlBackupRestoreItem;->nCategory:J

    .line 979
    .local v0, nCategory:J
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v2, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 980
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smlBRBackupRestoreCancel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 982
    cmp-long v2, v0, v5

    if-eqz v2, :cond_138

    .line 984
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_32

    .line 986
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRConfigurationDelete()V

    .line 989
    :cond_32
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_39

    .line 993
    :cond_39
    const-wide/16 v2, 0x8

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_42

    .line 995
    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->BR_CALENDAR:Z

    .line 998
    :cond_42
    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_49

    .line 1002
    :cond_49
    const-wide/16 v2, 0x20

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_52

    .line 1004
    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->BR_TASK:Z

    .line 1007
    :cond_52
    const-wide/16 v2, 0x100

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_59

    .line 1011
    :cond_59
    const-wide/16 v2, 0x200

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_60

    .line 1015
    :cond_60
    const-wide/16 v2, 0x400

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_67

    .line 1019
    :cond_67
    const-wide/32 v2, 0x40000

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_6f

    .line 1023
    :cond_6f
    const-wide/16 v2, 0x800

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_76

    .line 1027
    :cond_76
    const-wide/16 v2, 0x1000

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_88

    .line 1029
    sget-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->EMAIL_BACKUP_FINISH:Z

    if-ne v2, v4, :cond_88

    sget-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->EMAIL_RESTORE_FINISH:Z

    if-ne v2, v4, :cond_88

    .line 1030
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBREmailDelete()V

    .line 1033
    :cond_88
    const-wide/16 v2, 0x4000

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_9a

    .line 1035
    sget-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->FM_BACKUP_FINISH:Z

    if-ne v2, v4, :cond_9a

    sget-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->FM_RESTORE_FINISH:Z

    if-ne v2, v4, :cond_9a

    .line 1036
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRNetworkDelete()V

    .line 1039
    :cond_9a
    const-wide/32 v2, 0x8000

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_ad

    .line 1041
    sget-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->LOG_BACKUP_FINISH:Z

    if-ne v2, v4, :cond_ad

    sget-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->LOG_RESTORE_FINISH:Z

    if-ne v2, v4, :cond_ad

    .line 1042
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRCallLogDelete()V

    .line 1045
    :cond_ad
    const-wide/16 v2, 0x40

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_bf

    .line 1047
    sget-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_BACKUP_FINISH:Z

    if-ne v2, v4, :cond_bf

    sget-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_RESTORE_FINISH:Z

    if-ne v2, v4, :cond_bf

    .line 1048
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMessageDelete()V

    .line 1051
    :cond_bf
    const-wide/32 v2, 0x1000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_d2

    .line 1053
    sget-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->DIARY_BACKUP_FINISH:Z

    if-ne v2, v4, :cond_d2

    sget-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->DIARY_RESTORE_FINISH:Z

    if-ne v2, v4, :cond_d2

    .line 1054
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMiniDiaryDelete()V

    .line 1057
    :cond_d2
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_e5

    .line 1059
    sget-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->PENMEMO_BACKUP_FINISH:Z

    if-ne v2, v4, :cond_e5

    sget-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->PENMEMO_RESTORE_FINISH:Z

    if-ne v2, v4, :cond_e5

    .line 1060
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRPenMemoDelete()V

    .line 1063
    :cond_e5
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_f8

    .line 1065
    sget-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->SMEMO_BACKUP_FINISH:Z

    if-ne v2, v4, :cond_f8

    sget-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->SMEMO_RESTORE_FINISH:Z

    if-ne v2, v4, :cond_f8

    .line 1066
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRSMemoDelete()V

    .line 1069
    :cond_f8
    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->BACKUP_READY_POLLING:I

    .line 1070
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_BACKUP_FINISH:Z

    .line 1071
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_RESTORE_FINISH:Z

    .line 1072
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->LOG_BACKUP_FINISH:Z

    .line 1073
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->LOG_RESTORE_FINISH:Z

    .line 1074
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->EMAIL_BACKUP_FINISH:Z

    .line 1075
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->EMAIL_RESTORE_FINISH:Z

    .line 1076
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->FM_BACKUP_FINISH:Z

    .line 1077
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->FM_RESTORE_FINISH:Z

    .line 1078
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->DIARY_BACKUP_FINISH:Z

    .line 1079
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->DIARY_RESTORE_FINISH:Z

    .line 1080
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->PENMEMO_BACKUP_FINISH:Z

    .line 1081
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->PENMEMO_RESTORE_FINISH:Z

    .line 1082
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->SMEMO_BACKUP_FINISH:Z

    .line 1083
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->SMEMO_RESTORE_FINISH:Z

    .line 1085
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->CONTACT_BACKUP_FINISH:Z

    .line 1086
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->CONTACT_RESTORE_FINISH:Z

    .line 1094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_137
    return-object v2

    .line 1091
    :cond_138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_137
.end method

.method public static smlBRBookmarkDBDelete()Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 4383
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->SML_BOOKMARK_URI:Landroid/net/Uri;

    .line 4384
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4386
    const/4 v2, 0x1

    const-string v3, "smlBRBookmarkDelete"

    invoke-static {v2, v3}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4388
    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4392
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static smlBRBookmarkInsertRow(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlBackupRestoreItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4111
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4115
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4116
    const/4 v0, 0x1

    const-string v1, "smlBRBookmarkInsertRow "

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4120
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_e5

    .line 4122
    :try_start_13
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlBackupRestoreItem;

    .line 4123
    const-string v4, "_id"

    iget v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4124
    const-string v4, "title"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_title:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4125
    const-string v4, "url"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_url:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4126
    const-string v4, "folder"

    iget v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_folder:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4127
    const-string v4, "parent"

    iget v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_parent:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4128
    const-string v4, "position"

    iget v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_position:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4129
    const-string v4, "insert_after"

    iget v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_insert_after:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4130
    const-string v4, "deleted"

    iget v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_deleted:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4131
    const-string v4, "account_name"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_account_name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4132
    const-string v4, "account_type"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_account_type:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4133
    const-string v4, "sourceid"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sourceid:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4134
    const-string v4, "version"

    iget v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_version:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4135
    const-string v4, "created"

    iget v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_created:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4136
    const-string v4, "modified"

    iget v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_modified:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4137
    const-string v4, "dirty"

    iget v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_dirty:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4138
    const-string v4, "sync1"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync1:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4139
    const-string v4, "sync2"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync2:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4140
    const-string v4, "sync3"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync3:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4141
    const-string v4, "sync4"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync4:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4142
    const-string v4, "sync5"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync5:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4144
    const-string v4, "parent_title"

    iget-object v0, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_parent_title:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4145
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "bookmarks"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_dc} :catch_e1

    .line 4120
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_11

    .line 4148
    :catch_e1
    move-exception v0

    .line 4150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4152
    :cond_e5
    return-void
.end method

.method public static smlBRBookmarkPut(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlBackupRestoreItem;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 4287
    .line 4289
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4290
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 4291
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->SML_BOOKMARK_URI:Landroid/net/Uri;

    .line 4293
    const-string v3, "smlBRBookmarkPut"

    invoke-static {v11, v3}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4295
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v7, v8

    .line 4297
    :goto_1a
    if-ge v7, v10, :cond_11c

    .line 4299
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/wssnps/database/smlBackupRestoreItem;

    .line 4301
    const-string v3, "title"

    iget-object v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_title:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4302
    const-string v3, "url"

    iget-object v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_url:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4303
    const-string v3, "folder"

    iget v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_folder:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4305
    const-string v3, "position"

    iget v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_position:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4306
    const-string v3, "insert_after"

    iget v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_insert_after:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4307
    const-string v3, "deleted"

    iget v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_deleted:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4308
    const-string v3, "account_name"

    iget-object v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_account_name:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4309
    const-string v3, "account_type"

    iget-object v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_account_type:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4310
    const-string v3, "sourceid"

    iget-object v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sourceid:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4311
    const-string v3, "version"

    iget v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_version:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4312
    const-string v3, "created"

    iget v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_created:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4313
    const-string v3, "modified"

    iget v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_modified:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4314
    const-string v3, "dirty"

    iget v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_dirty:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4315
    const-string v3, "sync1"

    iget-object v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync1:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4316
    const-string v3, "sync2"

    iget-object v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync2:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4317
    const-string v3, "sync3"

    iget-object v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync3:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4318
    const-string v3, "sync4"

    iget-object v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync4:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4319
    const-string v3, "sync5"

    iget-object v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync5:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4322
    iget v3, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_parent:I

    if-eqz v3, :cond_109

    iget v3, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_parent:I

    if-eq v3, v11, :cond_109

    .line 4324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "folder = 1 AND title = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_parent_title:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    .line 4325
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 4326
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_106

    .line 4328
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_106

    .line 4330
    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_parent:I

    .line 4333
    :cond_106
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4335
    :cond_109
    const-string v3, "parent"

    iget v4, v6, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_parent:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4336
    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4297
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto/16 :goto_1a

    .line 4338
    :cond_11c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static smlBRBrowserBookmarkGet()Ljava/lang/Object;
    .registers 30

    .prologue
    .line 4016
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4017
    const/4 v7, 0x0

    .line 4019
    sget-object v2, Lcom/wssnps/database/smlBackupRestoreItem;->SML_BOOKMARK_URI:Landroid/net/Uri;

    .line 4021
    sget-object v3, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4023
    const/4 v3, 0x0

    const-string v4, "_id>1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4025
    const-string v3, "_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 4026
    const-string v3, "title"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4027
    const-string v3, "url"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 4028
    const-string v3, "folder"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 4029
    const-string v3, "parent"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 4030
    const-string v3, "position"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 4031
    const-string v3, "insert_after"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 4032
    const-string v3, "deleted"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 4033
    const-string v3, "account_name"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 4034
    const-string v3, "account_type"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 4035
    const-string v3, "sourceid"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 4036
    const-string v3, "version"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 4037
    const-string v3, "created"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 4038
    const-string v3, "modified"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 4039
    const-string v3, "dirty"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 4040
    const-string v3, "sync1"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 4041
    const-string v3, "sync2"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 4042
    const-string v3, "sync3"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 4043
    const-string v3, "sync4"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 4044
    const-string v3, "sync5"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 4045
    const-string v3, "expanded"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 4049
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_a3

    .line 4051
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4052
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4106
    :goto_a2
    return-object v1

    .line 4055
    :cond_a3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_20f

    .line 4059
    :goto_a9
    new-instance v29, Lcom/wssnps/database/smlBackupRestoreItem;

    invoke-direct/range {v29 .. v29}, Lcom/wssnps/database/smlBackupRestoreItem;-><init>()V

    .line 4060
    const/4 v3, -0x1

    if-eq v9, v3, :cond_b9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_id:I

    .line 4061
    :cond_b9
    const/4 v3, -0x1

    if-eq v10, v3, :cond_c4

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_title:Ljava/lang/String;

    .line 4062
    :cond_c4
    const/4 v3, -0x1

    if-eq v11, v3, :cond_cf

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_url:Ljava/lang/String;

    .line 4063
    :cond_cf
    const/4 v3, -0x1

    if-eq v12, v3, :cond_da

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_folder:I

    .line 4064
    :cond_da
    const/4 v3, -0x1

    if-eq v13, v3, :cond_e5

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_parent:I

    .line 4065
    :cond_e5
    const/4 v3, -0x1

    if-eq v14, v3, :cond_f0

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_position:I

    .line 4066
    :cond_f0
    const/4 v3, -0x1

    if-eq v15, v3, :cond_fb

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_insert_after:I

    .line 4067
    :cond_fb
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_10a

    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_deleted:I

    .line 4068
    :cond_10a
    const/4 v3, -0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_119

    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_account_name:Ljava/lang/String;

    .line 4069
    :cond_119
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_128

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_account_type:Ljava/lang/String;

    .line 4070
    :cond_128
    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_137

    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sourceid:Ljava/lang/String;

    .line 4071
    :cond_137
    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_146

    move/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_version:I

    .line 4072
    :cond_146
    const/4 v3, -0x1

    move/from16 v0, v21

    if-eq v0, v3, :cond_155

    move/from16 v0, v21

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_created:I

    .line 4073
    :cond_155
    const/4 v3, -0x1

    move/from16 v0, v22

    if-eq v0, v3, :cond_164

    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_modified:I

    .line 4074
    :cond_164
    const/4 v3, -0x1

    move/from16 v0, v23

    if-eq v0, v3, :cond_173

    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_dirty:I

    .line 4075
    :cond_173
    const/4 v3, -0x1

    move/from16 v0, v24

    if-eq v0, v3, :cond_182

    move/from16 v0, v24

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync1:Ljava/lang/String;

    .line 4076
    :cond_182
    const/4 v3, -0x1

    move/from16 v0, v25

    if-eq v0, v3, :cond_191

    move/from16 v0, v25

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync2:Ljava/lang/String;

    .line 4077
    :cond_191
    const/4 v3, -0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_1a0

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync3:Ljava/lang/String;

    .line 4078
    :cond_1a0
    const/4 v3, -0x1

    move/from16 v0, v27

    if-eq v0, v3, :cond_1af

    move/from16 v0, v27

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync4:Ljava/lang/String;

    .line 4079
    :cond_1af
    const/4 v3, -0x1

    move/from16 v0, v28

    if-eq v0, v3, :cond_1be

    move/from16 v0, v28

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync5:Ljava/lang/String;

    .line 4082
    :cond_1be
    move-object/from16 v0, v29

    iget v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_parent:I

    if-eqz v3, :cond_200

    move-object/from16 v0, v29

    iget v3, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_parent:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_200

    .line 4084
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget v4, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_parent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4085
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 4087
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1fd

    .line 4089
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1fd

    .line 4091
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_parent_title:Ljava/lang/String;

    .line 4094
    :cond_1fd
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4097
    :cond_200
    sget-object v3, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4098
    add-int/lit8 v3, v7, 0x1

    .line 4100
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_21e

    .line 4102
    :cond_20f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4104
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRBookmarkInsertRow(Ljava/util/ArrayList;)V

    .line 4106
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_a2

    :cond_21e
    move v7, v3

    goto/16 :goto_a9
.end method

.method public static smlBRCalendarDelete()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2774
    const-string v2, "smlBRCalendarDelete"

    invoke-static {v0, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2776
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v2, :cond_21

    .line 2778
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2781
    :goto_12
    if-nez v2, :cond_17

    .line 2791
    :goto_14
    if-ltz v1, :cond_1f

    .line 2794
    :goto_16
    return v0

    .line 2787
    :cond_17
    const-string v4, "calendar_id=1"

    .line 2788
    sget-object v5, Lcom/wssnps/database/smlBackupRestoreItem;->SML_CALENDAR_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_14

    :cond_1f
    move v0, v1

    .line 2794
    goto :goto_16

    :cond_21
    move-object v2, v3

    goto :goto_12
.end method

.method public static smlBRCallLogCompress()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4789
    const/4 v0, 0x1

    const-string v1, "smlBRCallLogCompress"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4791
    const-string v0, "/data/_SamsungBnR_/BR/CallLog"

    const-string v1, "/data/_SamsungBnR_/BR/CallLog.bk"

    invoke-static {v0, v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 4792
    return-void
.end method

.method public static smlBRCallLogDBDelete()Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 4805
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4806
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->SML_CALLLOG_URI:Landroid/net/Uri;

    .line 4808
    const/4 v3, 0x1

    const-string v4, "smlBRCallLogDBDelete"

    invoke-static {v3, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 4809
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 4811
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4813
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4815
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static smlBRCallLogDecompress()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4796
    const/4 v0, 0x1

    const-string v1, "smlBRCallLogDecompress"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4798
    const-string v0, "/data/_SamsungBnR_/BR/CallLog.bk"

    const-string v1, "/data/_SamsungBnR_/BR/CallLog"

    invoke-static {v0, v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileUnZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 4799
    return-void
.end method

.method public static smlBRCallLogDelete()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 4822
    const-string v0, "smlBRCallLogDelete"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4824
    const-string v0, "/data/_SamsungBnR_/BR/CallLog"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRemoveDir(Ljava/lang/String;)Z

    move-result v0

    .line 4825
    if-nez v0, :cond_13

    .line 4827
    const-string v0, "Remove directory failed!!!"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4830
    :cond_13
    const-string v0, "/data/_SamsungBnR_/BR/CallLog.bk"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileDelete(Ljava/lang/String;)Z

    move-result v0

    .line 4831
    if-nez v0, :cond_20

    .line 4833
    const-string v0, "Remove file failed!!!"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4835
    :cond_20
    return-void
.end method

.method public static smlBRCalllogBackup()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 4418
    const-string v0, "smlBRCalllogBackup"

    invoke-static {v2, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4419
    const-string v0, "/data/_SamsungBnR_/BR/CallLog"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMakeDir(Ljava/lang/String;)Z

    move-result v0

    .line 4420
    if-nez v0, :cond_13

    .line 4422
    const-string v0, "Make directory failed!!!"

    invoke-static {v2, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4424
    :cond_13
    const-string v0, "/data/_SamsungBnR_/BR/CallLog/CallLog_DB.bk"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase_calllog:Landroid/database/sqlite/SQLiteDatabase;

    .line 4425
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase_calllog:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "create table if not exists calllog (_id integer primary key autoincrement, number text, address text, date text, duration text, type text, new text, name text, name_reversed text, numbertype text, numberlabel text, messageid text, logtype text, frequent text, contactid text, raw_contact_id text, m_subject text, m_content text, sns_tid text, sns_pkey text, account_name text, account_id text, sns_receiver_count text, sp_type text, cnap_name text, cdnip_number text, service_type text);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4427
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRCalllogGet()Ljava/lang/Object;

    .line 4430
    :try_start_26
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRCallLogCompress()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_31

    .line 4436
    :goto_29
    sput-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->LOG_BACKUP_FINISH:Z

    .line 4437
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase_calllog:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 4438
    return-void

    .line 4432
    :catch_31
    move-exception v0

    .line 4434
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public static smlBRCalllogGet()Ljava/lang/Object;
    .registers 33

    .prologue
    .line 4459
    const/4 v8, 0x0

    .line 4461
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4462
    const/4 v3, 0x1

    const-string v4, "smlBRCalllogGet"

    invoke-static {v3, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4464
    sget-object v3, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4465
    sget-object v3, Lcom/wssnps/database/smlBackupRestoreItem;->SML_CALLLOG_URI:Landroid/net/Uri;

    .line 4467
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 4469
    const-string v2, "_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 4470
    const-string v2, "number"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 4471
    const-string v2, "address"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 4472
    const-string v2, "date"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 4473
    const-string v2, "duration"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 4474
    const-string v2, "type"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4475
    const-string v2, "new"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 4476
    const-string v2, "name"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 4477
    const-string v2, "name_reversed"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 4478
    const-string v2, "numbertype"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 4479
    const-string v2, "numberlabel"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 4480
    const-string v2, "messageid"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 4481
    const-string v2, "logtype"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 4482
    const-string v2, "frequent"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 4483
    const-string v2, "contactid"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 4484
    const-string v2, "raw_contact_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 4485
    const-string v2, "m_subject"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 4486
    const-string v2, "m_content"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 4487
    const-string v2, "sns_tid"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 4488
    const-string v2, "sns_pkey"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 4489
    const-string v2, "account_name"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 4490
    const-string v2, "account_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 4491
    const-string v2, "sns_receiver_count"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 4492
    const-string v2, "sp_type"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 4493
    const-string v2, "cnap_name"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 4494
    const-string v2, "cdnip_number"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 4495
    const-string v2, "service_type"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 4499
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_cd

    .line 4501
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4502
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4546
    :goto_cc
    return-object v2

    .line 4505
    :cond_cd
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2a2

    move v2, v8

    .line 4509
    :cond_d4
    new-instance v8, Lcom/wssnps/database/smlBackupRestoreItem;

    invoke-direct {v8}, Lcom/wssnps/database/smlBackupRestoreItem;-><init>()V

    .line 4510
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v4, v0, :cond_e7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    move/from16 v0, v32

    iput v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_id:I

    .line 4511
    :cond_e7
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v5, v0, :cond_f5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_number:Ljava/lang/String;

    .line 4512
    :cond_f5
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v6, v0, :cond_103

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_address:Ljava/lang/String;

    .line 4513
    :cond_103
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v7, v0, :cond_111

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_date:Ljava/lang/String;

    .line 4514
    :cond_111
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v9, v0, :cond_11f

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_duration:Ljava/lang/String;

    .line 4515
    :cond_11f
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v10, v0, :cond_12d

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_type:Ljava/lang/String;

    .line 4516
    :cond_12d
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v11, v0, :cond_13b

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_new_:Ljava/lang/String;

    .line 4517
    :cond_13b
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v12, v0, :cond_149

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_name:Ljava/lang/String;

    .line 4518
    :cond_149
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v13, v0, :cond_157

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_name_reversed:Ljava/lang/String;

    .line 4519
    :cond_157
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v14, v0, :cond_165

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_numbertype:Ljava/lang/String;

    .line 4520
    :cond_165
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v15, v0, :cond_173

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_numberlabel:Ljava/lang/String;

    .line 4521
    :cond_173
    const/16 v32, -0x1

    move/from16 v0, v16

    move/from16 v1, v32

    if-eq v0, v1, :cond_185

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_messageid:Ljava/lang/String;

    .line 4522
    :cond_185
    const/16 v32, -0x1

    move/from16 v0, v17

    move/from16 v1, v32

    if-eq v0, v1, :cond_197

    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_logtype:Ljava/lang/String;

    .line 4523
    :cond_197
    const/16 v32, -0x1

    move/from16 v0, v18

    move/from16 v1, v32

    if-eq v0, v1, :cond_1a9

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_frequent:Ljava/lang/String;

    .line 4524
    :cond_1a9
    const/16 v32, -0x1

    move/from16 v0, v19

    move/from16 v1, v32

    if-eq v0, v1, :cond_1bb

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_contactid:Ljava/lang/String;

    .line 4525
    :cond_1bb
    const/16 v32, -0x1

    move/from16 v0, v20

    move/from16 v1, v32

    if-eq v0, v1, :cond_1cd

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_raw_contact_id:Ljava/lang/String;

    .line 4526
    :cond_1cd
    const/16 v32, -0x1

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_1df

    move/from16 v0, v21

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_m_subject:Ljava/lang/String;

    .line 4527
    :cond_1df
    const/16 v32, -0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-eq v0, v1, :cond_1f1

    move/from16 v0, v22

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_m_content:Ljava/lang/String;

    .line 4528
    :cond_1f1
    const/16 v32, -0x1

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_203

    move/from16 v0, v23

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_sns_tid:Ljava/lang/String;

    .line 4529
    :cond_203
    const/16 v32, -0x1

    move/from16 v0, v24

    move/from16 v1, v32

    if-eq v0, v1, :cond_215

    move/from16 v0, v24

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_sns_pkey:Ljava/lang/String;

    .line 4530
    :cond_215
    const/16 v32, -0x1

    move/from16 v0, v25

    move/from16 v1, v32

    if-eq v0, v1, :cond_227

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_account_name:Ljava/lang/String;

    .line 4531
    :cond_227
    const/16 v32, -0x1

    move/from16 v0, v26

    move/from16 v1, v32

    if-eq v0, v1, :cond_239

    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_account_id:Ljava/lang/String;

    .line 4532
    :cond_239
    const/16 v32, -0x1

    move/from16 v0, v27

    move/from16 v1, v32

    if-eq v0, v1, :cond_24b

    move/from16 v0, v27

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_sns_receiver_count:Ljava/lang/String;

    .line 4533
    :cond_24b
    const/16 v32, -0x1

    move/from16 v0, v28

    move/from16 v1, v32

    if-eq v0, v1, :cond_25d

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_sp_type:Ljava/lang/String;

    .line 4534
    :cond_25d
    const/16 v32, -0x1

    move/from16 v0, v29

    move/from16 v1, v32

    if-eq v0, v1, :cond_26f

    move/from16 v0, v29

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_cnap_name:Ljava/lang/String;

    .line 4535
    :cond_26f
    const/16 v32, -0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_281

    move/from16 v0, v30

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_cdnip_number:Ljava/lang/String;

    .line 4536
    :cond_281
    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_293

    move/from16 v0, v31

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Log_service_type:Ljava/lang/String;

    .line 4538
    :cond_293
    sget-object v32, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4540
    add-int/lit8 v2, v2, 0x1

    .line 4541
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_d4

    .line 4543
    :cond_2a2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4544
    sget-object v2, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRCalllogInsertRow(Ljava/util/ArrayList;)V

    .line 4546
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_cc
.end method

.method public static smlBRCalllogInsertRow(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlBackupRestoreItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4551
    .line 4552
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4555
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4556
    const/4 v0, 0x1

    const-string v1, "smlBRCalllogInsertRow "

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4559
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_eb

    .line 4561
    :try_start_13
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlBackupRestoreItem;

    .line 4562
    const-string v4, "_id"

    iget v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4563
    const-string v4, "number"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_number:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4564
    const-string v4, "address"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_address:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4565
    const-string v4, "date"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_date:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4566
    const-string v4, "duration"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_duration:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4567
    const-string v4, "type"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_type:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4568
    const-string v4, "new"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_new_:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4569
    const-string v4, "name"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4570
    const-string v4, "name_reversed"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_name_reversed:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4571
    const-string v4, "numbertype"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_numbertype:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4572
    const-string v4, "numberlabel"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_numberlabel:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4573
    const-string v4, "messageid"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_messageid:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4574
    const-string v4, "logtype"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_logtype:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4575
    const-string v4, "frequent"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_frequent:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4576
    const-string v4, "contactid"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_contactid:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4577
    const-string v4, "raw_contact_id"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_raw_contact_id:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4578
    const-string v4, "m_subject"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_m_subject:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4579
    const-string v4, "m_content"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_m_content:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4580
    const-string v4, "sns_tid"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_sns_tid:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4581
    const-string v4, "sns_pkey"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_sns_pkey:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4582
    const-string v4, "account_name"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_account_name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4583
    const-string v4, "account_id"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_account_id:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4584
    const-string v4, "sns_receiver_count"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_sns_receiver_count:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4585
    const-string v4, "sp_type"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_sp_type:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4586
    const-string v4, "cnap_name"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_cnap_name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4587
    const-string v4, "cdnip_number"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_cdnip_number:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4588
    const-string v4, "service_type"

    iget-object v0, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_service_type:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4590
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase_calllog:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "calllog"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_e2} :catch_e7

    .line 4559
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_11

    .line 4593
    :catch_e7
    move-exception v0

    .line 4595
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4597
    :cond_eb
    return-void
.end method

.method public static smlBRCalllogPut(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlBackupRestoreItem;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4725
    .line 4727
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4728
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4729
    sget-object v5, Lcom/wssnps/database/smlBackupRestoreItem;->SML_CALLLOG_URI:Landroid/net/Uri;

    .line 4730
    sget-object v6, Lcom/wssnps/database/smlBackupRestoreItem;->SML_VIDEOLOG_URI:Landroid/net/Uri;

    .line 4731
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->SML_SMSLOG_URI:Landroid/net/Uri;

    .line 4732
    sget-object v8, Lcom/wssnps/database/smlBackupRestoreItem;->SML_MMSLOG_URI:Landroid/net/Uri;

    .line 4734
    const/4 v0, 0x1

    const-string v1, "smlBRCalllogPut"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4736
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v2

    .line 4738
    :goto_1f
    if-ge v1, v9, :cond_121

    .line 4740
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlBackupRestoreItem;

    .line 4741
    const-string v10, "_id"

    iget v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4742
    const-string v10, "number"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_number:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4743
    const-string v10, "address"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_address:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4744
    const-string v10, "date"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_date:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4745
    const-string v10, "duration"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_duration:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4746
    const-string v10, "type"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_type:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4747
    const-string v10, "new"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_new_:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4748
    const-string v10, "name"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_name:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4749
    const-string v10, "name_reversed"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_name_reversed:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4750
    const-string v10, "numbertype"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_numbertype:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4751
    const-string v10, "numberlabel"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_numberlabel:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4752
    const-string v10, "messageid"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_messageid:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4753
    const-string v10, "logtype"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_logtype:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4754
    const-string v10, "frequent"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_frequent:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4755
    const-string v10, "contactid"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_contactid:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4756
    const-string v10, "raw_contact_id"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_raw_contact_id:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4757
    const-string v10, "m_subject"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_m_subject:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4758
    const-string v10, "m_content"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_m_content:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4759
    const-string v10, "sns_tid"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_sns_tid:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4760
    const-string v10, "sns_pkey"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_sns_pkey:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4761
    const-string v10, "account_name"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_account_name:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4762
    const-string v10, "account_id"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_account_id:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4763
    const-string v10, "sns_receiver_count"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_sns_receiver_count:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4764
    const-string v10, "sp_type"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_sp_type:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4765
    const-string v10, "cnap_name"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_cnap_name:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4766
    const-string v10, "cdnip_number"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_cdnip_number:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4767
    const-string v10, "service_type"

    iget-object v11, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_service_type:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4770
    iget-object v10, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_logtype:Ljava/lang/String;

    const-string v11, "100"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_f5

    .line 4771
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4773
    :cond_f5
    iget-object v10, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_logtype:Ljava/lang/String;

    const-string v11, "500"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_102

    .line 4774
    invoke-virtual {v3, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4776
    :cond_102
    iget-object v10, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_logtype:Ljava/lang/String;

    const-string v11, "300"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_10f

    .line 4777
    invoke-virtual {v3, v7, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4779
    :cond_10f
    iget-object v0, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Log_logtype:Ljava/lang/String;

    const-string v10, "200"

    invoke-virtual {v0, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11c

    .line 4780
    invoke-virtual {v3, v8, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4738
    :cond_11c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1f

    .line 4784
    :cond_121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static smlBRCalllogRestore()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 4442
    const-string v0, "smlBRCalllogRestore "

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4445
    :try_start_6
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRCallLogDecompress()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_f

    .line 4451
    :goto_9
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRestoreCalllogSql()Ljava/lang/Object;

    .line 4452
    sput-boolean v1, Lcom/wssnps/database/smlBackupRestoreItem;->LOG_RESTORE_FINISH:Z

    .line 4453
    return-void

    .line 4447
    :catch_f
    move-exception v0

    .line 4449
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public static smlBRConfigurationBackup()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 2413
    const-string v0, "smlBRConfigurationBackup"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2414
    const-string v0, "/data/_SamsungBnR_/BR/Configuration"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMakeDir(Ljava/lang/String;)Z

    move-result v0

    .line 2415
    if-nez v0, :cond_13

    .line 2417
    const-string v0, "Make directory failed!!!"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2419
    :cond_13
    const-string v0, "/data/_SamsungBnR_/BR/Configuration/Configuration_DB.bk"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 2420
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "create table if not exists configuration (_id integer primary key autoincrement, name text, value text);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2422
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRConfigurationGet()Ljava/lang/Object;

    .line 2425
    :try_start_26
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRConfigurationCompress()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2f

    .line 2431
    :goto_29
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2432
    return-void

    .line 2427
    :catch_2f
    move-exception v0

    .line 2429
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smlBRConfigurationCompress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_29
.end method

.method public static smlBRConfigurationCompress()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2612
    const/4 v0, 0x1

    const-string v1, "smlBRConfigurationCompress"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2614
    const-string v0, "/data/_SamsungBnR_/BR/Configuration"

    const-string v1, "/data/_SamsungBnR_/BR/Configuration.bk"

    invoke-static {v0, v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    return-void
.end method

.method public static smlBRConfigurationDecompress()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2619
    const/4 v0, 0x1

    const-string v1, "smlBRConfigurationDecompress"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2621
    const-string v0, "/data/_SamsungBnR_/BR/Configuration.bk"

    const-string v1, "/data/_SamsungBnR_/BR/Configuration"

    invoke-static {v0, v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileUnZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    return-void
.end method

.method public static smlBRConfigurationDelete()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 2628
    const-string v0, "smlBRConfigurationDelete"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2630
    const-string v0, "/data/_SamsungBnR_/BR/Configuration"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRemoveDir(Ljava/lang/String;)Z

    move-result v0

    .line 2631
    if-nez v0, :cond_13

    .line 2633
    const-string v0, "Remove directory failed!!!"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2636
    :cond_13
    const-string v0, "/data/_SamsungBnR_/BR/Configuration.bk"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileDelete(Ljava/lang/String;)Z

    move-result v0

    .line 2637
    if-nez v0, :cond_20

    .line 2639
    const-string v0, "Remove file failed!!!"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2641
    :cond_20
    return-void
.end method

.method public static smlBRConfigurationGet()Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 2451
    const-string v3, ""

    .line 2457
    const/4 v0, 0x1

    const-string v1, "smlBRConfigurationGet"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2459
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2461
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2462
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->SML_CONFIGURATION_URI:Landroid/net/Uri;

    move-object v4, v3

    move v3, v6

    .line 2464
    :goto_19
    sget-object v5, Lcom/wssnps/database/smlBackupRestoreItem;->targetName:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_48

    .line 2465
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name = \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->targetName:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' or "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2464
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 2467
    :cond_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/wssnps/database/smlBackupRestoreItem;->targetName:[Ljava/lang/String;

    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->targetName:[Ljava/lang/String;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    .line 2469
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2473
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2474
    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2475
    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 2479
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_98

    .line 2481
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2482
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2501
    :goto_97
    return-object v0

    .line 2485
    :cond_98
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_c3

    move v0, v6

    .line 2489
    :cond_9f
    new-instance v5, Lcom/wssnps/database/smlBackupRestoreItem;

    invoke-direct {v5}, Lcom/wssnps/database/smlBackupRestoreItem;-><init>()V

    .line 2490
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v5, Lcom/wssnps/database/smlBackupRestoreItem;->Configuration_id:I

    .line 2491
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/wssnps/database/smlBackupRestoreItem;->Configuration_name:Ljava/lang/String;

    .line 2492
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/wssnps/database/smlBackupRestoreItem;->Configuration_value:Ljava/lang/String;

    .line 2493
    sget-object v7, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2495
    add-int/lit8 v0, v0, 0x1

    .line 2496
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_9f

    .line 2498
    :cond_c3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2499
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRConfigurationInsertRow(Ljava/util/ArrayList;)V

    .line 2501
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_97
.end method

.method public static smlBRConfigurationInsertRow(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlBackupRestoreItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2506
    .line 2507
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2509
    const/4 v0, 0x1

    const-string v1, "smlDbSqlConfigurationInsertRow"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2512
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2515
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_5a

    .line 2517
    :try_start_13
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlBackupRestoreItem;

    .line 2518
    const-string v4, "_id"

    iget v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Configuration_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2519
    const-string v4, "name"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Configuration_name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    const-string v4, "value"

    iget-object v0, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Configuration_value:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2522
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "configuration"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3a} :catch_3e

    .line 2515
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 2525
    :catch_3e
    move-exception v0

    .line 2527
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smlDbSqlConfigrationInsertRow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2529
    :cond_5a
    return-void
.end method

.method public static smlBRConfigurationPut(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlBackupRestoreItem;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2588
    .line 2590
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2591
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2592
    sget-object v5, Lcom/wssnps/database/smlBackupRestoreItem;->SML_CONFIGURATION_URI:Landroid/net/Uri;

    .line 2594
    const/4 v0, 0x1

    const-string v1, "smlBRConfigurationPut"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2596
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v2

    .line 2598
    :goto_19
    if-ge v1, v6, :cond_4f

    .line 2600
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlBackupRestoreItem;

    .line 2601
    const-string v7, "value"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Configuration_value:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Configuration_name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\'"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2604
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v4, v0, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2598
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    .line 2607
    :cond_4f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static smlBRConfigurationRestore()V
    .registers 4

    .prologue
    .line 2436
    const/4 v0, 0x1

    const-string v1, "smlBRConfigurationRestore"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2439
    :try_start_6
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRConfigurationDecompress()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_d

    .line 2444
    :goto_9
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRestoreConfigurationSql()Ljava/lang/Object;

    .line 2445
    return-void

    .line 2441
    :catch_d
    move-exception v0

    .line 2442
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smlBRConfigurationDecompress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_9
.end method

.method public static smlBRContactsDelete()Z
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2685
    const-string v0, "smlBRContactsDelete"

    invoke-static {v7, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2687
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v0, :cond_bd

    .line 2689
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2692
    :goto_12
    if-nez v0, :cond_18

    .line 2760
    :goto_14
    if-ltz v6, :cond_17

    move v6, v7

    .line 2763
    :cond_17
    :goto_17
    return v6

    .line 2698
    :cond_18
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 2701
    const-string v3, "account_type=\"vnd.sec.contact.phone\" AND deleted=0"

    .line 2703
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v6

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2705
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_89

    move v1, v6

    .line 2710
    :cond_32
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2711
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v9, v7, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v4, v5, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2716
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id=?"

    new-array v9, v7, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v6

    invoke-virtual {v4, v5, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2722
    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x1f4

    if-lt v1, v3, :cond_83

    .line 2725
    :try_start_7a
    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 2726
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_82} :catch_97
    .catch Landroid/content/OperationApplicationException; {:try_start_7a .. :try_end_82} :catch_9c
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_7a .. :try_end_82} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_82} :catch_a6

    :goto_82
    move v1, v6

    .line 2738
    :cond_83
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_32

    .line 2740
    :cond_89
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2744
    :try_start_8c
    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_91} :catch_92
    .catch Landroid/content/OperationApplicationException; {:try_start_8c .. :try_end_91} :catch_ab
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_8c .. :try_end_91} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_91} :catch_b7

    goto :goto_14

    .line 2745
    :catch_92
    move-exception v0

    .line 2746
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_17

    .line 2727
    :catch_97
    move-exception v1

    .line 2728
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_82

    .line 2729
    :catch_9c
    move-exception v1

    .line 2730
    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_82

    .line 2731
    :catch_a1
    move-exception v1

    .line 2732
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_82

    .line 2733
    :catch_a6
    move-exception v1

    .line 2734
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_82

    .line 2748
    :catch_ab
    move-exception v0

    .line 2749
    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_17

    .line 2751
    :catch_b1
    move-exception v0

    .line 2752
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto/16 :goto_17

    .line 2754
    :catch_b7
    move-exception v0

    .line 2755
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_17

    :cond_bd
    move-object v0, v4

    goto/16 :goto_12
.end method

.method public static smlBRContactsDeleteGroup()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2656
    const-string v2, "smlBRContactsDeleteGroup"

    invoke-static {v0, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2658
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v2, :cond_36

    .line 2660
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2663
    :goto_12
    if-nez v2, :cond_18

    move v2, v1

    .line 2674
    :goto_15
    if-ltz v2, :cond_34

    .line 2677
    :goto_17
    return v0

    .line 2669
    :cond_18
    const-string v4, "account_type=\"vnd.sec.contact.phone\""

    .line 2670
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND SYSTEM_ID is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2671
    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_15

    :cond_34
    move v0, v1

    .line 2677
    goto :goto_17

    :cond_36
    move-object v2, v3

    goto :goto_12
.end method

.method public static smlBREmailAccountDBDelete()Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 3671
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3672
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->SML_EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    .line 3674
    const/4 v3, 0x1

    const-string v4, "smlBREmailAccountDelete"

    invoke-static {v3, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 3675
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 3677
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3679
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3681
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static smlBREmailAccountGet()Ljava/lang/Object;
    .registers 42

    .prologue
    .line 3068
    const/4 v8, 0x0

    .line 3070
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3072
    sget-object v3, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3073
    sget-object v3, Lcom/wssnps/database/smlBackupRestoreItem;->SML_EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    .line 3075
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 3077
    const-string v2, "_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3078
    const-string v2, "displayName"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 3079
    const-string v2, "emailAddress"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3080
    const-string v2, "syncKey"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 3081
    const-string v2, "syncLookback"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 3082
    const-string v2, "syncInterval"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 3083
    const-string v2, "hostAuthKeyRecv"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 3084
    const-string v2, "hostAuthKeySend"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 3085
    const-string v2, "flags"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 3086
    const-string v2, "isDefault"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 3087
    const-string v2, "compatibilityUuid"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 3088
    const-string v2, "senderName"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 3089
    const-string v2, "ringtoneUri"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 3090
    const-string v2, "protocolVersion"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 3091
    const-string v2, "newMessageCount"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 3092
    const-string v2, "securityFlags"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 3093
    const-string v2, "securitySyncKey"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 3094
    const-string v2, "signature"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 3095
    const-string v2, "emailsize"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 3096
    const-string v2, "policyKey"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 3097
    const-string v2, "peakDays"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 3098
    const-string v2, "peakStartMinute"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 3099
    const-string v2, "peakEndMinute"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 3100
    const-string v2, "peakSchedule"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 3101
    const-string v2, "offPeakSchedule"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 3102
    const-string v2, "roamingSchedule"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 3103
    const-string v2, "calendarSyncLookback"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 3104
    const-string v2, "conflict"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 3105
    const-string v2, "smimeOwnCertificateAlias"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 3106
    const-string v2, "smimeOptionsFlags"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 3107
    const-string v2, "smimeSignAlgorithm"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 3108
    const-string v2, "smimeEncryptionAlgorithm"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 3109
    const-string v2, "conversationMode"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 3110
    const-string v2, "textPreview"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    .line 3111
    const-string v2, "deviceInfoSent"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 3112
    const-string v2, "deviceBlockedType"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 3116
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_fd

    .line 3118
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3119
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3172
    :goto_fc
    return-object v2

    .line 3122
    :cond_fd
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_374

    move v2, v8

    .line 3126
    :cond_104
    new-instance v8, Lcom/wssnps/database/smlBackupRestoreItem;

    invoke-direct {v8}, Lcom/wssnps/database/smlBackupRestoreItem;-><init>()V

    .line 3127
    const/16 v41, -0x1

    move/from16 v0, v41

    if-eq v4, v0, :cond_117

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    move/from16 v0, v41

    iput v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_id:I

    .line 3128
    :cond_117
    const/16 v41, -0x1

    move/from16 v0, v41

    if-eq v5, v0, :cond_125

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_displayName:Ljava/lang/String;

    .line 3129
    :cond_125
    const/16 v41, -0x1

    move/from16 v0, v41

    if-eq v6, v0, :cond_133

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_emailAddress:Ljava/lang/String;

    .line 3130
    :cond_133
    const/16 v41, -0x1

    move/from16 v0, v41

    if-eq v7, v0, :cond_141

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_syncKey:Ljava/lang/String;

    .line 3131
    :cond_141
    const/16 v41, -0x1

    move/from16 v0, v41

    if-eq v9, v0, :cond_14f

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_syncLookback:Ljava/lang/String;

    .line 3132
    :cond_14f
    const/16 v41, -0x1

    move/from16 v0, v41

    if-eq v10, v0, :cond_15d

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_syncInterval:Ljava/lang/String;

    .line 3133
    :cond_15d
    const/16 v41, -0x1

    move/from16 v0, v41

    if-eq v11, v0, :cond_16b

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_hostAuthKeyRecv:Ljava/lang/String;

    .line 3134
    :cond_16b
    const/16 v41, -0x1

    move/from16 v0, v41

    if-eq v12, v0, :cond_179

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_hostAuthKeySend:Ljava/lang/String;

    .line 3135
    :cond_179
    const/16 v41, -0x1

    move/from16 v0, v41

    if-eq v13, v0, :cond_187

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_flags:Ljava/lang/String;

    .line 3136
    :cond_187
    const/16 v41, -0x1

    move/from16 v0, v41

    if-eq v14, v0, :cond_195

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_isDefault:Ljava/lang/String;

    .line 3137
    :cond_195
    const/16 v41, -0x1

    move/from16 v0, v41

    if-eq v15, v0, :cond_1a3

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_compatibilityUuid:Ljava/lang/String;

    .line 3138
    :cond_1a3
    const/16 v41, -0x1

    move/from16 v0, v16

    move/from16 v1, v41

    if-eq v0, v1, :cond_1b5

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_senderName:Ljava/lang/String;

    .line 3139
    :cond_1b5
    const/16 v41, -0x1

    move/from16 v0, v17

    move/from16 v1, v41

    if-eq v0, v1, :cond_1c7

    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_ringtoneUri:Ljava/lang/String;

    .line 3140
    :cond_1c7
    const/16 v41, -0x1

    move/from16 v0, v18

    move/from16 v1, v41

    if-eq v0, v1, :cond_1d9

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_protocolVersion:Ljava/lang/String;

    .line 3141
    :cond_1d9
    const/16 v41, -0x1

    move/from16 v0, v19

    move/from16 v1, v41

    if-eq v0, v1, :cond_1eb

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_newMessageCount:Ljava/lang/String;

    .line 3142
    :cond_1eb
    const/16 v41, -0x1

    move/from16 v0, v20

    move/from16 v1, v41

    if-eq v0, v1, :cond_1fd

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_securityFlags:Ljava/lang/String;

    .line 3143
    :cond_1fd
    const/16 v41, -0x1

    move/from16 v0, v21

    move/from16 v1, v41

    if-eq v0, v1, :cond_20f

    move/from16 v0, v21

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_securitySyncKey:Ljava/lang/String;

    .line 3144
    :cond_20f
    const/16 v41, -0x1

    move/from16 v0, v22

    move/from16 v1, v41

    if-eq v0, v1, :cond_221

    move/from16 v0, v22

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_signature:Ljava/lang/String;

    .line 3145
    :cond_221
    const/16 v41, -0x1

    move/from16 v0, v23

    move/from16 v1, v41

    if-eq v0, v1, :cond_233

    move/from16 v0, v23

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_emailsize:Ljava/lang/String;

    .line 3146
    :cond_233
    const/16 v41, -0x1

    move/from16 v0, v24

    move/from16 v1, v41

    if-eq v0, v1, :cond_245

    move/from16 v0, v24

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_policyKey:Ljava/lang/String;

    .line 3147
    :cond_245
    const/16 v41, -0x1

    move/from16 v0, v25

    move/from16 v1, v41

    if-eq v0, v1, :cond_257

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_peakDays:Ljava/lang/String;

    .line 3148
    :cond_257
    const/16 v41, -0x1

    move/from16 v0, v26

    move/from16 v1, v41

    if-eq v0, v1, :cond_269

    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_peakStartMinute:Ljava/lang/String;

    .line 3149
    :cond_269
    const/16 v41, -0x1

    move/from16 v0, v27

    move/from16 v1, v41

    if-eq v0, v1, :cond_27b

    move/from16 v0, v27

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_peakEndMinute:Ljava/lang/String;

    .line 3150
    :cond_27b
    const/16 v41, -0x1

    move/from16 v0, v28

    move/from16 v1, v41

    if-eq v0, v1, :cond_28d

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_peakSchedule:Ljava/lang/String;

    .line 3151
    :cond_28d
    const/16 v41, -0x1

    move/from16 v0, v29

    move/from16 v1, v41

    if-eq v0, v1, :cond_29f

    move/from16 v0, v29

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_offPeakSchedule:Ljava/lang/String;

    .line 3152
    :cond_29f
    const/16 v41, -0x1

    move/from16 v0, v30

    move/from16 v1, v41

    if-eq v0, v1, :cond_2b1

    move/from16 v0, v30

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_roamingSchedule:Ljava/lang/String;

    .line 3153
    :cond_2b1
    const/16 v41, -0x1

    move/from16 v0, v31

    move/from16 v1, v41

    if-eq v0, v1, :cond_2c3

    move/from16 v0, v31

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_calendarSyncLookback:Ljava/lang/String;

    .line 3154
    :cond_2c3
    const/16 v41, -0x1

    move/from16 v0, v32

    move/from16 v1, v41

    if-eq v0, v1, :cond_2d5

    move/from16 v0, v32

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_conflict:Ljava/lang/String;

    .line 3155
    :cond_2d5
    const/16 v41, -0x1

    move/from16 v0, v33

    move/from16 v1, v41

    if-eq v0, v1, :cond_2e7

    move/from16 v0, v33

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_smimeOwnCertificateAlias:Ljava/lang/String;

    .line 3156
    :cond_2e7
    const/16 v41, -0x1

    move/from16 v0, v34

    move/from16 v1, v41

    if-eq v0, v1, :cond_2f9

    move/from16 v0, v34

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_smimeOptionsFlags:Ljava/lang/String;

    .line 3157
    :cond_2f9
    const/16 v41, -0x1

    move/from16 v0, v35

    move/from16 v1, v41

    if-eq v0, v1, :cond_30b

    move/from16 v0, v35

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_smimeSignAlgorithm:Ljava/lang/String;

    .line 3158
    :cond_30b
    const/16 v41, -0x1

    move/from16 v0, v36

    move/from16 v1, v41

    if-eq v0, v1, :cond_31d

    move/from16 v0, v36

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_smimeEncryptionAlgorithm:Ljava/lang/String;

    .line 3159
    :cond_31d
    const/16 v41, -0x1

    move/from16 v0, v37

    move/from16 v1, v41

    if-eq v0, v1, :cond_32f

    move/from16 v0, v37

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_conversationMode:Ljava/lang/String;

    .line 3160
    :cond_32f
    const/16 v41, -0x1

    move/from16 v0, v38

    move/from16 v1, v41

    if-eq v0, v1, :cond_341

    move/from16 v0, v38

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_textPreview:Ljava/lang/String;

    .line 3161
    :cond_341
    const/16 v41, -0x1

    move/from16 v0, v39

    move/from16 v1, v41

    if-eq v0, v1, :cond_353

    move/from16 v0, v39

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_deviceInfoSent:Ljava/lang/String;

    .line 3162
    :cond_353
    const/16 v41, -0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_365

    move/from16 v0, v40

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_deviceBlockedType:Ljava/lang/String;

    .line 3164
    :cond_365
    sget-object v41, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3166
    add-int/lit8 v2, v2, 0x1

    .line 3167
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_104

    .line 3169
    :cond_374
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3170
    sget-object v2, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBREmailAccountInsertRow(Ljava/util/ArrayList;)V

    .line 3172
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_fc
.end method

.method public static smlBREmailAccountInsertRow(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlBackupRestoreItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3178
    .line 3179
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3182
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3183
    const/4 v0, 0x1

    const-string v1, "smlBREmailAccountInsertRow"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3187
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_12a

    .line 3189
    :try_start_13
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlBackupRestoreItem;

    .line 3190
    const-string v4, "_id"

    iget v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3191
    const-string v4, "displayName"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_displayName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3192
    const-string v4, "emailAddress"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_emailAddress:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3193
    const-string v4, "syncKey"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_syncKey:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3194
    const-string v4, "syncLookback"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_syncLookback:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3195
    const-string v4, "syncInterval"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_syncInterval:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3196
    const-string v4, "hostAuthKeyRecv"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_hostAuthKeyRecv:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3197
    const-string v4, "hostAuthKeySend"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_hostAuthKeySend:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3198
    const-string v4, "flags"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_flags:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3199
    const-string v4, "isDefault"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_isDefault:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3200
    const-string v4, "compatibilityUuid"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_compatibilityUuid:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3201
    const-string v4, "senderName"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_senderName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3202
    const-string v4, "ringtoneUri"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_ringtoneUri:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3203
    const-string v4, "protocolVersion"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_protocolVersion:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3204
    const-string v4, "newMessageCount"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_newMessageCount:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3205
    const-string v4, "securityFlags"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_securityFlags:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3206
    const-string v4, "securitySyncKey"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_securitySyncKey:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3207
    const-string v4, "signature"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_signature:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3208
    const-string v4, "emailsize"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_emailsize:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3209
    const-string v4, "policyKey"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_policyKey:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3210
    const-string v4, "peakDays"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_peakDays:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3211
    const-string v4, "peakStartMinute"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_peakStartMinute:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3212
    const-string v4, "peakEndMinute"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_peakEndMinute:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3213
    const-string v4, "peakSchedule"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_peakSchedule:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3214
    const-string v4, "offPeakSchedule"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_offPeakSchedule:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3215
    const-string v4, "roamingSchedule"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_roamingSchedule:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3216
    const-string v4, "calendarSyncLookback"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_calendarSyncLookback:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3217
    const-string v4, "conflict"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_conflict:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3218
    const-string v4, "smimeOwnCertificateAlias"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_smimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    const-string v4, "smimeOptionsFlags"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_smimeOptionsFlags:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3220
    const-string v4, "smimeSignAlgorithm"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_smimeSignAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3221
    const-string v4, "smimeEncryptionAlgorithm"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_smimeEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3222
    const-string v4, "conversationMode"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_conversationMode:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3223
    const-string v4, "textPreview"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_textPreview:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3224
    const-string v4, "deviceInfoSent"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_deviceInfoSent:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3225
    const-string v4, "deviceBlockedType"

    iget-object v0, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_deviceBlockedType:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3227
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "account"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_121} :catch_126

    .line 3187
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_11

    .line 3230
    :catch_126
    move-exception v0

    .line 3232
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3234
    :cond_12a
    return-void
.end method

.method public static smlBREmailAccountPut(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlBackupRestoreItem;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3488
    .line 3490
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3491
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3492
    sget-object v5, Lcom/wssnps/database/smlBackupRestoreItem;->SML_EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    .line 3494
    const/4 v0, 0x1

    const-string v1, "smlBREmailAccountPut"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3496
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v2

    .line 3498
    :goto_19
    if-ge v1, v6, :cond_129

    .line 3500
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlBackupRestoreItem;

    .line 3501
    const-string v7, "_id"

    iget v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3502
    const-string v7, "displayName"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_displayName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3503
    const-string v7, "emailAddress"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_emailAddress:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3504
    const-string v7, "syncKey"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_syncKey:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3505
    const-string v7, "syncLookback"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_syncLookback:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3506
    const-string v7, "syncInterval"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_syncInterval:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3507
    const-string v7, "hostAuthKeyRecv"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_hostAuthKeyRecv:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3508
    const-string v7, "hostAuthKeySend"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_hostAuthKeySend:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3509
    const-string v7, "flags"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_flags:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3510
    const-string v7, "isDefault"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_isDefault:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3511
    const-string v7, "compatibilityUuid"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_compatibilityUuid:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3512
    const-string v7, "senderName"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_senderName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3513
    const-string v7, "ringtoneUri"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_ringtoneUri:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3514
    const-string v7, "protocolVersion"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_protocolVersion:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3515
    const-string v7, "newMessageCount"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_newMessageCount:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    const-string v7, "securityFlags"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_securityFlags:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3517
    const-string v7, "securitySyncKey"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_securitySyncKey:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3518
    const-string v7, "signature"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_signature:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3519
    const-string v7, "emailsize"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_emailsize:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3520
    const-string v7, "policyKey"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_policyKey:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3521
    const-string v7, "peakDays"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_peakDays:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3522
    const-string v7, "peakStartMinute"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_peakStartMinute:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3523
    const-string v7, "peakEndMinute"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_peakEndMinute:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3524
    const-string v7, "peakSchedule"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_peakSchedule:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3525
    const-string v7, "offPeakSchedule"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_offPeakSchedule:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3526
    const-string v7, "roamingSchedule"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_roamingSchedule:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3527
    const-string v7, "calendarSyncLookback"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_calendarSyncLookback:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3528
    const-string v7, "conflict"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_conflict:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3529
    const-string v7, "smimeOwnCertificateAlias"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_smimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3530
    const-string v7, "smimeOptionsFlags"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_smimeOptionsFlags:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3531
    const-string v7, "smimeSignAlgorithm"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_smimeSignAlgorithm:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3532
    const-string v7, "smimeEncryptionAlgorithm"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_smimeEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3533
    const-string v7, "conversationMode"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_conversationMode:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3534
    const-string v7, "textPreview"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_textPreview:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3535
    const-string v7, "deviceInfoSent"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_deviceInfoSent:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3536
    const-string v7, "deviceBlockedType"

    iget-object v0, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_deviceBlockedType:Ljava/lang/String;

    invoke-virtual {v4, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3538
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3498
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_19

    .line 3540
    :cond_129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static smlBREmailBackup()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 3031
    const-string v0, "smlBREmailBackup"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3032
    const-string v0, "/data/_SamsungBnR_/BR/Email"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMakeDir(Ljava/lang/String;)Z

    move-result v0

    .line 3033
    if-nez v0, :cond_13

    .line 3035
    const-string v0, "Make directory failed!!!"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3037
    :cond_13
    const-string v0, "/data/_SamsungBnR_/BR/Email/Email_DB.bk"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3039
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "create table if not exists account (_id integer primary key autoincrement, displayName text, emailAddress text, syncKey text, syncLookback text, syncInterval text, hostAuthKeyRecv text, hostAuthKeySend text, flags text, isDefault text, compatibilityUuid text, senderName text, ringtoneUri text, protocolVersion text, newMessageCount text, securityFlags text, securitySyncKey text, signature text, emailsize text, policyKey text, peakDays text, peakStartMinute text, peakEndMinute text, peakSchedule text, offPeakSchedule text, roamingSchedule text, calendarSyncLookback text, conflict text, smimeOwnCertificateAlias text, smimeOptionsFlags text, smimeSignAlgorithm text, smimeEncryptionAlgorithm text, conversationMode text, textPreview text, deviceInfoSent text, deviceBlockedType text);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3040
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "create table if not exists hostauth (_id integer primary key autoincrement, protocol text, address text, port text, flags text, login text, password text, domain text, accountKey text);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3042
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBREmailAccountGet()Ljava/lang/Object;

    .line 3043
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBREmailHostAuthGet()Ljava/lang/Object;

    .line 3044
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBREmailXMLBackup()V

    .line 3045
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 3046
    return-void
.end method

.method public static smlBREmailCompress()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3658
    const/4 v0, 0x1

    const-string v1, "smlBREmailCompress"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3659
    const-string v0, "/data/_SamsungBnR_/BR/Email"

    const-string v1, "/data/_SamsungBnR_/BR/Email.bk"

    invoke-static {v0, v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 3660
    return-void
.end method

.method public static smlBREmailDecompress()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3664
    const/4 v0, 0x1

    const-string v1, "smlBREmailDecompress"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3665
    const-string v0, "/data/_SamsungBnR_/BR/Email.bk"

    const-string v1, "/data/_SamsungBnR_/BR/Email"

    invoke-static {v0, v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileUnZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 3666
    return-void
.end method

.method public static smlBREmailDelete()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 3704
    const-string v0, "smlBREmailDelete"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3706
    const-string v0, "/data/_SamsungBnR_/BR/Email"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRemoveDir(Ljava/lang/String;)Z

    move-result v0

    .line 3707
    if-nez v0, :cond_13

    .line 3709
    const-string v0, "Remove directory failed!!!"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3712
    :cond_13
    const-string v0, "/data/_SamsungBnR_/BR/Email.bk"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileDelete(Ljava/lang/String;)Z

    move-result v0

    .line 3713
    if-nez v0, :cond_20

    .line 3715
    const-string v0, "Remove file failed!!!"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3717
    :cond_20
    return-void
.end method

.method public static smlBREmailHostAuthDBDelete()Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 3687
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3688
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->SML_EMAIL_HOSTAUTH_URI:Landroid/net/Uri;

    .line 3690
    const/4 v3, 0x1

    const-string v4, "smlBREmailHostAuthDelete"

    invoke-static {v3, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 3691
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 3693
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3695
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3697
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static smlBREmailHostAuthGet()Ljava/lang/Object;
    .registers 15

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v14, -0x1

    .line 3242
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3244
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3245
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->SML_EMAIL_HOSTAUTH_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 3247
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3249
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 3250
    const-string v0, "protocol"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 3251
    const-string v0, "address"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3252
    const-string v0, "port"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 3253
    const-string v0, "flags"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 3254
    const-string v0, "login"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3255
    const-string v0, "password"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 3256
    const-string v0, "domain"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 3257
    const-string v0, "accountKey"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 3261
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5b

    .line 3263
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3264
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3289
    :goto_5a
    return-object v0

    .line 3267
    :cond_5b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_bc

    move v0, v6

    .line 3271
    :cond_62
    new-instance v12, Lcom/wssnps/database/smlBackupRestoreItem;

    invoke-direct {v12}, Lcom/wssnps/database/smlBackupRestoreItem;-><init>()V

    .line 3272
    if-eq v2, v14, :cond_6f

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v12, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_id:I

    .line 3273
    :cond_6f
    if-eq v3, v14, :cond_77

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_protocol:Ljava/lang/String;

    .line 3274
    :cond_77
    if-eq v4, v14, :cond_7f

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_address:Ljava/lang/String;

    .line 3275
    :cond_7f
    if-eq v5, v14, :cond_87

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_port:Ljava/lang/String;

    .line 3276
    :cond_87
    if-eq v7, v14, :cond_8f

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_flags:Ljava/lang/String;

    .line 3277
    :cond_8f
    if-eq v8, v14, :cond_97

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_login:Ljava/lang/String;

    .line 3278
    :cond_97
    if-eq v9, v14, :cond_9f

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_password:Ljava/lang/String;

    .line 3279
    :cond_9f
    if-eq v10, v14, :cond_a7

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_domain:Ljava/lang/String;

    .line 3280
    :cond_a7
    if-eq v11, v14, :cond_af

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_accountKey:Ljava/lang/String;

    .line 3281
    :cond_af
    sget-object v13, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3283
    add-int/lit8 v0, v0, 0x1

    .line 3284
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_62

    .line 3286
    :cond_bc
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3287
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBREmailHostAuthInsertRow(Ljava/util/ArrayList;)V

    .line 3289
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5a
.end method

.method public static smlBREmailHostAuthInsertRow(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlBackupRestoreItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3294
    .line 3295
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3298
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3299
    const/4 v0, 0x1

    const-string v1, "smlBREmailHostAuthInsertRow "

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3303
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_6c

    .line 3305
    :try_start_13
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlBackupRestoreItem;

    .line 3306
    const-string v4, "_id"

    iget v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3307
    const-string v4, "protocol"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_protocol:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3308
    const-string v4, "address"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_address:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3309
    const-string v4, "port"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_port:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3310
    const-string v4, "flags"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_flags:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3311
    const-string v4, "login"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_login:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3312
    const-string v4, "password"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_password:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3313
    const-string v4, "domain"

    iget-object v5, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_domain:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3314
    const-string v4, "accountKey"

    iget-object v0, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_accountKey:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3315
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "hostauth"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_64} :catch_68

    .line 3303
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 3318
    :catch_68
    move-exception v0

    .line 3320
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3322
    :cond_6c
    return-void
.end method

.method public static smlBREmailHostAuthPut(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlBackupRestoreItem;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3615
    .line 3617
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3618
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3619
    sget-object v5, Lcom/wssnps/database/smlBackupRestoreItem;->SML_EMAIL_HOSTAUTH_URI:Landroid/net/Uri;

    .line 3621
    const/4 v0, 0x1

    const-string v1, "smlBREmailHostAuthPut"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3623
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v2

    .line 3625
    :goto_19
    if-ge v1, v6, :cond_6b

    .line 3627
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlBackupRestoreItem;

    .line 3628
    const-string v7, "_id"

    iget v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3629
    const-string v7, "protocol"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_protocol:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3630
    const-string v7, "address"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_address:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3631
    const-string v7, "port"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_port:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3632
    const-string v7, "flags"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_flags:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3633
    const-string v7, "login"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_login:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3634
    const-string v7, "password"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_password:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3635
    const-string v7, "domain"

    iget-object v8, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_domain:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3636
    const-string v7, "accountKey"

    iget-object v0, v0, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_accountKey:Ljava/lang/String;

    invoke-virtual {v4, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3638
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3625
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    .line 3640
    :cond_6b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static smlBREmailRestore()V
    .registers 2

    .prologue
    .line 3050
    const/4 v0, 0x1

    const-string v1, "smlBREmailRestore"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3053
    :try_start_6
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBREmailDecompress()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_13

    .line 3059
    :goto_9
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRestoreEmailAccountSql()Ljava/lang/Object;

    .line 3060
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRestoreEmailHostAuthSql()Ljava/lang/Object;

    .line 3061
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBREmailXMLRestore()V

    .line 3062
    return-void

    .line 3055
    :catch_13
    move-exception v0

    .line 3057
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public static smlBREmailXMLBackup()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 3326
    const/4 v0, 0x1

    const-string v1, "smlBREmailXMLBackup"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3327
    sput-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->EMAIL_BACKUP_FINISH:Z

    .line 3328
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 3329
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.service.BROADCAST_DETECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3330
    const-string v1, "backup_Or_Restore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3331
    const-string v1, "backup_Path"

    const-string v2, "/data/_SamsungBnR_/BR/Email/"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3332
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3333
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3334
    return-void
.end method

.method public static smlBREmailXMLRestore()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 3645
    const-string v0, "smlBREmailXMLRestore"

    invoke-static {v2, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3646
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wssnps/database/smlBackupRestoreItem;->EMAIL_RESTORE_FINISH:Z

    .line 3647
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 3648
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.service.BROADCAST_DETECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3649
    const-string v1, "backup_Or_Restore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3650
    const-string v1, "backup_Path"

    const-string v2, "/data/_SamsungBnR_/BR/Email/"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3651
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3652
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3654
    return-void
.end method

.method public static smlBRFileDelete(Ljava/lang/String;)Z
    .registers 6
    .parameter "source"

    .prologue
    .line 2099
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2100
    .local v0, f:Ljava/io/File;
    const/4 v1, 0x0

    .line 2102
    .local v1, result:Z
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smlBRFileDelete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2104
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2105
    const/4 v1, 0x1

    .line 2108
    :cond_24
    return v1
.end method

.method public static smlBRFileUnZip(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "zipFile"
    .parameter "targetDir"

    .prologue
    .line 2278
    const/4 v3, 0x0

    .line 2279
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 2280
    .local v7, zis:Ljava/util/zip/ZipInputStream;
    const/4 v6, 0x0

    .line 2283
    .local v6, zentry:Ljava/util/zip/ZipEntry;
    :try_start_3
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_82
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_aa

    .line 2284
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_8
    new-instance v8, Ljava/util/zip/ZipInputStream;

    invoke-direct {v8, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_a7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_ac

    .line 2286
    .end local v7           #zis:Ljava/util/zip/ZipInputStream;
    .local v8, zis:Ljava/util/zip/ZipInputStream;
    :try_start_d
    invoke-static {p1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMakeDir(Ljava/lang/String;)Z

    .line 2288
    :goto_10
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-eqz v6, :cond_70

    .line 2290
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2291
    .local v2, fileNameToUnzip:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    .local v5, targetFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_57

    .line 2294
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMakeDir(Ljava/lang/String;)Z

    .line 2302
    :goto_2c
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2303
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Ljava/io/File;->setWritable(ZZ)Z

    .line 2304
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_62
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_3b} :catch_3c

    goto :goto_10

    .line 2306
    .end local v2           #fileNameToUnzip:Ljava/lang/String;
    .end local v5           #targetFile:Ljava/io/File;
    :catch_3c
    move-exception v0

    move-object v7, v8

    .end local v8           #zis:Ljava/util/zip/ZipInputStream;
    .restart local v7       #zis:Ljava/util/zip/ZipInputStream;
    move-object v3, v4

    .line 2307
    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_3f
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_82

    .line 2309
    if-eqz v7, :cond_47

    .line 2312
    :try_start_44
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_82
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_7d

    .line 2317
    :cond_47
    :goto_47
    if-eqz v3, :cond_4c

    .line 2320
    :try_start_49
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_82
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_84

    .line 2326
    :cond_4c
    :goto_4c
    if-eqz v7, :cond_51

    .line 2329
    :try_start_4e
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_93

    .line 2334
    :cond_51
    :goto_51
    if-eqz v3, :cond_56

    .line 2337
    :try_start_53
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_98

    .line 2343
    .end local v0           #e:Ljava/io/IOException;
    :cond_56
    :goto_56
    return-void

    .line 2298
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #zis:Ljava/util/zip/ZipInputStream;
    .restart local v2       #fileNameToUnzip:Ljava/lang/String;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v5       #targetFile:Ljava/io/File;
    .restart local v8       #zis:Ljava/util/zip/ZipInputStream;
    :cond_57
    :try_start_57
    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMakeDir(Ljava/lang/String;)Z

    .line 2299
    invoke-static {v8, v5}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRUnZipEntry(Ljava/util/zip/ZipInputStream;Ljava/io/File;)Ljava/io/File;
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_62
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_61} :catch_3c

    goto :goto_2c

    .line 2326
    .end local v2           #fileNameToUnzip:Ljava/lang/String;
    .end local v5           #targetFile:Ljava/io/File;
    :catchall_62
    move-exception v9

    move-object v7, v8

    .end local v8           #zis:Ljava/util/zip/ZipInputStream;
    .restart local v7       #zis:Ljava/util/zip/ZipInputStream;
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_65
    if-eqz v7, :cond_6a

    .line 2329
    :try_start_67
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_89

    .line 2334
    :cond_6a
    :goto_6a
    if-eqz v3, :cond_6f

    .line 2337
    :try_start_6c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_8e

    .line 2326
    :cond_6f
    :goto_6f
    throw v9

    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #zis:Ljava/util/zip/ZipInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v8       #zis:Ljava/util/zip/ZipInputStream;
    :cond_70
    if-eqz v8, :cond_75

    .line 2329
    :try_start_72
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_9d

    .line 2334
    :cond_75
    :goto_75
    if-eqz v4, :cond_7a

    .line 2337
    :try_start_77
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_a2

    :cond_7a
    :goto_7a
    move-object v7, v8

    .end local v8           #zis:Ljava/util/zip/ZipInputStream;
    .restart local v7       #zis:Ljava/util/zip/ZipInputStream;
    move-object v3, v4

    .line 2342
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_56

    .line 2313
    .restart local v0       #e:Ljava/io/IOException;
    :catch_7d
    move-exception v1

    .line 2314
    .local v1, e1:Ljava/io/IOException;
    :try_start_7e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    .line 2326
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e1:Ljava/io/IOException;
    :catchall_82
    move-exception v9

    goto :goto_65

    .line 2321
    .restart local v0       #e:Ljava/io/IOException;
    :catch_84
    move-exception v1

    .line 2322
    .restart local v1       #e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_82

    goto :goto_4c

    .line 2330
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e1:Ljava/io/IOException;
    :catch_89
    move-exception v1

    .line 2331
    .restart local v1       #e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6a

    .line 2338
    .end local v1           #e1:Ljava/io/IOException;
    :catch_8e
    move-exception v1

    .line 2339
    .restart local v1       #e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6f

    .line 2330
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v0       #e:Ljava/io/IOException;
    :catch_93
    move-exception v1

    .line 2331
    .restart local v1       #e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    .line 2338
    .end local v1           #e1:Ljava/io/IOException;
    :catch_98
    move-exception v1

    .line 2339
    .restart local v1       #e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    .line 2330
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e1:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #zis:Ljava/util/zip/ZipInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v8       #zis:Ljava/util/zip/ZipInputStream;
    :catch_9d
    move-exception v1

    .line 2331
    .restart local v1       #e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_75

    .line 2338
    .end local v1           #e1:Ljava/io/IOException;
    :catch_a2
    move-exception v1

    .line 2339
    .restart local v1       #e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7a

    .line 2326
    .end local v1           #e1:Ljava/io/IOException;
    .end local v8           #zis:Ljava/util/zip/ZipInputStream;
    .restart local v7       #zis:Ljava/util/zip/ZipInputStream;
    :catchall_a7
    move-exception v9

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_65

    .line 2306
    :catch_aa
    move-exception v0

    goto :goto_3f

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_ac
    move-exception v0

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3f
.end method

.method public static smlBRFileZip(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "sourcePath"
    .parameter "output"

    .prologue
    const/4 v11, 0x1

    .line 2118
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2119
    .local v7, sourceFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v10

    if-nez v10, :cond_18

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_18

    .line 2121
    const-string v10, "smlBRFileZip() - sourcePath is not file or not directory"

    invoke-static {v11, v10}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2194
    :cond_17
    :goto_17
    return-void

    .line 2125
    :cond_18
    const/4 v5, 0x0

    .line 2126
    .local v5, fos:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 2127
    .local v0, bos:Ljava/io/BufferedOutputStream;
    const/4 v8, 0x0

    .line 2130
    .local v8, zos:Ljava/util/zip/ZipOutputStream;
    :try_start_1b
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_89
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_5c

    .line 2131
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_20
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_cc
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_d8

    .line 2132
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .local v1, bos:Ljava/io/BufferedOutputStream;
    :try_start_25
    new-instance v9, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v9, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_cf
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_db

    .line 2133
    .end local v8           #zos:Ljava/util/zip/ZipOutputStream;
    .local v9, zos:Ljava/util/zip/ZipOutputStream;
    const/16 v10, 0x8

    :try_start_2c
    invoke-virtual {v9, v10}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 2134
    invoke-static {v7, p0, v9}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRZipEntry(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 2135
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 2137
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2138
    .local v2, destFile:Ljava/io/File;
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2139
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Ljava/io/File;->setWritable(ZZ)Z

    .line 2140
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_49
    .catchall {:try_start_2c .. :try_end_49} :catchall_d3
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_49} :catch_e0

    .line 2169
    if-eqz v9, :cond_4e

    .line 2172
    :try_start_4b
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_bd

    .line 2177
    :cond_4e
    :goto_4e
    if-eqz v1, :cond_53

    .line 2180
    :try_start_50
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_c2

    .line 2185
    :cond_53
    :goto_53
    if-eqz v6, :cond_58

    .line 2188
    :try_start_55
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_c7

    :cond_58
    :goto_58
    move-object v8, v9

    .end local v9           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v8       #zos:Ljava/util/zip/ZipOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 2193
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_17

    .line 2141
    .end local v2           #destFile:Ljava/io/File;
    :catch_5c
    move-exception v3

    .line 2142
    .local v3, e:Ljava/io/IOException;
    :goto_5d
    :try_start_5d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_89

    .line 2144
    if-eqz v8, :cond_65

    .line 2147
    :try_start_62
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_89
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_84

    .line 2152
    :cond_65
    :goto_65
    if-eqz v0, :cond_6a

    .line 2155
    :try_start_67
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_89
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_9a

    .line 2160
    :cond_6a
    :goto_6a
    if-eqz v5, :cond_6f

    .line 2163
    :try_start_6c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_89
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_9f

    .line 2169
    :cond_6f
    :goto_6f
    if-eqz v8, :cond_74

    .line 2172
    :try_start_71
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_b3

    .line 2177
    :cond_74
    :goto_74
    if-eqz v0, :cond_79

    .line 2180
    :try_start_76
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_b8

    .line 2185
    :cond_79
    :goto_79
    if-eqz v5, :cond_17

    .line 2188
    :try_start_7b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_17

    .line 2189
    :catch_7f
    move-exception v4

    .line 2190
    .local v4, e1:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    .line 2148
    .end local v4           #e1:Ljava/io/IOException;
    :catch_84
    move-exception v4

    .line 2149
    .restart local v4       #e1:Ljava/io/IOException;
    :try_start_85
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_65

    .line 2169
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #e1:Ljava/io/IOException;
    :catchall_89
    move-exception v10

    :goto_8a
    if-eqz v8, :cond_8f

    .line 2172
    :try_start_8c
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_a4

    .line 2177
    :cond_8f
    :goto_8f
    if-eqz v0, :cond_94

    .line 2180
    :try_start_91
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_a9

    .line 2185
    :cond_94
    :goto_94
    if-eqz v5, :cond_99

    .line 2188
    :try_start_96
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_ae

    .line 2169
    :cond_99
    :goto_99
    throw v10

    .line 2156
    .restart local v3       #e:Ljava/io/IOException;
    :catch_9a
    move-exception v4

    .line 2157
    .restart local v4       #e1:Ljava/io/IOException;
    :try_start_9b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6a

    .line 2164
    .end local v4           #e1:Ljava/io/IOException;
    :catch_9f
    move-exception v4

    .line 2165
    .restart local v4       #e1:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a3
    .catchall {:try_start_9b .. :try_end_a3} :catchall_89

    goto :goto_6f

    .line 2173
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #e1:Ljava/io/IOException;
    :catch_a4
    move-exception v4

    .line 2174
    .restart local v4       #e1:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8f

    .line 2181
    .end local v4           #e1:Ljava/io/IOException;
    :catch_a9
    move-exception v4

    .line 2182
    .restart local v4       #e1:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_94

    .line 2189
    .end local v4           #e1:Ljava/io/IOException;
    :catch_ae
    move-exception v4

    .line 2190
    .restart local v4       #e1:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_99

    .line 2173
    .end local v4           #e1:Ljava/io/IOException;
    .restart local v3       #e:Ljava/io/IOException;
    :catch_b3
    move-exception v4

    .line 2174
    .restart local v4       #e1:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_74

    .line 2181
    .end local v4           #e1:Ljava/io/IOException;
    :catch_b8
    move-exception v4

    .line 2182
    .restart local v4       #e1:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_79

    .line 2173
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #e1:Ljava/io/IOException;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v8           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #destFile:Ljava/io/File;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #zos:Ljava/util/zip/ZipOutputStream;
    :catch_bd
    move-exception v4

    .line 2174
    .restart local v4       #e1:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 2181
    .end local v4           #e1:Ljava/io/IOException;
    :catch_c2
    move-exception v4

    .line 2182
    .restart local v4       #e1:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_53

    .line 2189
    .end local v4           #e1:Ljava/io/IOException;
    :catch_c7
    move-exception v4

    .line 2190
    .restart local v4       #e1:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    .line 2169
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v2           #destFile:Ljava/io/File;
    .end local v4           #e1:Ljava/io/IOException;
    .end local v9           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    .restart local v8       #zos:Ljava/util/zip/ZipOutputStream;
    :catchall_cc
    move-exception v10

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_8a

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_cf
    move-exception v10

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_8a

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v8           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #zos:Ljava/util/zip/ZipOutputStream;
    :catchall_d3
    move-exception v10

    move-object v8, v9

    .end local v9           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v8       #zos:Ljava/util/zip/ZipOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_8a

    .line 2141
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_d8
    move-exception v3

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_5d

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_db
    move-exception v3

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_5d

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v8           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #zos:Ljava/util/zip/ZipOutputStream;
    :catch_e0
    move-exception v3

    move-object v8, v9

    .end local v9           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v8       #zos:Ljava/util/zip/ZipOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_5d
.end method

.method public static smlBRMakeDir(Ljava/lang/String;)Z
    .registers 12
    .parameter "dirPath"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1728
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1729
    .local v1, dir:Ljava/io/File;
    const/4 v0, 0x0

    .line 1730
    .local v0, chk:Z
    const/4 v3, 0x0

    .line 1731
    .local v3, result:Z
    const/4 v4, 0x0

    .line 1732
    .local v4, szTmp:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1733
    .local v5, szTmpPath:Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 1737
    .local v6, tmpDir:Ljava/io/File;
    if-nez p0, :cond_18

    .line 1739
    const-string v9, "Invalid directory !!!"

    invoke-static {v8, v9}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1775
    :cond_17
    :goto_17
    return v7

    .line 1743
    :cond_18
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_20

    move v7, v8

    .line 1745
    goto :goto_17

    .line 1749
    :cond_20
    const-string v9, "/"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1750
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1751
    const/4 v2, 0x1

    .local v2, idx:I
    :goto_3f
    array-length v9, v4

    add-int/lit8 v9, v9, -0x1

    if-ge v2, v9, :cond_5f

    .line 1752
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1751
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 1754
    :cond_5f
    new-instance v6, Ljava/io/File;

    .end local v6           #tmpDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1755
    .restart local v6       #tmpDir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_78

    .line 1757
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMakeDir(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1761
    :cond_78
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 1762
    if-nez v0, :cond_86

    .line 1764
    const-string v7, "Make directory failed !!!"

    invoke-static {v8, v7}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1765
    const/4 v3, 0x0

    :goto_84
    move v7, v3

    .line 1775
    goto :goto_17

    .line 1769
    :cond_86
    invoke-virtual {v1, v8, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1770
    invoke-virtual {v1, v8, v7}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1771
    invoke-virtual {v1, v8, v7}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1772
    const/4 v3, 0x1

    goto :goto_84
.end method

.method public static smlBRMemoDelete()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2838
    sget-object v4, Lcom/wssnps/database/smlBackupRestoreItem;->SML_MEMO_URI:Landroid/net/Uri;

    .line 2840
    const-string v2, "smlBRMemoDelete"

    invoke-static {v0, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2842
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v2, :cond_1f

    .line 2844
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2847
    :goto_14
    if-nez v2, :cond_19

    .line 2856
    :goto_16
    if-ltz v1, :cond_1d

    .line 2859
    :goto_18
    return v0

    .line 2853
    :cond_19
    invoke-virtual {v2, v4, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_16

    :cond_1d
    move v0, v1

    .line 2859
    goto :goto_18

    :cond_1f
    move-object v2, v3

    goto :goto_14
.end method

.method public static smlBRMemorycheck(Ljava/lang/String;)I
    .registers 14
    .parameter "parm"

    .prologue
    .line 507
    const/4 v8, 0x0

    .line 508
    .local v8, ret:I
    const/4 v6, 0x0

    .line 509
    .local v6, i:I
    const-wide/16 v1, 0x0

    .line 510
    .local v1, TatalSpace:J
    const-wide/16 v3, 0x0

    .line 511
    .local v3, UsableSpace:J
    const-string v0, "/data/_SamsungBnR_/BR"

    .line 513
    .local v0, PATH:Ljava/lang/String;
    invoke-static {p0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRgetdatasize(Ljava/lang/String;)V

    .line 516
    :cond_b
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->getNumLookups()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 520
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 521
    .local v5, fs:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_48

    .line 523
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 524
    .local v7, list:[Ljava/lang/String;
    const/4 v6, 0x0

    :goto_22
    array-length v9, v7

    if-ge v6, v9, :cond_48

    .line 525
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v7, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 524
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 528
    .end local v7           #list:[Ljava/lang/String;
    :cond_48
    invoke-virtual {v5}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    .line 529
    invoke-virtual {v5}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v3

    .line 535
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->get_data_size()J

    move-result-wide v9

    const-wide/16 v11, 0x2

    mul-long/2addr v9, v11

    cmp-long v9, v3, v9

    if-gez v9, :cond_5d

    .line 536
    const/4 v8, 0x1

    .line 540
    :goto_5c
    return v8

    .line 538
    :cond_5d
    const/4 v8, 0x0

    goto :goto_5c
.end method

.method public static smlBRMessageBackup()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 2871
    const-string v0, "smlBRMessageBackup"

    invoke-static {v7, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2873
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v0, :cond_16

    .line 2875
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2882
    :goto_11
    if-nez v1, :cond_1d

    .line 2884
    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_BACKUP_FINISH:Z

    .line 2922
    :goto_15
    return-void

    .line 2879
    :cond_16
    const-string v0, "smlBRMessageBackup Fail!!!"

    invoke-static {v7, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move-object v1, v3

    goto :goto_11

    .line 2888
    :cond_1d
    const-string v0, "/data/_SamsungBnR_/BR/Message"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMakeDir(Ljava/lang/String;)Z

    move-result v0

    .line 2889
    if-nez v0, :cond_58

    .line 2891
    const-string v0, "Make directory failed!!!"

    invoke-static {v7, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2898
    :goto_2a
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getKorMessageType()I

    move-result v0

    if-ne v0, v7, :cond_5e

    .line 2900
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 2901
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.mms.action.MMS_BNR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2902
    const-string v1, "backup_Or_Restore"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2903
    const-string v1, "backup_Path"

    const-string v2, "/data/_SamsungBnR_/BR/Message/"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2904
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2905
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2906
    const-string v0, "smlBRMessageBackup - sendBroadcast"

    invoke-static {v7, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_15

    .line 2895
    :cond_58
    const-string v0, "Make directory success!!!"

    invoke-static {v7, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_2a

    .line 2910
    :cond_5e
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "msgbackup"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "target_directory_path"

    const-string v4, "/data/_SamsungBnR_/BR/Message/"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2911
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 2914
    :try_start_7e
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMessageCompress()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_84

    .line 2920
    :goto_81
    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_BACKUP_FINISH:Z

    goto :goto_15

    .line 2916
    :catch_84
    move-exception v0

    .line 2918
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_81
.end method

.method public static smlBRMessageCompress()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2975
    const/4 v0, 0x1

    const-string v1, "smlBRMessageCompress"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2977
    const-string v0, "/data/_SamsungBnR_/BR/Message"

    const-string v1, "/data/_SamsungBnR_/BR/Message.bk"

    invoke-static {v0, v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 2978
    return-void
.end method

.method public static smlBRMessageDecompress()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2982
    const/4 v0, 0x1

    const-string v1, "smlBRMessageDecompress"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2984
    const-string v0, "/data/_SamsungBnR_/BR/Message.bk"

    const-string v1, "/data/_SamsungBnR_/BR/Message"

    invoke-static {v0, v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileUnZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 2985
    return-void
.end method

.method public static smlBRMessageDelete()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 2991
    const-string v0, "smlBRMessageDelete"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2993
    const-string v0, "/data/_SamsungBnR_/BR/Message"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRemoveDir(Ljava/lang/String;)Z

    move-result v0

    .line 2994
    if-nez v0, :cond_13

    .line 2996
    const-string v0, "Remove directory failed!!!"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2999
    :cond_13
    const-string v0, "/data/_SamsungBnR_/BR/Message.bk"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileDelete(Ljava/lang/String;)Z

    move-result v0

    .line 3000
    if-nez v0, :cond_20

    .line 3002
    const-string v0, "Remove file failed!!!"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3004
    :cond_20
    return-void
.end method

.method public static smlBRMessageRestore()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    .line 2926
    const/4 v0, 0x0

    .line 2928
    const-string v1, "smlBRMessageRestore"

    invoke-static {v4, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2930
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v1, :cond_16

    .line 2932
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2939
    :goto_11
    if-nez v0, :cond_1c

    .line 2941
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_RESTORE_FINISH:Z

    .line 2971
    :goto_15
    return-void

    .line 2936
    :cond_16
    const-string v1, "smlBRMessageRestore Fail!!!"

    invoke-static {v4, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_11

    .line 2947
    :cond_1c
    :try_start_1c
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMessageDecompress()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_51

    .line 2954
    :goto_1f
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getKorMessageType()I

    move-result v1

    if-ne v1, v4, :cond_56

    .line 2956
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 2957
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.mms.action.MMS_BNR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2958
    const-string v1, "backup_Or_Restore"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2959
    const-string v1, "backup_Path"

    const-string v2, "/data/_SamsungBnR_/BR/Message/"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2960
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2961
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2962
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2963
    const-string v0, "smlBRMessageRestore - sendBroadcast"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_15

    .line 2949
    :catch_51
    move-exception v1

    .line 2951
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f

    .line 2967
    :cond_56
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "msgrestore"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "source_directory_path"

    const-string v3, "/data/_SamsungBnR_/BR/Message/"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2968
    sget-object v2, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v2, v0, v1, v3}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2969
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_RESTORE_FINISH:Z

    goto :goto_15
.end method

.method public static smlBRMiniDiaryBackup()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4843
    const-string v0, "smlBRMiniDiaryBackup"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4844
    const-string v0, "/data/_SamsungBnR_/BR/MiniDiary"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMakeDir(Ljava/lang/String;)Z

    move-result v0

    .line 4845
    if-nez v0, :cond_14

    .line 4847
    const-string v0, "Make directory failed!!!"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4849
    :cond_14
    sput-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->DIARY_BACKUP_FINISH:Z

    .line 4850
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 4851
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.minidiary.service.BROADCAST_DETECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4852
    const-string v1, "backup_Or_Restore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4853
    const-string v1, "backup_Path"

    const-string v2, "/data/_SamsungBnR_/BR/MiniDiary/"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4854
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4855
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4856
    return-void
.end method

.method public static smlBRMiniDiaryCompress()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4900
    const/4 v0, 0x1

    const-string v1, "smlBRMiniDiaryCompress"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4902
    const-string v0, "/data/_SamsungBnR_/BR/MiniDiary"

    const-string v1, "/data/_SamsungBnR_/BR/MiniDiary.bk"

    invoke-static {v0, v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 4903
    return-void
.end method

.method public static smlBRMiniDiaryDecompress()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4907
    const/4 v0, 0x1

    const-string v1, "smlBRMiniDiaryDecompress"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4909
    const-string v0, "/data/_SamsungBnR_/BR/MiniDiary.bk"

    const-string v1, "/data/_SamsungBnR_/BR/MiniDiary"

    invoke-static {v0, v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileUnZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 4910
    return-void
.end method

.method public static smlBRMiniDiaryDelete()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 4883
    const-string v0, "smlBRMiniDiaryDelete"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4885
    const-string v0, "/data/_SamsungBnR_/BR/MiniDiary"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRemoveDir(Ljava/lang/String;)Z

    move-result v0

    .line 4886
    if-nez v0, :cond_13

    .line 4888
    const-string v0, "Remove directory failed!!!"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4891
    :cond_13
    const-string v0, "/data/_SamsungBnR_/BR/MiniDiary.bk"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileDelete(Ljava/lang/String;)Z

    move-result v0

    .line 4892
    if-nez v0, :cond_20

    .line 4894
    const-string v0, "Remove file failed!!!"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4896
    :cond_20
    return-void
.end method

.method public static smlBRMiniDiaryRestore()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 4860
    const-string v0, "smlBRMiniDiaryRestore"

    invoke-static {v2, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4863
    :try_start_6
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMiniDiaryDecompress()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_2e

    .line 4870
    :goto_9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wssnps/database/smlBackupRestoreItem;->DIARY_RESTORE_FINISH:Z

    .line 4871
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 4872
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.minidiary.service.BROADCAST_DETECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4873
    const-string v1, "backup_Or_Restore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4874
    const-string v1, "backup_Path"

    const-string v2, "/data/_SamsungBnR_/BR/MiniDiary/"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4875
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4876
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4877
    return-void

    .line 4865
    :catch_2e
    move-exception v0

    .line 4867
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public static smlBRNetworkBackup()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 3724
    const-string v0, "smlBRNetworkBackup"

    invoke-static {v2, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3725
    const-string v0, "/data/_SamsungBnR_/BR/Network"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMakeDir(Ljava/lang/String;)Z

    move-result v0

    .line 3726
    if-nez v0, :cond_13

    .line 3728
    const-string v0, "Make directory failed!!!"

    invoke-static {v2, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3730
    :cond_13
    const-string v0, "/data/_SamsungBnR_/BR/Network/Network_DB.bk"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3731
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "create table if not exists bookmarks (_id integer primary key autoincrement, title text, url text, folder integer, parent integer, position integer, insert_after integer, deleted integer, account_name text, account_type text, sourceid text, version integer, created integer, modified integer, dirty integer, sync1 text, sync2 text, sync3 text, sync4 text, sync5 text, parent_title text );"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3735
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRBrowserBookmarkGet()Ljava/lang/Object;

    .line 3737
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getFmRadioType()I

    move-result v0

    if-ne v0, v2, :cond_35

    .line 3738
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRadioBackup()V

    .line 3750
    :goto_2f
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 3752
    return-void

    .line 3743
    :cond_35
    :try_start_35
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRNetworkCompress()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_2f

    .line 3745
    :catch_39
    move-exception v0

    .line 3747
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2f
.end method

.method public static smlBRNetworkCompress()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4369
    const/4 v0, 0x1

    const-string v1, "smlBRNetworkCompress"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4371
    const-string v0, "/data/_SamsungBnR_/BR/Network"

    const-string v1, "/data/_SamsungBnR_/BR/Network.bk"

    invoke-static {v0, v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 4372
    return-void
.end method

.method public static smlBRNetworkDecompress()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4376
    const/4 v0, 0x1

    const-string v1, "smlBRNetworkDecompress"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4378
    const-string v0, "/data/_SamsungBnR_/BR/Network.bk"

    const-string v1, "/data/_SamsungBnR_/BR/Network"

    invoke-static {v0, v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileUnZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 4379
    return-void
.end method

.method public static smlBRNetworkDelete()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 4399
    const-string v0, "smlBRNetworkDelete"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4401
    const-string v0, "/data/_SamsungBnR_/BR/Network"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRemoveDir(Ljava/lang/String;)Z

    move-result v0

    .line 4402
    if-nez v0, :cond_13

    .line 4404
    const-string v0, "Remove directory failed!!!"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4407
    :cond_13
    const-string v0, "/data/_SamsungBnR_/BR/Network.bk"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileDelete(Ljava/lang/String;)Z

    move-result v0

    .line 4408
    if-nez v0, :cond_20

    .line 4410
    const-string v0, "Remove file failed!!!"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4412
    :cond_20
    return-void
.end method

.method public static smlBRNetworkRestore()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    .line 3756
    const-string v0, "smlBRNetworkRestore"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3760
    :try_start_6
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRNetworkDecompress()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_16

    .line 3767
    :goto_9
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRestoreBookmarkSql()Ljava/lang/Object;

    .line 3769
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getFmRadioType()I

    move-result v0

    if-ne v0, v4, :cond_15

    .line 3770
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRadioRestore()V

    .line 3771
    :cond_15
    return-void

    .line 3762
    :catch_16
    move-exception v0

    .line 3764
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smlBRNetworkDecompress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_9
.end method

.method public static smlBRPenMemoBackup()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 4917
    const-string v0, "smlBRPenMemoBackup"

    invoke-static {v6, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4918
    const-string v0, "/data/_SamsungBnR_/BR/PenMemo"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMakeDir(Ljava/lang/String;)Z

    move-result v0

    .line 4919
    if-nez v0, :cond_14

    .line 4921
    const-string v0, "Make directory failed!!!"

    invoke-static {v6, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4924
    :cond_14
    const-string v1, "content://com.diotek.penmemo.util.PenMemoProvider/DB_Backup"

    .line 4925
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "/data/_SamsungBnR_/BR/PenMemo"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 4928
    :try_start_27
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRPenMemoCompress()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2d

    .line 4934
    :goto_2a
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->PENMEMO_BACKUP_FINISH:Z

    .line 4936
    return-void

    .line 4930
    :catch_2d
    move-exception v0

    .line 4932
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public static smlBRPenMemoCompress()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4976
    const/4 v0, 0x1

    const-string v1, "smlBRPenMemoCompress"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4978
    const-string v0, "/data/_SamsungBnR_/BR/PenMemo"

    const-string v1, "/data/_SamsungBnR_/BR/PenMemo.bk"

    invoke-static {v0, v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 4979
    return-void
.end method

.method public static smlBRPenMemoDecompress()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4983
    const/4 v0, 0x1

    const-string v1, "smlBRPenMemoDecompress"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4985
    const-string v0, "/data/_SamsungBnR_/BR/PenMemo.bk"

    const-string v1, "/data/_SamsungBnR_/BR/PenMemo"

    invoke-static {v0, v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileUnZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 4986
    return-void
.end method

.method public static smlBRPenMemoDelete()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 4959
    const-string v0, "smlBRPenMemoMDelete"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4961
    const-string v0, "/data/_SamsungBnR_/BR/PenMemo"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRemoveDir(Ljava/lang/String;)Z

    move-result v0

    .line 4962
    if-nez v0, :cond_13

    .line 4964
    const-string v0, "Remove directory failed!!!"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4967
    :cond_13
    const-string v0, "/data/_SamsungBnR_/BR/PenMemo.bk"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileDelete(Ljava/lang/String;)Z

    move-result v0

    .line 4968
    if-nez v0, :cond_20

    .line 4970
    const-string v0, "Remove file failed!!!"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4972
    :cond_20
    return-void
.end method

.method public static smlBRPenMemoRestore()V
    .registers 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 4940
    const-string v0, "smlBRPenMemoRestore"

    invoke-static {v6, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4943
    :try_start_7
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRPenMemoDecompress()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_20

    .line 4950
    :goto_a
    const-string v1, "content://com.diotek.penmemo.util.PenMemoProvider/DB_Restore"

    .line 4951
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "/data/_SamsungBnR_/BR/PenMemo"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 4952
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->PENMEMO_RESTORE_FINISH:Z

    .line 4953
    return-void

    .line 4945
    :catch_20
    move-exception v0

    .line 4947
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public static smlBRRadioBackup()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 4344
    const/4 v0, 0x1

    const-string v1, "smlBRRadioBackup"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4345
    sput-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->FM_BACKUP_FINISH:Z

    .line 4346
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 4347
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.fm.BROADCAST_DETECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4348
    const-string v1, "backup_Or_Restore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4349
    const-string v1, "backup_Path"

    const-string v2, "/data/_SamsungBnR_/BR/Network/"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4350
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4351
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4352
    return-void
.end method

.method public static smlBRRadioRestore()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 4356
    const-string v0, "smlBRRadioRestore"

    invoke-static {v2, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4357
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wssnps/database/smlBackupRestoreItem;->FM_RESTORE_FINISH:Z

    .line 4358
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 4359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.fm.BROADCAST_DETECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4360
    const-string v1, "backup_Or_Restore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4361
    const-string v1, "backup_Path"

    const-string v2, "/data/_SamsungBnR_/BR/Network/"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4362
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4363
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4364
    return-void
.end method

.method public static smlBRRemoveDir(Ljava/lang/String;)Z
    .registers 8
    .parameter "dirPath"

    .prologue
    const/4 v6, 0x1

    .line 1780
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1781
    .local v1, dir:Ljava/io/File;
    const/4 v0, 0x0

    .line 1782
    .local v0, chk:Z
    const/4 v4, 0x0

    .line 1786
    .local v4, result:Z
    if-nez p0, :cond_11

    .line 1788
    const-string v5, "Invalid directory !!!"

    invoke-static {v6, v5}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1789
    const/4 v5, 0x0

    .line 1823
    :goto_10
    return v5

    .line 1792
    :cond_11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 1794
    const/4 v4, 0x1

    :goto_18
    move v5, v4

    .line 1823
    goto :goto_10

    .line 1798
    :cond_1a
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1799
    .local v3, list:[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1f
    array-length v5, v3

    if-ge v2, v5, :cond_40

    .line 1801
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1803
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRemoveDir(Ljava/lang/String;)Z

    .line 1799
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 1807
    :cond_36
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileDelete(Ljava/lang/String;)Z

    goto :goto_33

    .line 1811
    :cond_40
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1812
    if-nez v0, :cond_4d

    .line 1814
    const-string v5, "Remove directory failed !!!"

    invoke-static {v6, v5}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1815
    const/4 v4, 0x0

    goto :goto_18

    .line 1819
    :cond_4d
    const/4 v4, 0x1

    goto :goto_18
.end method

.method public static smlBRRestoreBookmarkSql()Ljava/lang/Object;
    .registers 26

    .prologue
    .line 4158
    const/4 v11, 0x0

    .line 4182
    const/16 v1, 0x15

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, "url"

    aput-object v2, v4, v1

    const/4 v1, 0x3

    const-string v2, "folder"

    aput-object v2, v4, v1

    const/4 v1, 0x4

    const-string v2, "parent"

    aput-object v2, v4, v1

    const/4 v1, 0x5

    const-string v2, "position"

    aput-object v2, v4, v1

    const/4 v1, 0x6

    const-string v2, "insert_after"

    aput-object v2, v4, v1

    const/4 v1, 0x7

    const-string v2, "deleted"

    aput-object v2, v4, v1

    const/16 v1, 0x8

    const-string v2, "account_name"

    aput-object v2, v4, v1

    const/16 v1, 0x9

    const-string v2, "account_type"

    aput-object v2, v4, v1

    const/16 v1, 0xa

    const-string v2, "sourceid"

    aput-object v2, v4, v1

    const/16 v1, 0xb

    const-string v2, "version"

    aput-object v2, v4, v1

    const/16 v1, 0xc

    const-string v2, "created"

    aput-object v2, v4, v1

    const/16 v1, 0xd

    const-string v2, "modified"

    aput-object v2, v4, v1

    const/16 v1, 0xe

    const-string v2, "dirty"

    aput-object v2, v4, v1

    const/16 v1, 0xf

    const-string v2, "sync1"

    aput-object v2, v4, v1

    const/16 v1, 0x10

    const-string v2, "sync2"

    aput-object v2, v4, v1

    const/16 v1, 0x11

    const-string v2, "sync3"

    aput-object v2, v4, v1

    const/16 v1, 0x12

    const-string v2, "sync4"

    aput-object v2, v4, v1

    const/16 v1, 0x13

    const-string v2, "sync5"

    aput-object v2, v4, v1

    const/16 v1, 0x14

    const-string v2, "parent_title"

    aput-object v2, v4, v1

    .line 4207
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 4208
    const-string v1, "/data/_SamsungBnR_/BR/Network/Network_DB.bk"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 4210
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4212
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    const-string v3, "bookmarks"

    const-string v5, "_id>1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4215
    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smlBRRestoreBookmarkSql count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4217
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_cb

    .line 4219
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4220
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4282
    :goto_ca
    return-object v1

    .line 4223
    :cond_cb
    const-string v1, "_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 4224
    const-string v1, "title"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 4225
    const-string v1, "url"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 4226
    const-string v1, "folder"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 4227
    const-string v1, "parent"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 4228
    const-string v1, "position"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 4229
    const-string v1, "insert_after"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 4230
    const-string v1, "deleted"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4231
    const-string v1, "account_name"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 4232
    const-string v1, "account_type"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 4233
    const-string v1, "sourceid"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 4234
    const-string v1, "version"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 4235
    const-string v1, "created"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 4236
    const-string v1, "modified"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 4237
    const-string v1, "dirty"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 4238
    const-string v1, "sync1"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 4239
    const-string v1, "sync2"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 4240
    const-string v1, "sync3"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 4241
    const-string v1, "sync4"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 4242
    const-string v1, "sync5"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 4243
    const-string v1, "expanded"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 4244
    const-string v1, "parent_title"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 4246
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_223

    move v1, v11

    .line 4250
    :cond_155
    new-instance v11, Lcom/wssnps/database/smlBackupRestoreItem;

    invoke-direct {v11}, Lcom/wssnps/database/smlBackupRestoreItem;-><init>()V

    .line 4251
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v0, v25

    iput v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_id:I

    .line 4252
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_title:Ljava/lang/String;

    .line 4253
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_url:Ljava/lang/String;

    .line 4254
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v0, v25

    iput v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_folder:I

    .line 4255
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v0, v25

    iput v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_parent:I

    .line 4256
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v0, v25

    iput v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_position:I

    .line 4257
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v0, v25

    iput v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_insert_after:I

    .line 4258
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v0, v25

    iput v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_deleted:I

    .line 4259
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_account_name:Ljava/lang/String;

    .line 4260
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_account_type:Ljava/lang/String;

    .line 4261
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sourceid:Ljava/lang/String;

    .line 4262
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v0, v25

    iput v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_version:I

    .line 4263
    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v0, v25

    iput v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_created:I

    .line 4264
    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v0, v25

    iput v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_modified:I

    .line 4265
    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v0, v25

    iput v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_dirty:I

    .line 4266
    move/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync1:Ljava/lang/String;

    .line 4267
    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync2:Ljava/lang/String;

    .line 4268
    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync3:Ljava/lang/String;

    .line 4269
    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync4:Ljava/lang/String;

    .line 4270
    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_sync5:Ljava/lang/String;

    .line 4272
    move/from16 v0, v24

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Bookmark_parent_title:Ljava/lang/String;

    .line 4273
    sget-object v25, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4274
    add-int/lit8 v1, v1, 0x1

    .line 4276
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_155

    .line 4278
    :cond_223
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4280
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRBookmarkPut(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 4281
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 4282
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_ca
.end method

.method public static smlBRRestoreCalllogSql()Ljava/lang/Object;
    .registers 32

    .prologue
    .line 4601
    const/4 v11, 0x0

    .line 4604
    const/16 v1, 0x1b

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, "address"

    aput-object v2, v4, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v4, v1

    const/4 v1, 0x4

    const-string v2, "duration"

    aput-object v2, v4, v1

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v4, v1

    const/4 v1, 0x6

    const-string v2, "new"

    aput-object v2, v4, v1

    const/4 v1, 0x7

    const-string v2, "name"

    aput-object v2, v4, v1

    const/16 v1, 0x8

    const-string v2, "name_reversed"

    aput-object v2, v4, v1

    const/16 v1, 0x9

    const-string v2, "numbertype"

    aput-object v2, v4, v1

    const/16 v1, 0xa

    const-string v2, "numberlabel"

    aput-object v2, v4, v1

    const/16 v1, 0xb

    const-string v2, "messageid"

    aput-object v2, v4, v1

    const/16 v1, 0xc

    const-string v2, "logtype"

    aput-object v2, v4, v1

    const/16 v1, 0xd

    const-string v2, "frequent"

    aput-object v2, v4, v1

    const/16 v1, 0xe

    const-string v2, "contactid"

    aput-object v2, v4, v1

    const/16 v1, 0xf

    const-string v2, "raw_contact_id"

    aput-object v2, v4, v1

    const/16 v1, 0x10

    const-string v2, "m_subject"

    aput-object v2, v4, v1

    const/16 v1, 0x11

    const-string v2, "m_content"

    aput-object v2, v4, v1

    const/16 v1, 0x12

    const-string v2, "sns_tid"

    aput-object v2, v4, v1

    const/16 v1, 0x13

    const-string v2, "sns_pkey"

    aput-object v2, v4, v1

    const/16 v1, 0x14

    const-string v2, "account_name"

    aput-object v2, v4, v1

    const/16 v1, 0x15

    const-string v2, "account_id"

    aput-object v2, v4, v1

    const/16 v1, 0x16

    const-string v2, "sns_receiver_count"

    aput-object v2, v4, v1

    const/16 v1, 0x17

    const-string v2, "sp_type"

    aput-object v2, v4, v1

    const/16 v1, 0x18

    const-string v2, "cnap_name"

    aput-object v2, v4, v1

    const/16 v1, 0x19

    const-string v2, "cdnip_number"

    aput-object v2, v4, v1

    const/16 v1, 0x1a

    const-string v2, "service_type"

    aput-object v2, v4, v1

    .line 4634
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 4635
    const-string v1, "/data/_SamsungBnR_/BR/CallLog/CallLog_DB.bk"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase_calllog:Landroid/database/sqlite/SQLiteDatabase;

    .line 4636
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4638
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase_calllog:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    const-string v3, "calllog"

    const-string v5, "_id>0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4643
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_d5

    .line 4645
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4646
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 4647
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4720
    :goto_d4
    return-object v1

    .line 4650
    :cond_d5
    const-string v1, "_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 4651
    const-string v1, "number"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 4652
    const-string v1, "address"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 4653
    const-string v1, "date"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 4654
    const-string v1, "duration"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 4655
    const-string v1, "type"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 4656
    const-string v1, "new"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 4657
    const-string v1, "name"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4658
    const-string v1, "name_reversed"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 4659
    const-string v1, "numbertype"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 4660
    const-string v1, "numberlabel"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 4661
    const-string v1, "messageid"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 4662
    const-string v1, "logtype"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 4663
    const-string v1, "frequent"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 4664
    const-string v1, "contactid"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 4665
    const-string v1, "raw_contact_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 4666
    const-string v1, "m_subject"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 4667
    const-string v1, "m_content"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 4668
    const-string v1, "sns_tid"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 4669
    const-string v1, "sns_pkey"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 4670
    const-string v1, "account_name"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 4671
    const-string v1, "account_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 4672
    const-string v1, "sns_receiver_count"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 4673
    const-string v1, "sp_type"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 4674
    const-string v1, "cnap_name"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 4675
    const-string v1, "cdnip_number"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 4676
    const-string v1, "service_type"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 4679
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_288

    move v1, v11

    .line 4683
    :cond_17e
    new-instance v11, Lcom/wssnps/database/smlBackupRestoreItem;

    invoke-direct {v11}, Lcom/wssnps/database/smlBackupRestoreItem;-><init>()V

    .line 4684
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v0, v31

    iput v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_id:I

    .line 4685
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_number:Ljava/lang/String;

    .line 4686
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_address:Ljava/lang/String;

    .line 4687
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_date:Ljava/lang/String;

    .line 4688
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_duration:Ljava/lang/String;

    .line 4689
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_type:Ljava/lang/String;

    .line 4690
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_new_:Ljava/lang/String;

    .line 4691
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_name:Ljava/lang/String;

    .line 4692
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_name_reversed:Ljava/lang/String;

    .line 4693
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_numbertype:Ljava/lang/String;

    .line 4694
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_numberlabel:Ljava/lang/String;

    .line 4695
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_messageid:Ljava/lang/String;

    .line 4696
    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_logtype:Ljava/lang/String;

    .line 4697
    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_frequent:Ljava/lang/String;

    .line 4698
    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_contactid:Ljava/lang/String;

    .line 4699
    move/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_raw_contact_id:Ljava/lang/String;

    .line 4700
    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_m_subject:Ljava/lang/String;

    .line 4701
    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_m_content:Ljava/lang/String;

    .line 4702
    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_sns_tid:Ljava/lang/String;

    .line 4703
    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_sns_pkey:Ljava/lang/String;

    .line 4704
    move/from16 v0, v24

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_account_name:Ljava/lang/String;

    .line 4705
    move/from16 v0, v25

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_account_id:Ljava/lang/String;

    .line 4706
    move/from16 v0, v26

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_sns_receiver_count:Ljava/lang/String;

    .line 4707
    move/from16 v0, v27

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_sp_type:Ljava/lang/String;

    .line 4708
    move/from16 v0, v28

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_cnap_name:Ljava/lang/String;

    .line 4709
    move/from16 v0, v29

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_cdnip_number:Ljava/lang/String;

    .line 4710
    move/from16 v0, v30

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Log_service_type:Ljava/lang/String;

    .line 4712
    sget-object v31, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4713
    add-int/lit8 v1, v1, 0x1

    .line 4714
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_17e

    .line 4716
    :cond_288
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4718
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRCalllogPut(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 4719
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase_calllog:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 4720
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_d4
.end method

.method public static smlBRRestoreCheck()Ljava/lang/String;
    .registers 13

    .prologue
    const/16 v6, 0x14

    const/16 v11, 0x18

    const/4 v2, 0x1

    const-wide/16 v9, 0x0

    const/4 v1, 0x0

    .line 1433
    sget-wide v3, Lcom/wssnps/database/smlBackupRestoreItem;->nCategory:J

    .line 1434
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 1436
    new-array v5, v6, [I

    .line 1437
    new-array v6, v6, [I

    .line 1439
    cmp-long v0, v3, v9

    if-eqz v0, :cond_1a7

    .line 1441
    const-wide/16 v7, 0x1

    and-long/2addr v7, v3

    cmp-long v0, v7, v9

    if-eqz v0, :cond_24b

    .line 1443
    aput v1, v5, v1

    .line 1444
    aput v2, v6, v1

    move v0, v2

    .line 1448
    :goto_22
    const-wide/16 v7, 0x4

    and-long/2addr v7, v3

    cmp-long v7, v7, v9

    if-eqz v7, :cond_30

    .line 1450
    aput v1, v5, v0

    .line 1451
    const/4 v7, 0x4

    aput v7, v6, v0

    .line 1452
    add-int/lit8 v0, v0, 0x1

    .line 1455
    :cond_30
    const-wide/16 v7, 0x8

    and-long/2addr v7, v3

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3f

    .line 1457
    aput v1, v5, v0

    .line 1458
    const/16 v7, 0x8

    aput v7, v6, v0

    .line 1459
    add-int/lit8 v0, v0, 0x1

    .line 1462
    :cond_3f
    const-wide/16 v7, 0x10

    and-long/2addr v7, v3

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4e

    .line 1465
    aput v1, v5, v0

    .line 1466
    const/16 v7, 0x10

    aput v7, v6, v0

    .line 1467
    add-int/lit8 v0, v0, 0x1

    .line 1470
    :cond_4e
    const-wide/16 v7, 0x20

    and-long/2addr v7, v3

    cmp-long v7, v7, v9

    if-eqz v7, :cond_5d

    .line 1472
    aput v1, v5, v0

    .line 1473
    const/16 v7, 0x20

    aput v7, v6, v0

    .line 1474
    add-int/lit8 v0, v0, 0x1

    .line 1477
    :cond_5d
    const-wide/16 v7, 0x100

    and-long/2addr v7, v3

    cmp-long v7, v7, v9

    if-eqz v7, :cond_6c

    .line 1479
    aput v1, v5, v0

    .line 1480
    const/16 v7, 0x100

    aput v7, v6, v0

    .line 1481
    add-int/lit8 v0, v0, 0x1

    .line 1484
    :cond_6c
    const-wide/16 v7, 0x200

    and-long/2addr v7, v3

    cmp-long v7, v7, v9

    if-eqz v7, :cond_7b

    .line 1486
    aput v1, v5, v0

    .line 1487
    const/16 v7, 0x200

    aput v7, v6, v0

    .line 1488
    add-int/lit8 v0, v0, 0x1

    .line 1491
    :cond_7b
    const-wide/16 v7, 0x400

    and-long/2addr v7, v3

    cmp-long v7, v7, v9

    if-eqz v7, :cond_8a

    .line 1493
    aput v1, v5, v0

    .line 1494
    const/16 v7, 0x400

    aput v7, v6, v0

    .line 1495
    add-int/lit8 v0, v0, 0x1

    .line 1498
    :cond_8a
    const-wide/32 v7, 0x40000

    and-long/2addr v7, v3

    cmp-long v7, v7, v9

    if-eqz v7, :cond_9a

    .line 1500
    aput v1, v5, v0

    .line 1501
    const/high16 v7, 0x4

    aput v7, v6, v0

    .line 1502
    add-int/lit8 v0, v0, 0x1

    .line 1505
    :cond_9a
    const-wide/16 v7, 0x800

    and-long/2addr v7, v3

    cmp-long v7, v7, v9

    if-eqz v7, :cond_a9

    .line 1507
    aput v1, v5, v0

    .line 1508
    const/16 v7, 0x800

    aput v7, v6, v0

    .line 1509
    add-int/lit8 v0, v0, 0x1

    .line 1512
    :cond_a9
    const-wide/16 v7, 0x1000

    and-long/2addr v7, v3

    cmp-long v7, v7, v9

    if-eqz v7, :cond_b8

    .line 1514
    aput v1, v5, v0

    .line 1515
    const/16 v7, 0x1000

    aput v7, v6, v0

    .line 1516
    add-int/lit8 v0, v0, 0x1

    .line 1519
    :cond_b8
    const-wide/16 v7, 0x4000

    and-long/2addr v7, v3

    cmp-long v7, v7, v9

    if-eqz v7, :cond_c7

    .line 1521
    aput v1, v5, v0

    .line 1522
    const/16 v7, 0x4000

    aput v7, v6, v0

    .line 1523
    add-int/lit8 v0, v0, 0x1

    .line 1526
    :cond_c7
    const-wide/32 v7, 0x8000

    and-long/2addr v7, v3

    cmp-long v7, v7, v9

    if-eqz v7, :cond_d8

    .line 1528
    aput v1, v5, v0

    .line 1529
    const v7, 0x8000

    aput v7, v6, v0

    .line 1530
    add-int/lit8 v0, v0, 0x1

    .line 1533
    :cond_d8
    const-wide/16 v7, 0x40

    and-long/2addr v7, v3

    cmp-long v7, v7, v9

    if-eqz v7, :cond_e7

    .line 1535
    aput v1, v5, v0

    .line 1536
    const/16 v7, 0x40

    aput v7, v6, v0

    .line 1537
    add-int/lit8 v0, v0, 0x1

    .line 1540
    :cond_e7
    const-wide/32 v7, 0x1000000

    and-long/2addr v7, v3

    cmp-long v7, v7, v9

    if-eqz v7, :cond_f7

    .line 1542
    aput v1, v5, v0

    .line 1543
    const/high16 v7, 0x100

    aput v7, v6, v0

    .line 1544
    add-int/lit8 v0, v0, 0x1

    .line 1547
    :cond_f7
    const-wide/32 v7, 0x2000000

    and-long/2addr v7, v3

    cmp-long v7, v7, v9

    if-eqz v7, :cond_107

    .line 1549
    aput v1, v5, v0

    .line 1550
    const/high16 v7, 0x200

    aput v7, v6, v0

    .line 1551
    add-int/lit8 v0, v0, 0x1

    .line 1554
    :cond_107
    const-wide/32 v7, 0x40000000

    and-long/2addr v3, v7

    cmp-long v3, v3, v9

    if-eqz v3, :cond_117

    .line 1556
    aput v1, v5, v0

    .line 1557
    const/high16 v3, 0x4000

    aput v3, v6, v0

    .line 1558
    add-int/lit8 v0, v0, 0x1

    .line 1571
    :cond_117
    sget-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_RESTORE_FINISH:Z

    if-ne v3, v2, :cond_1d5

    sget-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->LOG_RESTORE_FINISH:Z

    if-ne v3, v2, :cond_1d5

    sget-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->EMAIL_RESTORE_FINISH:Z

    if-ne v3, v2, :cond_1d5

    sget-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->FM_RESTORE_FINISH:Z

    if-ne v3, v2, :cond_1d5

    sget-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->DIARY_RESTORE_FINISH:Z

    if-ne v3, v2, :cond_1d5

    sget-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->PENMEMO_RESTORE_FINISH:Z

    if-ne v3, v2, :cond_1d5

    sget-boolean v3, Lcom/wssnps/database/smlBackupRestoreItem;->SMEMO_RESTORE_FINISH:Z

    if-ne v3, v2, :cond_1d5

    .line 1574
    const-string v3, "smlBRRestoreCheck COMPLEATE"

    invoke-static {v2, v3}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v12, v1

    move-object v1, v2

    move v2, v12

    .line 1576
    :goto_166
    if-ge v2, v0, :cond_1d3

    .line 1577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, v6, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1578
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, v5, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1576
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v3

    goto :goto_166

    .line 1563
    :cond_1a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1591
    :goto_1d2
    return-object v0

    :cond_1d3
    move-object v0, v1

    .line 1576
    goto :goto_1d2

    .line 1583
    :cond_1d5
    const-string v3, "smlBRRestoreCheck BUSY"

    invoke-static {v2, v3}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "9\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v12, v1

    move-object v1, v2

    move v2, v12

    .line 1585
    :goto_208
    if-ge v2, v0, :cond_249

    .line 1586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, v6, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, v5, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1585
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v3

    goto :goto_208

    :cond_249
    move-object v0, v1

    goto :goto_1d2

    :cond_24b
    move v0, v1

    goto/16 :goto_22
.end method

.method public static smlBRRestoreConfigurationSql()Ljava/lang/Object;
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 2539
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v10

    const-string v0, "name"

    aput-object v0, v3, v1

    const/4 v0, 0x2

    const-string v2, "value"

    aput-object v2, v3, v0

    .line 2545
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 2546
    const-string v0, "/data/_SamsungBnR_/BR/Configuration/Configuration_DB.bk"

    invoke-static {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 2547
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2549
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "configuration"

    const-string v4, "_id>0"

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2554
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_45

    .line 2556
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2557
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2558
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2583
    :goto_44
    return-object v0

    .line 2561
    :cond_45
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2562
    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2563
    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 2565
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_82

    move v0, v10

    .line 2569
    :cond_5e
    new-instance v5, Lcom/wssnps/database/smlBackupRestoreItem;

    invoke-direct {v5}, Lcom/wssnps/database/smlBackupRestoreItem;-><init>()V

    .line 2570
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/wssnps/database/smlBackupRestoreItem;->Configuration_id:I

    .line 2571
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/wssnps/database/smlBackupRestoreItem;->Configuration_name:Ljava/lang/String;

    .line 2572
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/wssnps/database/smlBackupRestoreItem;->Configuration_value:Ljava/lang/String;

    .line 2574
    sget-object v6, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2575
    add-int/lit8 v0, v0, 0x1

    .line 2577
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_5e

    .line 2579
    :cond_82
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2581
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRConfigurationPut(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 2582
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2583
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_44
.end method

.method public static smlBRRestoreEmailAccountSql()Ljava/lang/Object;
    .registers 41

    .prologue
    .line 3338
    const/4 v11, 0x0

    .line 3341
    const/16 v1, 0x24

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, "emailAddress"

    aput-object v2, v4, v1

    const/4 v1, 0x3

    const-string v2, "syncKey"

    aput-object v2, v4, v1

    const/4 v1, 0x4

    const-string v2, "syncLookback"

    aput-object v2, v4, v1

    const/4 v1, 0x5

    const-string v2, "syncInterval"

    aput-object v2, v4, v1

    const/4 v1, 0x6

    const-string v2, "hostAuthKeyRecv"

    aput-object v2, v4, v1

    const/4 v1, 0x7

    const-string v2, "hostAuthKeySend"

    aput-object v2, v4, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v4, v1

    const/16 v1, 0x9

    const-string v2, "isDefault"

    aput-object v2, v4, v1

    const/16 v1, 0xa

    const-string v2, "compatibilityUuid"

    aput-object v2, v4, v1

    const/16 v1, 0xb

    const-string v2, "senderName"

    aput-object v2, v4, v1

    const/16 v1, 0xc

    const-string v2, "ringtoneUri"

    aput-object v2, v4, v1

    const/16 v1, 0xd

    const-string v2, "protocolVersion"

    aput-object v2, v4, v1

    const/16 v1, 0xe

    const-string v2, "newMessageCount"

    aput-object v2, v4, v1

    const/16 v1, 0xf

    const-string v2, "securityFlags"

    aput-object v2, v4, v1

    const/16 v1, 0x10

    const-string v2, "securitySyncKey"

    aput-object v2, v4, v1

    const/16 v1, 0x11

    const-string v2, "signature"

    aput-object v2, v4, v1

    const/16 v1, 0x12

    const-string v2, "emailsize"

    aput-object v2, v4, v1

    const/16 v1, 0x13

    const-string v2, "policyKey"

    aput-object v2, v4, v1

    const/16 v1, 0x14

    const-string v2, "peakDays"

    aput-object v2, v4, v1

    const/16 v1, 0x15

    const-string v2, "peakStartMinute"

    aput-object v2, v4, v1

    const/16 v1, 0x16

    const-string v2, "peakEndMinute"

    aput-object v2, v4, v1

    const/16 v1, 0x17

    const-string v2, "peakSchedule"

    aput-object v2, v4, v1

    const/16 v1, 0x18

    const-string v2, "offPeakSchedule"

    aput-object v2, v4, v1

    const/16 v1, 0x19

    const-string v2, "roamingSchedule"

    aput-object v2, v4, v1

    const/16 v1, 0x1a

    const-string v2, "calendarSyncLookback"

    aput-object v2, v4, v1

    const/16 v1, 0x1b

    const-string v2, "conflict"

    aput-object v2, v4, v1

    const/16 v1, 0x1c

    const-string v2, "smimeOwnCertificateAlias"

    aput-object v2, v4, v1

    const/16 v1, 0x1d

    const-string v2, "smimeOptionsFlags"

    aput-object v2, v4, v1

    const/16 v1, 0x1e

    const-string v2, "smimeSignAlgorithm"

    aput-object v2, v4, v1

    const/16 v1, 0x1f

    const-string v2, "smimeEncryptionAlgorithm"

    aput-object v2, v4, v1

    const/16 v1, 0x20

    const-string v2, "conversationMode"

    aput-object v2, v4, v1

    const/16 v1, 0x21

    const-string v2, "textPreview"

    aput-object v2, v4, v1

    const/16 v1, 0x22

    const-string v2, "deviceInfoSent"

    aput-object v2, v4, v1

    const/16 v1, 0x23

    const-string v2, "deviceBlockedType"

    aput-object v2, v4, v1

    .line 3380
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 3381
    const-string v1, "/data/_SamsungBnR_/BR/Email/Email_DB.bk"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3382
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3384
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    const-string v3, "account"

    const-string v5, "_id>0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3389
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_10b

    .line 3391
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3392
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 3393
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3483
    :goto_10a
    return-object v1

    .line 3396
    :cond_10b
    const-string v1, "_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 3397
    const-string v1, "displayName"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3398
    const-string v1, "emailAddress"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 3399
    const-string v1, "syncKey"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3400
    const-string v1, "syncLookback"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 3401
    const-string v1, "syncInterval"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3402
    const-string v1, "hostAuthKeyRecv"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 3403
    const-string v1, "hostAuthKeySend"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 3404
    const-string v1, "flags"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 3405
    const-string v1, "isDefault"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 3406
    const-string v1, "compatibilityUuid"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 3407
    const-string v1, "senderName"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 3408
    const-string v1, "ringtoneUri"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 3409
    const-string v1, "protocolVersion"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 3410
    const-string v1, "newMessageCount"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 3411
    const-string v1, "securityFlags"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 3412
    const-string v1, "securitySyncKey"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 3413
    const-string v1, "signature"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 3414
    const-string v1, "emailsize"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 3415
    const-string v1, "policyKey"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 3416
    const-string v1, "peakDays"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 3417
    const-string v1, "peakStartMinute"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 3418
    const-string v1, "peakEndMinute"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 3419
    const-string v1, "peakSchedule"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 3420
    const-string v1, "offPeakSchedule"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 3421
    const-string v1, "roamingSchedule"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 3422
    const-string v1, "calendarSyncLookback"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 3423
    const-string v1, "conflict"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 3424
    const-string v1, "smimeOwnCertificateAlias"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 3425
    const-string v1, "smimeOptionsFlags"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 3426
    const-string v1, "smimeSignAlgorithm"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 3427
    const-string v1, "smimeEncryptionAlgorithm"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 3428
    const-string v1, "conversationMode"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 3429
    const-string v1, "textPreview"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 3430
    const-string v1, "deviceInfoSent"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    .line 3431
    const-string v1, "deviceBlockedType"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 3433
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_34e

    move v1, v11

    .line 3437
    :cond_1ea
    new-instance v11, Lcom/wssnps/database/smlBackupRestoreItem;

    invoke-direct {v11}, Lcom/wssnps/database/smlBackupRestoreItem;-><init>()V

    .line 3438
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    move/from16 v0, v40

    iput v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_id:I

    .line 3439
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_displayName:Ljava/lang/String;

    .line 3440
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_emailAddress:Ljava/lang/String;

    .line 3441
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_syncKey:Ljava/lang/String;

    .line 3442
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_syncLookback:Ljava/lang/String;

    .line 3443
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_syncInterval:Ljava/lang/String;

    .line 3444
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_hostAuthKeyRecv:Ljava/lang/String;

    .line 3445
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_hostAuthKeySend:Ljava/lang/String;

    .line 3446
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_flags:Ljava/lang/String;

    .line 3447
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_isDefault:Ljava/lang/String;

    .line 3448
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_compatibilityUuid:Ljava/lang/String;

    .line 3449
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_senderName:Ljava/lang/String;

    .line 3450
    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_ringtoneUri:Ljava/lang/String;

    .line 3451
    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_protocolVersion:Ljava/lang/String;

    .line 3452
    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_newMessageCount:Ljava/lang/String;

    .line 3453
    move/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_securityFlags:Ljava/lang/String;

    .line 3454
    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_securitySyncKey:Ljava/lang/String;

    .line 3455
    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_signature:Ljava/lang/String;

    .line 3456
    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_emailsize:Ljava/lang/String;

    .line 3457
    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_policyKey:Ljava/lang/String;

    .line 3458
    move/from16 v0, v24

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_peakDays:Ljava/lang/String;

    .line 3459
    move/from16 v0, v25

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_peakStartMinute:Ljava/lang/String;

    .line 3460
    move/from16 v0, v26

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_peakEndMinute:Ljava/lang/String;

    .line 3461
    move/from16 v0, v27

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_peakSchedule:Ljava/lang/String;

    .line 3462
    move/from16 v0, v28

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_offPeakSchedule:Ljava/lang/String;

    .line 3463
    move/from16 v0, v29

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_roamingSchedule:Ljava/lang/String;

    .line 3464
    move/from16 v0, v30

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_calendarSyncLookback:Ljava/lang/String;

    .line 3465
    move/from16 v0, v31

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_conflict:Ljava/lang/String;

    .line 3466
    move/from16 v0, v32

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_smimeOwnCertificateAlias:Ljava/lang/String;

    .line 3467
    move/from16 v0, v33

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_smimeOptionsFlags:Ljava/lang/String;

    .line 3468
    move/from16 v0, v34

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_smimeSignAlgorithm:Ljava/lang/String;

    .line 3469
    move/from16 v0, v35

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_smimeEncryptionAlgorithm:Ljava/lang/String;

    .line 3470
    move/from16 v0, v36

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_conversationMode:Ljava/lang/String;

    .line 3471
    move/from16 v0, v37

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_textPreview:Ljava/lang/String;

    .line 3472
    move/from16 v0, v38

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_deviceInfoSent:Ljava/lang/String;

    .line 3473
    move/from16 v0, v39

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Lcom/wssnps/database/smlBackupRestoreItem;->Email_Account_deviceBlockedType:Ljava/lang/String;

    .line 3474
    sget-object v40, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3476
    add-int/lit8 v1, v1, 0x1

    .line 3477
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_1ea

    .line 3479
    :cond_34e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3481
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBREmailAccountPut(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 3482
    sget-object v1, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 3483
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_10a
.end method

.method public static smlBRRestoreEmailHostAuthSql()Ljava/lang/Object;
    .registers 14

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 3549
    const/16 v0, 0x9

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v10

    const-string v0, "protocol"

    aput-object v0, v3, v1

    const/4 v0, 0x2

    const-string v2, "address"

    aput-object v2, v3, v0

    const/4 v0, 0x3

    const-string v2, "port"

    aput-object v2, v3, v0

    const/4 v0, 0x4

    const-string v2, "flags"

    aput-object v2, v3, v0

    const/4 v0, 0x5

    const-string v2, "login"

    aput-object v2, v3, v0

    const/4 v0, 0x6

    const-string v2, "password"

    aput-object v2, v3, v0

    const/4 v0, 0x7

    const-string v2, "domain"

    aput-object v2, v3, v0

    const/16 v0, 0x8

    const-string v2, "accountKey"

    aput-object v2, v3, v0

    .line 3561
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 3562
    const-string v0, "/data/_SamsungBnR_/BR/Email/Email_DB.bk"

    invoke-static {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3563
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3565
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "hostauth"

    const-string v4, "_id>0"

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3570
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_65

    .line 3572
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3573
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 3574
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3610
    :goto_64
    return-object v0

    .line 3577
    :cond_65
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 3578
    const-string v0, "protocol"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 3579
    const-string v0, "address"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3580
    const-string v0, "port"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 3581
    const-string v0, "flags"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3582
    const-string v0, "login"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 3583
    const-string v0, "password"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3584
    const-string v0, "domain"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 3585
    const-string v0, "accountKey"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 3587
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_ea

    move v0, v10

    .line 3591
    :cond_a2
    new-instance v12, Lcom/wssnps/database/smlBackupRestoreItem;

    invoke-direct {v12}, Lcom/wssnps/database/smlBackupRestoreItem;-><init>()V

    .line 3592
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v12, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_id:I

    .line 3593
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_protocol:Ljava/lang/String;

    .line 3594
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_address:Ljava/lang/String;

    .line 3595
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_port:Ljava/lang/String;

    .line 3596
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_flags:Ljava/lang/String;

    .line 3597
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_login:Ljava/lang/String;

    .line 3598
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_password:Ljava/lang/String;

    .line 3599
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_domain:Ljava/lang/String;

    .line 3600
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/wssnps/database/smlBackupRestoreItem;->Email_HostAuth_accountKey:Ljava/lang/String;

    .line 3601
    sget-object v13, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3603
    add-int/lit8 v0, v0, 0x1

    .line 3604
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_a2

    .line 3606
    :cond_ea
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3608
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_ContactList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBREmailHostAuthPut(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 3609
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 3610
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_64
.end method

.method public static smlBRRestoreFinish()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    .line 1597
    sget-wide v0, Lcom/wssnps/database/smlBackupRestoreItem;->nCategory:J

    .line 1598
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v2, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 1599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smlBRRestoreFinish "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1601
    cmp-long v2, v0, v4

    if-eqz v2, :cond_13b

    .line 1603
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_RESTORE_FINISH:Z

    .line 1604
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->LOG_RESTORE_FINISH:Z

    .line 1605
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->EMAIL_RESTORE_FINISH:Z

    .line 1606
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->FM_RESTORE_FINISH:Z

    .line 1607
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->DIARY_RESTORE_FINISH:Z

    .line 1608
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->PENMEMO_RESTORE_FINISH:Z

    .line 1609
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->SMEMO_RESTORE_FINISH:Z

    .line 1611
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->CONTACT_RESTORE_FINISH:Z

    .line 1613
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_44

    .line 1615
    sput v6, Lcom/wssnps/smlNpsHandler;->Restore_Reset:I

    .line 1616
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRConfigurationDelete()V

    .line 1619
    :cond_44
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4b

    .line 1623
    :cond_4b
    const-wide/16 v2, 0x8

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_59

    .line 1625
    const-string v2, "0"

    invoke-static {v2}, Lcom/wssnps/smlNpsHandler;->SetCalendarSyncID(Ljava/lang/String;)Ljava/lang/String;

    .line 1626
    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->BR_CALENDAR:Z

    .line 1629
    :cond_59
    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_60

    .line 1633
    :cond_60
    const-wide/16 v2, 0x20

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_69

    .line 1635
    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->BR_TASK:Z

    .line 1638
    :cond_69
    const-wide/16 v2, 0x100

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_70

    .line 1642
    :cond_70
    const-wide/16 v2, 0x200

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_77

    .line 1646
    :cond_77
    const-wide/16 v2, 0x400

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7e

    .line 1650
    :cond_7e
    const-wide/32 v2, 0x40000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_86

    .line 1654
    :cond_86
    const-wide/16 v2, 0x800

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8d

    .line 1658
    :cond_8d
    const-wide/16 v2, 0x1000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9c

    .line 1660
    const-string v2, "com.android.email"

    invoke-static {v2}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRAppKill(Ljava/lang/String;)V

    .line 1661
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBREmailDelete()V

    .line 1664
    :cond_9c
    const-wide/16 v2, 0x2000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a3

    .line 1668
    :cond_a3
    const-wide/16 v2, 0x4000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_bd

    .line 1670
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getFmRadioType()I

    move-result v2

    if-ne v2, v6, :cond_b5

    .line 1671
    const-string v2, "com.sec.android.app.fm"

    invoke-static {v2}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRAppKill(Ljava/lang/String;)V

    .line 1672
    :cond_b5
    const-string v2, "com.android.browser"

    invoke-static {v2}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRAppKill(Ljava/lang/String;)V

    .line 1673
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRNetworkDelete()V

    .line 1676
    :cond_bd
    const-wide/32 v2, 0x10000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c5

    .line 1680
    :cond_c5
    const-wide/32 v2, 0x8000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d0

    .line 1682
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRCallLogDelete()V

    .line 1685
    :cond_d0
    const-wide/16 v2, 0x40

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e5

    .line 1687
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getKorMessageType()I

    move-result v2

    if-ne v2, v6, :cond_135

    .line 1689
    const-string v2, "com.sec.mms"

    invoke-static {v2}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRAppKill(Ljava/lang/String;)V

    .line 1695
    :goto_e2
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMessageDelete()V

    .line 1698
    :cond_e5
    const-wide/32 v2, 0x1000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f7

    .line 1700
    sput v6, Lcom/wssnps/smlNpsHandler;->Restore_Reset:I

    .line 1701
    const-string v2, "com.sec.android.app.minidiary"

    invoke-static {v2}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRAppKill(Ljava/lang/String;)V

    .line 1702
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMiniDiaryDelete()V

    .line 1705
    :cond_f7
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_107

    .line 1707
    const-string v2, "com.diotek.penmemo"

    invoke-static {v2}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRAppKill(Ljava/lang/String;)V

    .line 1708
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRPenMemoDelete()V

    .line 1711
    :cond_107
    const-wide/32 v2, 0x40000000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_117

    .line 1713
    const-string v0, "com.sec.android.widgetapp.diotek.smemo"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRAppKill(Ljava/lang/String;)V

    .line 1714
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRSMemoDelete()V

    .line 1723
    :cond_117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_134
    return-object v0

    .line 1693
    :cond_135
    const-string v2, "com.android.providers.telephony"

    invoke-static {v2}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRAppKill(Ljava/lang/String;)V

    goto :goto_e2

    .line 1720
    :cond_13b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_134
.end method

.method public static smlBRRestoreReady(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter

    .prologue
    const/16 v12, 0x18

    const/16 v3, 0x14

    const/4 v2, 0x1

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    .line 1099
    .line 1106
    const/16 v0, 0xa

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1107
    sput-wide v4, Lcom/wssnps/database/smlBackupRestoreItem;->nCategory:J

    .line 1109
    new-array v6, v3, [I

    .line 1110
    new-array v7, v3, [I

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smlBRRestoreReady "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1114
    cmp-long v0, v4, v10

    if-eqz v0, :cond_205

    .line 1116
    const-wide/16 v8, 0x1

    and-long/2addr v8, v4

    cmp-long v0, v8, v10

    if-eqz v0, :cond_236

    .line 1118
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRConfigurationDelete()V

    .line 1119
    aput v1, v6, v1

    .line 1120
    aput v2, v7, v1

    move v3, v2

    .line 1124
    :goto_45
    const-wide/16 v8, 0x4

    and-long/2addr v8, v4

    cmp-long v0, v8, v10

    if-eqz v0, :cond_60

    .line 1126
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRContactsDeleteGroup()Z

    move-result v0

    .line 1127
    if-ne v0, v2, :cond_56

    .line 1129
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRContactsDelete()Z

    move-result v0

    .line 1131
    :cond_56
    if-ne v0, v2, :cond_1f9

    move v0, v1

    :goto_59
    aput v0, v6, v3

    .line 1132
    const/4 v0, 0x4

    aput v0, v7, v3

    .line 1133
    add-int/lit8 v3, v3, 0x1

    .line 1136
    :cond_60
    const-wide/16 v8, 0x8

    and-long/2addr v8, v4

    cmp-long v0, v8, v10

    if-eqz v0, :cond_78

    .line 1138
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRCalendarDelete()Z

    move-result v0

    .line 1139
    if-ne v0, v2, :cond_1fc

    move v0, v1

    :goto_6e
    aput v0, v6, v3

    .line 1140
    const/16 v0, 0x8

    aput v0, v7, v3

    .line 1141
    add-int/lit8 v3, v3, 0x1

    .line 1142
    sput-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->BR_CALENDAR:Z

    .line 1145
    :cond_78
    const-wide/16 v8, 0x10

    and-long/2addr v8, v4

    cmp-long v0, v8, v10

    if-eqz v0, :cond_8e

    .line 1147
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMemoDelete()Z

    move-result v0

    .line 1148
    if-ne v0, v2, :cond_1ff

    move v0, v1

    :goto_86
    aput v0, v6, v3

    .line 1149
    const/16 v0, 0x10

    aput v0, v7, v3

    .line 1150
    add-int/lit8 v3, v3, 0x1

    .line 1153
    :cond_8e
    const-wide/16 v8, 0x20

    and-long/2addr v8, v4

    cmp-long v0, v8, v10

    if-eqz v0, :cond_233

    .line 1155
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRTaskDelete()Z

    move-result v0

    .line 1156
    if-ne v0, v2, :cond_202

    move v0, v1

    :goto_9c
    aput v0, v6, v3

    .line 1157
    const/16 v0, 0x20

    aput v0, v7, v3

    .line 1158
    add-int/lit8 v0, v3, 0x1

    .line 1159
    sput-boolean v2, Lcom/wssnps/database/smlBackupRestoreItem;->BR_TASK:Z

    .line 1162
    :goto_a6
    const-wide/16 v2, 0x100

    and-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-eqz v2, :cond_b5

    .line 1164
    aput v1, v6, v0

    .line 1165
    const/16 v2, 0x100

    aput v2, v7, v0

    .line 1166
    add-int/lit8 v0, v0, 0x1

    .line 1169
    :cond_b5
    const-wide/16 v2, 0x200

    and-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-eqz v2, :cond_c4

    .line 1171
    aput v1, v6, v0

    .line 1172
    const/16 v2, 0x200

    aput v2, v7, v0

    .line 1173
    add-int/lit8 v0, v0, 0x1

    .line 1176
    :cond_c4
    const-wide/16 v2, 0x400

    and-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-eqz v2, :cond_d3

    .line 1178
    aput v1, v6, v0

    .line 1179
    const/16 v2, 0x400

    aput v2, v7, v0

    .line 1180
    add-int/lit8 v0, v0, 0x1

    .line 1183
    :cond_d3
    const-wide/32 v2, 0x40000

    and-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-eqz v2, :cond_e3

    .line 1185
    aput v1, v6, v0

    .line 1186
    const/high16 v2, 0x4

    aput v2, v7, v0

    .line 1187
    add-int/lit8 v0, v0, 0x1

    .line 1190
    :cond_e3
    const-wide/16 v2, 0x800

    and-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-eqz v2, :cond_f2

    .line 1192
    aput v1, v6, v0

    .line 1193
    const/16 v2, 0x800

    aput v2, v7, v0

    .line 1194
    add-int/lit8 v0, v0, 0x1

    .line 1197
    :cond_f2
    const-wide/16 v2, 0x1000

    and-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-eqz v2, :cond_10a

    .line 1199
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBREmailDelete()V

    .line 1200
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBREmailAccountDBDelete()Ljava/lang/Object;

    .line 1201
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBREmailHostAuthDBDelete()Ljava/lang/Object;

    .line 1202
    aput v1, v6, v0

    .line 1203
    const/16 v2, 0x1000

    aput v2, v7, v0

    .line 1204
    add-int/lit8 v0, v0, 0x1

    .line 1207
    :cond_10a
    const-wide/16 v2, 0x4000

    and-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-eqz v2, :cond_11f

    .line 1209
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRNetworkDelete()V

    .line 1210
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRBookmarkDBDelete()Ljava/lang/Object;

    .line 1211
    aput v1, v6, v0

    .line 1212
    const/16 v2, 0x4000

    aput v2, v7, v0

    .line 1213
    add-int/lit8 v0, v0, 0x1

    .line 1216
    :cond_11f
    const-wide/32 v2, 0x8000

    and-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-eqz v2, :cond_136

    .line 1218
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRCallLogDelete()V

    .line 1219
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRCallLogDBDelete()Ljava/lang/Object;

    .line 1220
    aput v1, v6, v0

    .line 1221
    const v2, 0x8000

    aput v2, v7, v0

    .line 1222
    add-int/lit8 v0, v0, 0x1

    .line 1225
    :cond_136
    const-wide/16 v2, 0x40

    and-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-eqz v2, :cond_148

    .line 1227
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMessageDelete()V

    .line 1228
    aput v1, v6, v0

    .line 1229
    const/16 v2, 0x40

    aput v2, v7, v0

    .line 1230
    add-int/lit8 v0, v0, 0x1

    .line 1233
    :cond_148
    const-wide/32 v2, 0x1000000

    and-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-eqz v2, :cond_15b

    .line 1235
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMiniDiaryDelete()V

    .line 1236
    aput v1, v6, v0

    .line 1237
    const/high16 v2, 0x100

    aput v2, v7, v0

    .line 1238
    add-int/lit8 v0, v0, 0x1

    .line 1241
    :cond_15b
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-eqz v2, :cond_16e

    .line 1243
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRPenMemoDelete()V

    .line 1244
    aput v1, v6, v0

    .line 1245
    const/high16 v2, 0x200

    aput v2, v7, v0

    .line 1246
    add-int/lit8 v0, v0, 0x1

    .line 1249
    :cond_16e
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-eqz v2, :cond_181

    .line 1251
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRSMemoDelete()V

    .line 1252
    aput v1, v6, v0

    .line 1253
    const/high16 v2, 0x4000

    aput v2, v7, v0

    .line 1254
    add-int/lit8 v0, v0, 0x1

    .line 1269
    :cond_181
    sget-object v2, Lcom/wssnps/database/smlContactItem;->NewGroupID:Ljava/util/HashMap;

    if-eqz v2, :cond_18a

    .line 1271
    sget-object v2, Lcom/wssnps/database/smlContactItem;->NewGroupID:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1274
    :cond_18a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v13, v1

    move-object v1, v2

    move v2, v13

    .line 1275
    :goto_1b8
    if-ge v2, v0, :cond_231

    .line 1276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, v7, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, v6, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1275
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v3

    goto :goto_1b8

    :cond_1f9
    move v0, v2

    .line 1131
    goto/16 :goto_59

    :cond_1fc
    move v0, v2

    .line 1139
    goto/16 :goto_6e

    :cond_1ff
    move v0, v2

    .line 1148
    goto/16 :goto_86

    :cond_202
    move v0, v2

    .line 1156
    goto/16 :goto_9c

    .line 1260
    :cond_205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1279
    :goto_230
    return-object v0

    :cond_231
    move-object v0, v1

    goto :goto_230

    :cond_233
    move v0, v3

    goto/16 :goto_a6

    :cond_236
    move v3, v1

    goto/16 :goto_45
.end method

.method public static smlBRRestoreStart()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    .line 1285
    sget-wide v0, Lcom/wssnps/database/smlBackupRestoreItem;->nCategory:J

    .line 1286
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v2, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 1287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smlBRRestoreStart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1289
    cmp-long v2, v0, v5

    if-eqz v2, :cond_fe

    .line 1291
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_RESTORE_FINISH:Z

    .line 1292
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->LOG_RESTORE_FINISH:Z

    .line 1293
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->EMAIL_RESTORE_FINISH:Z

    .line 1294
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->FM_RESTORE_FINISH:Z

    .line 1295
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->DIARY_RESTORE_FINISH:Z

    .line 1296
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->PENMEMO_RESTORE_FINISH:Z

    .line 1297
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->SMEMO_RESTORE_FINISH:Z

    .line 1299
    sput-boolean v4, Lcom/wssnps/database/smlBackupRestoreItem;->CONTACT_RESTORE_FINISH:Z

    .line 1300
    sput v7, Lcom/wssnps/database/smlBackupRestoreItem;->CONTACT_BR_CANCLE:I

    .line 1302
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_44

    .line 1304
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRConfigurationRestore()V

    .line 1307
    :cond_44
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_4b

    .line 1311
    :cond_4b
    const-wide/16 v2, 0x8

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_52

    .line 1315
    :cond_52
    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_59

    .line 1319
    :cond_59
    const-wide/16 v2, 0x20

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_60

    .line 1323
    :cond_60
    const-wide/16 v2, 0x100

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_67

    .line 1327
    :cond_67
    const-wide/16 v2, 0x200

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_6e

    .line 1331
    :cond_6e
    const-wide/16 v2, 0x400

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_75

    .line 1335
    :cond_75
    const-wide/32 v2, 0x40000

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_7d

    .line 1339
    :cond_7d
    const-wide/16 v2, 0x800

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_84

    .line 1343
    :cond_84
    const-wide/16 v2, 0x1000

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_8e

    .line 1345
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBREmailRestore()V

    .line 1348
    :cond_8e
    const-wide/16 v2, 0x4000

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_98

    .line 1350
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRNetworkRestore()V

    .line 1353
    :cond_98
    const-wide/32 v2, 0x8000

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_af

    .line 1355
    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->LOG_RESTORE_FINISH:Z

    .line 1356
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/wssnps/database/smlBackupRestoreItem$6;

    invoke-direct {v3}, Lcom/wssnps/database/smlBackupRestoreItem$6;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1366
    :cond_af
    const-wide/16 v2, 0x40

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_c5

    .line 1368
    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_RESTORE_FINISH:Z

    .line 1369
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/wssnps/database/smlBackupRestoreItem$7;

    invoke-direct {v3}, Lcom/wssnps/database/smlBackupRestoreItem$7;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1379
    :cond_c5
    const-wide/32 v2, 0x1000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_d0

    .line 1381
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMiniDiaryRestore()V

    .line 1384
    :cond_d0
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_e7

    .line 1386
    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->PENMEMO_RESTORE_FINISH:Z

    .line 1387
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/wssnps/database/smlBackupRestoreItem$8;

    invoke-direct {v3}, Lcom/wssnps/database/smlBackupRestoreItem$8;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1397
    :cond_e7
    const-wide/32 v2, 0x40000000

    and-long/2addr v0, v2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_fe

    .line 1399
    sput-boolean v7, Lcom/wssnps/database/smlBackupRestoreItem;->SMEMO_RESTORE_FINISH:Z

    .line 1400
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/wssnps/database/smlBackupRestoreItem$9;

    invoke-direct {v1}, Lcom/wssnps/database/smlBackupRestoreItem$9;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1411
    :cond_fe
    sget-boolean v0, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_RESTORE_FINISH:Z

    if-ne v0, v4, :cond_13d

    sget-boolean v0, Lcom/wssnps/database/smlBackupRestoreItem;->LOG_RESTORE_FINISH:Z

    if-ne v0, v4, :cond_13d

    sget-boolean v0, Lcom/wssnps/database/smlBackupRestoreItem;->EMAIL_RESTORE_FINISH:Z

    if-ne v0, v4, :cond_13d

    sget-boolean v0, Lcom/wssnps/database/smlBackupRestoreItem;->FM_RESTORE_FINISH:Z

    if-ne v0, v4, :cond_13d

    sget-boolean v0, Lcom/wssnps/database/smlBackupRestoreItem;->DIARY_RESTORE_FINISH:Z

    if-ne v0, v4, :cond_13d

    sget-boolean v0, Lcom/wssnps/database/smlBackupRestoreItem;->PENMEMO_RESTORE_FINISH:Z

    if-ne v0, v4, :cond_13d

    sget-boolean v0, Lcom/wssnps/database/smlBackupRestoreItem;->SMEMO_RESTORE_FINISH:Z

    if-ne v0, v4, :cond_13d

    .line 1414
    const-string v0, "smlBRRestoreStart COMPLEATE"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1423
    :goto_13c
    return-object v0

    .line 1419
    :cond_13d
    const-string v0, "smlBRRestoreStart BUSY"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "9\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13c
.end method

.method public static smlBRSMemoBackup()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 4993
    const-string v0, "smlBRSMemoBackup"

    invoke-static {v6, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4994
    const-string v0, "/data/_SamsungBnR_/BR/Smemo"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMakeDir(Ljava/lang/String;)Z

    move-result v0

    .line 4995
    if-nez v0, :cond_14

    .line 4997
    const-string v0, "Make directory failed!!!"

    invoke-static {v6, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 5002
    :cond_14
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getMemoType()I

    move-result v0

    if-ne v0, v6, :cond_34

    .line 5003
    const-string v0, "content://com.sec.android.widgetapp.q1_penmemo/DB_Backup"

    move-object v1, v0

    .line 5007
    :goto_1d
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "/data/_SamsungBnR_/BR/Smemo"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 5010
    :try_start_2e
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRSMemoCompress()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_38

    .line 5016
    :goto_31
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->SMEMO_BACKUP_FINISH:Z

    .line 5018
    return-void

    .line 5005
    :cond_34
    const-string v0, "content://com.diotek.penmemo.util.PenMemoProvider/DB_Backup"

    move-object v1, v0

    goto :goto_1d

    .line 5012
    :catch_38
    move-exception v0

    .line 5014
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31
.end method

.method public static smlBRSMemoCompress()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5064
    const/4 v0, 0x1

    const-string v1, "smlBRSMemoCompress"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 5066
    const-string v0, "/data/_SamsungBnR_/BR/Smemo"

    const-string v1, "/data/_SamsungBnR_/BR/Smemo.bk"

    invoke-static {v0, v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 5067
    return-void
.end method

.method public static smlBRSMemoDecompress()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5071
    const/4 v0, 0x1

    const-string v1, "smlBRSMemoDecompress"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 5073
    const-string v0, "/data/_SamsungBnR_/BR/Smemo.bk"

    const-string v1, "/data/_SamsungBnR_/BR/Smemo"

    invoke-static {v0, v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileUnZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 5074
    return-void
.end method

.method public static smlBRSMemoDelete()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 5047
    const-string v0, "smlBRSMemoDelete"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 5049
    const-string v0, "/data/_SamsungBnR_/BR/Smemo"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRemoveDir(Ljava/lang/String;)Z

    move-result v0

    .line 5050
    if-nez v0, :cond_13

    .line 5052
    const-string v0, "Remove directory failed!!!"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 5055
    :cond_13
    const-string v0, "/data/_SamsungBnR_/BR/Smemo.bk"

    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRFileDelete(Ljava/lang/String;)Z

    move-result v0

    .line 5056
    if-nez v0, :cond_20

    .line 5058
    const-string v0, "Remove file failed!!!"

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 5060
    :cond_20
    return-void
.end method

.method public static smlBRSMemoRestore()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 5022
    const-string v0, "smlBRSMemoRestore"

    invoke-static {v6, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 5025
    :try_start_7
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRSMemoDecompress()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_27

    .line 5034
    :goto_a
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getMemoType()I

    move-result v0

    if-ne v0, v6, :cond_2c

    .line 5035
    const-string v0, "content://com.sec.android.widgetapp.q1_penmemo/DB_Restore"

    move-object v1, v0

    .line 5039
    :goto_13
    sget-object v0, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "/data/_SamsungBnR_/BR/Smemo"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 5040
    sput-boolean v6, Lcom/wssnps/database/smlBackupRestoreItem;->SMEMO_RESTORE_FINISH:Z

    .line 5041
    return-void

    .line 5027
    :catch_27
    move-exception v0

    .line 5029
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 5037
    :cond_2c
    const-string v0, "content://com.diotek.penmemo.util.PenMemoProvider/DB_Restore"

    move-object v1, v0

    goto :goto_13
.end method

.method public static smlBRTaskDelete()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2804
    const-string v2, "smlBRTaskDelete"

    invoke-static {v0, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2806
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v2, :cond_32

    .line 2808
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2811
    :goto_12
    if-nez v2, :cond_17

    .line 2825
    :goto_14
    if-ltz v1, :cond_30

    .line 2828
    :goto_16
    return v0

    .line 2817
    :cond_17
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCaledarType()I

    move-result v4

    if-ne v4, v0, :cond_2b

    .line 2818
    const-string v4, "content://com.android.calendar/syncTasks"

    sput-object v4, Lcom/wssnps/database/smlBackupRestoreItem;->URI_SYNC:Ljava/lang/String;

    .line 2821
    :goto_21
    sget-object v4, Lcom/wssnps/database/smlBackupRestoreItem;->URI_SYNC:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2822
    invoke-virtual {v2, v4, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_14

    .line 2820
    :cond_2b
    const-string v4, "content://tasks/tasks"

    sput-object v4, Lcom/wssnps/database/smlBackupRestoreItem;->URI_SYNC:Ljava/lang/String;

    goto :goto_21

    :cond_30
    move v0, v1

    .line 2828
    goto :goto_16

    :cond_32
    move-object v2, v3

    goto :goto_12
.end method

.method protected static smlBRUnZipEntry(Ljava/util/zip/ZipInputStream;Ljava/io/File;)Ljava/io/File;
    .registers 9
    .parameter "zis"
    .parameter "targetFile"

    .prologue
    .line 2349
    const/4 v3, 0x0

    .line 2352
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_33
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_4c

    .line 2354
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    const/16 v6, 0x1000

    :try_start_8
    new-array v0, v6, [B

    .line 2355
    .local v0, buffer:[B
    const/4 v5, 0x0

    .line 2356
    .local v5, len:I
    :goto_b
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_27

    .line 2358
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_49
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_16} :catch_17

    goto :goto_b

    .line 2360
    .end local v0           #buffer:[B
    .end local v5           #len:I
    :catch_17
    move-exception v1

    move-object v3, v4

    .line 2361
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v1, e:Ljava/io/IOException;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :goto_19
    :try_start_19
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_33

    .line 2363
    if-eqz v3, :cond_21

    .line 2366
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_33
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_2e

    .line 2372
    :cond_21
    :goto_21
    if-eqz v3, :cond_26

    .line 2375
    :try_start_23
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_3f

    .line 2382
    .end local v1           #e:Ljava/io/IOException;
    :cond_26
    :goto_26
    return-object p1

    .line 2372
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #len:I
    :cond_27
    if-eqz v4, :cond_2c

    .line 2375
    :try_start_29
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_44

    :cond_2c
    :goto_2c
    move-object v3, v4

    .line 2380
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_26

    .line 2367
    .end local v0           #buffer:[B
    .end local v5           #len:I
    .restart local v1       #e:Ljava/io/IOException;
    :catch_2e
    move-exception v2

    .line 2368
    .local v2, e1:Ljava/io/IOException;
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_21

    .line 2372
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #e1:Ljava/io/IOException;
    :catchall_33
    move-exception v6

    :goto_34
    if-eqz v3, :cond_39

    .line 2375
    :try_start_36
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 2372
    :cond_39
    :goto_39
    throw v6

    .line 2376
    :catch_3a
    move-exception v2

    .line 2377
    .restart local v2       #e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_39

    .line 2376
    .end local v2           #e1:Ljava/io/IOException;
    .restart local v1       #e:Ljava/io/IOException;
    :catch_3f
    move-exception v2

    .line 2377
    .restart local v2       #e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    .line 2376
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #e1:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #len:I
    :catch_44
    move-exception v2

    .line 2377
    .restart local v2       #e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    .line 2372
    .end local v0           #buffer:[B
    .end local v2           #e1:Ljava/io/IOException;
    .end local v5           #len:I
    :catchall_49
    move-exception v6

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_34

    .line 2360
    :catch_4c
    move-exception v1

    goto :goto_19
.end method

.method private static smlBRZipEntry(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .registers 20
    .parameter "sourceFile"
    .parameter "sourcePath"
    .parameter "zos"

    .prologue
    .line 2198
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_27

    .line 2200
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, ".metadata"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 2272
    :cond_12
    :goto_12
    return-void

    .line 2205
    :cond_13
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 2206
    .local v8, fileArray:[Ljava/io/File;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_18
    array-length v15, v8

    if-ge v11, v15, :cond_12

    .line 2208
    aget-object v15, v8, v11

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRZipEntry(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 2206
    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    .line 2213
    .end local v8           #fileArray:[Ljava/io/File;
    .end local v11           #i:I
    :cond_27
    const/4 v9, 0x0

    .line 2214
    .local v9, fis:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 2217
    .local v2, bis:Ljava/io/BufferedInputStream;
    :try_start_29
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 2218
    .local v12, sFilePath:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 2220
    .local v14, zipEntryName:Ljava/lang/String;
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_a9
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_44} :catch_d5

    .line 2221
    .end local v9           #fis:Ljava/io/FileInputStream;
    .local v10, fis:Ljava/io/FileInputStream;
    :try_start_44
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_ce
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_49} :catch_d7

    .line 2222
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .local v3, bis:Ljava/io/BufferedInputStream;
    :try_start_49
    new-instance v13, Ljava/util/zip/ZipEntry;

    invoke-direct {v13, v14}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 2223
    .local v13, zentry:Ljava/util/zip/ZipEntry;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    move-wide v0, v15

    invoke-virtual {v13, v0, v1}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 2224
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 2226
    const/16 v15, 0x1000

    new-array v4, v15, [B

    .line 2227
    .local v4, buffer:[B
    const/4 v5, 0x0

    .line 2228
    .local v5, cnt:I
    :goto_60
    const/4 v15, 0x0

    const/16 v16, 0x1000

    move/from16 v0, v16

    invoke-virtual {v3, v4, v15, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    const/4 v15, -0x1

    if-eq v5, v15, :cond_93

    .line 2230
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v15, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_72
    .catchall {:try_start_49 .. :try_end_72} :catchall_d1
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_72} :catch_73

    goto :goto_60

    .line 2234
    .end local v4           #buffer:[B
    .end local v5           #cnt:I
    .end local v13           #zentry:Ljava/util/zip/ZipEntry;
    :catch_73
    move-exception v6

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .line 2235
    .end local v10           #fis:Ljava/io/FileInputStream;
    .end local v12           #sFilePath:Ljava/lang/String;
    .end local v14           #zipEntryName:Ljava/lang/String;
    .local v6, e:Ljava/io/IOException;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :goto_76
    :try_start_76
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_a9

    .line 2237
    if-eqz v2, :cond_7e

    .line 2240
    :try_start_7b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_a9
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_a4

    .line 2245
    :cond_7e
    :goto_7e
    if-eqz v9, :cond_83

    .line 2248
    :try_start_80
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_a9
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_b5

    .line 2254
    :cond_83
    :goto_83
    if-eqz v2, :cond_88

    .line 2257
    :try_start_85
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_c4

    .line 2262
    :cond_88
    :goto_88
    if-eqz v9, :cond_12

    .line 2265
    :try_start_8a
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_12

    .line 2266
    :catch_8e
    move-exception v7

    .line 2267
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #e:Ljava/io/IOException;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .local v7, e1:Ljava/io/IOException;
    :goto_8f
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 2232
    .end local v7           #e1:Ljava/io/IOException;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v5       #cnt:I
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #sFilePath:Ljava/lang/String;
    .restart local v13       #zentry:Ljava/util/zip/ZipEntry;
    .restart local v14       #zipEntryName:Ljava/lang/String;
    :cond_93
    :try_start_93
    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_d1
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_73

    .line 2254
    if-eqz v3, :cond_9b

    .line 2257
    :try_start_98
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_c9

    .line 2262
    :cond_9b
    :goto_9b
    if-eqz v10, :cond_12

    .line 2265
    :try_start_9d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a2

    goto/16 :goto_12

    .line 2266
    :catch_a2
    move-exception v7

    goto :goto_8f

    .line 2241
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #buffer:[B
    .end local v5           #cnt:I
    .end local v10           #fis:Ljava/io/FileInputStream;
    .end local v12           #sFilePath:Ljava/lang/String;
    .end local v13           #zentry:Ljava/util/zip/ZipEntry;
    .end local v14           #zipEntryName:Ljava/lang/String;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #e:Ljava/io/IOException;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :catch_a4
    move-exception v7

    .line 2242
    .restart local v7       #e1:Ljava/io/IOException;
    :try_start_a5
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a9

    goto :goto_7e

    .line 2254
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #e1:Ljava/io/IOException;
    :catchall_a9
    move-exception v15

    :goto_aa
    if-eqz v2, :cond_af

    .line 2257
    :try_start_ac
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_ba

    .line 2262
    :cond_af
    :goto_af
    if-eqz v9, :cond_b4

    .line 2265
    :try_start_b1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_bf

    .line 2254
    :cond_b4
    :goto_b4
    throw v15

    .line 2249
    .restart local v6       #e:Ljava/io/IOException;
    :catch_b5
    move-exception v7

    .line 2250
    .restart local v7       #e1:Ljava/io/IOException;
    :try_start_b6
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_a9

    goto :goto_83

    .line 2258
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #e1:Ljava/io/IOException;
    :catch_ba
    move-exception v7

    .line 2259
    .restart local v7       #e1:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_af

    .line 2266
    .end local v7           #e1:Ljava/io/IOException;
    :catch_bf
    move-exception v7

    .line 2267
    .restart local v7       #e1:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b4

    .line 2258
    .end local v7           #e1:Ljava/io/IOException;
    .restart local v6       #e:Ljava/io/IOException;
    :catch_c4
    move-exception v7

    .line 2259
    .restart local v7       #e1:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_88

    .line 2258
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #e1:Ljava/io/IOException;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v5       #cnt:I
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #sFilePath:Ljava/lang/String;
    .restart local v13       #zentry:Ljava/util/zip/ZipEntry;
    .restart local v14       #zipEntryName:Ljava/lang/String;
    :catch_c9
    move-exception v7

    .line 2259
    .restart local v7       #e1:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9b

    .line 2254
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #buffer:[B
    .end local v5           #cnt:I
    .end local v7           #e1:Ljava/io/IOException;
    .end local v13           #zentry:Ljava/util/zip/ZipEntry;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :catchall_ce
    move-exception v15

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_aa

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catchall_d1
    move-exception v15

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_aa

    .line 2234
    .end local v12           #sFilePath:Ljava/lang/String;
    .end local v14           #zipEntryName:Ljava/lang/String;
    :catch_d5
    move-exception v6

    goto :goto_76

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #sFilePath:Ljava/lang/String;
    .restart local v14       #zipEntryName:Ljava/lang/String;
    :catch_d7
    move-exception v6

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_76
.end method

.method public static smlBRgetdatasize(Ljava/lang/String;)V
    .registers 10
    .parameter "parm"

    .prologue
    const/4 v8, 0x0

    .line 451
    sget-object v3, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sput-object v3, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    .line 452
    const/4 v1, 0x0

    .line 453
    .local v1, getPackageSizeInfo:Ljava/lang/reflect/Method;
    sget-object v3, Lcom/wssnps/database/smlBackupRestoreItem;->m_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 457
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getPackageSizeInfo"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/content/pm/IPackageStatsObserver;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_22
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_22} :catch_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_22} :catch_2b

    move-result-object v1

    .line 470
    if-nez v1, :cond_30

    .line 503
    :goto_25
    return-void

    .line 459
    :catch_26
    move-exception v0

    .line 461
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_25

    .line 464
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2b
    move-exception v0

    .line 466
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_25

    .line 477
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_30
    invoke-static {v8}, Lcom/wssnps/database/smlBackupRestoreItem;->changeNumLookups(I)V

    .line 480
    const/4 v3, 0x2

    :try_start_34
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/wssnps/database/smlBackupRestoreItem$1;

    invoke-direct {v5}, Lcom/wssnps/database/smlBackupRestoreItem$1;-><init>()V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_44} :catch_45
    .catch Ljava/lang/IllegalAccessException; {:try_start_34 .. :try_end_44} :catch_4a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_34 .. :try_end_44} :catch_4f

    goto :goto_25

    .line 491
    :catch_45
    move-exception v0

    .line 493
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_25

    .line 495
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_4a
    move-exception v0

    .line 497
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_25

    .line 499
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_4f
    move-exception v0

    .line 501
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_25
.end method
