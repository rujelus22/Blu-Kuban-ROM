.class public Lcom/android/calendar/VCalInfoActivity;
.super Landroid/app/Activity;
.source "VCalInfoActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCalendarType:I

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendarcommon/ICalendar$Component;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private mVCalManager:Lcom/android/calendar/vcal/VCalManager;

.field private mVCalValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 110
    const-string v0, "VCalInfoActivity"

    iput-object v0, p0, Lcom/android/calendar/VCalInfoActivity;->TAG:Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/VCalInfoActivity;->mEvents:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/VCalInfoActivity;)Lcom/android/calendar/vcal/VCalManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/calendar/VCalInfoActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/VCalInfoActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/calendar/VCalInfoActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/VCalInfoActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/calendar/VCalInfoActivity;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method private convertValues()Landroid/content/ContentValues;
    .registers 18

    .prologue
    .line 1098
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1100
    .local v13, vCalValues:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/VCalInfoActivity;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/calendar/VCalInfoActivity;->mPosition:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendarcommon/ICalendar$Component;

    .line 1104
    .local v7, event:Lcom/android/calendarcommon/ICalendar$Component;
    const-string v14, "calendar_id"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1110
    const-string v14, "SUMMARY"

    invoke-virtual {v7, v14}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v11

    .line 1112
    .local v11, titleProp:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v11, :cond_2e

    .line 1116
    const-string v14, "title"

    invoke-static {v11}, Lcom/android/calendar/Utils;->decodePropertyValue(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    :cond_2e
    new-instance v10, Landroid/text/format/Time;

    const-string v14, "UTC"

    invoke-direct {v10, v14}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1126
    .local v10, startTime:Landroid/text/format/Time;
    new-instance v6, Landroid/text/format/Time;

    const-string v14, "UTC"

    invoke-direct {v6, v14}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1128
    .local v6, endTime:Landroid/text/format/Time;
    const/4 v4, 0x0

    .line 1130
    .local v4, dtstart:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1132
    .local v2, dtend:Ljava/lang/String;
    const-string v14, "DTSTART"

    invoke-virtual {v7, v14}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v5

    .line 1136
    .local v5, dtstartProp:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v5, :cond_a7

    .line 1138
    invoke-virtual {v5}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 1140
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_84

    .line 1142
    const-string v14, "TZID"

    invoke-virtual {v5, v14}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v12

    .line 1144
    .local v12, tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-eqz v12, :cond_61

    iget-object v14, v12, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    if-eqz v14, :cond_61

    .line 1146
    iget-object v14, v12, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v10, v14}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1152
    :cond_61
    :try_start_61
    invoke-virtual {v10, v4}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1154
    const-string v14, "dtstart"

    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1156
    const-string v15, "allDay"

    iget-boolean v14, v10, Landroid/text/format/Time;->allDay:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_db

    const/4 v14, 0x1

    :goto_7d
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_84} :catch_df

    .line 1172
    .end local v12           #tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    :cond_84
    :goto_84
    const-string v14, "DTEND"

    invoke-virtual {v7, v14}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v3

    .line 1174
    .local v3, dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v3, :cond_a7

    .line 1176
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1178
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a7

    .line 1186
    :try_start_96
    invoke-virtual {v6, v2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1188
    const-string v14, "dtend"

    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_a7} :catch_dd

    .line 1210
    .end local v3           #dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    :cond_a7
    :goto_a7
    const-string v14, "LOCATION"

    invoke-virtual {v7, v14}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v8

    .line 1212
    .local v8, locationProp:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v8, :cond_b8

    .line 1218
    const-string v14, "eventLocation"

    invoke-static {v8}, Lcom/android/calendar/Utils;->decodePropertyValue(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    :cond_b8
    const-string v14, "DESCRIPTION"

    invoke-virtual {v7, v14}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v1

    .line 1228
    .local v1, descriptionProp:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v1, :cond_c9

    .line 1234
    const-string v14, "description"

    invoke-static {v1}, Lcom/android/calendar/Utils;->decodePropertyValue(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    :cond_c9
    const-string v14, "RRULE"

    invoke-virtual {v7, v14}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v9

    .line 1244
    .local v9, rRuleProp:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v9, :cond_da

    .line 1246
    const-string v14, "rrule"

    invoke-virtual {v9}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    :cond_da
    return-object v13

    .line 1156
    .end local v1           #descriptionProp:Lcom/android/calendarcommon/ICalendar$Property;
    .end local v8           #locationProp:Lcom/android/calendarcommon/ICalendar$Property;
    .end local v9           #rRuleProp:Lcom/android/calendarcommon/ICalendar$Property;
    .restart local v12       #tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    :cond_db
    const/4 v14, 0x0

    goto :goto_7d

    .line 1190
    .end local v12           #tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    .restart local v3       #dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    :catch_dd
    move-exception v14

    goto :goto_a7

    .line 1158
    .end local v3           #dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    .restart local v12       #tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    :catch_df
    move-exception v14

    goto :goto_84
.end method

.method private getVCalData(Landroid/net/Uri;)Ljava/lang/String;
    .registers 16
    .parameter "content"

    .prologue
    .line 332
    const/4 v9, 0x0

    .line 333
    .local v9, mData:Ljava/lang/String;
    if-eqz p1, :cond_38

    .line 334
    const/4 v7, 0x0

    .line 336
    .local v7, is:Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {p0}, Lcom/android/calendar/VCalInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 337
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 338
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v8

    .line 339
    .local v8, length:I
    if-lez v8, :cond_33

    .line 340
    new-array v1, v8, [B

    .line 341
    .local v1, buf:[B
    const/4 v2, -0x1

    .line 342
    .local v2, bytesRead:I
    const/4 v11, 0x0

    .line 343
    .local v11, pos:I
    :goto_1b
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v12, -0x1

    if-eq v2, v12, :cond_27

    .line 344
    invoke-virtual {v0, v1, v11, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 345
    add-int/2addr v11, v2

    goto :goto_1b

    .line 347
    :cond_27
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v10, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_32} :catch_3e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_32} :catch_4d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_32} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_32} :catch_6b

    .end local v9           #mData:Ljava/lang/String;
    .local v10, mData:Ljava/lang/String;
    move-object v9, v10

    .line 359
    .end local v1           #buf:[B
    .end local v2           #bytesRead:I
    .end local v10           #mData:Ljava/lang/String;
    .end local v11           #pos:I
    .restart local v9       #mData:Ljava/lang/String;
    :cond_33
    if-eqz v7, :cond_38

    .line 361
    :try_start_35
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    .line 368
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v8           #length:I
    :cond_38
    :goto_38
    return-object v9

    .line 362
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #length:I
    :catch_39
    move-exception v5

    .line 363
    .local v5, ioe:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    .line 350
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #ioe:Ljava/io/IOException;
    .end local v8           #length:I
    :catch_3e
    move-exception v4

    .line 351
    .local v4, fnfe:Ljava/io/FileNotFoundException;
    :try_start_3f
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_7a

    .line 359
    if-eqz v7, :cond_38

    .line 361
    :try_start_44
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_38

    .line 362
    :catch_48
    move-exception v5

    .line 363
    .restart local v5       #ioe:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    .line 352
    .end local v4           #fnfe:Ljava/io/FileNotFoundException;
    .end local v5           #ioe:Ljava/io/IOException;
    :catch_4d
    move-exception v6

    .line 353
    .local v6, ioobe:Ljava/lang/IndexOutOfBoundsException;
    :try_start_4e
    invoke-virtual {v6}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_7a

    .line 359
    if-eqz v7, :cond_38

    .line 361
    :try_start_53
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_38

    .line 362
    :catch_57
    move-exception v5

    .line 363
    .restart local v5       #ioe:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    .line 354
    .end local v5           #ioe:Ljava/io/IOException;
    .end local v6           #ioobe:Ljava/lang/IndexOutOfBoundsException;
    :catch_5c
    move-exception v5

    .line 355
    .restart local v5       #ioe:Ljava/io/IOException;
    :try_start_5d
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_7a

    .line 359
    if-eqz v7, :cond_38

    .line 361
    :try_start_62
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_38

    .line 362
    :catch_66
    move-exception v5

    .line 363
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    .line 356
    .end local v5           #ioe:Ljava/io/IOException;
    :catch_6b
    move-exception v3

    .line 357
    .local v3, e:Ljava/lang/Exception;
    :try_start_6c
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_7a

    .line 359
    if-eqz v7, :cond_38

    .line 361
    :try_start_71
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_38

    .line 362
    :catch_75
    move-exception v5

    .line 363
    .restart local v5       #ioe:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    .line 359
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #ioe:Ljava/io/IOException;
    :catchall_7a
    move-exception v12

    if-eqz v7, :cond_80

    .line 361
    :try_start_7d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    .line 364
    :cond_80
    :goto_80
    throw v12

    .line 362
    :catch_81
    move-exception v5

    .line 363
    .restart local v5       #ioe:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_80
.end method

.method private parseICalendar(Ljava/lang/String;)V
    .registers 16
    .parameter "data"

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 378
    .local v0, components:Lcom/android/calendarcommon/ICalendar$Component;
    :try_start_1
    invoke-static {p1}, Lcom/android/calendarcommon/ICalendar;->parseCalendar(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;
    :try_end_4
    .catch Lcom/android/calendarcommon/ICalendar$FormatException; {:try_start_1 .. :try_end_4} :catch_19

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v12

    if-nez v12, :cond_28

    .line 398
    const-string v12, "No events in iCalendar."

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 402
    invoke-virtual {p0}, Lcom/android/calendar/VCalInfoActivity;->finish()V

    .line 532
    :cond_18
    :goto_18
    return-void

    .line 380
    :catch_19
    move-exception v7

    .line 384
    .local v7, fe:Lcom/android/calendarcommon/ICalendar$FormatException;
    const-string v12, "Could not parse iCalendar."

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 388
    invoke-virtual {p0}, Lcom/android/calendar/VCalInfoActivity;->finish()V

    goto :goto_18

    .line 410
    .end local v7           #fe:Lcom/android/calendarcommon/ICalendar$FormatException;
    :cond_28
    const/4 v9, 0x0

    .line 412
    .local v9, num:I
    invoke-virtual {v0}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_31
    :goto_31
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_97

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendarcommon/ICalendar$Component;

    .line 414
    .local v6, event:Lcom/android/calendarcommon/ICalendar$Component;
    const-string v12, "VEVENT"

    invoke-virtual {v6}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    .line 416
    new-instance v10, Landroid/text/format/Time;

    const-string v12, "UTC"

    invoke-direct {v10, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 418
    .local v10, time:Landroid/text/format/Time;
    const/4 v3, 0x0

    .line 420
    .local v3, dtstart:Ljava/lang/String;
    const/4 v1, 0x0

    .line 422
    .local v1, dtend:Ljava/lang/String;
    const-string v12, "DTSTART"

    invoke-virtual {v6, v12}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v4

    .line 426
    .local v4, dtstartProp:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v4, :cond_31

    .line 428
    invoke-virtual {v4}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 430
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_78

    .line 432
    const-string v12, "TZID"

    invoke-virtual {v4, v12}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v11

    .line 434
    .local v11, tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-eqz v11, :cond_75

    iget-object v12, v11, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    if-eqz v12, :cond_75

    .line 436
    iget-object v12, v11, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v10, v12}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 442
    :cond_75
    :try_start_75
    invoke-virtual {v10, v3}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_93

    .line 466
    .end local v11           #tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    :cond_78
    const-string v12, "DTEND"

    invoke-virtual {v6, v12}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v2

    .line 468
    .local v2, dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v2, :cond_31

    .line 470
    invoke-virtual {v2}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8d

    .line 480
    :try_start_8a
    invoke-virtual {v10, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_95

    .line 512
    :cond_8d
    iget-object v12, p0, Lcom/android/calendar/VCalInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 444
    .end local v2           #dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    .restart local v11       #tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    :catch_93
    move-exception v5

    .line 458
    .local v5, e:Ljava/lang/Exception;
    goto :goto_31

    .line 482
    .end local v5           #e:Ljava/lang/Exception;
    .end local v11           #tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    .restart local v2       #dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    :catch_95
    move-exception v5

    .line 496
    .restart local v5       #e:Ljava/lang/Exception;
    goto :goto_31

    .line 520
    .end local v1           #dtend:Ljava/lang/String;
    .end local v2           #dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    .end local v3           #dtstart:Ljava/lang/String;
    .end local v4           #dtstartProp:Lcom/android/calendarcommon/ICalendar$Property;
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #event:Lcom/android/calendarcommon/ICalendar$Component;
    .end local v10           #time:Landroid/text/format/Time;
    :cond_97
    iget-object v12, p0, Lcom/android/calendar/VCalInfoActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gtz v12, :cond_18

    .line 522
    const-string v12, "No events in iCalendar."

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 526
    invoke-virtual {p0}, Lcom/android/calendar/VCalInfoActivity;->finish()V

    goto/16 :goto_18
.end method

.method private setTextCommon(ILjava/lang/CharSequence;)V
    .registers 4
    .parameter "id"
    .parameter "text"

    .prologue
    .line 1262
    invoke-virtual {p0, p1}, Lcom/android/calendar/VCalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1264
    .local v0, textView:Landroid/widget/TextView;
    if-nez v0, :cond_9

    .line 1270
    :goto_8
    return-void

    .line 1268
    :cond_9
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method private setVisibilityCommon(II)V
    .registers 4
    .parameter "id"
    .parameter "visibility"

    .prologue
    .line 1276
    invoke-virtual {p0, p1}, Lcom/android/calendar/VCalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1278
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_9

    .line 1280
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    :cond_9
    return-void
.end method

.method private updateView()V
    .registers 49

    .prologue
    .line 544
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/VCalInfoActivity;->mCalendarType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2c1

    .line 546
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->convertValues()Landroid/content/ContentValues;

    move-result-object v46

    .line 556
    .local v46, vCalValues:Landroid/content/ContentValues;
    :goto_b
    const-string v3, "title"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 558
    .local v24, eventName:Ljava/lang/String;
    if-eqz v24, :cond_1d

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2a

    .line 560
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    .line 562
    .local v35, res:Landroid/content/res/Resources;
    const v3, 0x7f0a0025

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 568
    .end local v35           #res:Landroid/content/res/Resources;
    :cond_2a
    const-string v3, "dtstart"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Long;

    .line 570
    .local v36, start:Ljava/lang/Long;
    const-string v3, "dtend"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    .line 572
    .local v20, end:Ljava/lang/Long;
    const-string v3, "allDay"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_2c9

    const/4 v10, 0x1

    .line 574
    .local v10, allDay:Z
    :goto_4f
    const-string v3, "eventLocation"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 576
    .local v31, location:Ljava/lang/String;
    const-string v3, "description"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 578
    .local v18, description:Ljava/lang/String;
    const-string v3, "rrule"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 584
    .local v33, rRule:Ljava/lang/String;
    const v15, -0xfb4a01

    .line 586
    .local v15, color:I
    const v3, -0x44000001

    and-int/2addr v15, v3

    .line 590
    const-string v3, "calendar_id"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 594
    .local v13, calendarId:I
    const v3, 0x7f0f001a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/calendar/VCalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 596
    .local v11, calBackground:Landroid/widget/ImageView;
    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 602
    if-eqz v24, :cond_ae

    .line 604
    const-string v3, "=0D"

    const-string v5, "\r"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "=0A"

    const-string v7, "\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 606
    const v3, 0x7f0f0013

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1}, Lcom/android/calendar/VCalInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 616
    :cond_ae
    const v3, 0x7f0f0087

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "date_format"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 686
    .local v40, systemDateFormat:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a00e2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 688
    .local v17, dateFormat:Ljava/lang/String;
    if-eqz v40, :cond_e4

    .line 690
    const-string v3, "MM-dd-yyyy"

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2cc

    .line 692
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a00e3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 704
    :cond_e4
    :goto_e4
    if-eqz v10, :cond_341

    .line 706
    new-instance v39, Landroid/text/format/Time;

    invoke-direct/range {v39 .. v39}, Landroid/text/format/Time;-><init>()V

    .line 708
    .local v39, startTime:Landroid/text/format/Time;
    new-instance v23, Landroid/text/format/Time;

    invoke-direct/range {v23 .. v23}, Landroid/text/format/Time;-><init>()V

    .line 710
    .local v23, endTime:Landroid/text/format/Time;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 712
    .local v45, tz:Ljava/lang/String;
    const-string v3, "UTC"

    move-object/from16 v0, v39

    iput-object v3, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 714
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v39

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 716
    move-object/from16 v0, v45

    move-object/from16 v1, v39

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 718
    const/4 v3, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 720
    const/4 v3, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v37

    .line 724
    .local v37, startMillis:J
    const-string v3, "UTC"

    move-object/from16 v0, v23

    iput-object v3, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 726
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 728
    move-object/from16 v0, v45

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 730
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 734
    move-object/from16 v0, v23

    iget v3, v0, Landroid/text/format/Time;->hour:I

    if-nez v3, :cond_14f

    move-object/from16 v0, v23

    iget v3, v0, Landroid/text/format/Time;->minute:I

    if-nez v3, :cond_14f

    .line 736
    move-object/from16 v0, v23

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v23

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 738
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 760
    :cond_14f
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v21

    .line 814
    .local v21, endMillis:J
    cmp-long v3, v37, v21

    if-nez v3, :cond_2e3

    .line 816
    move-object/from16 v0, v17

    move-wide/from16 v1, v37

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    .line 818
    .local v28, fromStr:Ljava/lang/String;
    const/16 v43, 0x0

    .line 904
    .end local v21           #endMillis:J
    .end local v23           #endTime:Landroid/text/format/Time;
    .end local v37           #startMillis:J
    .end local v39           #startTime:Landroid/text/format/Time;
    .end local v45           #tz:Ljava/lang/String;
    .local v43, toStr:Ljava/lang/String;
    :goto_168
    const v3, 0x7f0f0081

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v3, v1}, Lcom/android/calendar/VCalInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 906
    const v3, 0x7f0f0081

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    .line 910
    if-nez v43, :cond_417

    .line 912
    const v3, 0x7f0f0082

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    .line 928
    :goto_187
    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 930
    .local v4, uri:Landroid/net/Uri;
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "_id=%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v7, v8

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 937
    .local v6, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 938
    .local v14, calendarsCursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 940
    .local v12, calendarDisplayName:Ljava/lang/String;
    if-eqz v14, :cond_42c

    .line 942
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 944
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 948
    const v3, 0x7f0f001f

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    .line 952
    const v3, 0x7f0f007f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/calendar/VCalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/ImageView;

    .line 954
    .local v30, iv:Landroid/widget/ImageView;
    const/16 v3, 0x8

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 958
    if-eqz v12, :cond_1eb

    .line 960
    const-string v3, "My calendar"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e3

    .line 962
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a00c1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 964
    :cond_1e3
    const v3, 0x7f0f004d

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/android/calendar/VCalInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 968
    :cond_1eb
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 978
    .end local v30           #iv:Landroid/widget/ImageView;
    :goto_1ee
    const/16 v32, 0x0

    .line 984
    .local v32, locationExist:Z
    const v3, 0x7f0f002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/calendar/VCalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 986
    .local v9, address:Landroid/widget/TextView;
    if-eqz v31, :cond_438

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_438

    .line 988
    if-eqz v9, :cond_20a

    .line 990
    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 992
    :cond_20a
    const v3, 0x7f0f002b

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    .line 994
    const/16 v32, 0x1

    .line 1004
    :goto_215
    const v3, 0x7f0f0055

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    .line 1008
    if-eqz v32, :cond_444

    .line 1010
    const v3, 0x7f0f0052

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    .line 1018
    :goto_22a
    const v3, 0x7f0f008c

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    .line 1022
    const v3, 0x7f0f008d

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    .line 1024
    const v3, 0x7f0f008c

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    .line 1028
    const v3, 0x7f0f0090

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    .line 1034
    if-eqz v33, :cond_29a

    .line 1036
    new-instance v25, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct/range {v25 .. v25}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 1040
    .local v25, eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    :try_start_259
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1042
    new-instance v16, Landroid/text/format/Time;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1044
    .local v16, date:Landroid/text/format/Time;
    if-eqz v10, :cond_276

    .line 1046
    const-string v3, "UTC"

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1050
    :cond_276
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1052
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/EventRecurrence;->setStartDate(Landroid/text/format/Time;)V

    .line 1054
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/android/calendar/EventRecurrenceFormatter;->getRepeatString(Landroid/content/res/Resources;Lcom/android/calendarcommon/EventRecurrence;)Ljava/lang/String;

    move-result-object v34

    .line 1058
    .local v34, repeatString:Ljava/lang/String;
    const v3, 0x7f0f0093

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/android/calendar/VCalInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V
    :try_end_29a
    .catch Ljava/lang/Exception; {:try_start_259 .. :try_end_29a} :catch_450

    .line 1070
    .end local v16           #date:Landroid/text/format/Time;
    .end local v25           #eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    .end local v34           #repeatString:Ljava/lang/String;
    :cond_29a
    :goto_29a
    const v5, 0x7f0f005b

    if-eqz v33, :cond_458

    const/4 v3, 0x0

    :goto_2a0
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    .line 1076
    if-eqz v18, :cond_45c

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_45c

    .line 1078
    const v3, 0x7f0f0062

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v1}, Lcom/android/calendar/VCalInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 1080
    const v3, 0x7f0f0094

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    .line 1090
    :goto_2c0
    return-void

    .line 552
    .end local v4           #uri:Landroid/net/Uri;
    .end local v6           #where:Ljava/lang/String;
    .end local v9           #address:Landroid/widget/TextView;
    .end local v10           #allDay:Z
    .end local v11           #calBackground:Landroid/widget/ImageView;
    .end local v12           #calendarDisplayName:Ljava/lang/String;
    .end local v13           #calendarId:I
    .end local v14           #calendarsCursor:Landroid/database/Cursor;
    .end local v15           #color:I
    .end local v17           #dateFormat:Ljava/lang/String;
    .end local v18           #description:Ljava/lang/String;
    .end local v20           #end:Ljava/lang/Long;
    .end local v24           #eventName:Ljava/lang/String;
    .end local v28           #fromStr:Ljava/lang/String;
    .end local v31           #location:Ljava/lang/String;
    .end local v32           #locationExist:Z
    .end local v33           #rRule:Ljava/lang/String;
    .end local v36           #start:Ljava/lang/Long;
    .end local v40           #systemDateFormat:Ljava/lang/String;
    .end local v43           #toStr:Ljava/lang/String;
    .end local v46           #vCalValues:Landroid/content/ContentValues;
    :cond_2c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalInfoActivity;->mVCalValues:Landroid/content/ContentValues;

    move-object/from16 v46, v0

    .restart local v46       #vCalValues:Landroid/content/ContentValues;
    goto/16 :goto_b

    .line 572
    .restart local v20       #end:Ljava/lang/Long;
    .restart local v24       #eventName:Ljava/lang/String;
    .restart local v36       #start:Ljava/lang/Long;
    :cond_2c9
    const/4 v10, 0x0

    goto/16 :goto_4f

    .line 694
    .restart local v10       #allDay:Z
    .restart local v11       #calBackground:Landroid/widget/ImageView;
    .restart local v13       #calendarId:I
    .restart local v15       #color:I
    .restart local v17       #dateFormat:Ljava/lang/String;
    .restart local v18       #description:Ljava/lang/String;
    .restart local v31       #location:Ljava/lang/String;
    .restart local v33       #rRule:Ljava/lang/String;
    .restart local v40       #systemDateFormat:Ljava/lang/String;
    :cond_2cc
    const-string v3, "yyyy-MM-dd"

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a00e4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_e4

    .line 822
    .restart local v21       #endMillis:J
    .restart local v23       #endTime:Landroid/text/format/Time;
    .restart local v37       #startMillis:J
    .restart local v39       #startTime:Landroid/text/format/Time;
    .restart local v45       #tz:Ljava/lang/String;
    :cond_2e3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0046

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    move-wide/from16 v1, v37

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 826
    .restart local v28       #fromStr:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0045

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .restart local v43       #toStr:Ljava/lang/String;
    goto/16 :goto_168

    .line 852
    .end local v21           #endMillis:J
    .end local v23           #endTime:Landroid/text/format/Time;
    .end local v28           #fromStr:Ljava/lang/String;
    .end local v37           #startMillis:J
    .end local v39           #startTime:Landroid/text/format/Time;
    .end local v43           #toStr:Ljava/lang/String;
    .end local v45           #tz:Ljava/lang/String;
    :cond_341
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v41

    .line 854
    .local v41, timezone:Ljava/lang/String;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-static {v0, v7, v8, v1}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    .line 860
    .local v27, fromDate:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-static {v0, v7, v8, v1}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v42

    .line 868
    .local v42, toDate:Ljava/lang/String;
    const/16 v26, 0x201

    .line 870
    .local v26, flags:I
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_376

    .line 872
    move/from16 v0, v26

    or-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    .line 876
    :cond_376
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v41

    invoke-static {v0, v7, v8, v1, v2}, Lcom/android/calendar/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 878
    .local v29, fromTime:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v41

    invoke-static {v0, v7, v8, v1, v2}, Lcom/android/calendar/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 882
    .local v44, toTime:Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b5

    .line 884
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 886
    .restart local v28       #fromStr:Ljava/lang/String;
    const/16 v43, 0x0

    .restart local v43       #toStr:Ljava/lang/String;
    goto/16 :goto_168

    .line 890
    .end local v28           #fromStr:Ljava/lang/String;
    .end local v43           #toStr:Ljava/lang/String;
    :cond_3b5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0046

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 894
    .restart local v28       #fromStr:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0045

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .restart local v43       #toStr:Ljava/lang/String;
    goto/16 :goto_168

    .line 916
    .end local v26           #flags:I
    .end local v27           #fromDate:Ljava/lang/String;
    .end local v29           #fromTime:Ljava/lang/String;
    .end local v41           #timezone:Ljava/lang/String;
    .end local v42           #toDate:Ljava/lang/String;
    .end local v44           #toTime:Ljava/lang/String;
    :cond_417
    const v3, 0x7f0f0082

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v3, v1}, Lcom/android/calendar/VCalInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 918
    const v3, 0x7f0f0082

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    goto/16 :goto_187

    .line 972
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v6       #where:Ljava/lang/String;
    .restart local v12       #calendarDisplayName:Ljava/lang/String;
    .restart local v14       #calendarsCursor:Landroid/database/Cursor;
    :cond_42c
    const v3, 0x7f0f004c

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    goto/16 :goto_1ee

    .line 998
    .restart local v9       #address:Landroid/widget/TextView;
    .restart local v32       #locationExist:Z
    :cond_438
    const v3, 0x7f0f002b

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    goto/16 :goto_215

    .line 1014
    :cond_444
    const v3, 0x7f0f0052

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    goto/16 :goto_22a

    .line 1060
    .restart local v25       #eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    :catch_450
    move-exception v19

    .line 1062
    .local v19, e:Ljava/lang/Exception;
    const/16 v33, 0x0

    .line 1064
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_29a

    .line 1070
    .end local v19           #e:Ljava/lang/Exception;
    .end local v25           #eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    :cond_458
    const/16 v3, 0x8

    goto/16 :goto_2a0

    .line 1084
    :cond_45c
    const v3, 0x7f0f0094

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/calendar/VCalInfoActivity;->setVisibilityCommon(II)V

    goto/16 :goto_2c0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0a00c4

    const/4 v7, 0x0

    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const v5, 0x7f030039

    invoke-virtual {p0, v5}, Lcom/android/calendar/VCalInfoActivity;->setContentView(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/calendar/VCalInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 166
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "CALENDAR_TYPE"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/calendar/VCalInfoActivity;->mCalendarType:I

    .line 168
    const-string v5, "VCAL_POSITION"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/calendar/VCalInfoActivity;->mPosition:I

    .line 172
    iget v5, p0, Lcom/android/calendar/VCalInfoActivity;->mCalendarType:I

    if-nez v5, :cond_8a

    .line 174
    const-string v5, "VCAL_DATA"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    iput-object v5, p0, Lcom/android/calendar/VCalInfoActivity;->mVCalValues:Landroid/content/ContentValues;

    .line 176
    iget-object v5, p0, Lcom/android/calendar/VCalInfoActivity;->mVCalValues:Landroid/content/ContentValues;

    if-nez v5, :cond_46

    .line 178
    invoke-virtual {p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 182
    invoke-virtual {p0}, Lcom/android/calendar/VCalInfoActivity;->finish()V

    .line 327
    :goto_45
    return-void

    .line 188
    :cond_46
    new-instance v5, Lcom/android/calendar/vcal/VCalManager;

    invoke-direct {v5, p0}, Lcom/android/calendar/vcal/VCalManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/calendar/VCalInfoActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    .line 190
    iget-object v5, p0, Lcom/android/calendar/VCalInfoActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    iget-object v6, p0, Lcom/android/calendar/VCalInfoActivity;->mVCalValues:Landroid/content/ContentValues;

    invoke-virtual {v5, v6}, Lcom/android/calendar/vcal/VCalManager;->setVCalValues(Landroid/content/ContentValues;)V

    .line 227
    :goto_54
    invoke-direct {p0}, Lcom/android/calendar/VCalInfoActivity;->updateView()V

    .line 231
    const v5, 0x7f0f00c9

    invoke-virtual {p0, v5}, Lcom/android/calendar/VCalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 233
    .local v3, importButton:Landroid/widget/Button;
    const v5, 0x7f0a0058

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    .line 237
    iget v5, p0, Lcom/android/calendar/VCalInfoActivity;->mCalendarType:I

    if-nez v5, :cond_b6

    .line 239
    new-instance v5, Lcom/android/calendar/VCalInfoActivity$1;

    invoke-direct {v5, p0}, Lcom/android/calendar/VCalInfoActivity$1;-><init>(Lcom/android/calendar/VCalInfoActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    :goto_72
    const v5, 0x7f0f00ca

    invoke-virtual {p0, v5}, Lcom/android/calendar/VCalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 313
    .local v0, cancelButton:Landroid/widget/Button;
    const v5, 0x7f0a0087

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 315
    new-instance v5, Lcom/android/calendar/VCalInfoActivity$3;

    invoke-direct {v5, p0}, Lcom/android/calendar/VCalInfoActivity$3;-><init>(Lcom/android/calendar/VCalInfoActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_45

    .line 198
    .end local v0           #cancelButton:Landroid/widget/Button;
    .end local v3           #importButton:Landroid/widget/Button;
    :cond_8a
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 199
    .local v1, content:Landroid/net/Uri;
    if-nez v1, :cond_99

    .line 200
    const-string v5, "VCAL_DATA"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #content:Landroid/net/Uri;
    check-cast v1, Landroid/net/Uri;

    .line 203
    .restart local v1       #content:Landroid/net/Uri;
    :cond_99
    invoke-direct {p0, v1}, Lcom/android/calendar/VCalInfoActivity;->getVCalData(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, data:Ljava/lang/String;
    if-eqz v2, :cond_a3

    .line 209
    invoke-direct {p0, v2}, Lcom/android/calendar/VCalInfoActivity;->parseICalendar(Ljava/lang/String;)V

    goto :goto_54

    .line 213
    :cond_a3
    invoke-virtual {p0}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 217
    invoke-virtual {p0}, Lcom/android/calendar/VCalInfoActivity;->finish()V

    goto :goto_45

    .line 271
    .end local v1           #content:Landroid/net/Uri;
    .end local v2           #data:Ljava/lang/String;
    .restart local v3       #importButton:Landroid/widget/Button;
    :cond_b6
    new-instance v5, Lcom/android/calendar/VCalInfoActivity$2;

    invoke-direct {v5, p0}, Lcom/android/calendar/VCalInfoActivity$2;-><init>(Lcom/android/calendar/VCalInfoActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_72
.end method
