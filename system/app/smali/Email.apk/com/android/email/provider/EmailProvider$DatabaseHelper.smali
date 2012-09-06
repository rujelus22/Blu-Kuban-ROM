.class Lcom/android/email/provider/EmailProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "name"

    .prologue
    .line 1068
    const/4 v0, 0x0

    const/16 v1, 0x1c

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1069
    iput-object p1, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 1070
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 1074
    const-string v0, "EmailProvider"

    const-string v1, "Creating EmailProvider database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1077
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1078
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1079
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1080
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1081
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1082
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createQuickResponseTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1083
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 1352
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 13
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x5

    .line 1090
    if-ge p2, v6, :cond_33

    .line 1091
    iget-object v6, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.android.exchange"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1093
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_13
    if-ge v4, v5, :cond_23

    aget-object v0, v2, v4

    .line 1094
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6, v0, v8, v8}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1093
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 1096
    .end local v0           #account:Landroid/accounts/Account;
    :cond_23
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetMessageTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1097
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1098
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetMailboxTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1099
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1100
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetAccountTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1348
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_32
    :goto_32
    return-void

    .line 1103
    :cond_33
    if-ne p2, v6, :cond_45

    .line 1106
    :try_start_35
    const-string v6, "alter table Message add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1108
    const-string v6, "alter table Message_Updates add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1110
    const-string v6, "alter table Message_Deletes add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_44
    .catch Landroid/database/SQLException; {:try_start_35 .. :try_end_44} :catch_19c

    .line 1116
    :goto_44
    const/4 p2, 0x6

    .line 1118
    :cond_45
    const/4 v6, 0x6

    if-ne p2, v6, :cond_53

    .line 1120
    const-string v6, "drop trigger mailbox_delete;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1121
    const-string v6, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1122
    const/4 p2, 0x7

    .line 1124
    :cond_53
    const/4 v6, 0x7

    if-ne p2, v6, :cond_5d

    .line 1127
    :try_start_56
    const-string v6, "alter table Account add column securityFlags integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5b
    .catch Landroid/database/SQLException; {:try_start_56 .. :try_end_5b} :catch_1a6

    .line 1133
    :goto_5b
    const/16 p2, 0x8

    .line 1135
    :cond_5d
    const/16 v6, 0x8

    if-ne p2, v6, :cond_6d

    .line 1138
    :try_start_61
    const-string v6, "alter table Account add column securitySyncKey text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1140
    const-string v6, "alter table Account add column signature text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6b
    .catch Landroid/database/SQLException; {:try_start_61 .. :try_end_6b} :catch_1c1

    .line 1146
    :goto_6b
    const/16 p2, 0x9

    .line 1148
    :cond_6d
    const/16 v6, 0x9

    if-ne p2, v6, :cond_82

    .line 1151
    :try_start_71
    const-string v6, "alter table Message add column meetingInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1153
    const-string v6, "alter table Message_Updates add column meetingInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1155
    const-string v6, "alter table Message_Deletes add column meetingInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_80
    .catch Landroid/database/SQLException; {:try_start_71 .. :try_end_80} :catch_1dc

    .line 1161
    :goto_80
    const/16 p2, 0xa

    .line 1163
    :cond_82
    const/16 v6, 0xa

    if-ne p2, v6, :cond_92

    .line 1166
    :try_start_86
    const-string v6, "alter table Attachment add column content text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1168
    const-string v6, "alter table Attachment add column flags integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_90
    .catch Landroid/database/SQLException; {:try_start_86 .. :try_end_90} :catch_1f7

    .line 1174
    :goto_90
    const/16 p2, 0xb

    .line 1176
    :cond_92
    const/16 v6, 0xb

    if-ne p2, v6, :cond_9d

    .line 1179
    :try_start_96
    const-string v6, "alter table Attachment add column content_bytes blob;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9b
    .catch Landroid/database/SQLException; {:try_start_96 .. :try_end_9b} :catch_212

    .line 1185
    :goto_9b
    const/16 p2, 0xc

    .line 1187
    :cond_9d
    const/16 v6, 0xc

    if-ne p2, v6, :cond_ab

    .line 1189
    :try_start_a1
    const-string v6, "alter table Mailbox add column messageCount integer not null default 0;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1192
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->recalculateMessageCount(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_a9
    .catch Landroid/database/SQLException; {:try_start_a1 .. :try_end_a9} :catch_22d

    .line 1197
    :goto_a9
    const/16 p2, 0xd

    .line 1199
    :cond_ab
    const/16 v6, 0xd

    if-ne p2, v6, :cond_b6

    .line 1201
    :try_start_af
    const-string v6, "alter table Message add column snippet text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b4
    .catch Landroid/database/SQLException; {:try_start_af .. :try_end_b4} :catch_248

    .line 1208
    :goto_b4
    const/16 p2, 0xe

    .line 1210
    :cond_b6
    const/16 v6, 0xe

    if-ne p2, v6, :cond_c6

    .line 1212
    :try_start_ba
    const-string v6, "alter table Message_Deletes add column snippet text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1214
    const-string v6, "alter table Message_Updates add column snippet text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c4
    .catch Landroid/database/SQLException; {:try_start_ba .. :try_end_c4} :catch_263

    .line 1220
    :goto_c4
    const/16 p2, 0xf

    .line 1222
    :cond_c6
    const/16 v6, 0xf

    if-ne p2, v6, :cond_d6

    .line 1224
    :try_start_ca
    const-string v6, "alter table Attachment add column accountKey integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1227
    const-string v6, "update Attachment set accountKey= (SELECT Message.accountKey from Message where Message._id = Attachment.messageKey)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d4
    .catch Landroid/database/SQLException; {:try_start_ca .. :try_end_d4} :catch_27e

    .line 1236
    :goto_d4
    const/16 p2, 0x10

    .line 1238
    :cond_d6
    const/16 v6, 0x10

    if-ne p2, v6, :cond_e1

    .line 1240
    :try_start_da
    const-string v6, "alter table Mailbox add column parentKey integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_df
    .catch Landroid/database/SQLException; {:try_start_da .. :try_end_df} :catch_299

    .line 1246
    :goto_df
    const/16 p2, 0x11

    .line 1248
    :cond_e1
    const/16 v6, 0x11

    if-ne p2, v6, :cond_ea

    .line 1249
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->upgradeFromVersion17ToVersion18(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1250
    const/16 p2, 0x12

    .line 1252
    :cond_ea
    const/16 v6, 0x12

    if-ne p2, v6, :cond_105

    .line 1254
    :try_start_ee
    const-string v6, "alter table Account add column policyKey integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1256
    const-string v6, "drop trigger account_delete;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1257
    const-string v6, "create trigger account_delete before delete on Account begin delete from Mailbox where accountKey=old._id; delete from HostAuth where _id=old.hostAuthKeyRecv; delete from HostAuth where _id=old.hostAuthKeySend; delete from Policy where _id=old.policyKey; end"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1258
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1259
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->convertPolicyFlagsToPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_103
    .catch Landroid/database/SQLException; {:try_start_ee .. :try_end_103} :catch_2b4

    .line 1264
    :goto_103
    const/16 p2, 0x13

    .line 1266
    :cond_105
    const/16 v6, 0x13

    if-ne p2, v6, :cond_13d

    .line 1268
    :try_start_109
    const-string v6, "alter table Policy add column requireManualSyncRoaming integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1271
    const-string v6, "alter table Policy add column dontAllowCamera integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1273
    const-string v6, "alter table Policy add column dontAllowAttachments integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1275
    const-string v6, "alter table Policy add column dontAllowHtml integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1277
    const-string v6, "alter table Policy add column maxAttachmentSize integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1279
    const-string v6, "alter table Policy add column maxTextTruncationSize integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1282
    const-string v6, "alter table Policy add column maxHTMLTruncationSize integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1285
    const-string v6, "alter table Policy add column maxEmailLookback integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1287
    const-string v6, "alter table Policy add column maxCalendarLookback integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1289
    const-string v6, "alter table Policy add column passwordRecoveryEnabled integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_13b
    .catch Landroid/database/SQLException; {:try_start_109 .. :try_end_13b} :catch_2cf

    .line 1296
    :goto_13b
    const/16 p2, 0x14

    .line 1298
    :cond_13d
    const/16 v6, 0x14

    if-ne p2, v6, :cond_146

    .line 1299
    #calls: Lcom/android/email/provider/EmailProvider;->upgradeFromVersion20ToVersion21(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->access$000(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1300
    const/16 p2, 0x15

    .line 1302
    :cond_146
    const/16 v6, 0x15

    if-ne p2, v6, :cond_151

    .line 1303
    iget-object v6, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v6}, Lcom/android/email/provider/EmailProvider;->upgradeFromVersion21ToVersion22(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 1304
    const/16 p2, 0x16

    .line 1306
    :cond_151
    const/16 v6, 0x16

    if-ne p2, v6, :cond_15a

    .line 1307
    #calls: Lcom/android/email/provider/EmailProvider;->upgradeFromVersion22ToVersion23(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->access$100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1308
    const/16 p2, 0x17

    .line 1310
    :cond_15a
    const/16 v6, 0x17

    if-ne p2, v6, :cond_163

    .line 1311
    #calls: Lcom/android/email/provider/EmailProvider;->upgradeFromVersion23ToVersion24(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->access$200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1312
    const/16 p2, 0x18

    .line 1314
    :cond_163
    const/16 v6, 0x18

    if-ne p2, v6, :cond_16c

    .line 1315
    #calls: Lcom/android/email/provider/EmailProvider;->upgradeFromVersion24ToVersion25(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->access$300(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1316
    const/16 p2, 0x19

    .line 1318
    :cond_16c
    const/16 v6, 0x19

    if-ne p2, v6, :cond_175

    .line 1319
    #calls: Lcom/android/email/provider/EmailProvider;->upgradeFromVersion25ToVersion26(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->access$400(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1320
    const/16 p2, 0x1a

    .line 1322
    :cond_175
    const/16 v6, 0x1a

    if-ne p2, v6, :cond_18a

    .line 1324
    :try_start_179
    const-string v6, "alter table Message add column protocolSearchInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1326
    const-string v6, "alter table Message_Deletes add column protocolSearchInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1328
    const-string v6, "alter table Message_Updates add column protocolSearchInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_188
    .catch Landroid/database/SQLException; {:try_start_179 .. :try_end_188} :catch_2ea

    .line 1334
    :goto_188
    const/16 p2, 0x1b

    .line 1336
    :cond_18a
    const/16 v6, 0x1b

    if-ne p2, v6, :cond_32

    .line 1338
    :try_start_18e
    const-string v6, "alter table Account add column notifiedMessageId integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1340
    const-string v6, "alter table Account add column notifiedMessageCount integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_198
    .catch Landroid/database/SQLException; {:try_start_18e .. :try_end_198} :catch_305

    .line 1346
    :goto_198
    const/16 p2, 0x1c

    goto/16 :goto_32

    .line 1112
    :catch_19c
    move-exception v3

    .line 1114
    .local v3, e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    const-string v7, "Exception upgrading EmailProvider.db from v5 to v6"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_44

    .line 1129
    .end local v3           #e:Landroid/database/SQLException;
    :catch_1a6
    move-exception v3

    .line 1131
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 7 to 8 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5b

    .line 1142
    .end local v3           #e:Landroid/database/SQLException;
    :catch_1c1
    move-exception v3

    .line 1144
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 8 to 9 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    .line 1157
    .end local v3           #e:Landroid/database/SQLException;
    :catch_1dc
    move-exception v3

    .line 1159
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 9 to 10 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_80

    .line 1170
    .end local v3           #e:Landroid/database/SQLException;
    :catch_1f7
    move-exception v3

    .line 1172
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 10 to 11 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_90

    .line 1181
    .end local v3           #e:Landroid/database/SQLException;
    :catch_212
    move-exception v3

    .line 1183
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 11 to 12 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9b

    .line 1193
    .end local v3           #e:Landroid/database/SQLException;
    :catch_22d
    move-exception v3

    .line 1195
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 12 to 13 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a9

    .line 1204
    .end local v3           #e:Landroid/database/SQLException;
    :catch_248
    move-exception v3

    .line 1206
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 13 to 14 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b4

    .line 1216
    .end local v3           #e:Landroid/database/SQLException;
    :catch_263
    move-exception v3

    .line 1218
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 14 to 15 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c4

    .line 1232
    .end local v3           #e:Landroid/database/SQLException;
    :catch_27e
    move-exception v3

    .line 1234
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 15 to 16 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d4

    .line 1242
    .end local v3           #e:Landroid/database/SQLException;
    :catch_299
    move-exception v3

    .line 1244
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 16 to 17 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_df

    .line 1260
    .end local v3           #e:Landroid/database/SQLException;
    :catch_2b4
    move-exception v3

    .line 1262
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 18 to 19 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_103

    .line 1292
    .end local v3           #e:Landroid/database/SQLException;
    :catch_2cf
    move-exception v3

    .line 1294
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 19 to 20 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13b

    .line 1330
    .end local v3           #e:Landroid/database/SQLException;
    :catch_2ea
    move-exception v3

    .line 1332
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 26 to 27 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_188

    .line 1342
    .end local v3           #e:Landroid/database/SQLException;
    :catch_305
    move-exception v3

    .line 1344
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 27 to 27 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_198
.end method
