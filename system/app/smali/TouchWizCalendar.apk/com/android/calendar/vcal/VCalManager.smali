.class public Lcom/android/calendar/vcal/VCalManager;
.super Ljava/lang/Object;
.source "VCalManager.java"


# instance fields
.field private mCalendars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContentVCalValues:Landroid/content/ContentValues;

.field private final mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;

.field private mVCalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mCalendars:Ljava/util/HashMap;

    .line 122
    if-nez p1, :cond_15

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 126
    :cond_15
    iput-object p1, p0, Lcom/android/calendar/vcal/VCalManager;->mContext:Landroid/content/Context;

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mCalendars:Ljava/util/HashMap;

    .line 116
    iput-object p1, p0, Lcom/android/calendar/vcal/VCalManager;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/android/calendar/vcal/VCalManager;->mUri:Landroid/net/Uri;

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mCalendars:Ljava/util/HashMap;

    .line 92
    if-nez p1, :cond_15

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 96
    :cond_15
    iput-object p1, p0, Lcom/android/calendar/vcal/VCalManager;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {p0, p2}, Lcom/android/calendar/vcal/VCalManager;->parseVCalendar(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 107
    return-void
.end method

.method private static convertLongToRFC2445DateTime(JLjava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .parameter "mills"
    .parameter "timezone"
    .parameter "day"

    .prologue
    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, time:Landroid/text/format/Time;
    if-eqz p2, :cond_25

    const-string v2, "UTC"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 900
    new-instance v0, Landroid/text/format/Time;

    .end local v0           #time:Landroid/text/format/Time;
    invoke-direct {v0, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 905
    .restart local v0       #time:Landroid/text/format/Time;
    :goto_10
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 906
    if-eqz p3, :cond_2b

    .line 907
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "%Y%m%d"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 915
    .local v1, timeStr:Ljava/lang/StringBuffer;
    :cond_20
    :goto_20
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 902
    .end local v1           #timeStr:Ljava/lang/StringBuffer;
    :cond_25
    new-instance v0, Landroid/text/format/Time;

    .end local v0           #time:Landroid/text/format/Time;
    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .restart local v0       #time:Landroid/text/format/Time;
    goto :goto_10

    .line 909
    :cond_2b
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "%Y%m%dT%H%M%S"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 910
    .restart local v1       #timeStr:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_20

    const-string v2, "UTC"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 911
    const-string v2, "Z"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_20
.end method

.method private getFirstIDFromCalendar()I
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 933
    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 936
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_29

    .line 937
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 938
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 939
    .local v7, id:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 947
    .end local v7           #id:I
    :goto_25
    return v7

    .line 942
    :cond_26
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 947
    :cond_29
    const/4 v7, -0x1

    goto :goto_25
.end method

.method private parseTimezoneId(Ljava/lang/String;Lcom/android/calendar/vcal/pim/PropertyNode;)Ljava/lang/String;
    .registers 28
    .parameter "timezoneId"
    .parameter "prop"

    .prologue
    .line 728
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 729
    .local v19, timezone:Ljava/lang/String;
    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 730
    .local v17, time:Ljava/lang/String;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v22, 0x0

    const-string v23, "0"

    aput-object v23, v18, v22

    const/16 v22, 0x1

    const-string v23, "0"

    aput-object v23, v18, v22

    .line 733
    .local v18, times:[Ljava/lang/String;
    const-string v22, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_cc

    .line 734
    const-string v22, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 740
    :cond_3a
    :goto_3a
    if-eqz v18, :cond_cb

    .line 741
    const/16 v22, 0x0

    aget-object v22, v18, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 742
    .local v8, hour:Ljava/lang/Integer;
    const/16 v22, 0x1

    aget-object v22, v18, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 743
    .local v15, minute:Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const v23, 0x36ee80

    mul-int v22, v22, v23

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v23

    const v24, 0xea60

    mul-int v23, v23, v24

    add-int v16, v22, v23

    .line 744
    .local v16, offset:I
    const-string v22, "-"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_6e

    .line 745
    mul-int/lit8 v16, v16, -0x1

    .line 747
    :cond_6e
    const/16 v20, 0x0

    .line 748
    .local v20, timezones:[Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    .line 749
    .local v5, defaultOffset:I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    .line 750
    .local v6, defaultTimezone:Ljava/lang/String;
    move/from16 v0, v16

    if-ne v5, v0, :cond_fe

    const-string v22, "GMT"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_fe

    .line 751
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 752
    const/16 v22, 0x0

    aput-object v6, v20, v22

    .line 756
    :goto_9a
    if-eqz v20, :cond_cb

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/VCalManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070021

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 758
    .local v12, ids:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 759
    .local v7, found:Z
    move-object/from16 v3, v20

    .local v3, arr$:[Ljava/lang/String;
    array-length v13, v3

    .local v13, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v10, v9

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v13           #len$:I
    .local v10, i$:I
    :goto_b3
    if-ge v10, v13, :cond_cb

    aget-object v21, v3, v10

    .line 760
    .local v21, tz:Ljava/lang/String;
    move-object v4, v12

    .local v4, arr$:[Ljava/lang/String;
    array-length v14, v4

    .local v14, len$:I
    const/4 v9, 0x0

    .end local v10           #i$:I
    .restart local v9       #i$:I
    :goto_ba
    if-ge v9, v14, :cond_c9

    aget-object v11, v4, v9

    .line 761
    .local v11, id:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_103

    .line 762
    move-object/from16 p1, v21

    .line 763
    const/4 v7, 0x1

    .line 767
    .end local v11           #id:Ljava/lang/String;
    :cond_c9
    if-eqz v7, :cond_106

    .line 780
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #defaultOffset:I
    .end local v6           #defaultTimezone:Ljava/lang/String;
    .end local v7           #found:Z
    .end local v8           #hour:Ljava/lang/Integer;
    .end local v9           #i$:I
    .end local v12           #ids:[Ljava/lang/String;
    .end local v14           #len$:I
    .end local v15           #minute:Ljava/lang/Integer;
    .end local v16           #offset:I
    .end local v20           #timezones:[Ljava/lang/String;
    .end local v21           #tz:Ljava/lang/String;
    :cond_cb
    return-object p1

    .line 736
    :cond_cc
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v18, v22

    .line 737
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_3a

    .line 738
    const/16 v22, 0x1

    const/16 v23, 0x2

    const/16 v24, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v18, v22

    goto/16 :goto_3a

    .line 754
    .restart local v5       #defaultOffset:I
    .restart local v6       #defaultTimezone:Ljava/lang/String;
    .restart local v8       #hour:Ljava/lang/Integer;
    .restart local v15       #minute:Ljava/lang/Integer;
    .restart local v16       #offset:I
    .restart local v20       #timezones:[Ljava/lang/String;
    :cond_fe
    invoke-static/range {v16 .. v16}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v20

    goto :goto_9a

    .line 760
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v7       #found:Z
    .restart local v9       #i$:I
    .restart local v11       #id:Ljava/lang/String;
    .restart local v12       #ids:[Ljava/lang/String;
    .restart local v14       #len$:I
    .restart local v21       #tz:Ljava/lang/String;
    :cond_103
    add-int/lit8 v9, v9, 0x1

    goto :goto_ba

    .line 759
    .end local v11           #id:Ljava/lang/String;
    :cond_106
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9           #i$:I
    .restart local v10       #i$:I
    goto :goto_b3
.end method

.method private setEventMap(Lcom/android/calendar/vcal/pim/VNode;ILjava/lang/String;)Landroid/content/ContentValues;
    .registers 16
    .parameter "vnode"
    .parameter "calId"
    .parameter "timezoneId"

    .prologue
    .line 784
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 786
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "calendar_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 788
    iget-object v8, p1, Lcom/android/calendar/vcal/pim/VNode;->propList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_186

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/vcal/pim/PropertyNode;

    .line 789
    .local v4, prop:Lcom/android/calendar/vcal/pim/PropertyNode;
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    if-eqz v8, :cond_14

    .line 790
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 791
    .local v6, time:Landroid/text/format/Time;
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "DESCRIPTION"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 792
    const-string v8, "description"

    iget-object v9, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    const-string v10, "\r\n"

    const-string v11, "\n"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 793
    :cond_43
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "DTEND"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_61

    iget-object v8, p1, Lcom/android/calendar/vcal/pim/VNode;->VName:Ljava/lang/String;

    const-string v9, "VTODO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_86

    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "COMPLETED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_86

    .line 797
    :cond_61
    :try_start_61
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 798
    iget-boolean v8, v6, Landroid/text/format/Time;->allDay:Z

    if-eqz v8, :cond_72

    .line 799
    const-string v8, "UTC"

    iput-object v8, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 800
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 802
    :cond_72
    const-string v8, "dtend"

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_80} :catch_81

    goto :goto_14

    .line 807
    :catch_81
    move-exception v0

    .line 809
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    .line 812
    .end local v0           #e:Ljava/lang/Exception;
    :cond_86
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "DTSTART"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a4

    iget-object v8, p1, Lcom/android/calendar/vcal/pim/VNode;->VName:Ljava/lang/String;

    const-string v9, "VTODO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_db

    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "DUE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_db

    .line 816
    :cond_a4
    :try_start_a4
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 817
    iget-boolean v8, v6, Landroid/text/format/Time;->allDay:Z

    if-eqz v8, :cond_b5

    .line 818
    const-string v8, "UTC"

    iput-object v8, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 819
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 821
    :cond_b5
    const-string v8, "dtstart"

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 826
    const-string v9, "allDay"

    iget-boolean v8, v6, Landroid/text/format/Time;->allDay:Z

    if-eqz v8, :cond_d9

    const/4 v8, 0x1

    :goto_ca
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_d1} :catch_d3

    goto/16 :goto_14

    .line 827
    :catch_d3
    move-exception v0

    .line 829
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_14

    .line 826
    .end local v0           #e:Ljava/lang/Exception;
    :cond_d9
    const/4 v8, 0x0

    goto :goto_ca

    .line 833
    :cond_db
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "SUMMARY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_ef

    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "SUBJECT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_100

    .line 835
    :cond_ef
    const-string v8, "title"

    iget-object v9, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    const-string v10, "\r\n"

    const-string v11, "\n"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 838
    :cond_100
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "LOCATION"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11b

    .line 839
    const-string v8, "eventLocation"

    iget-object v9, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    const-string v10, "\r\n"

    const-string v11, "\n"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 841
    :cond_11b
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "DUE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12e

    .line 842
    const-string v8, "duration"

    iget-object v9, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 843
    :cond_12e
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "RRULE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_151

    .line 844
    new-instance v2, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v2}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 846
    .local v2, eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    :try_start_13d
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 847
    const-string v8, "rrule"

    iget-object v9, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_149} :catch_14b

    goto/16 :goto_14

    .line 848
    :catch_14b
    move-exception v0

    .line 849
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_14

    .line 852
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    :cond_151
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "COMPLETED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_176

    .line 854
    :try_start_15b
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 855
    const-string v8, "lastDate"

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_16e} :catch_170

    goto/16 :goto_14

    .line 859
    :catch_170
    move-exception v0

    .line 861
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_14

    .line 863
    .end local v0           #e:Ljava/lang/Exception;
    :cond_176
    iget-object v8, v4, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v9, "TZ"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 864
    invoke-direct {p0, p3, v4}, Lcom/android/calendar/vcal/VCalManager;->parseTimezoneId(Ljava/lang/String;Lcom/android/calendar/vcal/pim/PropertyNode;)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_14

    .line 868
    .end local v4           #prop:Lcom/android/calendar/vcal/pim/PropertyNode;
    .end local v6           #time:Landroid/text/format/Time;
    :cond_186
    if-eqz p3, :cond_18d

    .line 869
    const-string v8, "eventTimezone"

    invoke-virtual {v7, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :cond_18d
    const-string v8, "dtstart"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 872
    .local v5, start:Ljava/lang/Long;
    const-string v8, "dtend"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 873
    .local v1, end:Ljava/lang/Long;
    if-nez v5, :cond_1ac

    .line 874
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 875
    const-string v8, "dtstart"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 877
    :cond_1ac
    if-eqz v1, :cond_1ba

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_1cb

    .line 878
    :cond_1ba
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0x36ee80

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 879
    const-string v8, "dtend"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 881
    :cond_1cb
    const-string v8, "allDay"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1dd

    .line 882
    const-string v8, "allDay"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 885
    :cond_1dd
    return-object v7
.end method


# virtual methods
.method calculateLastDate(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 20
    .parameter "dtstartMillis"
    .parameter "dtEnd"
    .parameter "durationStr"
    .parameter "rrule"
    .parameter "tz"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/vcal/pim/vcalendar/DateException;
        }
    .end annotation

    .prologue
    .line 970
    const-wide/16 v4, -0x1

    .line 978
    .local v4, lastMillis:J
    if-eqz p3, :cond_a

    .line 979
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_8
    move-wide v6, v4

    .line 1024
    .end local v4           #lastMillis:J
    .local v6, lastMillis:J
    :goto_9
    return-wide v6

    .line 982
    .end local v6           #lastMillis:J
    .restart local v4       #lastMillis:J
    :cond_a
    new-instance v2, Lcom/android/calendar/vcal/pim/vcalendar/Duration;

    invoke-direct {v2}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;-><init>()V

    .line 984
    .local v2, duration:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    if-eqz p4, :cond_16

    .line 985
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->parse(Ljava/lang/String;)V

    .line 988
    :cond_16
    const/4 v8, 0x0

    .line 991
    .local v8, recur:Lcom/android/calendarcommon/RecurrenceSet;
    :try_start_17
    new-instance v8, Lcom/android/calendarcommon/RecurrenceSet;

    .end local v8           #recur:Lcom/android/calendarcommon/RecurrenceSet;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-direct {v8, v0, v10, v11, v12}, Lcom/android/calendarcommon/RecurrenceSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_4c

    .line 997
    .restart local v8       #recur:Lcom/android/calendarcommon/RecurrenceSet;
    :goto_21
    if-eqz v8, :cond_52

    invoke-virtual {v8}, Lcom/android/calendarcommon/RecurrenceSet;->hasRecurrence()Z

    move-result v10

    if-eqz v10, :cond_52

    .line 1003
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_31

    .line 1005
    const-string p6, "UTC"

    .line 1007
    :cond_31
    new-instance v1, Landroid/text/format/Time;

    move-object/from16 v0, p6

    invoke-direct {v1, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1009
    .local v1, dtstartLocal:Landroid/text/format/Time;
    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1011
    new-instance v9, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;

    invoke-direct {v9}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;-><init>()V

    .line 1012
    .local v9, rp:Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;
    invoke-virtual {v9, v1, v8}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->getLastOccurence(Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;)J

    move-result-wide v4

    .line 1013
    const-wide/16 v10, -0x1

    cmp-long v10, v4, v10

    if-nez v10, :cond_53

    move-wide v6, v4

    .line 1014
    .end local v4           #lastMillis:J
    .restart local v6       #lastMillis:J
    goto :goto_9

    .line 992
    .end local v1           #dtstartLocal:Landroid/text/format/Time;
    .end local v6           #lastMillis:J
    .end local v8           #recur:Lcom/android/calendarcommon/RecurrenceSet;
    .end local v9           #rp:Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;
    .restart local v4       #lastMillis:J
    :catch_4c
    move-exception v3

    .line 993
    .local v3, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 994
    .restart local v8       #recur:Lcom/android/calendarcommon/RecurrenceSet;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21

    .line 1018
    .end local v3           #e:Ljava/lang/Exception;
    :cond_52
    move-wide v4, p1

    .line 1022
    :cond_53
    invoke-virtual {v2, v4, v5}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->addTo(J)J

    move-result-wide v4

    goto :goto_8
.end method

.method public getAllday()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1122
    iget-object v1, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    if-eqz v1, :cond_14

    .line 1124
    iget-object v1, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    const-string v2, "allDay"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    .line 1126
    :cond_14
    return v0
.end method

.method public getAllday(I)Z
    .registers 5
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 605
    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 606
    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v2, "allDay"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    .line 608
    :goto_22
    return v0

    :cond_23
    move v0, v1

    .line 606
    goto :goto_22

    :cond_25
    move v0, v1

    .line 608
    goto :goto_22
.end method

.method public getData()Ljava/lang/String;
    .registers 30

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/vcal/VCalManager;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_8

    .line 176
    const/4 v3, 0x0

    .line 332
    :goto_7
    return-object v3

    .line 178
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/vcal/VCalManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/vcal/VCalManager;->mUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 180
    .local v10, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/vcal/VCalManager;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    .line 181
    .local v25, uid:Ljava/lang/String;
    if-nez v10, :cond_28

    .line 182
    const/4 v3, 0x0

    goto :goto_7

    .line 185
    :cond_28
    :try_start_28
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_1de

    move-result v3

    if-nez v3, :cond_33

    .line 186
    const/4 v3, 0x0

    .line 332
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 189
    :cond_33
    :try_start_33
    new-instance v11, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;

    invoke-direct {v11}, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;-><init>()V

    .line 193
    .local v11, calStruct:Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;
    const-string v3, "eventTimezone"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 194
    .local v9, tzid:Ljava/lang/String;
    if-eqz v9, :cond_1e3

    .line 201
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    .line 203
    .local v13, date:J
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    .line 204
    .local v24, tz:Ljava/util/TimeZone;
    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v14}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v22

    .line 205
    .local v22, offset:I
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v23

    .line 206
    .local v23, p:I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v21, name:Ljava/lang/StringBuilder;
    if-gez v22, :cond_1d5

    .line 210
    const/16 v3, 0x2d

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    :goto_68
    const-string v3, "%02d"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const v28, 0x36ee80

    div-int v28, v23, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v26

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const/16 v3, 0x3a

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    const v3, 0xea60

    div-int v20, v23, v3

    .line 219
    .local v20, min:I
    rem-int/lit8 v20, v20, 0x3c

    .line 221
    const/16 v3, 0xa

    move/from16 v0, v20

    if-ge v0, v3, :cond_a5

    .line 222
    const/16 v3, 0x30

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    :cond_a5
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    .line 232
    .end local v13           #date:J
    .end local v20           #min:I
    .end local v21           #name:Ljava/lang/StringBuilder;
    .end local v22           #offset:I
    .end local v23           #p:I
    .end local v24           #tz:Ljava/util/TimeZone;
    :goto_b2
    new-instance v17, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;

    invoke-direct/range {v17 .. v17}, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;-><init>()V

    .line 234
    .local v17, evtStruct:Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;
    const-string v3, "dtstart"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 235
    .local v4, startTime:J
    const/4 v6, 0x0

    .line 236
    .local v6, endTime:Ljava/lang/Long;
    const-string v3, "dtend"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_dc

    .line 237
    const-string v3, "dtend"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 239
    :cond_dc
    const-string v3, "duration"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 240
    .local v7, durationStr:Ljava/lang/String;
    const-string v3, "rrule"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_ef
    .catchall {:try_start_33 .. :try_end_ef} :catchall_1de

    move-result-object v8

    .line 242
    .local v8, rrule:Ljava/lang/String;
    const-wide/16 v18, -0x1

    .local v18, lastDate:J
    move-object/from16 v3, p0

    .line 244
    :try_start_f4
    invoke-virtual/range {v3 .. v9}, Lcom/android/calendar/vcal/VCalManager;->calculateLastDate(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_1de
    .catch Lcom/android/calendar/vcal/pim/vcalendar/DateException; {:try_start_f4 .. :try_end_f7} :catch_1e9

    move-result-wide v18

    .line 249
    :goto_f8
    if-nez v6, :cond_110

    if-eqz v8, :cond_110

    if-eqz v7, :cond_110

    .line 250
    :try_start_fe
    new-instance v15, Lcom/android/calendar/vcal/pim/vcalendar/Duration;

    invoke-direct {v15}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;-><init>()V
    :try_end_103
    .catchall {:try_start_fe .. :try_end_103} :catchall_1de

    .line 252
    .local v15, duration:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :try_start_103
    invoke-virtual {v15, v7}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->parse(Ljava/lang/String;)V
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_1de
    .catch Lcom/android/calendar/vcal/pim/vcalendar/DateException; {:try_start_103 .. :try_end_106} :catch_1ef

    .line 261
    :goto_106
    :try_start_106
    invoke-virtual {v15}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->getMillis()J

    move-result-wide v26

    add-long v26, v26, v4

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 265
    .end local v15           #duration:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :cond_110
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->uid:Ljava/lang/String;

    .line 266
    const-string v3, "description"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    .line 269
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-string v3, "UTC"

    const/16 v28, 0x0

    move-wide/from16 v0, v26

    move/from16 v2, v28

    invoke-static {v0, v1, v3, v2}, Lcom/android/calendar/vcal/VCalManager;->convertLongToRFC2445DateTime(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    .line 274
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-string v3, "UTC"

    const/16 v28, 0x1

    move-wide/from16 v0, v26

    move/from16 v2, v28

    invoke-static {v0, v1, v3, v2}, Lcom/android/calendar/vcal/VCalManager;->convertLongToRFC2445DateTime(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->endday:Ljava/lang/String;

    .line 279
    const-string v3, "UTC"

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-static {v4, v5, v3, v0}, Lcom/android/calendar/vcal/VCalManager;->convertLongToRFC2445DateTime(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    .line 285
    const-string v3, "UTC"

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-static {v4, v5, v3, v0}, Lcom/android/calendar/vcal/VCalManager;->convertLongToRFC2445DateTime(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->startday:Ljava/lang/String;

    .line 291
    move-object/from16 v0, v17

    iput-object v7, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->duration:Ljava/lang/String;

    .line 292
    const-string v3, "allDay"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1f5

    const/4 v3, 0x1

    :goto_179
    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->allday:Z

    .line 293
    const-string v3, "eventLocation"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    .line 303
    const-wide/16 v26, -0x1

    cmp-long v3, v18, v26

    if-eqz v3, :cond_1a1

    .line 304
    const-string v3, "UTC"

    const/16 v26, 0x0

    move-wide/from16 v0, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v3, v2}, Lcom/android/calendar/vcal/VCalManager;->convertLongToRFC2445DateTime(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->last_date:Ljava/lang/String;

    .line 311
    :cond_1a1
    move-object/from16 v0, v17

    iput-object v8, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->rrule:Ljava/lang/String;

    .line 312
    const-string v3, "eventStatus"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->status:Ljava/lang/String;

    .line 313
    const-string v3, "title"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    .line 320
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->addEventList(Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;)V
    :try_end_1c6
    .catchall {:try_start_106 .. :try_end_1c6} :catchall_1de

    .line 323
    :try_start_1c6
    new-instance v12, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;

    invoke-direct {v12}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;-><init>()V

    .line 325
    .local v12, composer:Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;
    const/4 v3, 0x1

    invoke-virtual {v12, v11, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;->createVCal(Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;I)Ljava/lang/String;
    :try_end_1cf
    .catchall {:try_start_1c6 .. :try_end_1cf} :catchall_1de
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1cf} :catch_1f7

    move-result-object v3

    .line 332
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7

    .line 212
    .end local v4           #startTime:J
    .end local v6           #endTime:Ljava/lang/Long;
    .end local v7           #durationStr:Ljava/lang/String;
    .end local v8           #rrule:Ljava/lang/String;
    .end local v12           #composer:Lcom/android/calendar/vcal/pim/vcalendar/VCalComposer;
    .end local v17           #evtStruct:Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;
    .end local v18           #lastDate:J
    .restart local v13       #date:J
    .restart local v21       #name:Ljava/lang/StringBuilder;
    .restart local v22       #offset:I
    .restart local v23       #p:I
    .restart local v24       #tz:Ljava/util/TimeZone;
    :cond_1d5
    const/16 v3, 0x2b

    :try_start_1d7
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1dc
    .catchall {:try_start_1d7 .. :try_end_1dc} :catchall_1de

    goto/16 :goto_68

    .line 332
    .end local v9           #tzid:Ljava/lang/String;
    .end local v11           #calStruct:Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;
    .end local v13           #date:J
    .end local v21           #name:Ljava/lang/StringBuilder;
    .end local v22           #offset:I
    .end local v23           #p:I
    .end local v24           #tz:Ljava/util/TimeZone;
    :catchall_1de
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    .line 228
    .restart local v9       #tzid:Ljava/lang/String;
    .restart local v11       #calStruct:Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;
    :cond_1e3
    :try_start_1e3
    const-string v3, "+00:00"

    iput-object v3, v11, Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    goto/16 :goto_b2

    .line 245
    .restart local v4       #startTime:J
    .restart local v6       #endTime:Ljava/lang/Long;
    .restart local v7       #durationStr:Ljava/lang/String;
    .restart local v8       #rrule:Ljava/lang/String;
    .restart local v17       #evtStruct:Lcom/android/calendar/vcal/pim/vcalendar/CalendarStruct$EventStruct;
    .restart local v18       #lastDate:J
    :catch_1e9
    move-exception v16

    .line 246
    .local v16, e:Lcom/android/calendar/vcal/pim/vcalendar/DateException;
    invoke-virtual/range {v16 .. v16}, Lcom/android/calendar/vcal/pim/vcalendar/DateException;->printStackTrace()V

    goto/16 :goto_f8

    .line 253
    .end local v16           #e:Lcom/android/calendar/vcal/pim/vcalendar/DateException;
    .restart local v15       #duration:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :catch_1ef
    move-exception v16

    .line 254
    .restart local v16       #e:Lcom/android/calendar/vcal/pim/vcalendar/DateException;
    invoke-virtual/range {v16 .. v16}, Lcom/android/calendar/vcal/pim/vcalendar/DateException;->printStackTrace()V
    :try_end_1f3
    .catchall {:try_start_1e3 .. :try_end_1f3} :catchall_1de

    goto/16 :goto_106

    .line 292
    .end local v15           #duration:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    .end local v16           #e:Lcom/android/calendar/vcal/pim/vcalendar/DateException;
    :cond_1f5
    const/4 v3, 0x0

    goto :goto_179

    .line 328
    :catch_1f7
    move-exception v16

    .line 329
    .local v16, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 332
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7
.end method

.method public getEndTime()Ljava/lang/Long;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1107
    iget-object v2, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_13

    .line 1109
    iget-object v2, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    const-string v3, "dtend"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1110
    .local v0, end:Ljava/lang/Long;
    if-nez v0, :cond_12

    move-object v0, v1

    .line 1118
    .end local v0           #end:Ljava/lang/Long;
    :cond_12
    :goto_12
    return-object v0

    :cond_13
    move-object v0, v1

    goto :goto_12
.end method

.method public getEndTime(I)Ljava/lang/Long;
    .registers 6
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 589
    iget-object v1, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_21

    .line 590
    iget-object v1, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v3, "dtend"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 591
    .local v0, end:Ljava/lang/Long;
    if-nez v0, :cond_20

    move-object v0, v2

    .line 599
    .end local v0           #end:Ljava/lang/Long;
    :cond_20
    :goto_20
    return-object v0

    :cond_21
    move-object v0, v2

    goto :goto_20
.end method

.method public getStartTime()Ljava/lang/Long;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1092
    iget-object v2, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_13

    .line 1094
    iget-object v2, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    const-string v3, "dtstart"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1095
    .local v0, start:Ljava/lang/Long;
    if-nez v0, :cond_12

    move-object v0, v1

    .line 1103
    .end local v0           #start:Ljava/lang/Long;
    :cond_12
    :goto_12
    return-object v0

    :cond_13
    move-object v0, v1

    goto :goto_12
.end method

.method public getStartTime(I)Ljava/lang/Long;
    .registers 6
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 550
    iget-object v1, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_21

    .line 551
    iget-object v1, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v3, "dtstart"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 552
    .local v0, start:Ljava/lang/Long;
    if-nez v0, :cond_20

    move-object v0, v2

    .line 560
    .end local v0           #start:Ljava/lang/Long;
    :cond_20
    :goto_20
    return-object v0

    :cond_21
    move-object v0, v2

    goto :goto_20
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_f

    .line 1086
    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1088
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getTitle(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 491
    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 493
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public insertEventDB()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_2e

    .line 1032
    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    const-string v1, "rrule"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    const-string v1, "rrule"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1033
    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    const-string v1, "dtend"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1035
    :cond_1f
    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1037
    :goto_2d
    return-object v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public parseVCalendar(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 16
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    new-instance v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;

    invoke-direct {v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;-><init>()V

    .line 678
    .local v6, parser:Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;
    new-instance v0, Lcom/android/calendar/vcal/pim/VDataBuilder;

    invoke-direct {v0}, Lcom/android/calendar/vcal/pim/VDataBuilder;-><init>()V

    .line 680
    .local v0, builder:Lcom/android/calendar/vcal/pim/VDataBuilder;
    if-nez p1, :cond_e

    .line 683
    const/4 v11, 0x0

    .line 724
    :goto_d
    return-object v11

    .line 687
    :cond_e
    const-string v11, "\r\n"

    const-string v12, "\n"

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\n"

    const-string v13, "\r\n"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, data2:Ljava/lang/String;
    :try_start_1e
    invoke-virtual {v6, v2, v0}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->parse(Ljava/lang/String;Lcom/android/calendar/vcal/pim/VDataBuilder;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_6d

    .line 695
    iget-object v11, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 697
    const/4 v1, 0x1

    .line 698
    .local v1, curCalendarId:I
    const/4 v8, 0x0

    .line 699
    .local v8, timezoneId:Ljava/lang/String;
    iget-object v11, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2e
    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calendar/vcal/pim/VNode;

    .line 701
    .local v10, vnode:Lcom/android/calendar/vcal/pim/VNode;
    iget-object v11, v10, Lcom/android/calendar/vcal/pim/VNode;->VName:Ljava/lang/String;

    const-string v12, "VCALENDAR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_70

    .line 704
    invoke-direct {p0}, Lcom/android/calendar/vcal/VCalManager;->getFirstIDFromCalendar()I

    move-result v1

    .line 707
    iget-object v11, v10, Lcom/android/calendar/vcal/pim/VNode;->propList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4e
    :goto_4e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/vcal/pim/PropertyNode;

    .line 708
    .local v7, prop:Lcom/android/calendar/vcal/pim/PropertyNode;
    iget-object v11, v7, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    if-eqz v11, :cond_4e

    .line 709
    iget-object v11, v7, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v12, "TZ"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4e

    .line 710
    invoke-direct {p0, v8, v7}, Lcom/android/calendar/vcal/VCalManager;->parseTimezoneId(Ljava/lang/String;Lcom/android/calendar/vcal/pim/PropertyNode;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4e

    .line 691
    .end local v1           #curCalendarId:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #prop:Lcom/android/calendar/vcal/pim/PropertyNode;
    .end local v8           #timezoneId:Ljava/lang/String;
    .end local v10           #vnode:Lcom/android/calendar/vcal/pim/VNode;
    :catch_6d
    move-exception v3

    .line 692
    .local v3, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_d

    .line 715
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #curCalendarId:I
    .restart local v8       #timezoneId:Ljava/lang/String;
    .restart local v10       #vnode:Lcom/android/calendar/vcal/pim/VNode;
    :cond_70
    iget-object v11, v10, Lcom/android/calendar/vcal/pim/VNode;->VName:Ljava/lang/String;

    const-string v12, "VEVENT"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_84

    iget-object v11, v10, Lcom/android/calendar/vcal/pim/VNode;->VName:Ljava/lang/String;

    const-string v12, "VTODO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2e

    .line 719
    :cond_84
    invoke-direct {p0, v10, v1, v8}, Lcom/android/calendar/vcal/VCalManager;->setEventMap(Lcom/android/calendar/vcal/pim/VNode;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    .line 720
    .local v9, values:Landroid/content/ContentValues;
    iget-object v11, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 724
    .end local v9           #values:Landroid/content/ContentValues;
    .end local v10           #vnode:Lcom/android/calendar/vcal/pim/VNode;
    :cond_8e
    iget-object v11, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_99

    const/4 v11, 0x0

    goto/16 :goto_d

    :cond_99
    iget-object v11, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    goto/16 :goto_d
.end method

.method public parseVCalendar_Backup(Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 14
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    .line 1041
    new-instance v5, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;

    invoke-direct {v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;-><init>()V

    .line 1042
    .local v5, parser:Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;
    new-instance v0, Lcom/android/calendar/vcal/pim/VDataBuilder;

    invoke-direct {v0}, Lcom/android/calendar/vcal/pim/VDataBuilder;-><init>()V

    .line 1044
    .local v0, builder:Lcom/android/calendar/vcal/pim/VDataBuilder;
    if-nez p1, :cond_e

    .line 1080
    :cond_d
    :goto_d
    return-object v9

    .line 1052
    :cond_e
    :try_start_e
    invoke-virtual {v5, p1, v0}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser;->parse(Ljava/lang/String;Lcom/android/calendar/vcal/pim/VDataBuilder;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_58

    .line 1058
    const/4 v1, 0x1

    .line 1059
    .local v1, curCalendarId:I
    const/4 v7, 0x0

    .line 1061
    .local v7, timezoneId:Ljava/lang/String;
    iget-object v10, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/vcal/pim/VNode;

    .line 1063
    .local v8, vnode:Lcom/android/calendar/vcal/pim/VNode;
    iget-object v10, v8, Lcom/android/calendar/vcal/pim/VNode;->VName:Ljava/lang/String;

    const-string v11, "VCALENDAR"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5a

    .line 1066
    invoke-direct {p0}, Lcom/android/calendar/vcal/VCalManager;->getFirstIDFromCalendar()I

    move-result v1

    .line 1067
    iget-object v10, v8, Lcom/android/calendar/vcal/pim/VNode;->propList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_39
    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/vcal/pim/PropertyNode;

    .line 1068
    .local v6, prop:Lcom/android/calendar/vcal/pim/PropertyNode;
    iget-object v10, v6, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    if-eqz v10, :cond_39

    .line 1069
    iget-object v10, v6, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v11, "TZ"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_39

    .line 1070
    invoke-direct {p0, v7, v6}, Lcom/android/calendar/vcal/VCalManager;->parseTimezoneId(Ljava/lang/String;Lcom/android/calendar/vcal/pim/PropertyNode;)Ljava/lang/String;

    move-result-object v7

    goto :goto_39

    .line 1053
    .end local v1           #curCalendarId:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #prop:Lcom/android/calendar/vcal/pim/PropertyNode;
    .end local v7           #timezoneId:Ljava/lang/String;
    .end local v8           #vnode:Lcom/android/calendar/vcal/pim/VNode;
    :catch_58
    move-exception v2

    .line 1055
    .local v2, e:Ljava/lang/Exception;
    goto :goto_d

    .line 1074
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #curCalendarId:I
    .restart local v7       #timezoneId:Ljava/lang/String;
    .restart local v8       #vnode:Lcom/android/calendar/vcal/pim/VNode;
    :cond_5a
    iget-object v10, v8, Lcom/android/calendar/vcal/pim/VNode;->VName:Ljava/lang/String;

    const-string v11, "VEVENT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6e

    iget-object v10, v8, Lcom/android/calendar/vcal/pim/VNode;->VName:Ljava/lang/String;

    const-string v11, "VTODO"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 1076
    :cond_6e
    invoke-direct {p0, v8, v1, v7}, Lcom/android/calendar/vcal/VCalManager;->setEventMap(Lcom/android/calendar/vcal/pim/VNode;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    iput-object v9, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    .line 1077
    iget-object v9, p0, Lcom/android/calendar/vcal/VCalManager;->mContentVCalValues:Landroid/content/ContentValues;

    goto :goto_d
.end method

.method public save()Z
    .registers 10

    .prologue
    .line 450
    const/4 v1, 0x0

    .line 454
    .local v1, ret:Z
    iget-object v6, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 456
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "rrule"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "rrule"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_28

    .line 457
    const-string v6, "dtend"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 459
    :cond_28
    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_54

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_54

    .line 460
    const/4 v3, 0x0

    .line 461
    .local v3, title:Ljava/lang/String;
    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 462
    const-string v6, "=0D"

    const-string v7, "\r"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "=0A"

    const-string v8, "\n"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 463
    const-string v6, "title"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .end local v3           #title:Ljava/lang/String;
    :cond_54
    const-string v6, "eventTimezone"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_75

    .line 467
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 468
    .local v2, t:Landroid/text/format/Time;
    const-string v6, "dtstart"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 469
    const-string v6, "eventTimezone"

    iget-object v7, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .end local v2           #t:Landroid/text/format/Time;
    :cond_75
    iget-object v6, p0, Lcom/android/calendar/vcal/VCalManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 475
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_7

    .line 476
    const/4 v1, 0x1

    goto :goto_7

    .line 480
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_85
    return v1
.end method

.method public setVCalValues(Landroid/content/ContentValues;)V
    .registers 3
    .parameter "vCalValues"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 673
    iget-object v0, p0, Lcom/android/calendar/vcal/VCalManager;->mVCalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    return-void
.end method
