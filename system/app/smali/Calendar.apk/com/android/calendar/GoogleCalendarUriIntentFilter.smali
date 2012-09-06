.class public Lcom/android/calendar/GoogleCalendarUriIntentFilter;
.super Landroid/app/Activity;
.source "GoogleCalendarUriIntentFilter.java"


# static fields
.field private static final EVENT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private extractEid(Landroid/net/Uri;)Ljava/lang/String;
    .registers 10
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 68
    :try_start_1
    const-string v5, "eid"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, eid:Ljava/lang/String;
    if-nez v2, :cond_a

    .line 83
    .end local v2           #eid:Ljava/lang/String;
    :goto_9
    return-object v4

    .line 73
    .restart local v2       #eid:Ljava/lang/String;
    :cond_a
    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 75
    .local v0, decodedBytes:[B
    const/4 v3, 0x0

    .local v3, spacePosn:I
    :goto_10
    array-length v5, v0

    if-ge v3, v5, :cond_19

    .line 76
    aget-byte v5, v0, v3

    const/16 v6, 0x20

    if-ne v5, v6, :cond_21

    .line 80
    :cond_19
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1f} :catch_24

    move-object v4, v5

    goto :goto_9

    .line 75
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 81
    .end local v0           #decodedBytes:[B
    .end local v2           #eid:Ljava/lang/String;
    .end local v3           #spacePosn:I
    :catch_24
    move-exception v1

    .line 82
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v5, "GoogleCalendarUriIntentFilter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Punting malformed URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 25
    .parameter "icicle"

    .prologue
    .line 89
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 92
    .local v19, intent:Landroid/content/Intent;
    if-eqz v19, :cond_120

    .line 93
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 94
    .local v22, uri:Landroid/net/Uri;
    if-eqz v22, :cond_119

    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->extractEid(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v14

    .line 96
    .local v14, eid:Ljava/lang/String;
    if-eqz v14, :cond_119

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_sync_id LIKE \"%/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, selection:Ljava/lang/String;
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 101
    .local v17, eventCursor:Landroid/database/Cursor;
    if-eqz v17, :cond_119

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_119

    .line 102
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_79

    .line 113
    const-string v3, "GoogleCalendarUriIntentFilter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NOTE: found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " matches on event with id=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_79
    :goto_79
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_119

    .line 119
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 120
    .local v18, eventId:I
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 121
    .local v20, startMillis:J
    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 123
    .local v15, endMillis:J
    const-wide/16 v3, 0x0

    cmp-long v3, v15, v3

    if-nez v3, :cond_b9

    .line 124
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 125
    .local v12, duration:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_79

    .line 130
    :try_start_a7
    new-instance v11, Lcom/android/calendar/Duration;

    invoke-direct {v11}, Lcom/android/calendar/Duration;-><init>()V

    .line 131
    .local v11, d:Lcom/android/calendar/Duration;
    invoke-virtual {v11, v12}, Lcom/android/calendar/Duration;->parse(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v11}, Lcom/android/calendar/Duration;->getMillis()J
    :try_end_b2
    .catch Lcom/android/calendarcommon/DateException; {:try_start_a7 .. :try_end_b2} :catch_110

    move-result-wide v3

    add-long v15, v20, v3

    .line 133
    cmp-long v3, v15, v20

    if-ltz v3, :cond_79

    .line 142
    .end local v11           #d:Lcom/android/calendar/Duration;
    .end local v12           #duration:Ljava/lang/String;
    :cond_b9
    const/4 v9, 0x0

    .line 143
    .local v9, attendeeStatus:I
    const-string v3, "RESPOND"

    const-string v4, "action"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 145
    :try_start_ca
    const-string v3, "rst"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d5
    .catch Ljava/lang/NumberFormatException; {:try_start_ca .. :try_end_d5} :catch_126

    move-result v3

    packed-switch v3, :pswitch_data_128

    .line 163
    :cond_d9
    :goto_d9
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v18

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 165
    .local v10, calendarUri:Landroid/net/Uri;
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 166
    .restart local v19       #intent:Landroid/content/Intent;
    const-string v3, "beginTime"

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 167
    const-string v3, "endTime"

    move-object/from16 v0, v19

    move-wide v1, v15

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 168
    if-eqz v9, :cond_105

    .line 169
    const-string v3, "attendeeStatus"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    :cond_105
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->startActivity(Landroid/content/Intent;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->finish()V

    .line 187
    .end local v6           #selection:Ljava/lang/String;
    .end local v9           #attendeeStatus:I
    .end local v10           #calendarUri:Landroid/net/Uri;
    .end local v14           #eid:Ljava/lang/String;
    .end local v15           #endMillis:J
    .end local v17           #eventCursor:Landroid/database/Cursor;
    .end local v18           #eventId:I
    .end local v20           #startMillis:J
    .end local v22           #uri:Landroid/net/Uri;
    :goto_10f
    return-void

    .line 136
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v12       #duration:Ljava/lang/String;
    .restart local v14       #eid:Ljava/lang/String;
    .restart local v15       #endMillis:J
    .restart local v17       #eventCursor:Landroid/database/Cursor;
    .restart local v18       #eventId:I
    .restart local v20       #startMillis:J
    .restart local v22       #uri:Landroid/net/Uri;
    :catch_110
    move-exception v13

    .line 137
    .local v13, e:Lcom/android/calendarcommon/DateException;
    goto/16 :goto_79

    .line 147
    .end local v12           #duration:Ljava/lang/String;
    .end local v13           #e:Lcom/android/calendarcommon/DateException;
    .restart local v9       #attendeeStatus:I
    :pswitch_113
    const/4 v9, 0x1

    .line 148
    goto :goto_d9

    .line 150
    :pswitch_115
    const/4 v9, 0x2

    .line 151
    goto :goto_d9

    .line 153
    :pswitch_117
    const/4 v9, 0x4

    goto :goto_d9

    .line 181
    .end local v6           #selection:Ljava/lang/String;
    .end local v9           #attendeeStatus:I
    .end local v14           #eid:Ljava/lang/String;
    .end local v15           #endMillis:J
    .end local v17           #eventCursor:Landroid/database/Cursor;
    .end local v18           #eventId:I
    .end local v20           #startMillis:J
    :cond_119
    :try_start_119
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->startNextMatchingActivity(Landroid/content/Intent;)Z
    :try_end_120
    .catch Landroid/content/ActivityNotFoundException; {:try_start_119 .. :try_end_120} :catch_124

    .line 186
    .end local v22           #uri:Landroid/net/Uri;
    :cond_120
    :goto_120
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->finish()V

    goto :goto_10f

    .line 182
    .restart local v22       #uri:Landroid/net/Uri;
    :catch_124
    move-exception v3

    goto :goto_120

    .line 156
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v9       #attendeeStatus:I
    .restart local v14       #eid:Ljava/lang/String;
    .restart local v15       #endMillis:J
    .restart local v17       #eventCursor:Landroid/database/Cursor;
    .restart local v18       #eventId:I
    .restart local v20       #startMillis:J
    :catch_126
    move-exception v3

    goto :goto_d9

    .line 145
    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_113
        :pswitch_115
        :pswitch_117
    .end packed-switch
.end method
