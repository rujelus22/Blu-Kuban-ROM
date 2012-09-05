.class public Lcom/android/calendar/GoogleCalendarUriIntentFilter;
.super Landroid/app/Activity;
.source "GoogleCalendarUriIntentFilter.java"


# static fields
.field private static final EVENT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    const/4 v0, 0x3

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

    sput-object v0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 25
    .parameter "icicle"

    .prologue
    .line 53
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 56
    .local v19, intent:Landroid/content/Intent;
    if-eqz v19, :cond_cf

    .line 57
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 58
    .local v22, uri:Landroid/net/Uri;
    if-eqz v22, :cond_c8

    .line 59
    const-string v3, "eid"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 60
    .local v13, eid:Ljava/lang/String;
    if-eqz v13, :cond_c8

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 62
    .local v11, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync_data3 LIKE \"%eid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 77
    .local v16, eventCursor:Landroid/database/Cursor;
    if-eqz v16, :cond_c8

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_c8

    .line 79
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 80
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 81
    .local v17, eventId:I
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 82
    .local v20, startMillis:J
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 85
    .local v14, endMillis:J
    const/4 v9, 0x0

    .line 86
    .local v9, attendeeStatus:I
    const-string v3, "RESPOND"

    const-string v4, "action"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 88
    :try_start_75
    const-string v3, "rst"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_75 .. :try_end_80} :catch_c3

    move-result v3

    packed-switch v3, :pswitch_data_d8

    .line 107
    :cond_84
    :goto_84
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 110
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v17

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 111
    .local v10, calendarUri:Landroid/net/Uri;
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 112
    .restart local v19       #intent:Landroid/content/Intent;
    const-string v3, "beginTime"

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 113
    const-string v3, "endTime"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 114
    if-eqz v9, :cond_b2

    .line 115
    const-string v3, "attendeeStatus"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    :cond_b2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->startActivity(Landroid/content/Intent;)V

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->finish()V

    .line 133
    .end local v6           #selection:Ljava/lang/String;
    .end local v9           #attendeeStatus:I
    .end local v10           #calendarUri:Landroid/net/Uri;
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v13           #eid:Ljava/lang/String;
    .end local v14           #endMillis:J
    .end local v16           #eventCursor:Landroid/database/Cursor;
    .end local v17           #eventId:I
    .end local v20           #startMillis:J
    .end local v22           #uri:Landroid/net/Uri;
    :goto_bc
    return-void

    .line 90
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v9       #attendeeStatus:I
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v13       #eid:Ljava/lang/String;
    .restart local v14       #endMillis:J
    .restart local v16       #eventCursor:Landroid/database/Cursor;
    .restart local v17       #eventId:I
    .restart local v20       #startMillis:J
    .restart local v22       #uri:Landroid/net/Uri;
    :pswitch_bd
    const/4 v9, 0x1

    .line 91
    goto :goto_84

    .line 93
    :pswitch_bf
    const/4 v9, 0x2

    .line 94
    goto :goto_84

    .line 96
    :pswitch_c1
    const/4 v9, 0x4

    .line 97
    goto :goto_84

    .line 101
    :catch_c3
    move-exception v12

    .line 102
    .local v12, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_84

    .line 126
    .end local v6           #selection:Ljava/lang/String;
    .end local v9           #attendeeStatus:I
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v12           #e:Ljava/lang/NumberFormatException;
    .end local v13           #eid:Ljava/lang/String;
    .end local v14           #endMillis:J
    .end local v16           #eventCursor:Landroid/database/Cursor;
    .end local v17           #eventId:I
    .end local v20           #startMillis:J
    :cond_c8
    :try_start_c8
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->startNextMatchingActivity(Landroid/content/Intent;)Z
    :try_end_cf
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c8 .. :try_end_cf} :catch_d3

    .line 132
    .end local v22           #uri:Landroid/net/Uri;
    :cond_cf
    :goto_cf
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->finish()V

    goto :goto_bc

    .line 127
    .restart local v22       #uri:Landroid/net/Uri;
    :catch_d3
    move-exception v18

    .line 128
    .local v18, ex:Landroid/content/ActivityNotFoundException;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_cf

    .line 88
    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_bd
        :pswitch_bf
        :pswitch_c1
    .end packed-switch
.end method
