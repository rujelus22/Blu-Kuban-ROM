.class public Lcom/samsungframeworks/internal/PhoneInfoInterface;
.super Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;
.source "PhoneInfoInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;
    }
.end annotation


# static fields
.field static final DISCONNECT_WAIT_TIME:I = 0xfa0

.field private static final EVENT_ERROR:I = -0x1

.field private static final EVENT_GET:I = 0x1

.field private static final EVENT_GET_DATA_PROF:I = 0x3

.field private static final EVENT_GET_PRL:I = 0x6

.field private static final EVENT_NOT_RESPOND:I = 0x5

.field private static final EVENT_SET:I = 0x2

.field private static final EVENT_SET_DATA_PROF:I = 0x4

.field static final ID_SETUPCOMPLETED:I = 0x2710

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneInfoInterface"

.field static final OEM_MAIN_CMD_HIDDEN:I = 0x9

.field static final OEM_SUB_CMD_AKEY_VERIFY:I = 0x1

.field static final OEM_SUB_CMD_GET_MSL:I = 0x2

.field static final VM_COUNT_CDMA:Ljava/lang/String; = "vm_count_key_cdma"

.field private static kl:Landroid/app/KeyguardManager$KeyguardLock;

.field private static km:Landroid/app/KeyguardManager;

.field private static pm:Landroid/os/PowerManager;

.field private static wl:Landroid/os/PowerManager$WakeLock;


# instance fields
.field CMD_WAIT_TIME:I

.field private DB_TABLE:Ljava/lang/String;

.field private changingSlot:Z

.field private curCmd:I

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

.field mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

.field mPIMThread:Landroid/os/HandlerThread;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private final mPhoneLock:Ljava/lang/Object;

.field mdn:Ljava/lang/String;

.field proxyBackup:Ljava/lang/String;

.field private useOamdm:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 96
    sput-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->pm:Landroid/os/PowerManager;

    .line 98
    sput-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->wl:Landroid/os/PowerManager$WakeLock;

    .line 100
    sput-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->km:Landroid/app/KeyguardManager;

    .line 102
    sput-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->kl:Landroid/app/KeyguardManager$KeyguardLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "contxt"

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;-><init>()V

    .line 66
    const/16 v1, 0x1f40

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->CMD_WAIT_TIME:I

    .line 68
    iput v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 82
    const-string v1, "t_systemproperty"

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    .line 90
    iput-boolean v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->changingSlot:Z

    .line 92
    iput-boolean v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->useOamdm:Z

    .line 94
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    .line 130
    iput-object p1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    .line 131
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "mSSThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIMThread:Landroid/os/HandlerThread;

    .line 132
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIMThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 134
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIMThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 135
    .local v0, looper:Landroid/os/Looper;
    new-instance v1, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    invoke-direct {v1, p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;-><init>(Lcom/samsungframeworks/internal/PhoneInfoInterface;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    .line 136
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 137
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->PrepareInternalDB()V

    .line 143
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->setSystemProp()V

    .line 145
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 146
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getMiscPolicy()Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    .line 147
    return-void
.end method

.method private GetValueInternalDB(I)Ljava/lang/String;
    .registers 12
    .parameter "id"

    .prologue
    .line 212
    const/4 v6, 0x0

    .line 213
    .local v6, ret:Ljava/lang/String;
    const/4 v3, 0x0

    .line 216
    .local v3, cursor:Landroid/database/Cursor;
    const/16 v7, 0x12c

    if-ne v7, p1, :cond_49

    .line 217
    :try_start_6
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'MobileSyncEnabled\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_27
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_27} :catch_1ff

    move-result-object v3

    .line 260
    :cond_28
    :goto_28
    if-eqz v3, :cond_48

    .line 262
    const-string v7, "FieldName"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 263
    .local v5, firstFieldNameColumn:I
    const-string v7, "FieldValue"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 266
    .local v2, FieldValueColumn:I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_45

    .line 267
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, FieldName:Ljava/lang/String;
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, FieldValue:Ljava/lang/String;
    move-object v6, v1

    .line 272
    .end local v0           #FieldName:Ljava/lang/String;
    .end local v1           #FieldValue:Ljava/lang/String;
    :cond_45
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 274
    .end local v2           #FieldValueColumn:I
    .end local v5           #firstFieldNameColumn:I
    :cond_48
    return-object v6

    .line 219
    :cond_49
    const/16 v7, 0x192

    if-ne v7, p1, :cond_70

    .line 220
    :try_start_4d
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'DSAServerURL\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_28

    .line 222
    :cond_70
    const/16 v7, 0xa1

    if-ne v7, p1, :cond_97

    .line 223
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'PDEPrimaryIP\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_28

    .line 225
    :cond_97
    const/16 v7, 0xa3

    if-ne v7, p1, :cond_bf

    .line 226
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'PDEPrimaryPort\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_28

    .line 228
    :cond_bf
    const/16 v7, 0x2710

    if-ne v7, p1, :cond_e7

    .line 229
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'SetUpCompleted\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_28

    .line 231
    :cond_e7
    const/16 v7, 0x195

    if-ne v7, p1, :cond_10f

    .line 232
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'DSAServerIP\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_28

    .line 234
    :cond_10f
    const/16 v7, 0x196

    if-ne v7, p1, :cond_137

    .line 235
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'DSAServerPort\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_28

    .line 237
    :cond_137
    const/16 v7, 0x19c

    if-ne v7, p1, :cond_15f

    .line 238
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'RTSPProxyAddr\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_28

    .line 240
    :cond_15f
    const/16 v7, 0x19d

    if-ne v7, p1, :cond_187

    .line 241
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'RTSPProxyPort\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_28

    .line 243
    :cond_187
    const/16 v7, 0x19e

    if-ne v7, p1, :cond_1af

    .line 244
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'HTTPPDProxyAddr\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_28

    .line 246
    :cond_1af
    const/16 v7, 0x19f

    if-ne v7, p1, :cond_1d7

    .line 247
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'HTTPPDProxyPort\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_28

    .line 250
    :cond_1d7
    const/16 v7, 0x1f4

    if-ne v7, p1, :cond_28

    .line 251
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "select FieldName,FieldValue from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where FieldName==\'WorkMode\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1fc
    .catch Landroid/database/SQLException; {:try_start_4d .. :try_end_1fc} :catch_1ff

    move-result-object v3

    goto/16 :goto_28

    .line 256
    :catch_1ff
    move-exception v4

    .line 257
    .local v4, e:Landroid/database/SQLException;
    const-string v7, "PhoneInfoInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SQLException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28
.end method

.method private PrepareInternalDB()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 151
    const/4 v1, 0x1

    .line 152
    .local v1, DB_VERSION:I
    const/4 v0, 0x0

    .line 155
    .local v0, DB_MODE:I
    :try_start_3
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    const-string v4, "db_systemproperty"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 156
    const-string v3, "PhoneInfoInterface"

    const-string v4, "Success Create DB"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_15} :catch_1fe

    .line 164
    :goto_15
    :try_start_15
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create table if not exists "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName VARCHAR PRIMARY KEY, FieldValue VARCHAR)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'MobileSyncEnabled\', \'true\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'DSAServerURL\',\'https://dsa.spcsdns.net:443/dsa/\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'PDEPrimaryIP\',\'0.0.0.0\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'PDEPrimaryPort\',\'0.0.0.0\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'SetUpCompleted\',\'false\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'DSAServerIP\',\'144.226.247.31\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 184
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'DSAServerPort\',\'80\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'RTSPProxyAddr\',\'0.0.0.0\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'RTSPProxyPort\',\'0\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'HTTPPDProxyAddr\',\'0.0.0.0\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'HTTPPDProxyPort\',\'0\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 201
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FieldName, FieldValue)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values (\'WorkMode\',\'0\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1fd
    .catch Landroid/database/SQLException; {:try_start_15 .. :try_end_1fd} :catch_20a

    .line 209
    :goto_1fd
    return-void

    .line 157
    :catch_1fe
    move-exception v2

    .line 158
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    iput-object v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 159
    const-string v3, "PhoneInfoInterface"

    const-string v4, "Fail to Create DB"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 205
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :catch_20a
    move-exception v2

    .line 206
    .local v2, e:Landroid/database/SQLException;
    const-string v3, "PhoneInfoInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1fd
.end method

.method private SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "id"
    .parameter "value"

    .prologue
    .line 278
    const/4 v6, 0x0

    .line 279
    .local v6, ret:Ljava/lang/String;
    const/4 v3, 0x0

    .line 282
    .local v3, cursor:Landroid/database/Cursor;
    const/16 v7, 0x12c

    if-ne v7, p1, :cond_59

    .line 283
    :try_start_6
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "where FieldName==\'MobileSyncEnabled\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_37
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_37} :catch_2c0

    move-result-object v3

    .line 326
    :cond_38
    :goto_38
    if-eqz v3, :cond_58

    .line 328
    const-string v7, "FieldName"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 329
    .local v5, firstFieldNameColumn:I
    const-string v7, "FieldValue"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 332
    .local v2, FieldValueColumn:I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_55

    .line 333
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, FieldName:Ljava/lang/String;
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, FieldValue:Ljava/lang/String;
    move-object v6, v1

    .line 338
    .end local v0           #FieldName:Ljava/lang/String;
    .end local v1           #FieldValue:Ljava/lang/String;
    :cond_55
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 340
    .end local v2           #FieldValueColumn:I
    .end local v5           #firstFieldNameColumn:I
    :cond_58
    return-object v6

    .line 285
    :cond_59
    const/16 v7, 0x192

    if-ne v7, p1, :cond_90

    .line 286
    :try_start_5d
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "where FieldName==\'DSAServerURL\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_38

    .line 288
    :cond_90
    const/16 v7, 0xa1

    if-ne v7, p1, :cond_c8

    .line 289
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "where FieldName==\'PDEPrimaryIP\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_38

    .line 291
    :cond_c8
    const/16 v7, 0xa3

    if-ne v7, p1, :cond_100

    .line 292
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "where FieldName==\'PDEPrimaryPort\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_38

    .line 294
    :cond_100
    const/16 v7, 0x2710

    if-ne v7, p1, :cond_138

    .line 295
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "where FieldName==\'SetUpCompleted\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_38

    .line 297
    :cond_138
    const/16 v7, 0x195

    if-ne v7, p1, :cond_170

    .line 298
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "where FieldName==\'DSAServerIP\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_38

    .line 300
    :cond_170
    const/16 v7, 0x196

    if-ne v7, p1, :cond_1a8

    .line 301
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "where FieldName==\'DSAServerPort\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_38

    .line 303
    :cond_1a8
    const/16 v7, 0x19c

    if-ne v7, p1, :cond_1e0

    .line 304
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "where FieldName==\'RTSPProxyAddr\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_38

    .line 306
    :cond_1e0
    const/16 v7, 0x19d

    if-ne v7, p1, :cond_218

    .line 307
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "where FieldName==\'RTSPProxyPort\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_38

    .line 309
    :cond_218
    const/16 v7, 0x19e

    if-ne v7, p1, :cond_250

    .line 310
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "where FieldName==\'HTTPPDProxyAddr\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_38

    .line 312
    :cond_250
    const/16 v7, 0x19f

    if-ne v7, p1, :cond_288

    .line 313
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "where FieldName==\'HTTPPDProxyPort\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_38

    .line 316
    :cond_288
    const/16 v7, 0x1f4

    if-ne v7, p1, :cond_38

    .line 317
    iget-object v7, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->DB_TABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " set FieldValue = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "where FieldName==\'WorkMode\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2bd
    .catch Landroid/database/SQLException; {:try_start_5d .. :try_end_2bd} :catch_2c0

    move-result-object v3

    goto/16 :goto_38

    .line 322
    :catch_2c0
    move-exception v4

    .line 323
    .local v4, e:Landroid/database/SQLException;
    const-string v7, "PhoneInfoInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SQLException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38
.end method

.method static synthetic access$000(Lcom/samsungframeworks/internal/PhoneInfoInterface;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    return v0
.end method

.method private enforceUID()V
    .registers 5

    .prologue
    .line 344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 346
    .local v0, uid:I
    const/16 v1, 0xfa1

    if-eq v0, v1, :cond_36

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_36

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_36

    .line 348
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enforceUID() uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not sprint extension"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "user is not sprint extension"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_36
    return-void
.end method

.method private isNetworkAvailable()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1059
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/16 v3, 0x28

    if-ge v1, v3, :cond_16

    .line 1060
    const/4 v3, 0x0

    :try_start_7
    invoke-direct {p0, v3}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->isNetworkAvailable(I)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1061
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_17

    .line 1059
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1068
    :cond_15
    const/4 v2, 0x1

    .line 1073
    :cond_16
    :goto_16
    return v2

    .line 1070
    :catch_17
    move-exception v0

    .line 1071
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PhoneInfoInterface"

    const-string v4, "isNetworkAvailable:wait"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method private isNetworkAvailable(I)Z
    .registers 8
    .parameter "networkType"

    .prologue
    const/4 v3, 0x0

    .line 1078
    const/4 v1, 0x0

    .line 1080
    .local v1, info:Landroid/net/NetworkInfo;
    :try_start_2
    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1081
    .local v2, mCM:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_13

    move-result-object v1

    .line 1085
    .end local v2           #mCM:Landroid/net/ConnectivityManager;
    :goto_10
    if-nez v1, :cond_1c

    .line 1089
    :cond_12
    :goto_12
    return v3

    .line 1082
    :catch_13
    move-exception v0

    .line 1083
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "PhoneInfoInterface"

    const-string v5, "isNetworkAvailable"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 1086
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1c
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, p1, :cond_12

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_12

    .line 1089
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    goto :goto_12
.end method

.method private setSystemProp()V
    .registers 3

    .prologue
    .line 1126
    const/16 v1, 0x19c

    invoke-direct {p0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    .line 1127
    .local v0, value:Ljava/lang/String;
    const-string v1, "net.cdma.rtsp.proxy.addr"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    const/16 v1, 0x19d

    invoke-direct {p0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    .line 1130
    const-string v1, "net.cdma.rtsp.proxy.port"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const/16 v1, 0x19e

    invoke-direct {p0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    .line 1133
    const-string v1, "net.cdma.httppd.proxy.addr"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    const/16 v1, 0x19f

    invoke-direct {p0, v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    .line 1136
    const-string v1, "net.cdma.httppd.proxy.port"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    return-void
.end method

.method private stopAndWaitReturn()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1143
    :try_start_0
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    iget v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->CMD_WAIT_TIME:I

    invoke-virtual {v1, v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->waitResponse(I)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_e

    .line 1147
    :goto_7
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    invoke-virtual {v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->getPropertyValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1144
    :catch_e
    move-exception v0

    .line 1145
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method


# virtual methods
.method public IsBluetoothEnabled()V
    .registers 4

    .prologue
    .line 1287
    const-string v1, "PhoneInfoInterface"

    const-string v2, "IsBluetoothEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isBluetoothEnabled(Z)Z

    move-result v0

    .line 1291
    .local v0, mRet:Z
    return-void
.end method

.method public IsCameraEnabled()V
    .registers 4

    .prologue
    .line 1294
    const-string v1, "PhoneInfoInterface"

    const-string v2, "IsCameraEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v0

    .line 1298
    .local v0, mRet:Z
    return-void
.end method

.method public IsEncryptDeviceEnabled()V
    .registers 4

    .prologue
    .line 1301
    const-string v1, "PhoneInfoInterface"

    const-string v2, "IsEncryptDeviceEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isInternalStorageEncrypted()Z

    move-result v0

    .line 1305
    .local v0, mRet:Z
    return-void
.end method

.method public IsEncryptSDCardEnable()V
    .registers 4

    .prologue
    .line 1308
    const-string v1, "PhoneInfoInterface"

    const-string v2, "IsEncryptSDCardEnable()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isExternalStorageEncrypted()Z

    move-result v0

    .line 1312
    .local v0, mRet:Z
    return-void
.end method

.method public IsWiFiEnabled()V
    .registers 4

    .prologue
    .line 1315
    const-string v1, "PhoneInfoInterface"

    const-string v2, "IsWiFiEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isWiFiEnabled(Z)Z

    move-result v0

    .line 1319
    .local v0, mRet:Z
    return-void
.end method

.method public SetDisableBluetooth()V
    .registers 3

    .prologue
    .line 1323
    const-string v0, "PhoneInfoInterface"

    const-string v1, "SetDisableBluetooth()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->setBluetoothState(Z)Z

    .line 1326
    return-void
.end method

.method public SetDisableCamera()V
    .registers 3

    .prologue
    .line 1329
    const-string v0, "PhoneInfoInterface"

    const-string v1, "SetDisableCamera()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->setCameraState(Z)Z

    .line 1332
    return-void
.end method

.method public SetDisableWifi()V
    .registers 3

    .prologue
    .line 1335
    const-string v0, "PhoneInfoInterface"

    const-string v1, "SetDisableWifi()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->setWiFiState(Z)Z

    .line 1338
    return-void
.end method

.method public SetEncryptDevice()V
    .registers 3

    .prologue
    .line 1341
    const-string v0, "PhoneInfoInterface"

    const-string v1, "SetEncryptDevice()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->setInternalStorageEncryption(Z)V

    .line 1344
    return-void
.end method

.method public SetEncryptSDCard()V
    .registers 3

    .prologue
    .line 1347
    const-string v0, "PhoneInfoInterface"

    const-string v1, "SetEncryptSDCard()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->setExternalStorageEncryption(Z)V

    .line 1350
    return-void
.end method

.method public disableDataconnection()V
    .registers 3

    .prologue
    .line 965
    const-string v0, "PhoneInfoInterface"

    const-string v1, "disableDataconnection"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity()Z

    .line 967
    return-void
.end method

.method public disableScreenTimeout()V
    .registers 4

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 870
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->pm:Landroid/os/PowerManager;

    if-nez v0, :cond_13

    .line 871
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->pm:Landroid/os/PowerManager;

    .line 873
    :cond_13
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->wl:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_24

    .line 874
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->pm:Landroid/os/PowerManager;

    const v1, 0x3000000a

    const-string v2, "SprintPowerLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->wl:Landroid/os/PowerManager$WakeLock;

    .line 879
    :cond_24
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_31

    .line 880
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 883
    :cond_31
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->km:Landroid/app/KeyguardManager;

    if-nez v0, :cond_41

    .line 884
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->km:Landroid/app/KeyguardManager;

    .line 886
    :cond_41
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->kl:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_4f

    .line 887
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->km:Landroid/app/KeyguardManager;

    const-string v1, "SprintKeyLock"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    sput-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->kl:Landroid/app/KeyguardManager$KeyguardLock;

    .line 890
    :cond_4f
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->kl:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 891
    return-void
.end method

.method public enableScreenTimeout()V
    .registers 3

    .prologue
    .line 857
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 859
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->wl:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 860
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 862
    :cond_15
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->kl:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_1e

    .line 863
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->kl:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 865
    :cond_1e
    return-void
.end method

.method public getA_Key()Ljava/lang/String;
    .registers 2

    .prologue
    .line 411
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v11, 0x2

    .line 906
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 908
    const/4 v4, 0x0

    .line 910
    .local v4, ret:Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 911
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 913
    .local v1, dos:Ljava/io/DataOutputStream;
    iget-object v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v6

    .line 914
    :try_start_12
    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_68

    .line 918
    const/4 v3, 0x3

    .line 919
    .local v3, fileSize:I
    const/16 v5, 0x9

    :try_start_1b
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 920
    const/16 v5, 0x14

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 921
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_68
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_26} :catch_5d

    .line 929
    :try_start_26
    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iget-object v8, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v9, 0x6

    iget v10, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 931
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 933
    const-string v5, "ril.prl_ver_1"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 935
    if-eqz v4, :cond_6b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v11, :cond_6b

    .line 936
    const/4 v5, 0x2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 940
    :goto_5a
    monitor-exit v6

    move-object v5, v4

    .line 942
    :goto_5c
    return-object v5

    .line 923
    :catch_5d
    move-exception v2

    .line 925
    .local v2, e:Ljava/io/IOException;
    const-string v5, "PhoneInfoInterface"

    const-string v7, "getCdmaPrlVersionexception occured during operation read PRL"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/4 v5, 0x0

    monitor-exit v6

    goto :goto_5c

    .line 940
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fileSize:I
    :catchall_68
    move-exception v5

    monitor-exit v6
    :try_end_6a
    .catchall {:try_start_26 .. :try_end_6a} :catchall_68

    throw v5

    .line 938
    .restart local v3       #fileSize:I
    :cond_6b
    :try_start_6b
    const-string v4, "Unknown"
    :try_end_6d
    .catchall {:try_start_6b .. :try_end_6d} :catchall_68

    goto :goto_5a
.end method

.method public getCurrentSlot()I
    .registers 6

    .prologue
    .line 947
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v2

    .line 948
    :try_start_3
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->getDataProfile(Landroid/os/Message;)V

    .line 949
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 950
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    invoke-virtual {v1}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->getDataProfileReturnValue()I

    move-result v0

    .line 951
    .local v0, ret:I
    monitor-exit v2

    .line 952
    return v0

    .line 951
    .end local v0           #ret:I
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getDSA_SERVER_IP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 587
    const/16 v0, 0x195

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDSA_SERVER_PORT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 591
    const/16 v0, 0x196

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDSA_SERVER_URL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 552
    const/16 v0, 0x192

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDataProfile()I
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 973
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->getCurrentSlot()I

    move-result v0

    .line 974
    .local v0, slot:I
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_23

    move-result v1

    .line 976
    .local v1, ss:I
    if-nez v1, :cond_18

    .line 977
    if-nez v0, :cond_16

    .line 978
    const/16 v2, 0x64

    .line 986
    :cond_16
    :goto_16
    monitor-exit p0

    return v2

    .line 983
    :cond_18
    if-eq v1, v2, :cond_1d

    const/4 v2, 0x3

    if-ne v1, v2, :cond_20

    .line 984
    :cond_1d
    const/16 v2, 0x3e8

    goto :goto_16

    .line 986
    :cond_20
    const/16 v2, 0x3e9

    goto :goto_16

    .line 973
    .end local v0           #slot:I
    .end local v1           #ss:I
    :catchall_23
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getHTTPPD_PROXY_ADDR()Ljava/lang/String;
    .registers 2

    .prologue
    .line 604
    const/16 v0, 0x19e

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPPD_PROXY_PORT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 608
    const/16 v0, 0x19f

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMDN()Ljava/lang/String;
    .registers 8

    .prologue
    .line 365
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v2

    .line 366
    :try_start_3
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 367
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 369
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, ret:Ljava/lang/String;
    monitor-exit v2

    .line 371
    return-object v0

    .line 370
    .end local v0           #ret:Ljava/lang/String;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public getMEID()Ljava/lang/String;
    .registers 8

    .prologue
    .line 387
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v2

    .line 388
    :try_start_3
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 389
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 391
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, ret:Ljava/lang/String;
    monitor-exit v2

    .line 393
    return-object v0

    .line 392
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public getMOBILESYNK_ENABLED()Ljava/lang/String;
    .registers 2

    .prologue
    .line 548
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMSID()Ljava/lang/String;
    .registers 8

    .prologue
    .line 376
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v2

    .line 377
    :try_start_3
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 378
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x23

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 380
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, ret:Ljava/lang/String;
    monitor-exit v2

    .line 382
    return-object v0

    .line 381
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public getPDE_PRIMARY_IP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 558
    const/4 v0, 0x0

    .line 569
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method

.method public getPDE_PRIMARY_PORT()Ljava/lang/String;
    .registers 3

    .prologue
    .line 573
    const/4 v0, 0x0

    .line 583
    .local v0, ret:I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPESUDO_ESN()Ljava/lang/String;
    .registers 8

    .prologue
    .line 398
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v2

    .line 399
    :try_start_3
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 400
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 402
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, ret:Ljava/lang/String;
    monitor-exit v2

    .line 404
    return-object v0

    .line 403
    .end local v0           #ret:Ljava/lang/String;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public getRTSP_PROXY_ADDR()Ljava/lang/String;
    .registers 2

    .prologue
    .line 595
    const/16 v0, 0x19c

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRTSP_PROXY_PORT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 600
    const/16 v0, 0x19d

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoamingIndicator()I
    .registers 2

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v0

    return v0
.end method

.method public getSLOT_1_AAA_AUTH_ALGORITHM()Ljava/lang/String;
    .registers 8

    .prologue
    .line 490
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v2

    .line 491
    :try_start_3
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 492
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x5d

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 495
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, ret:Ljava/lang/String;
    monitor-exit v2

    .line 497
    return-object v0

    .line 496
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public getSLOT_1_AAA_SPI()Ljava/lang/String;
    .registers 8

    .prologue
    .line 502
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v2

    .line 503
    :try_start_3
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 504
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x5e

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 506
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, ret:Ljava/lang/String;
    monitor-exit v2

    .line 508
    return-object v0

    .line 507
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public getSLOT_1_HA_AUTH_ALGORITHM()Ljava/lang/String;
    .registers 8

    .prologue
    .line 460
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v2

    .line 461
    :try_start_3
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 462
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x5a

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 465
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, ret:Ljava/lang/String;
    monitor-exit v2

    .line 467
    return-object v0

    .line 466
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public getSLOT_1_HA_PASSWORD()Ljava/lang/String;
    .registers 2

    .prologue
    .line 485
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSLOT_1_HA_SPI()Ljava/lang/String;
    .registers 8

    .prologue
    .line 472
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v2

    .line 473
    :try_start_3
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 474
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x5b

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 476
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, ret:Ljava/lang/String;
    monitor-exit v2

    .line 478
    return-object v0

    .line 477
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public getSLOT_1_MOBILE_IP_ADDRESS()Ljava/lang/String;
    .registers 8

    .prologue
    .line 525
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v2

    .line 526
    :try_start_3
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 527
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x57

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 530
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, ret:Ljava/lang/String;
    monitor-exit v2

    .line 532
    return-object v0

    .line 531
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public getSLOT_1_NAI()Ljava/lang/String;
    .registers 8

    .prologue
    .line 416
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v2

    .line 417
    :try_start_3
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 418
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 420
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, ret:Ljava/lang/String;
    monitor-exit v2

    .line 422
    return-object v0

    .line 421
    .end local v0           #ret:Ljava/lang/String;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public getSLOT_1_NAI_PASSWORD()Ljava/lang/String;
    .registers 8

    .prologue
    .line 427
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v2

    .line 428
    :try_start_3
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 429
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x2b

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 431
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, ret:Ljava/lang/String;
    monitor-exit v2

    .line 433
    return-object v0

    .line 432
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public getSLOT_1_PRIMARY_HA()Ljava/lang/String;
    .registers 8

    .prologue
    .line 438
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v2

    .line 439
    :try_start_3
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 440
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 442
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, ret:Ljava/lang/String;
    monitor-exit v2

    .line 444
    return-object v0

    .line 443
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public getSLOT_1_REVERSE_TUNNELING()Ljava/lang/String;
    .registers 8

    .prologue
    .line 513
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v2

    .line 514
    :try_start_3
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 515
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x56

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 518
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, ret:Ljava/lang/String;
    monitor-exit v2

    .line 520
    return-object v0

    .line 519
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public getSLOT_1_SECONDARY_HA()Ljava/lang/String;
    .registers 8

    .prologue
    .line 449
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v2

    .line 450
    :try_start_3
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 451
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 453
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, ret:Ljava/lang/String;
    monitor-exit v2

    .line 455
    return-object v0

    .line 454
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public getSetUpCompleted()Ljava/lang/String;
    .registers 2

    .prologue
    .line 360
    const/16 v0, 0x2710

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUAPROF()Ljava/lang/String;
    .registers 8

    .prologue
    .line 538
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v2

    .line 539
    :try_start_3
    iget v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 540
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 542
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, ret:Ljava/lang/String;
    monitor-exit v2

    .line 544
    return-object v0

    .line 543
    .end local v0           #ret:Ljava/lang/String;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public getVoiceMailCount()I
    .registers 6

    .prologue
    .line 1263
    const-string v3, "PhoneInfoInterface"

    const-string v4, "getVoiceMailCount()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    const/4 v1, 0x0

    .line 1266
    .local v1, ret:I
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1268
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1269
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "vm_count_key_cdma"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1271
    return v1
.end method

.method public getWORK_MODE()Ljava/lang/String;
    .registers 2

    .prologue
    .line 613
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->GetValueInternalDB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reboot()V
    .registers 3

    .prologue
    .line 894
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 896
    const-string v0, "PhoneInfoInterface"

    const-string v1, "Rebooting !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->pm:Landroid/os/PowerManager;

    if-nez v0, :cond_1a

    .line 899
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->pm:Landroid/os/PowerManager;

    .line 902
    :cond_1a
    sget-object v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->pm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->rebootWithIntent()V

    .line 903
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 1093
    const-string v0, "PhoneInfoInterface"

    const-string v1, "InterruptedException: release()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    return-void
.end method

.method public releaseDSAProxy()V
    .registers 3

    .prologue
    .line 1117
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 1118
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->proxyBackup:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1119
    const-string v0, "net.gprs.http-proxy"

    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->proxyBackup:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    :cond_e
    return-void
.end method

.method public declared-synchronized requestDataProfile(I)I
    .registers 11
    .parameter "dataconnection"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 991
    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 994
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 995
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 996
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    .line 997
    .local v0, connectedOrConnecting:Z
    const/4 v3, 0x2

    if-eq p1, v3, :cond_86

    .line 998
    if-ne v0, v7, :cond_2e

    .line 999
    const-string v3, "PhoneInfoInterface"

    const-string v4, "requestDataProfile connectedOrConnecting: true"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity()Z

    .line 1002
    :cond_2e
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->useOamdm:Z

    .line 1007
    :goto_31
    const-string v3, "PhoneInfoInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestDataProfile setDataProfile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    if-ne v7, p1, :cond_92

    .line 1010
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/Phone;->setDataProfile(ILandroid/os/Message;)V

    .line 1014
    :goto_5c
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 1032
    iget-boolean v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->useOamdm:Z

    if-nez v3, :cond_6f

    .line 1033
    const-string v3, "PhoneInfoInterface"

    const-string v4, "requestDataProfile mPhone.enableDataConnectivity() "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->enableDataConnectivity()Z

    .line 1039
    :cond_6f
    if-ne v0, v7, :cond_73

    if-eqz p1, :cond_77

    :cond_73
    iget-boolean v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->useOamdm:Z
    :try_end_75
    .catchall {:try_start_3 .. :try_end_75} :catchall_8f

    if-ne v3, v7, :cond_7c

    .line 1041
    :cond_77
    const-wide/16 v3, 0xfa0

    :try_start_79
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_8f
    .catch Ljava/lang/InterruptedException; {:try_start_79 .. :try_end_7c} :catch_a0

    .line 1047
    :cond_7c
    :goto_7c
    if-nez p1, :cond_81

    .line 1048
    :try_start_7e
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->isNetworkAvailable()Z

    .line 1051
    :cond_81
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->useOamdm:Z
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_8f

    .line 1053
    monitor-exit p0

    return v8

    .line 1004
    :cond_86
    :try_start_86
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity()Z

    .line 1005
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->useOamdm:Z
    :try_end_8e
    .catchall {:try_start_86 .. :try_end_8e} :catchall_8f

    goto :goto_31

    .line 991
    .end local v0           #connectedOrConnecting:Z
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :catchall_8f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1012
    .restart local v0       #connectedOrConnecting:Z
    .restart local v2       #netInfo:Landroid/net/NetworkInfo;
    :cond_92
    :try_start_92
    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/Phone;->setDataProfile(ILandroid/os/Message;)V

    goto :goto_5c

    .line 1042
    :catch_a0
    move-exception v1

    .line 1043
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "PhoneInfoInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISCONNECT_WAIT_TIME error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catchall {:try_start_92 .. :try_end_b9} :catchall_8f

    goto :goto_7c
.end method

.method public resetVoiceMailCount()V
    .registers 5

    .prologue
    .line 1276
    const-string v2, "PhoneInfoInterface"

    const-string v3, "resetVoiceMailCount()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1280
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1281
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "vm_count_key_cdma"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1282
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1283
    return-void
.end method

.method public setA_Key(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 651
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 652
    :try_start_6
    iget v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 653
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x190

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 655
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 656
    monitor-exit v1

    .line 657
    return-void

    .line 656
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setDSAProxy(Ljava/lang/String;I)V
    .registers 9
    .parameter "proxy"
    .parameter "port"

    .prologue
    .line 1097
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 1098
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    .line 1099
    :cond_b
    const-string v1, "net.gprs.http-proxy"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :goto_11
    return-void

    .line 1104
    :cond_12
    if-ltz p2, :cond_18

    const/16 v1, 0x2710

    if-lt p2, v1, :cond_1a

    .line 1105
    :cond_18
    const/16 p2, 0x1f90

    .line 1107
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%04d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, htttpProxy:Ljava/lang/String;
    const-string v1, "net.gprs.http-proxy"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->proxyBackup:Ljava/lang/String;

    .line 1109
    const-string v1, "net.gprs.http-proxy"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDSAProxy :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "net.gprs.http-proxy"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public setDSA_SERVER_IP(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 817
    const/16 v0, 0x195

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 818
    return-void
.end method

.method public setDSA_SERVER_PORT(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 821
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 822
    const/16 v0, 0x196

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 823
    return-void
.end method

.method public setDSA_SERVER_URL(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 783
    const/16 v0, 0x192

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 784
    return-void
.end method

.method public setHTTPPD_PROXY_ADDR(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 838
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 839
    const-string v0, "net.cdma.httppd.proxy.addr"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const/16 v0, 0x19e

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 841
    return-void
.end method

.method public setHTTPPD_PROXY_PORT(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 845
    const-string v0, "net.cdma.httppd.proxy.port"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const/16 v0, 0x19f

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 847
    return-void
.end method

.method public setMDN(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 619
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 620
    :try_start_6
    iget v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 621
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 623
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 624
    monitor-exit v1

    .line 625
    return-void

    .line 624
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public setMEID(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 641
    return-void
.end method

.method public setMOBILESYNK_ENABLED(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 777
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 778
    const/16 v0, 0x12c

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 779
    return-void
.end method

.method public setMSID(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 629
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 630
    :try_start_6
    iget v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 631
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 633
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 634
    monitor-exit v1

    .line 635
    return-void

    .line 634
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setNetworkPreference(I)V
    .registers 5
    .parameter "type"

    .prologue
    .line 958
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 960
    .local v0, mConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setNetworkPreference(I)V

    .line 961
    return-void
.end method

.method public setPDE_PRIMARY_IP(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 799
    return-void
.end method

.method public setPDE_PRIMARY_PORT(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 813
    return-void
.end method

.method public setPESUDO_ESN(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 647
    return-void
.end method

.method public setRTSP_PROXY_ADDR(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 827
    const-string v0, "net.cdma.rtsp.proxy.addr"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const/16 v0, 0x19c

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 829
    return-void
.end method

.method public setRTSP_PROXY_PORT(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 832
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 833
    const-string v0, "net.cdma.rtsp.proxy.port"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const/16 v0, 0x19d

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 835
    return-void
.end method

.method public setSLOT_1_AAA_AUTH_ALGORITHM(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 732
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 733
    :try_start_6
    iget v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 734
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x5d

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 737
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 738
    monitor-exit v1

    .line 739
    return-void

    .line 738
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setSLOT_1_AAA_SPI(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 743
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 744
    :try_start_6
    iget v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 745
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x5e

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 747
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 748
    monitor-exit v1

    .line 749
    return-void

    .line 748
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setSLOT_1_HA_AUTH_ALGORITHM(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 701
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 702
    :try_start_6
    iget v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 703
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 706
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 707
    monitor-exit v1

    .line 708
    return-void

    .line 707
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setSLOT_1_HA_PASSWORD(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 722
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 723
    :try_start_6
    iget v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 724
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x5c

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 726
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 727
    monitor-exit v1

    .line 728
    return-void

    .line 727
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setSLOT_1_HA_SPI(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 712
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 713
    :try_start_6
    iget v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 714
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x5b

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 716
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 717
    monitor-exit v1

    .line 718
    return-void

    .line 717
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setSLOT_1_MOBILE_IP_ADDRESS(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 764
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 765
    :try_start_6
    iget v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 766
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x57

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 769
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 770
    monitor-exit v1

    .line 771
    return-void

    .line 770
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setSLOT_1_NAI(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 661
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 662
    :try_start_6
    iget v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 663
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 665
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 666
    monitor-exit v1

    .line 667
    return-void

    .line 666
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public setSLOT_1_NAI_PASSWORD(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 671
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 672
    :try_start_6
    iget v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 673
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 675
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 676
    monitor-exit v1

    .line 677
    return-void

    .line 676
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setSLOT_1_PRIMARY_HA(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 681
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 682
    :try_start_6
    iget v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 683
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 685
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 686
    monitor-exit v1

    .line 687
    return-void

    .line 686
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setSLOT_1_REVERSE_TUNNELING(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 753
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 754
    :try_start_6
    iget v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 755
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x56

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 758
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 759
    monitor-exit v1

    .line 760
    return-void

    .line 759
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setSLOT_1_SECONDARY_HA(Ljava/lang/String;)V
    .registers 8
    .parameter "value"

    .prologue
    .line 690
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 691
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 692
    :try_start_6
    iget v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    .line 693
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->mPIM:Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 695
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->stopAndWaitReturn()Ljava/lang/String;

    .line 696
    monitor-exit v1

    .line 697
    return-void

    .line 696
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setSetUpCompleted(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 356
    const/16 v0, 0x2710

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setUAPROF(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 774
    return-void
.end method

.method public setWORK_MODE(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->enforceUID()V

    .line 852
    const/16 v0, 0x1f4

    invoke-direct {p0, v0, p1}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->SetValueInternalDB(ILjava/lang/String;)Ljava/lang/String;

    .line 853
    return-void
.end method
