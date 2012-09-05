.class public Lcom/android/mms/ui/DeliveryReadReport;
.super Ljava/lang/Object;
.source "DeliveryReadReport.java"


# static fields
.field static final MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

.field static final MMS_REQUEST_PROJECTION:[Ljava/lang/String;

.field static final SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

.field static code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "d_rpt"

    aput-object v1, v0, v4

    const-string v1, "rr"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/ui/DeliveryReadReport;->MMS_REQUEST_PROJECTION:[Ljava/lang/String;

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "delivery_status"

    aput-object v1, v0, v4

    const-string v1, "delivery_date"

    aput-object v1, v0, v5

    const-string v1, "read_status"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "read_date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/DeliveryReadReport;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    .line 54
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "status"

    aput-object v1, v0, v4

    const-string v1, "delivery_date"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/ui/DeliveryReadReport;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    .line 68
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/DeliveryReadReport;->code:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 506
    return-void
.end method

.method public static getGroupSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;
    .registers 23
    .parameter "context"
    .parameter "groupID"

    .prologue
    .line 121
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v14, deliveryReport:Ljava/lang/StringBuilder;
    const/16 v2, 0xa

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    const v2, 0x7f0900c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v2, ": "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/ui/DeliveryReadReport;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 128
    .local v10, c:Landroid/database/Cursor;
    if-nez v10, :cond_44

    .line 129
    const/4 v2, 0x0

    .line 191
    :goto_43
    return-object v2

    .line 133
    :cond_44
    :try_start_44
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_50

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_181

    move-result v2

    if-nez v2, :cond_55

    .line 134
    :cond_50
    const/4 v2, 0x0

    .line 189
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_43

    .line 142
    :cond_55
    const/16 v17, 0x0

    .line 143
    .local v17, notRequestCount:I
    const/16 v19, 0x0

    .line 144
    .local v19, requestedCount:I
    :try_start_59
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v18, reports:Ljava/lang/StringBuilder;
    :cond_5e
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, address:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 148
    .local v12, deliveryDate:Ljava/lang/Long;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f9

    .line 149
    new-instance v11, Ljava/util/Date;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v11, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 150
    .local v11, date:Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 155
    .end local v11           #date:Ljava/util/Date;
    .local v13, deliveryDateStr:Ljava/lang/String;
    :goto_a3
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 157
    .local v15, deliveryStatus:I
    const/4 v2, -0x1

    if-ne v15, v2, :cond_fc

    .line 158
    const v2, 0x7f0900c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 159
    .local v16, deliveryStr:Ljava/lang/String;
    add-int/lit8 v17, v17, 0x1

    .line 175
    :goto_b6
    const/16 v2, 0xa

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v2, ":"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 181
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v17

    if-ne v0, v2, :cond_165

    .line 182
    const/16 v2, 0xa

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0900c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f0
    .catchall {:try_start_59 .. :try_end_f0} :catchall_181

    .line 189
    :goto_f0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 191
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_43

    .line 153
    .end local v13           #deliveryDateStr:Ljava/lang/String;
    .end local v15           #deliveryStatus:I
    .end local v16           #deliveryStr:Ljava/lang/String;
    :cond_f9
    :try_start_f9
    const-string v13, ""

    .restart local v13       #deliveryDateStr:Ljava/lang/String;
    goto :goto_a3

    .line 161
    .restart local v15       #deliveryStatus:I
    :cond_fc
    const/16 v2, 0x46

    if-ne v15, v2, :cond_10a

    .line 162
    const v2, 0x7f090108

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #deliveryStr:Ljava/lang/String;
    goto :goto_b6

    .line 164
    .end local v16           #deliveryStr:Ljava/lang/String;
    :cond_10a
    const/16 v2, 0x40

    if-lt v15, v2, :cond_118

    .line 165
    const v2, 0x7f0900be

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #deliveryStr:Ljava/lang/String;
    goto :goto_b6

    .line 166
    .end local v16           #deliveryStr:Ljava/lang/String;
    :cond_118
    const/16 v2, 0x20

    if-lt v15, v2, :cond_149

    .line 167
    const-string v2, "TMU"

    sget-object v3, Lcom/android/mms/ui/DeliveryReadReport;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_132

    const-string v2, "TNL"

    sget-object v3, Lcom/android/mms/ui/DeliveryReadReport;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13f

    .line 168
    :cond_132
    const v2, 0x7f0900bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 171
    .restart local v16       #deliveryStr:Ljava/lang/String;
    :goto_13b
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_b6

    .line 170
    .end local v16           #deliveryStr:Ljava/lang/String;
    :cond_13f
    const v2, 0x7f0900c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #deliveryStr:Ljava/lang/String;
    goto :goto_13b

    .line 173
    .end local v16           #deliveryStr:Ljava/lang/String;
    :cond_149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0900bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16       #deliveryStr:Ljava/lang/String;
    goto/16 :goto_b6

    .line 183
    :cond_165
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v19

    if-ne v0, v2, :cond_186

    .line 184
    const/16 v2, 0xa

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0900c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_17f
    .catchall {:try_start_f9 .. :try_end_17f} :catchall_181

    goto/16 :goto_f0

    .line 189
    .end local v9           #address:Ljava/lang/String;
    .end local v12           #deliveryDate:Ljava/lang/Long;
    .end local v13           #deliveryDateStr:Ljava/lang/String;
    .end local v15           #deliveryStatus:I
    .end local v16           #deliveryStr:Ljava/lang/String;
    .end local v17           #notRequestCount:I
    .end local v18           #reports:Ljava/lang/StringBuilder;
    .end local v19           #requestedCount:I
    :catchall_181
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 186
    .restart local v9       #address:Ljava/lang/String;
    .restart local v12       #deliveryDate:Ljava/lang/Long;
    .restart local v13       #deliveryDateStr:Ljava/lang/String;
    .restart local v15       #deliveryStatus:I
    .restart local v16       #deliveryStr:Ljava/lang/String;
    .restart local v17       #notRequestCount:I
    .restart local v18       #reports:Ljava/lang/StringBuilder;
    .restart local v19       #requestedCount:I
    :cond_186
    :try_start_186
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_18b
    .catchall {:try_start_186 .. :try_end_18b} :catchall_181

    goto/16 :goto_f0
.end method

.method public static getSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;
    .registers 19
    .parameter "context"
    .parameter "msgID"

    .prologue
    .line 71
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v13, deliveryReport:Ljava/lang/StringBuilder;
    const/16 v2, 0xa

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    const v2, 0x7f0900c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v2, ": "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/ui/DeliveryReadReport;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 78
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_44

    .line 79
    const/4 v2, 0x0

    .line 117
    :goto_43
    return-object v2

    .line 83
    :cond_44
    :try_start_44
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_50

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_fe

    move-result v2

    if-nez v2, :cond_55

    .line 84
    :cond_50
    const/4 v2, 0x0

    .line 115
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_43

    .line 87
    :cond_55
    const/4 v2, 0x2

    :try_start_56
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 89
    .local v11, deliveryDate:Ljava/lang/Long;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b6

    .line 90
    new-instance v10, Ljava/util/Date;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v10, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 91
    .local v10, date:Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 96
    .end local v10           #date:Ljava/util/Date;
    .local v12, deliveryDateStr:Ljava/lang/String;
    :goto_95
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 99
    .local v14, deliveryStatus:I
    const/4 v2, -0x1

    if-ne v14, v2, :cond_b9

    .line 100
    const v2, 0x7f0900c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 112
    .local v15, deliveryStr:Ljava/lang/String;
    :goto_a6
    const/16 v2, 0xa

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ae
    .catchall {:try_start_56 .. :try_end_ae} :catchall_fe

    .line 115
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 117
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_43

    .line 94
    .end local v12           #deliveryDateStr:Ljava/lang/String;
    .end local v14           #deliveryStatus:I
    .end local v15           #deliveryStr:Ljava/lang/String;
    :cond_b6
    :try_start_b6
    const-string v12, ""

    .restart local v12       #deliveryDateStr:Ljava/lang/String;
    goto :goto_95

    .line 102
    .restart local v14       #deliveryStatus:I
    :cond_b9
    const/16 v2, 0x46

    if-ne v14, v2, :cond_c7

    .line 103
    const v2, 0x7f090108

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #deliveryStr:Ljava/lang/String;
    goto :goto_a6

    .line 105
    .end local v15           #deliveryStr:Ljava/lang/String;
    :cond_c7
    const/16 v2, 0x40

    if-lt v14, v2, :cond_d5

    .line 106
    const v2, 0x7f0900be

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #deliveryStr:Ljava/lang/String;
    goto :goto_a6

    .line 107
    .end local v15           #deliveryStr:Ljava/lang/String;
    :cond_d5
    const/16 v2, 0x20

    if-lt v14, v2, :cond_e3

    .line 108
    const v2, 0x7f0900c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #deliveryStr:Ljava/lang/String;
    goto :goto_a6

    .line 110
    .end local v15           #deliveryStr:Ljava/lang/String;
    :cond_e3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0900bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_fc
    .catchall {:try_start_b6 .. :try_end_fc} :catchall_fe

    move-result-object v15

    .restart local v15       #deliveryStr:Ljava/lang/String;
    goto :goto_a6

    .line 115
    .end local v11           #deliveryDate:Ljava/lang/Long;
    .end local v12           #deliveryDateStr:Ljava/lang/String;
    .end local v14           #deliveryStatus:I
    .end local v15           #deliveryStr:Ljava/lang/String;
    :catchall_fe
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
.end method
