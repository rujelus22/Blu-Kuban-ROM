.class public Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;
.super Lcom/syncmldstmo/base/smlUpdate;
.source "smlUpdateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$1;,
        Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;,
        Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;,
        Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;,
        Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;
    }
.end annotation


# static fields
.field private static cResolver:Landroid/content/ContentResolver;


# instance fields
.field private CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

.field private ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

.field private MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

.field private ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

.field private TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

.field private _calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

.field private _calendarNewMapLuid2Crc:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private _contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

.field private _contactNewMapLuid2Crc:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private _memoMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

.field private _memoNewMapLuid2Crc:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private _taskMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

.field private _taskNewMapLuid2Crc:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private curIndex:I

.field private m_context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlUpdate;-><init>()V

    .line 34
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlContactItem;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlContactItem;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    .line 35
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlCalendarItem;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    .line 36
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlTaskItem;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlTaskItem;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    .line 37
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlMemoItem;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlMemoItem;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    .line 38
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlProfileItem;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlProfileItem;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    .line 40
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactNewMapLuid2Crc:Ljava/util/Hashtable;

    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarNewMapLuid2Crc:Ljava/util/Hashtable;

    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskNewMapLuid2Crc:Ljava/util/Hashtable;

    .line 43
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoNewMapLuid2Crc:Ljava/util/Hashtable;

    .line 48
    iput-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    .line 49
    iput-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    .line 50
    iput-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    .line 51
    iput-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    .line 53
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    iput v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    .line 152
    iput-object p1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->m_context:Landroid/content/Context;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    .line 154
    return-void
.end method

.method private getCalendar()V
    .registers 31

    .prologue
    .line 677
    const/4 v14, 0x0

    .line 679
    .local v14, CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    const/16 v29, 0x0

    .line 681
    .local v29, totalCounts:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    invoke-virtual {v2}, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->init()V

    .line 683
    const/16 v2, 0xa

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "eventLocation"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "description"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "dtstart"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "dtend"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "allDay"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "hasAlarm"

    aput-object v3, v4, v2

    const/16 v2, 0x8

    const-string v3, "rrule"

    aput-object v3, v4, v2

    const/16 v2, 0x9

    const-string v3, "duration"

    aput-object v3, v4, v2

    .line 696
    .local v4, from:[Ljava/lang/String;
    const-string v5, "calendar_id=\"1\""

    .line 698
    .local v5, where:Ljava/lang/String;
    const/16 v25, 0x0

    .line 702
    .local v25, cursor:Landroid/database/Cursor;
    :try_start_46
    sget-object v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 704
    const-string v2, "_id"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 705
    .local v21, Id:I
    const-string v2, "title"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 706
    .local v24, Summary:I
    const-string v2, "eventLocation"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 707
    .local v22, Location:I
    const-string v2, "description"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 708
    .local v16, Description:I
    const-string v2, "dtstart"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 709
    .local v18, DtStart:I
    const-string v2, "dtend"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 710
    .local v17, DtEnd:I
    const-string v2, "allDay"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 711
    .local v13, AllDay:I
    const-string v2, "hasAlarm"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 712
    .local v20, HasAlarm:I
    const-string v2, "rrule"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 713
    .local v23, RRule:I
    const-string v2, "duration"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 715
    .local v19, Duration:I
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_a3
    .catchall {:try_start_46 .. :try_end_a3} :catchall_1b2
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_a3} :catch_1a4

    move-result v2

    if-eqz v2, :cond_184

    :cond_a6
    move-object v15, v14

    .line 719
    .end local v14           #CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    .local v15, CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    :try_start_a7
    new-instance v14, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    invoke-direct {v14}, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;-><init>()V
    :try_end_ac
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_1b9
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ac} :catch_1bc

    .line 721
    .end local v15           #CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    .restart local v14       #CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    :try_start_ac
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 722
    .local v27, rawId:I
    move/from16 v0, v27

    iput v0, v14, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->_id:I

    .line 723
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->summary:Ljava/lang/String;

    .line 724
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->location:Ljava/lang/String;

    .line 725
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->description:Ljava/lang/String;

    .line 726
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v14, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    .line 727
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v14, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtend:J

    .line 728
    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v14, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->allDay:I

    .line 729
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v14, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->hasAlarm:I

    .line 730
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->rrule:Ljava/lang/String;

    .line 731
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->duration:Ljava/lang/String;

    .line 733
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "minutes"

    aput-object v3, v8, v2

    .line 734
    .local v8, reminders_from:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event_id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 735
    .local v9, reminders_where:Ljava/lang/String;
    sget-object v6, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 737
    .local v28, reminders_cursor:Landroid/database/Cursor;
    const-string v2, "minutes"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 739
    .local v12, AaleamMinutes:I
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_155

    .line 740
    move-object/from16 v0, v28

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v14, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->aleamMinutes:I

    .line 741
    :cond_155
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarList:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarId2Array:Ljava/util/Hashtable;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget-object v6, v6, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    add-int/lit8 v29, v29, 0x1

    .line 747
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_181
    .catchall {:try_start_ac .. :try_end_181} :catchall_1b2
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_181} :catch_1a4

    move-result v2

    if-nez v2, :cond_a6

    .line 756
    .end local v8           #reminders_from:[Ljava/lang/String;
    .end local v9           #reminders_where:Ljava/lang/String;
    .end local v12           #AaleamMinutes:I
    .end local v27           #rawId:I
    .end local v28           #reminders_cursor:Landroid/database/Cursor;
    :cond_184
    if-eqz v25, :cond_189

    .line 757
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 759
    .end local v13           #AllDay:I
    .end local v16           #Description:I
    .end local v17           #DtEnd:I
    .end local v18           #DtStart:I
    .end local v19           #Duration:I
    .end local v20           #HasAlarm:I
    .end local v21           #Id:I
    .end local v22           #Location:I
    .end local v23           #RRule:I
    .end local v24           #Summary:I
    :cond_189
    :goto_189
    const/high16 v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total counts : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 760
    return-void

    .line 750
    :catch_1a4
    move-exception v26

    .line 752
    .local v26, e:Ljava/lang/Exception;
    :goto_1a5
    :try_start_1a5
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_1ac
    .catchall {:try_start_1a5 .. :try_end_1ac} :catchall_1b2

    .line 756
    if-eqz v25, :cond_189

    .line 757
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    goto :goto_189

    .line 756
    .end local v26           #e:Ljava/lang/Exception;
    :catchall_1b2
    move-exception v2

    :goto_1b3
    if-eqz v25, :cond_1b8

    .line 757
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_1b8
    throw v2

    .line 756
    .end local v14           #CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    .restart local v13       #AllDay:I
    .restart local v15       #CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    .restart local v16       #Description:I
    .restart local v17       #DtEnd:I
    .restart local v18       #DtStart:I
    .restart local v19       #Duration:I
    .restart local v20       #HasAlarm:I
    .restart local v21       #Id:I
    .restart local v22       #Location:I
    .restart local v23       #RRule:I
    .restart local v24       #Summary:I
    :catchall_1b9
    move-exception v2

    move-object v14, v15

    .end local v15           #CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    .restart local v14       #CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    goto :goto_1b3

    .line 750
    .end local v14           #CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    .restart local v15       #CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    :catch_1bc
    move-exception v26

    move-object v14, v15

    .end local v15           #CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    .restart local v14       #CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    goto :goto_1a5
.end method

.method private getContacts(I)Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    .registers 14
    .parameter "rawId"

    .prologue
    .line 446
    const/4 v6, 0x0

    .line 448
    .local v6, ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "version"

    aput-object v1, v2, v0

    .line 449
    .local v2, from:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, where:Ljava/lang/String;
    const/4 v10, 0x0

    .line 454
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_2c
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 456
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 457
    .local v8, colId:I
    const-string v0, "version"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 459
    .local v9, colVersion:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 461
    new-instance v7, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;

    invoke-direct {v7}, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;-><init>()V
    :try_end_4d
    .catchall {:try_start_2c .. :try_end_4d} :catchall_6e
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4d} :catch_60

    .line 463
    .end local v6           #ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    .local v7, ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    :try_start_4d
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->_id:I

    .line 464
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->version:I
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_75
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_59} :catch_78

    move-object v6, v7

    .line 473
    .end local v7           #ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    .restart local v6       #ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    :cond_5a
    if-eqz v10, :cond_5f

    .line 474
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 476
    .end local v8           #colId:I
    .end local v9           #colVersion:I
    :cond_5f
    :goto_5f
    return-object v6

    .line 467
    :catch_60
    move-exception v11

    .line 469
    .local v11, e:Ljava/lang/Exception;
    :goto_61
    :try_start_61
    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_6e

    .line 473
    if-eqz v10, :cond_5f

    .line 474
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_5f

    .line 473
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_6e
    move-exception v0

    :goto_6f
    if-eqz v10, :cond_74

    .line 474
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_74
    throw v0

    .line 473
    .end local v6           #ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    .restart local v7       #ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    .restart local v8       #colId:I
    .restart local v9       #colVersion:I
    :catchall_75
    move-exception v0

    move-object v6, v7

    .end local v7           #ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    .restart local v6       #ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    goto :goto_6f

    .line 467
    .end local v6           #ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    .restart local v7       #ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    :catch_78
    move-exception v11

    move-object v6, v7

    .end local v7           #ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    .restart local v6       #ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    goto :goto_61
.end method

.method private getContacts()V
    .registers 15

    .prologue
    const/4 v4, 0x0

    .line 395
    const/4 v6, 0x0

    .line 396
    .local v6, ContactUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    const/4 v13, 0x0

    .line 397
    .local v13, totalCounts:I
    const/4 v12, 0x0

    .line 399
    .local v12, rawId:I
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlContactItem;->init()V

    .line 401
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    const/4 v0, 0x1

    const-string v1, "version"

    aput-object v1, v2, v0

    .line 402
    .local v2, from:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleted=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, where:Ljava/lang/String;
    const-string v0, " AND account_name=\"vnd.sec.contact.phone\""

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 404
    const/4 v10, 0x0

    .line 408
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_39
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 410
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 411
    .local v8, colId:I
    const-string v0, "version"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 413
    .local v9, colVersion:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_52
    .catchall {:try_start_39 .. :try_end_52} :catchall_b9
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_52} :catch_ab

    move-result v0

    if-eqz v0, :cond_8d

    :cond_55
    move-object v7, v6

    .line 417
    .end local v6           #ContactUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    .local v7, ContactUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    :try_start_56
    new-instance v6, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;

    invoke-direct {v6}, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;-><init>()V
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_c0
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5b} :catch_c3

    .line 419
    .end local v7           #ContactUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    .restart local v6       #ContactUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    :try_start_5b
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 421
    iput v12, v6, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->_id:I

    .line 422
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->version:I

    .line 424
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactList:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactId2Array:Ljava/util/Hashtable;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget-object v4, v4, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    add-int/lit8 v13, v13, 0x1

    .line 428
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8a
    .catchall {:try_start_5b .. :try_end_8a} :catchall_b9
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_8a} :catch_ab

    move-result v0

    if-nez v0, :cond_55

    .line 437
    :cond_8d
    if-eqz v10, :cond_92

    .line 438
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 441
    .end local v8           #colId:I
    .end local v9           #colVersion:I
    :cond_92
    :goto_92
    const/high16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total counts : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 442
    return-void

    .line 431
    :catch_ab
    move-exception v11

    .line 433
    .local v11, e:Ljava/lang/Exception;
    :goto_ac
    :try_start_ac
    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_b3
    .catchall {:try_start_ac .. :try_end_b3} :catchall_b9

    .line 437
    if-eqz v10, :cond_92

    .line 438
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_92

    .line 437
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_b9
    move-exception v0

    :goto_ba
    if-eqz v10, :cond_bf

    .line 438
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_bf
    throw v0

    .line 437
    .end local v6           #ContactUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    .restart local v7       #ContactUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    .restart local v8       #colId:I
    .restart local v9       #colVersion:I
    :catchall_c0
    move-exception v0

    move-object v6, v7

    .end local v7           #ContactUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    .restart local v6       #ContactUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    goto :goto_ba

    .line 431
    .end local v6           #ContactUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    .restart local v7       #ContactUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    :catch_c3
    move-exception v11

    move-object v6, v7

    .end local v7           #ContactUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    .restart local v6       #ContactUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    goto :goto_ac
.end method

.method private getMemo()V
    .registers 19

    .prologue
    .line 896
    const/4 v8, 0x0

    .line 898
    .local v8, MemoUpdate:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;
    const/16 v17, 0x0

    .line 900
    .local v17, totalCounts:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    invoke-virtual {v1}, Lcom/syncmldstmo/base/vitem/smlMemoItem;->init()V

    .line 902
    const-string v1, "content://com.samsung.sec.android/memo/all"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 903
    .local v2, uri:Landroid/net/Uri;
    const/4 v1, 0x5

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "title"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "content"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string v4, "modify_t"

    aput-object v4, v3, v1

    const/4 v1, 0x4

    const-string v4, "create_t"

    aput-object v4, v3, v1

    .line 904
    .local v3, from:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 908
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_2d
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 910
    const-string v1, "_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 911
    .local v7, Id:I
    const-string v1, "title"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 912
    .local v16, title:I
    const-string v1, "content"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 913
    .local v10, body:I
    const-string v1, "modify_t"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 914
    .local v14, modify:I
    const-string v1, "create_t"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 916
    .local v11, create:I
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_57
    .catchall {:try_start_2d .. :try_end_57} :catchall_da
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_57} :catch_cc

    move-result v1

    if-eqz v1, :cond_ac

    :cond_5a
    move-object v9, v8

    .line 920
    .end local v8           #MemoUpdate:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;
    .local v9, MemoUpdate:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;
    :try_start_5b
    new-instance v8, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    invoke-direct {v8}, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;-><init>()V
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_e1
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_60} :catch_e4

    .line 922
    .end local v9           #MemoUpdate:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;
    .restart local v8       #MemoUpdate:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;
    :try_start_60
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 923
    .local v15, rawId:I
    iput v15, v8, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->_id:I

    .line 924
    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->title:Ljava/lang/String;

    .line 925
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->body:Ljava/lang/String;

    .line 926
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v8, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->modify:J

    .line 927
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v8, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->create:J

    .line 929
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_MemoList:Ljava/util/Vector;

    invoke-virtual {v1, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 930
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_MemoId2Array:Ljava/util/Hashtable;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget-object v5, v5, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_MemoList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    add-int/lit8 v17, v17, 0x1

    .line 933
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_a9
    .catchall {:try_start_60 .. :try_end_a9} :catchall_da
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_a9} :catch_cc

    move-result v1

    if-nez v1, :cond_5a

    .line 942
    .end local v15           #rawId:I
    :cond_ac
    if-eqz v12, :cond_b1

    .line 943
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 946
    .end local v7           #Id:I
    .end local v10           #body:I
    .end local v11           #create:I
    .end local v14           #modify:I
    .end local v16           #title:I
    :cond_b1
    :goto_b1
    const/high16 v1, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total counts : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 947
    return-void

    .line 936
    :catch_cc
    move-exception v13

    .line 938
    .local v13, e:Ljava/lang/Exception;
    :goto_cd
    :try_start_cd
    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_d4
    .catchall {:try_start_cd .. :try_end_d4} :catchall_da

    .line 942
    if-eqz v12, :cond_b1

    .line 943
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_b1

    .line 942
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_da
    move-exception v1

    :goto_db
    if-eqz v12, :cond_e0

    .line 943
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_e0
    throw v1

    .line 942
    .end local v8           #MemoUpdate:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;
    .restart local v7       #Id:I
    .restart local v9       #MemoUpdate:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;
    .restart local v10       #body:I
    .restart local v11       #create:I
    .restart local v14       #modify:I
    .restart local v16       #title:I
    :catchall_e1
    move-exception v1

    move-object v8, v9

    .end local v9           #MemoUpdate:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;
    .restart local v8       #MemoUpdate:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;
    goto :goto_db

    .line 936
    .end local v8           #MemoUpdate:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;
    .restart local v9       #MemoUpdate:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;
    :catch_e4
    move-exception v13

    move-object v8, v9

    .end local v9           #MemoUpdate:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;
    .restart local v8       #MemoUpdate:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;
    goto :goto_cd
.end method

.method private getTask()V
    .registers 30

    .prologue
    .line 805
    const/4 v8, 0x0

    .line 807
    .local v8, TaskUpdate:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;
    const/16 v28, 0x0

    .line 809
    .local v28, totalCounts:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    invoke-virtual {v2}, Lcom/syncmldstmo/base/vitem/smlTaskItem;->init()V

    .line 811
    const-string v2, "content://com.sec.android/task/all"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 812
    .local v3, uri:Landroid/net/Uri;
    const/16 v2, 0xf

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "title"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "priority"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "startdate"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "duedate"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string v5, "details"

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string v5, "alarm"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    const-string v5, "alarmampm"

    aput-object v5, v4, v2

    const/16 v2, 0x8

    const-string v5, "alarmyear"

    aput-object v5, v4, v2

    const/16 v2, 0x9

    const-string v5, "alarmmonth"

    aput-object v5, v4, v2

    const/16 v2, 0xa

    const-string v5, "alarmday"

    aput-object v5, v4, v2

    const/16 v2, 0xb

    const-string v5, "alarmhour"

    aput-object v5, v4, v2

    const/16 v2, 0xc

    const-string v5, "alarmmin"

    aput-object v5, v4, v2

    const/16 v2, 0xd

    const-string v5, "alarmtone"

    aput-object v5, v4, v2

    const/16 v2, 0xe

    const-string v5, "nondone"

    aput-object v5, v4, v2

    .line 828
    .local v4, from:[Ljava/lang/String;
    const/16 v25, 0x0

    .line 832
    .local v25, cursor:Landroid/database/Cursor;
    :try_start_68
    sget-object v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 834
    const-string v2, "_id"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 835
    .local v20, colId:I
    const-string v2, "title"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 836
    .local v24, colTitle:I
    const-string v2, "priority"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 837
    .local v22, colPriority:I
    const-string v2, "startdate"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 838
    .local v23, colStartdate:I
    const-string v2, "duedate"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 839
    .local v19, colDuedate:I
    const-string v2, "details"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 840
    .local v18, colDetails:I
    const-string v2, "alarm"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 841
    .local v10, colAlarm:I
    const-string v2, "alarmampm"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 842
    .local v11, colAlarmampm:I
    const-string v2, "alarmyear"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 843
    .local v17, colAlarmyear:I
    const-string v2, "alarmmonth"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 844
    .local v15, colAlarmmonth:I
    const-string v2, "alarmday"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 845
    .local v12, colAlarmday:I
    const-string v2, "alarmhour"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 846
    .local v13, colAlarmhour:I
    const-string v2, "alarmmin"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 847
    .local v14, colAlarmmin:I
    const-string v2, "alarmtone"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 848
    .local v16, colAlarmtone:I
    const-string v2, "nondone"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 850
    .local v21, colNondone:I
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_ec
    .catchall {:try_start_68 .. :try_end_ec} :catchall_1db
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_ec} :catch_1cd

    move-result v2

    if-eqz v2, :cond_1ad

    :cond_ef
    move-object v9, v8

    .line 854
    .end local v8           #TaskUpdate:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;
    .local v9, TaskUpdate:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;
    :try_start_f0
    new-instance v8, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    invoke-direct {v8}, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;-><init>()V
    :try_end_f5
    .catchall {:try_start_f0 .. :try_end_f5} :catchall_1e2
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f5} :catch_1e5

    .line 856
    .end local v9           #TaskUpdate:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;
    .restart local v8       #TaskUpdate:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;
    :try_start_f5
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 858
    .local v27, rawId:I
    move/from16 v0, v27

    iput v0, v8, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->_id:I

    .line 859
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->title:Ljava/lang/String;

    .line 860
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->priority:I

    .line 861
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->startdate:Ljava/lang/String;

    .line 862
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->duedate:Ljava/lang/String;

    .line 863
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->details:Ljava/lang/String;

    .line 864
    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarm:Ljava/lang/String;

    .line 865
    move-object/from16 v0, v25

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmampm:Ljava/lang/String;

    .line 866
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmyear:I

    .line 867
    move-object/from16 v0, v25

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmmonth:I

    .line 868
    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmday:I

    .line 869
    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmhour:I

    .line 870
    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmmin:I

    .line 871
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmtone:Ljava/lang/String;

    .line 872
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->nondone:I

    .line 874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_TaskList:Ljava/util/Vector;

    invoke-virtual {v2, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_TaskId2Array:Ljava/util/Hashtable;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget-object v6, v6, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_TaskList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    add-int/lit8 v28, v28, 0x1

    .line 878
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1aa
    .catchall {:try_start_f5 .. :try_end_1aa} :catchall_1db
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_1aa} :catch_1cd

    move-result v2

    if-nez v2, :cond_ef

    .line 887
    .end local v27           #rawId:I
    :cond_1ad
    if-eqz v25, :cond_1b2

    .line 888
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 891
    .end local v10           #colAlarm:I
    .end local v11           #colAlarmampm:I
    .end local v12           #colAlarmday:I
    .end local v13           #colAlarmhour:I
    .end local v14           #colAlarmmin:I
    .end local v15           #colAlarmmonth:I
    .end local v16           #colAlarmtone:I
    .end local v17           #colAlarmyear:I
    .end local v18           #colDetails:I
    .end local v19           #colDuedate:I
    .end local v20           #colId:I
    .end local v21           #colNondone:I
    .end local v22           #colPriority:I
    .end local v23           #colStartdate:I
    .end local v24           #colTitle:I
    :cond_1b2
    :goto_1b2
    const/high16 v2, 0x8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total counts : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 892
    return-void

    .line 881
    :catch_1cd
    move-exception v26

    .line 883
    .local v26, e:Ljava/lang/Exception;
    :goto_1ce
    :try_start_1ce
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_1d5
    .catchall {:try_start_1ce .. :try_end_1d5} :catchall_1db

    .line 887
    if-eqz v25, :cond_1b2

    .line 888
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    goto :goto_1b2

    .line 887
    .end local v26           #e:Ljava/lang/Exception;
    :catchall_1db
    move-exception v2

    :goto_1dc
    if-eqz v25, :cond_1e1

    .line 888
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_1e1
    throw v2

    .line 887
    .end local v8           #TaskUpdate:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;
    .restart local v9       #TaskUpdate:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;
    .restart local v10       #colAlarm:I
    .restart local v11       #colAlarmampm:I
    .restart local v12       #colAlarmday:I
    .restart local v13       #colAlarmhour:I
    .restart local v14       #colAlarmmin:I
    .restart local v15       #colAlarmmonth:I
    .restart local v16       #colAlarmtone:I
    .restart local v17       #colAlarmyear:I
    .restart local v18       #colDetails:I
    .restart local v19       #colDuedate:I
    .restart local v20       #colId:I
    .restart local v21       #colNondone:I
    .restart local v22       #colPriority:I
    .restart local v23       #colStartdate:I
    .restart local v24       #colTitle:I
    :catchall_1e2
    move-exception v2

    move-object v8, v9

    .end local v9           #TaskUpdate:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;
    .restart local v8       #TaskUpdate:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;
    goto :goto_1dc

    .line 881
    .end local v8           #TaskUpdate:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;
    .restart local v9       #TaskUpdate:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;
    :catch_1e5
    move-exception v26

    move-object v8, v9

    .end local v9           #TaskUpdate:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;
    .restart local v8       #TaskUpdate:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;
    goto :goto_1ce
.end method

.method private setDBModeEx(IILjava/lang/String;)I
    .registers 5
    .parameter "dbid"
    .parameter "type"
    .parameter "filePath"

    .prologue
    .line 379
    packed-switch p1, :pswitch_data_8

    .line 388
    const/16 v0, 0xc

    .line 390
    :goto_5
    return v0

    :pswitch_6
    const/4 v0, 0x0

    goto :goto_5

    .line 379
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private updateCalendarList(Z)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    const/high16 v7, 0x8

    .line 1260
    invoke-direct {p0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->getCalendar()V

    .line 1262
    if-eqz p1, :cond_76

    .line 1264
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    invoke-virtual {v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->deleteAll()V

    .line 1265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1267
    const-string v1, "All"

    invoke-static {v7, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1269
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget-object v4, v4, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iput v4, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCounts:I

    move v1, v0

    .line 1270
    :goto_24
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCounts:I

    if-ge v1, v0, :cond_4d

    .line 1272
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    .line 1274
    iput v8, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->state:I

    .line 1276
    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->getCrc()J

    move-result-wide v4

    .line 1277
    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarNewMapLuid2Crc:Ljava/util/Hashtable;

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 1280
    :cond_4d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "All count : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v1, v4, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1328
    :goto_75
    return-void

    :cond_76
    move v1, v0

    .line 1289
    :goto_77
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    iget v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->size()I

    move-result v2

    if-ge v1, v2, :cond_c9

    .line 1291
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    iget v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->getItem(I)Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;

    move-result-object v2

    .line 1292
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget-object v3, v3, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarId2Array:Ljava/util/Hashtable;

    iget v4, v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->luid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c6

    .line 1294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete mapitem.luid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->luid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1295
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget-object v3, v3, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeletedCalendarList:Ljava/util/Vector;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->luid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1289
    :cond_c6
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 1298
    :cond_c9
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeletedCalendarList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iput v2, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeleteCounts:I

    .line 1299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeleteCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v1, v0

    .line 1302
    :goto_f0
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_156

    .line 1304
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    .line 1306
    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->getCrc()J

    move-result-wide v2

    .line 1307
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget-object v4, v4, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    iget v5, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    aget-object v4, v4, v5

    iget v5, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->_id:I

    invoke-virtual {v4, v5}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->getItemFromLuid(I)Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;

    move-result-object v4

    .line 1309
    if-eqz v4, :cond_13c

    .line 1311
    iget-wide v4, v4, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->crc:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_138

    .line 1313
    const/4 v4, 0x2

    iput v4, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->state:I

    .line 1314
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarNewMapLuid2Crc:Ljava/util/Hashtable;

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget v2, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCounts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCounts:I

    .line 1302
    :cond_138
    :goto_138
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f0

    .line 1321
    :cond_13c
    iput v8, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->state:I

    .line 1322
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarNewMapLuid2Crc:Ljava/util/Hashtable;

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget v2, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCounts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCounts:I

    goto :goto_138

    .line 1327
    :cond_156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Replace count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_75
.end method

.method private updateConatctList(Z)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    const/high16 v7, 0x8

    .line 1182
    invoke-direct {p0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->getContacts()V

    .line 1184
    if-eqz p1, :cond_77

    .line 1186
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    invoke-virtual {v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->deleteAll()V

    .line 1187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1189
    const-string v1, "All"

    invoke-static {v7, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1191
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget-object v4, v4, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iput v4, v1, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCounts:I

    move v1, v0

    .line 1192
    :goto_24
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCounts:I

    if-ge v1, v0, :cond_4d

    .line 1194
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;

    .line 1196
    iput v8, v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->state:I

    .line 1198
    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->getCrc()J

    move-result-wide v4

    .line 1199
    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactNewMapLuid2Crc:Ljava/util/Hashtable;

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 1203
    :cond_4d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "All Add count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget v5, v5, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCounts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1251
    :goto_76
    return-void

    :cond_77
    move v1, v0

    .line 1211
    :goto_78
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    iget v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b2

    .line 1213
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    iget v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->getItem(I)Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;

    move-result-object v2

    .line 1215
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget-object v3, v3, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactId2Array:Ljava/util/Hashtable;

    iget v4, v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->luid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_af

    .line 1218
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget-object v3, v3, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteContactList:Ljava/util/Vector;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->luid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1211
    :cond_af
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .line 1221
    :cond_b2
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteContactList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iput v2, v1, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteCounts:I

    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v1, v0

    .line 1225
    :goto_d9
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_13f

    .line 1227
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;

    .line 1229
    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->getCrc()J

    move-result-wide v2

    .line 1230
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget-object v4, v4, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    iget v5, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    aget-object v4, v4, v5

    iget v5, v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->_id:I

    invoke-virtual {v4, v5}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->getItemFromLuid(I)Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;

    move-result-object v4

    .line 1232
    if-eqz v4, :cond_125

    .line 1234
    iget-wide v4, v4, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->crc:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_121

    .line 1236
    const/4 v4, 0x2

    iput v4, v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->state:I

    .line 1237
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactNewMapLuid2Crc:Ljava/util/Hashtable;

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget v2, v0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCounts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCounts:I

    .line 1225
    :cond_121
    :goto_121
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d9

    .line 1244
    :cond_125
    iput v8, v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->state:I

    .line 1245
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactNewMapLuid2Crc:Ljava/util/Hashtable;

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget v2, v0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCounts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCounts:I

    goto :goto_121

    .line 1250
    :cond_13f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Replace count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_76
.end method

.method private updateProfileContactList(Z)V
    .registers 6
    .parameter "bAll"

    .prologue
    const/4 v3, 0x0

    .line 1485
    invoke-virtual {p0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->getProfileContacts()V

    .line 1487
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_ProfileList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_2c

    .line 1489
    if-eqz p1, :cond_2d

    .line 1491
    const/high16 v1, 0x8

    const-string v2, "All"

    invoke-static {v1, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1493
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_ProfileList:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;

    .line 1495
    .local v0, ProfileUpdate:Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;
    const/4 v1, 0x1

    iput v1, v0, Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;->state:I

    .line 1496
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget v2, v1, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_AddCounts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_AddCounts:I

    .line 1506
    .end local v0           #ProfileUpdate:Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;
    :cond_2c
    :goto_2c
    return-void

    .line 1500
    :cond_2d
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_ProfileList:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;

    .line 1502
    .restart local v0       #ProfileUpdate:Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;
    const/4 v1, 0x2

    iput v1, v0, Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;->state:I

    .line 1503
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget v2, v1, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_ReplaceCounts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_ReplaceCounts:I

    goto :goto_2c
.end method


# virtual methods
.method public addItem(Ljava/lang/Object;ILcom/syncmldstmo/base/sml$Item_t;)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, -0x5

    const/high16 v4, 0x8

    .line 2273
    iget-object v2, p3, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2369
    :cond_c
    :goto_c
    return v0

    .line 2276
    :cond_d
    packed-switch p2, :pswitch_data_11a

    .line 2369
    :goto_10
    const/4 v0, 0x1

    goto :goto_c

    .line 2282
    :pswitch_12
    iget-object v2, p3, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->DecodeVCard(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlContactAdapter;

    move-result-object v2

    .line 2284
    if-eqz v2, :cond_c

    .line 2287
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v2, p2}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addContact(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;I)I

    move-result v0

    .line 2288
    if-gtz v0, :cond_29

    .line 2290
    const-string v0, "addContact() fail"

    invoke-static {v4, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v0, v1

    .line 2291
    goto :goto_c

    .line 2294
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contacts luid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2295
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    .line 2296
    iput v0, p3, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    .line 2298
    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->getContacts(I)Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;

    move-result-object v0

    .line 2299
    if-eqz v0, :cond_61

    .line 2300
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactNewMapLuid2Crc:Ljava/util/Hashtable;

    iget v2, v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->getCrc()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 2303
    :cond_61
    const-string v0, "ContactsUpdate is null"

    invoke-static {v4, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v0, v1

    .line 2304
    goto :goto_c

    .line 2311
    :pswitch_68
    iget-object v2, p3, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->DecodeVCal(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;

    move-result-object v2

    .line 2312
    if-eqz v2, :cond_c

    .line 2315
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0}, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->addCalendar(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 2316
    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 2318
    const-string v0, "addCalendar() fail"

    invoke-static {v4, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v0, v1

    .line 2319
    goto :goto_c

    .line 2322
    :cond_83
    iput-object v0, p3, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    .line 2323
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p3, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    .line 2324
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarNewMapLuid2Crc:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    invoke-virtual {v2}, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    .line 2331
    :pswitch_a4
    iget-object v2, p3, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->DecodeVTask(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlTaskAdapter;

    move-result-object v2

    .line 2332
    if-eqz v2, :cond_c

    .line 2335
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0}, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->addTask(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 2336
    if-nez v0, :cond_bc

    .line 2338
    const-string v0, "addTask() fail"

    invoke-static {v4, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v0, v1

    .line 2339
    goto/16 :goto_c

    .line 2342
    :cond_bc
    iput-object v0, p3, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    .line 2343
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p3, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    .line 2344
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskNewMapLuid2Crc:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    invoke-virtual {v2}, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    .line 2351
    :pswitch_dd
    iget-object v2, p3, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->DecodeVNote(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlMemoAdapter;

    move-result-object v2

    .line 2352
    if-eqz v2, :cond_c

    .line 2355
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0}, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->addMemo(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 2356
    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 2358
    const-string v0, "addMemo() fail"

    invoke-static {v4, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v0, v1

    .line 2359
    goto/16 :goto_c

    .line 2362
    :cond_f9
    iput-object v0, p3, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    .line 2363
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p3, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    .line 2364
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoNewMapLuid2Crc:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    invoke-virtual {v2}, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    .line 2276
    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_12
        :pswitch_68
        :pswitch_a4
        :pswitch_dd
        :pswitch_12
    .end packed-switch
.end method

.method public deleteAllItem(Ljava/lang/Object;I)I
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    const/high16 v2, 0x8

    .line 2508
    packed-switch p2, :pswitch_data_46

    .line 2538
    :cond_6
    :goto_6
    const/4 v0, 0x1

    :goto_7
    return v0

    .line 2511
    :pswitch_8
    const-string v1, "SML_CONTACT_DBID"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2512
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->deleteAllContacts(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_7

    .line 2517
    :pswitch_16
    const-string v1, "SML_CALENDAR_DBID"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2518
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->deleteAllCalendar(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_7

    .line 2523
    :pswitch_24
    const-string v1, "SML_TASK_DBID"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2524
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->deleteAllTask(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_7

    .line 2529
    :pswitch_32
    const-string v1, "SML_MEMO_DBID"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2530
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->deleteAllMemo(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_7

    .line 2535
    :pswitch_40
    const-string v0, "SML_PROFILE_DBID"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_6

    .line 2508
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_8
        :pswitch_16
        :pswitch_24
        :pswitch_32
        :pswitch_40
    .end packed-switch
.end method

.method public deleteItem(Ljava/lang/Object;ILcom/syncmldstmo/base/sml$Item_t;)I
    .registers 8
    .parameter "userInfo"
    .parameter "dbid"
    .parameter "item"

    .prologue
    const/4 v1, -0x1

    .line 2470
    iget-object v2, p3, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2472
    .local v0, luid:I
    packed-switch p2, :pswitch_data_6c

    .line 2503
    :cond_e
    :goto_e
    const/4 v1, 0x1

    :cond_f
    :goto_f
    return v1

    .line 2475
    :pswitch_10
    sget-object v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    iget-object v3, p3, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->deleteContact(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2477
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactNewMapLuid2Crc:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 2481
    :pswitch_24
    sget-object v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    iget-object v3, p3, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->deleteCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2483
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarNewMapLuid2Crc:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 2487
    :pswitch_38
    sget-object v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    iget-object v3, p3, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->deleteTask(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2489
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskNewMapLuid2Crc:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 2493
    :pswitch_4c
    sget-object v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    iget-object v3, p3, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->deleteMemo(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2495
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoNewMapLuid2Crc:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 2499
    :pswitch_60
    sget-object v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    iget-object v3, p3, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->deleteContact(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_f

    .line 2472
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_10
        :pswitch_24
        :pswitch_38
        :pswitch_4c
        :pswitch_60
    .end packed-switch
.end method

.method public getCalendarData(Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;I)Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
    .registers 15
    .parameter "CalendarUpdate"
    .parameter "UpdateType"

    .prologue
    .line 764
    const/4 v7, 0x0

    .line 765
    .local v7, UpdateItem:Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
    const/4 v11, 0x0

    .line 767
    .local v11, rawId:I
    new-instance v8, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;

    invoke-direct {v8, p1}, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;-><init>(Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;)V

    .line 769
    .local v8, calendar:Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;
    iget-object v0, v8, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget v11, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->_id:I

    .line 771
    iget-object v0, v8, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->hasAlarm:I

    if-lez v0, :cond_54

    .line 773
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "minutes"

    aput-object v1, v2, v0

    .line 774
    .local v2, from:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 775
    .local v3, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 779
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_33
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 781
    const-string v0, "minutes"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 782
    .local v6, Reminder:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 784
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Reminder:I
    :try_end_4f
    .catchall {:try_start_33 .. :try_end_4f} :catchall_6c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_4f} :catch_5e

    .line 793
    :cond_4f
    if-eqz v9, :cond_54

    .line 794
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 798
    .end local v2           #from:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #Reminder:I
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_54
    :goto_54
    new-instance v7, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    .end local v7           #UpdateItem:Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
    invoke-static {v8}, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->EncodeVCal(Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v11, p2, v0}, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;-><init>(IILjava/lang/Object;)V

    .line 800
    .restart local v7       #UpdateItem:Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
    return-object v7

    .line 787
    .restart local v2       #from:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :catch_5e
    move-exception v10

    .line 789
    .local v10, e:Ljava/lang/Exception;
    :try_start_5f
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_6c

    .line 793
    if-eqz v9, :cond_54

    .line 794
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_54

    .line 793
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_6c
    move-exception v0

    if-eqz v9, :cond_72

    .line 794
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_72
    throw v0
.end method

.method public getContactsData(II)Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
    .registers 41
    .parameter "rawId"
    .parameter "updateType"

    .prologue
    .line 481
    const/16 v36, 0x0

    .line 482
    .local v36, updateItem:Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
    const/16 v26, 0x0

    .line 483
    .local v26, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/16 v28, 0x0

    .line 486
    .local v28, contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    const/16 v3, 0x10

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mimetype"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "data1"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "data2"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string v4, "data3"

    aput-object v4, v5, v3

    const/4 v3, 0x4

    const-string v4, "data4"

    aput-object v4, v5, v3

    const/4 v3, 0x5

    const-string v4, "data5"

    aput-object v4, v5, v3

    const/4 v3, 0x6

    const-string v4, "data6"

    aput-object v4, v5, v3

    const/4 v3, 0x7

    const-string v4, "data7"

    aput-object v4, v5, v3

    const/16 v3, 0x8

    const-string v4, "data8"

    aput-object v4, v5, v3

    const/16 v3, 0x9

    const-string v4, "data9"

    aput-object v4, v5, v3

    const/16 v3, 0xa

    const-string v4, "data10"

    aput-object v4, v5, v3

    const/16 v3, 0xb

    const-string v4, "data11"

    aput-object v4, v5, v3

    const/16 v3, 0xc

    const-string v4, "data12"

    aput-object v4, v5, v3

    const/16 v3, 0xd

    const-string v4, "data13"

    aput-object v4, v5, v3

    const/16 v3, 0xe

    const-string v4, "data14"

    aput-object v4, v5, v3

    const/16 v3, 0xf

    const-string v4, "data15"

    aput-object v4, v5, v3

    .line 503
    .local v5, from:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "raw_contact_id=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 504
    .local v6, where:Ljava/lang/String;
    const/16 v30, 0x0

    .line 508
    .local v30, cursor:Landroid/database/Cursor;
    :try_start_7f
    sget-object v3, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    .line 510
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_426

    .line 512
    const-string v3, "mimetype"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 513
    .local v24, colMimeType:I
    const-string v3, "data1"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 514
    .local v13, colData1:I
    const-string v3, "data2"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 515
    .local v16, colData2:I
    const-string v3, "data3"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 516
    .local v17, colData3:I
    const-string v3, "data4"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 517
    .local v18, colData4:I
    const-string v3, "data5"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 518
    .local v19, colData5:I
    const-string v3, "data6"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 519
    .local v20, colData6:I
    const-string v3, "data7"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 520
    .local v21, colData7:I
    const-string v3, "data8"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 521
    .local v22, colData8:I
    const-string v3, "data9"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 522
    .local v23, colData9:I
    const-string v3, "data10"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 527
    .local v14, colData10:I
    const-string v3, "data15"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 529
    .local v15, colData15:I
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_172

    .line 531
    new-instance v29, Lcom/syncmldstmo/base/vitem/smlContactAdapter;

    invoke-direct/range {v29 .. v29}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;-><init>()V
    :try_end_fa
    .catchall {:try_start_7f .. :try_end_fa} :catchall_449
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_fa} :catch_446

    .end local v28           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .local v29, contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    move-object/from16 v27, v26

    .line 535
    .end local v26           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    .local v27, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    :goto_fc
    :try_start_fc
    new-instance v26, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    invoke-direct/range {v26 .. v26}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;-><init>()V
    :try_end_101
    .catchall {:try_start_fc .. :try_end_101} :catchall_44c
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_101} :catch_453

    .line 537
    .end local v27           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    .restart local v26       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    :try_start_101
    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 538
    .local v34, szMimeType:Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_18b

    .line 540
    move-object/from16 v0, v30

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 541
    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    .line 542
    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data3:Ljava/lang/String;

    .line 543
    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    .line 544
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    .line 545
    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data6:Ljava/lang/String;

    .line 547
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    .line 548
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_16a
    :goto_16a
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_16d
    .catchall {:try_start_101 .. :try_end_16d} :catchall_1f0
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_16d} :catch_1b5

    move-result v3

    if-nez v3, :cond_45a

    move-object/from16 v28, v29

    .line 654
    .end local v29           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .end local v34           #szMimeType:Ljava/lang/String;
    .restart local v28       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    :cond_172
    if-eqz v28, :cond_185

    .line 655
    :try_start_174
    new-instance v37, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    invoke-virtual/range {v28 .. v28}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->EncodeVCard()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v37

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;-><init>(IILjava/lang/Object;)V
    :try_end_183
    .catchall {:try_start_174 .. :try_end_183} :catchall_449
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_183} :catch_446

    .end local v36           #updateItem:Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
    .local v37, updateItem:Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
    move-object/from16 v36, v37

    .line 668
    .end local v13           #colData1:I
    .end local v14           #colData10:I
    .end local v15           #colData15:I
    .end local v16           #colData2:I
    .end local v17           #colData3:I
    .end local v18           #colData4:I
    .end local v19           #colData5:I
    .end local v20           #colData6:I
    .end local v21           #colData7:I
    .end local v22           #colData8:I
    .end local v23           #colData9:I
    .end local v24           #colMimeType:I
    .end local v37           #updateItem:Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
    .restart local v36       #updateItem:Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
    :cond_185
    :goto_185
    if-eqz v30, :cond_18a

    .line 669
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 672
    :cond_18a
    :goto_18a
    return-object v36

    .line 550
    .end local v28           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v13       #colData1:I
    .restart local v14       #colData10:I
    .restart local v15       #colData15:I
    .restart local v16       #colData2:I
    .restart local v17       #colData3:I
    .restart local v18       #colData4:I
    .restart local v19       #colData5:I
    .restart local v20       #colData6:I
    .restart local v21       #colData7:I
    .restart local v22       #colData8:I
    .restart local v23       #colData9:I
    .restart local v24       #colMimeType:I
    .restart local v29       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v34       #szMimeType:Ljava/lang/String;
    :cond_18b
    :try_start_18b
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1c5

    .line 552
    move-object/from16 v0, v30

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 553
    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    .line 555
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->telList:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b4
    .catchall {:try_start_18b .. :try_end_1b4} :catchall_1f0
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_1b4} :catch_1b5

    goto :goto_16a

    .line 662
    .end local v34           #szMimeType:Ljava/lang/String;
    :catch_1b5
    move-exception v32

    move-object/from16 v28, v29

    .line 664
    .end local v13           #colData1:I
    .end local v14           #colData10:I
    .end local v15           #colData15:I
    .end local v16           #colData2:I
    .end local v17           #colData3:I
    .end local v18           #colData4:I
    .end local v19           #colData5:I
    .end local v20           #colData6:I
    .end local v21           #colData7:I
    .end local v22           #colData8:I
    .end local v23           #colData9:I
    .end local v24           #colMimeType:I
    .end local v29           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v28       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .local v32, e:Ljava/lang/Exception;
    :goto_1b8
    :try_start_1b8
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_1bf
    .catchall {:try_start_1b8 .. :try_end_1bf} :catchall_449

    .line 668
    if-eqz v30, :cond_18a

    .line 669
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    goto :goto_18a

    .line 557
    .end local v28           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .end local v32           #e:Ljava/lang/Exception;
    .restart local v13       #colData1:I
    .restart local v14       #colData10:I
    .restart local v15       #colData15:I
    .restart local v16       #colData2:I
    .restart local v17       #colData3:I
    .restart local v18       #colData4:I
    .restart local v19       #colData5:I
    .restart local v20       #colData6:I
    .restart local v21       #colData7:I
    .restart local v22       #colData8:I
    .restart local v23       #colData9:I
    .restart local v24       #colMimeType:I
    .restart local v29       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v34       #szMimeType:Ljava/lang/String;
    :cond_1c5
    :try_start_1c5
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1f9

    .line 559
    move-object/from16 v0, v30

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 560
    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    .line 562
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->emailList:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1ee
    .catchall {:try_start_1c5 .. :try_end_1ee} :catchall_1f0
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_1ee} :catch_1b5

    goto/16 :goto_16a

    .line 668
    .end local v34           #szMimeType:Ljava/lang/String;
    :catchall_1f0
    move-exception v3

    move-object/from16 v28, v29

    .end local v13           #colData1:I
    .end local v14           #colData10:I
    .end local v15           #colData15:I
    .end local v16           #colData2:I
    .end local v17           #colData3:I
    .end local v18           #colData4:I
    .end local v19           #colData5:I
    .end local v20           #colData6:I
    .end local v21           #colData7:I
    .end local v22           #colData8:I
    .end local v23           #colData9:I
    .end local v24           #colMimeType:I
    .end local v29           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v28       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    :goto_1f3
    if-eqz v30, :cond_1f8

    .line 669
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    :cond_1f8
    throw v3

    .line 564
    .end local v28           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v13       #colData1:I
    .restart local v14       #colData10:I
    .restart local v15       #colData15:I
    .restart local v16       #colData2:I
    .restart local v17       #colData3:I
    .restart local v18       #colData4:I
    .restart local v19       #colData5:I
    .restart local v20       #colData6:I
    .restart local v21       #colData7:I
    .restart local v22       #colData8:I
    .restart local v23       #colData9:I
    .restart local v24       #colMimeType:I
    .restart local v29       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v34       #szMimeType:Ljava/lang/String;
    :cond_1f9
    :try_start_1f9
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_230

    .line 566
    move-object/from16 v0, v30

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 567
    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    .line 568
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    .line 570
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->imList:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16a

    .line 572
    :cond_230
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2ad

    .line 574
    move-object/from16 v0, v30

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 575
    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    .line 577
    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    .line 578
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    .line 579
    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data6:Ljava/lang/String;

    .line 580
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data7:Ljava/lang/String;

    .line 581
    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data8:Ljava/lang/String;

    .line 582
    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data9:Ljava/lang/String;

    .line 583
    move-object/from16 v0, v30

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data10:Ljava/lang/String;

    .line 585
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16a

    .line 587
    :cond_2ad
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2e4

    .line 589
    move-object/from16 v0, v30

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 590
    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    .line 591
    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    .line 593
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->orgList:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16a

    .line 595
    :cond_2e4
    const-string v3, "vnd.android.cursor.item/website"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_303

    .line 597
    move-object/from16 v0, v30

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 599
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->urlList:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16a

    .line 601
    :cond_303
    const-string v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_322

    .line 603
    move-object/from16 v0, v30

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 605
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->noteList:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16a

    .line 607
    :cond_322
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_33e

    .line 609
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    .line 611
    .local v33, photoRawData:[B
    if-eqz v33, :cond_16a

    .line 613
    invoke-static/range {v33 .. v33}, Lcom/syncmldstmo/base/smlBase64;->encode([B)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->photo:Ljava/lang/String;

    goto/16 :goto_16a

    .line 616
    .end local v33           #photoRawData:[B
    :cond_33e
    const-string v3, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_35d

    .line 618
    move-object/from16 v0, v30

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 620
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->nickList:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16a

    .line 622
    :cond_35d
    const-string v3, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_399

    .line 624
    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v35

    .line 625
    .local v35, type:I
    const/4 v3, 0x1

    move/from16 v0, v35

    if-ne v0, v3, :cond_388

    .line 626
    move-object/from16 v0, v30

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->anniversary:Ljava/lang/String;

    goto/16 :goto_16a

    .line 627
    :cond_388
    const/4 v3, 0x3

    move/from16 v0, v35

    if-ne v0, v3, :cond_16a

    .line 628
    move-object/from16 v0, v30

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->birthday:Ljava/lang/String;

    goto/16 :goto_16a

    .line 630
    .end local v35           #type:I
    :cond_399
    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_16a

    .line 632
    move-object/from16 v0, v30

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 633
    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    .line 634
    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data3:Ljava/lang/String;

    .line 636
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_41b

    .line 638
    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v9, v3

    .line 639
    .local v9, from_group:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 640
    .local v10, where_group:Ljava/lang/String;
    sget-object v7, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 642
    .local v31, cursor_group:Landroid/database/Cursor;
    const-string v3, "title"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 643
    .local v25, colTitle:I
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_418

    .line 645
    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data3:Ljava/lang/String;

    .line 647
    :cond_418
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 649
    .end local v9           #from_group:[Ljava/lang/String;
    .end local v10           #where_group:Ljava/lang/String;
    .end local v25           #colTitle:I
    .end local v31           #cursor_group:Landroid/database/Cursor;
    :cond_41b
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->group:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_424
    .catchall {:try_start_1f9 .. :try_end_424} :catchall_1f0
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_424} :catch_1b5

    goto/16 :goto_16a

    .line 659
    .end local v13           #colData1:I
    .end local v14           #colData10:I
    .end local v15           #colData15:I
    .end local v16           #colData2:I
    .end local v17           #colData3:I
    .end local v18           #colData4:I
    .end local v19           #colData5:I
    .end local v20           #colData6:I
    .end local v21           #colData7:I
    .end local v22           #colData8:I
    .end local v23           #colData9:I
    .end local v24           #colMimeType:I
    .end local v29           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .end local v34           #szMimeType:Ljava/lang/String;
    .restart local v28       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    :cond_426
    :try_start_426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getContactsData] rawId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data table not exist!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_444
    .catchall {:try_start_426 .. :try_end_444} :catchall_449
    .catch Ljava/lang/Exception; {:try_start_426 .. :try_end_444} :catch_446

    goto/16 :goto_185

    .line 662
    :catch_446
    move-exception v32

    goto/16 :goto_1b8

    .line 668
    :catchall_449
    move-exception v3

    goto/16 :goto_1f3

    .end local v26           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    .end local v28           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v13       #colData1:I
    .restart local v14       #colData10:I
    .restart local v15       #colData15:I
    .restart local v16       #colData2:I
    .restart local v17       #colData3:I
    .restart local v18       #colData4:I
    .restart local v19       #colData5:I
    .restart local v20       #colData6:I
    .restart local v21       #colData7:I
    .restart local v22       #colData8:I
    .restart local v23       #colData9:I
    .restart local v24       #colMimeType:I
    .restart local v27       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    .restart local v29       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    :catchall_44c
    move-exception v3

    move-object/from16 v28, v29

    .end local v29           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v28       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    move-object/from16 v26, v27

    .end local v27           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    .restart local v26       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    goto/16 :goto_1f3

    .line 662
    .end local v26           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    .end local v28           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v27       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    .restart local v29       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    :catch_453
    move-exception v32

    move-object/from16 v28, v29

    .end local v29           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v28       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    move-object/from16 v26, v27

    .end local v27           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    .restart local v26       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    goto/16 :goto_1b8

    .end local v28           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v29       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v34       #szMimeType:Ljava/lang/String;
    :cond_45a
    move-object/from16 v27, v26

    .end local v26           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    .restart local v27       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    goto/16 :goto_fc
.end method

.method public getItem(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$Item_t;Lcom/syncmldstmo/base/smlUpdate$UpdateItem;)I
    .registers 13
    .parameter "userdata"
    .parameter "item"
    .parameter "updateitem"

    .prologue
    .line 2202
    move-object v7, p1

    check-cast v7, Lcom/syncmldstmo/base/smlWorkspace;

    .line 2203
    .local v7, ws:Lcom/syncmldstmo/base/smlWorkspace;
    iget-object v8, v7, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v0, v8, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    .line 2204
    .local v0, dbid:I
    const/4 v1, -0x5

    .line 2206
    .local v1, ret:I
    packed-switch v0, :pswitch_data_7a

    .line 2268
    :cond_b
    :goto_b
    return v1

    .line 2210
    :pswitch_c
    iget-object v4, p3, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;->item:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 2211
    .local v4, szVcard:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 2213
    iput-object v4, p2, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    .line 2214
    iget-object v8, p2, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, p2, Lcom/syncmldstmo/base/sml$Item_t;->datasize:I

    .line 2215
    const/4 v1, 0x1

    goto :goto_b

    .line 2222
    .end local v4           #szVcard:Ljava/lang/String;
    :pswitch_22
    iget-object v3, p3, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;->item:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 2223
    .local v3, szVcal:Ljava/lang/String;
    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 2225
    iput-object v3, p2, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    .line 2226
    iget-object v8, p2, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, p2, Lcom/syncmldstmo/base/sml$Item_t;->datasize:I

    .line 2227
    const/4 v1, 0x1

    goto :goto_b

    .line 2234
    .end local v3           #szVcal:Ljava/lang/String;
    :pswitch_38
    iget-object v6, p3, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;->item:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 2235
    .local v6, szVtask:Ljava/lang/String;
    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 2237
    iput-object v6, p2, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    .line 2238
    iget-object v8, p2, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, p2, Lcom/syncmldstmo/base/sml$Item_t;->datasize:I

    .line 2239
    const/4 v1, 0x1

    goto :goto_b

    .line 2246
    .end local v6           #szVtask:Ljava/lang/String;
    :pswitch_4e
    iget-object v5, p3, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;->item:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 2247
    .local v5, szVnote:Ljava/lang/String;
    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 2249
    iput-object v5, p2, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    .line 2250
    iget-object v8, p2, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, p2, Lcom/syncmldstmo/base/sml$Item_t;->datasize:I

    .line 2251
    const/4 v1, 0x1

    goto :goto_b

    .line 2258
    .end local v5           #szVnote:Ljava/lang/String;
    :pswitch_64
    iget-object v2, p3, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;->item:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 2259
    .local v2, szProfile:Ljava/lang/String;
    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 2261
    iput-object v2, p2, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    .line 2262
    iget-object v8, p2, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, p2, Lcom/syncmldstmo/base/sml$Item_t;->datasize:I

    .line 2263
    const/4 v1, 0x1

    goto :goto_b

    .line 2206
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_22
        :pswitch_38
        :pswitch_4e
        :pswitch_64
    .end packed-switch
.end method

.method public getNextUpdatedItem(Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;III)Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x8

    const/4 v1, 0x0

    .line 1510
    .line 1511
    iget v0, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    .line 1514
    invoke-direct {p0, v0, v5, v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->setDBModeEx(IILjava/lang/String;)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_25

    .line 1516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "########## not supported dbid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1672
    :goto_24
    return-object v1

    .line 1520
    :cond_25
    packed-switch v0, :pswitch_data_15a

    :cond_28
    :goto_28
    move-object v0, v1

    .line 1665
    :goto_29
    if-nez v0, :cond_13f

    .line 1667
    const-string v0, "updateitem is null"

    invoke-static {v4, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_24

    .line 1524
    :pswitch_31
    packed-switch p3, :pswitch_data_168

    :pswitch_34
    goto :goto_28

    .line 1527
    :pswitch_35
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlContactItem;->getCurAddContactItemId()I

    move-result v0

    .line 1528
    if-lez v0, :cond_28

    .line 1529
    invoke-virtual {p0, v0, p3}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->getContactsData(II)Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    move-result-object v0

    goto :goto_29

    .line 1533
    :pswitch_42
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlContactItem;->getCurReplaceContactItemId()I

    move-result v0

    .line 1534
    if-lez v0, :cond_28

    .line 1535
    invoke-virtual {p0, v0, p3}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->getContactsData(II)Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    move-result-object v0

    goto :goto_29

    .line 1539
    :pswitch_4f
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlContactItem;->getCurDeleteContactItemId()I

    move-result v2

    .line 1540
    if-lez v2, :cond_28

    .line 1541
    new-instance v0, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    invoke-direct {v0, v2, p3, v1}, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;-><init>(IILjava/lang/Object;)V

    goto :goto_29

    .line 1550
    :pswitch_5d
    packed-switch p3, :pswitch_data_174

    :pswitch_60
    goto :goto_28

    .line 1553
    :pswitch_61
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->getCurAddCalendarItemId()Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-result-object v0

    .line 1554
    if-eqz v0, :cond_28

    .line 1555
    invoke-virtual {p0, v0, p3}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->getCalendarData(Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;I)Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    move-result-object v0

    goto :goto_29

    .line 1559
    :pswitch_6e
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->getCurReplaceCalendarItemId()Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    move-result-object v0

    .line 1560
    if-eqz v0, :cond_28

    .line 1561
    invoke-virtual {p0, v0, p3}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->getCalendarData(Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;I)Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    move-result-object v0

    goto :goto_29

    .line 1565
    :pswitch_7b
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->getCurDeleteCalendarItemId()I

    move-result v2

    .line 1566
    if-lez v2, :cond_28

    .line 1567
    new-instance v0, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    invoke-direct {v0, v2, p3, v1}, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;-><init>(IILjava/lang/Object;)V

    goto :goto_29

    .line 1577
    :pswitch_89
    packed-switch p3, :pswitch_data_180

    :pswitch_8c
    goto :goto_28

    .line 1580
    :pswitch_8d
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlTaskItem;->getCurAddTaskItemId()Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    move-result-object v0

    .line 1581
    if-eqz v0, :cond_28

    .line 1583
    new-instance v2, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;

    invoke-direct {v2, v0}, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;-><init>(Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;)V

    .line 1584
    new-instance v0, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->EncodeVTask(Lcom/syncmldstmo/base/vitem/smlTaskAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, p3, v2}, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;-><init>(IILjava/lang/Object;)V

    goto :goto_29

    .line 1589
    :pswitch_a4
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlTaskItem;->getCurReplaceTaskItemId()Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    move-result-object v0

    .line 1590
    if-eqz v0, :cond_28

    .line 1592
    new-instance v2, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;

    invoke-direct {v2, v0}, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;-><init>(Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;)V

    .line 1593
    new-instance v0, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->EncodeVTask(Lcom/syncmldstmo/base/vitem/smlTaskAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, p3, v2}, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;-><init>(IILjava/lang/Object;)V

    goto/16 :goto_29

    .line 1598
    :pswitch_bc
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlTaskItem;->getCurDeleteTaskItemId()I

    move-result v2

    .line 1599
    if-lez v2, :cond_28

    .line 1600
    new-instance v0, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    invoke-direct {v0, v2, p3, v1}, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;-><init>(IILjava/lang/Object;)V

    goto/16 :goto_29

    .line 1610
    :pswitch_cb
    packed-switch p3, :pswitch_data_18c

    :pswitch_ce
    goto/16 :goto_28

    .line 1613
    :pswitch_d0
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlMemoItem;->getCurAddMemoItemId()Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    move-result-object v0

    .line 1614
    if-eqz v0, :cond_28

    .line 1616
    new-instance v2, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;

    invoke-direct {v2, v0}, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;-><init>(Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;)V

    .line 1617
    new-instance v0, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->EncodeVNote(Lcom/syncmldstmo/base/vitem/smlMemoAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, p3, v2}, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;-><init>(IILjava/lang/Object;)V

    goto/16 :goto_29

    .line 1622
    :pswitch_e8
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlMemoItem;->getCurReplaceMemoItemId()Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    move-result-object v0

    .line 1623
    if-eqz v0, :cond_28

    .line 1625
    new-instance v2, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;

    invoke-direct {v2, v0}, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;-><init>(Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;)V

    .line 1626
    new-instance v0, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->EncodeVNote(Lcom/syncmldstmo/base/vitem/smlMemoAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, p3, v2}, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;-><init>(IILjava/lang/Object;)V

    goto/16 :goto_29

    .line 1631
    :pswitch_100
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlMemoItem;->getCurDeleteMemoItemId()I

    move-result v2

    .line 1632
    if-lez v2, :cond_28

    .line 1633
    new-instance v0, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    invoke-direct {v0, v2, p3, v1}, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;-><init>(IILjava/lang/Object;)V

    goto/16 :goto_29

    .line 1641
    :pswitch_10f
    packed-switch p3, :pswitch_data_198

    :pswitch_112
    goto/16 :goto_28

    .line 1644
    :pswitch_114
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlProfileItem;->getCurAddProfileItemId()I

    move-result v0

    .line 1645
    if-lez v0, :cond_28

    .line 1646
    invoke-virtual {p0, v0, p3}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->getProfileContactsData(II)Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    move-result-object v0

    goto/16 :goto_29

    .line 1650
    :pswitch_122
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlProfileItem;->getCurReplaceProfileItemId()I

    move-result v0

    .line 1651
    if-lez v0, :cond_28

    .line 1652
    invoke-virtual {p0, v0, p3}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->getProfileContactsData(II)Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    move-result-object v0

    goto/16 :goto_29

    .line 1656
    :pswitch_130
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlProfileItem;->getCurDeleteProfileItemId()I

    move-result v2

    .line 1657
    if-lez v2, :cond_28

    .line 1658
    new-instance v0, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    invoke-direct {v0, v2, p3, v1}, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;-><init>(IILjava/lang/Object;)V

    goto/16 :goto_29

    .line 1671
    :cond_13f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Luid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;->luid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move-object v1, v0

    .line 1672
    goto/16 :goto_24

    .line 1520
    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_31
        :pswitch_5d
        :pswitch_89
        :pswitch_cb
        :pswitch_10f
    .end packed-switch

    .line 1524
    :pswitch_data_168
    .packed-switch 0x1
        :pswitch_35
        :pswitch_42
        :pswitch_34
        :pswitch_4f
    .end packed-switch

    .line 1550
    :pswitch_data_174
    .packed-switch 0x1
        :pswitch_61
        :pswitch_6e
        :pswitch_60
        :pswitch_7b
    .end packed-switch

    .line 1577
    :pswitch_data_180
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_a4
        :pswitch_8c
        :pswitch_bc
    .end packed-switch

    .line 1610
    :pswitch_data_18c
    .packed-switch 0x1
        :pswitch_d0
        :pswitch_e8
        :pswitch_ce
        :pswitch_100
    .end packed-switch

    .line 1641
    :pswitch_data_198
    .packed-switch 0x1
        :pswitch_114
        :pswitch_122
        :pswitch_112
        :pswitch_130
    .end packed-switch
.end method

.method public getPrevUpdatedItem(Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;III)Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x8

    const/4 v1, 0x0

    .line 1677
    .line 1678
    iget v2, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    .line 1681
    invoke-direct {p0, v2, v0, v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->setDBModeEx(IILjava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_26

    .line 1683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##########not supported dbid : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move-object v0, v1

    .line 1787
    :goto_25
    return-object v0

    .line 1687
    :cond_26
    packed-switch v2, :pswitch_data_d2

    .line 1779
    :goto_29
    new-instance v2, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    invoke-direct {v2, v0, p3, v1}, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;-><init>(IILjava/lang/Object;)V

    .line 1780
    if-nez v2, :cond_b6

    .line 1782
    const-string v0, "updateItem is null"

    invoke-static {v5, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move-object v0, v1

    .line 1783
    goto :goto_25

    .line 1691
    :pswitch_37
    packed-switch p3, :pswitch_data_e0

    :pswitch_3a
    goto :goto_29

    .line 1694
    :pswitch_3b
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlContactItem;->getPrevAddContactItemId()I

    move-result v0

    goto :goto_29

    .line 1698
    :pswitch_42
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlContactItem;->getPrevReplaceContactItemId()I

    move-result v0

    goto :goto_29

    .line 1702
    :pswitch_49
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlContactItem;->getPrevDeleteContactItemId()I

    move-result v0

    goto :goto_29

    .line 1710
    :pswitch_50
    packed-switch p3, :pswitch_data_ec

    :pswitch_53
    goto :goto_29

    .line 1713
    :pswitch_54
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->getPrevAddCalendarItemId()I

    move-result v0

    goto :goto_29

    .line 1717
    :pswitch_5b
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->getPrevReplaceCalendarItemId()I

    move-result v0

    goto :goto_29

    .line 1721
    :pswitch_62
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->getPrevDeleteCalendarItemId()I

    move-result v0

    goto :goto_29

    .line 1729
    :pswitch_69
    packed-switch p3, :pswitch_data_f8

    :pswitch_6c
    goto :goto_29

    .line 1732
    :pswitch_6d
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlTaskItem;->getPrevAddTaskItemId()I

    move-result v0

    goto :goto_29

    .line 1735
    :pswitch_74
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlTaskItem;->getPrevReplaceTaskItemId()I

    move-result v0

    goto :goto_29

    .line 1738
    :pswitch_7b
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlTaskItem;->getPrevDeleteTaskItemId()I

    move-result v0

    goto :goto_29

    .line 1746
    :pswitch_82
    packed-switch p3, :pswitch_data_104

    :pswitch_85
    goto :goto_29

    .line 1749
    :pswitch_86
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlMemoItem;->getPrevAddMemoItemId()I

    move-result v0

    goto :goto_29

    .line 1752
    :pswitch_8d
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlMemoItem;->getPrevReplaceMemoItemId()I

    move-result v0

    goto :goto_29

    .line 1755
    :pswitch_94
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlMemoItem;->getPrevDeleteMemoItemId()I

    move-result v0

    goto :goto_29

    .line 1763
    :pswitch_9b
    packed-switch p3, :pswitch_data_110

    :pswitch_9e
    goto :goto_29

    .line 1766
    :pswitch_9f
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlProfileItem;->getPrevAddProfileItemId()I

    move-result v0

    goto :goto_29

    .line 1769
    :pswitch_a6
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlProfileItem;->getPrevReplaceProfileItemId()I

    move-result v0

    goto/16 :goto_29

    .line 1772
    :pswitch_ae
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlProfileItem;->getPrevDeleteProfileItemId()I

    move-result v0

    goto/16 :goto_29

    .line 1786
    :cond_b6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Luid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;->luid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move-object v0, v2

    .line 1787
    goto/16 :goto_25

    .line 1687
    nop

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_37
        :pswitch_50
        :pswitch_69
        :pswitch_82
        :pswitch_9b
    .end packed-switch

    .line 1691
    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_42
        :pswitch_3a
        :pswitch_49
    .end packed-switch

    .line 1710
    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_54
        :pswitch_5b
        :pswitch_53
        :pswitch_62
    .end packed-switch

    .line 1729
    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_74
        :pswitch_6c
        :pswitch_7b
    .end packed-switch

    .line 1746
    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_86
        :pswitch_8d
        :pswitch_85
        :pswitch_94
    .end packed-switch

    .line 1763
    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_a6
        :pswitch_9e
        :pswitch_ae
    .end packed-switch
.end method

.method public getProfileContacts()V
    .registers 15

    .prologue
    const/4 v4, 0x0

    .line 951
    const/4 v6, 0x0

    .line 952
    .local v6, ProfileUpdate:Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;
    const/4 v13, 0x0

    .line 953
    .local v13, totalCounts:I
    const/4 v12, 0x0

    .line 955
    .local v12, rawId:I
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlProfileItem;->init()V

    .line 957
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    const/4 v0, 0x1

    const-string v1, "version"

    aput-object v1, v2, v0

    .line 958
    .local v2, from:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleted=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 959
    .local v3, where:Ljava/lang/String;
    const-string v0, " AND account_name=\"vnd.sec.contact.my_profile\""

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 960
    const/4 v10, 0x0

    .line 964
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_39
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 966
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 967
    .local v8, colId:I
    const-string v0, "version"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 969
    .local v9, colVersion:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_52
    .catchall {:try_start_39 .. :try_end_52} :catchall_b9
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_52} :catch_ab

    move-result v0

    if-eqz v0, :cond_8d

    :cond_55
    move-object v7, v6

    .line 973
    .end local v6           #ProfileUpdate:Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;
    .local v7, ProfileUpdate:Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;
    :try_start_56
    new-instance v6, Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;

    invoke-direct {v6}, Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;-><init>()V
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_c0
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5b} :catch_c3

    .line 975
    .end local v7           #ProfileUpdate:Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;
    .restart local v6       #ProfileUpdate:Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;
    :try_start_5b
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 977
    iput v12, v6, Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;->_id:I

    .line 978
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;->version:I

    .line 980
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_ProfileList:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 981
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_ProfileId2Array:Ljava/util/Hashtable;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget-object v4, v4, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_ProfileList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    add-int/lit8 v13, v13, 0x1

    .line 984
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8a
    .catchall {:try_start_5b .. :try_end_8a} :catchall_b9
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_8a} :catch_ab

    move-result v0

    if-nez v0, :cond_55

    .line 993
    :cond_8d
    if-eqz v10, :cond_92

    .line 994
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 997
    .end local v8           #colId:I
    .end local v9           #colVersion:I
    :cond_92
    :goto_92
    const/high16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total counts : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 998
    return-void

    .line 987
    :catch_ab
    move-exception v11

    .line 989
    .local v11, e:Ljava/lang/Exception;
    :goto_ac
    :try_start_ac
    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_b3
    .catchall {:try_start_ac .. :try_end_b3} :catchall_b9

    .line 993
    if-eqz v10, :cond_92

    .line 994
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_92

    .line 993
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_b9
    move-exception v0

    :goto_ba
    if-eqz v10, :cond_bf

    .line 994
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_bf
    throw v0

    .line 993
    .end local v6           #ProfileUpdate:Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;
    .restart local v7       #ProfileUpdate:Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;
    .restart local v8       #colId:I
    .restart local v9       #colVersion:I
    :catchall_c0
    move-exception v0

    move-object v6, v7

    .end local v7           #ProfileUpdate:Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;
    .restart local v6       #ProfileUpdate:Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;
    goto :goto_ba

    .line 987
    .end local v6           #ProfileUpdate:Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;
    .restart local v7       #ProfileUpdate:Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;
    :catch_c3
    move-exception v11

    move-object v6, v7

    .end local v7           #ProfileUpdate:Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;
    .restart local v6       #ProfileUpdate:Lcom/syncmldstmo/base/vitem/smlProfileItem$smlProfileUpdate;
    goto :goto_ac
.end method

.method public getProfileContactsData(II)Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
    .registers 35
    .parameter "rawId"
    .parameter "updateType"

    .prologue
    .line 1002
    const/16 v30, 0x0

    .line 1003
    .local v30, updateItem:Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
    const/16 v21, 0x0

    .line 1004
    .local v21, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/16 v23, 0x0

    .line 1007
    .local v23, contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    const/16 v3, 0x10

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mimetype"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "data1"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "data2"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string v4, "data3"

    aput-object v4, v5, v3

    const/4 v3, 0x4

    const-string v4, "data4"

    aput-object v4, v5, v3

    const/4 v3, 0x5

    const-string v4, "data5"

    aput-object v4, v5, v3

    const/4 v3, 0x6

    const-string v4, "data6"

    aput-object v4, v5, v3

    const/4 v3, 0x7

    const-string v4, "data7"

    aput-object v4, v5, v3

    const/16 v3, 0x8

    const-string v4, "data8"

    aput-object v4, v5, v3

    const/16 v3, 0x9

    const-string v4, "data9"

    aput-object v4, v5, v3

    const/16 v3, 0xa

    const-string v4, "data10"

    aput-object v4, v5, v3

    const/16 v3, 0xb

    const-string v4, "data11"

    aput-object v4, v5, v3

    const/16 v3, 0xc

    const-string v4, "data12"

    aput-object v4, v5, v3

    const/16 v3, 0xd

    const-string v4, "data13"

    aput-object v4, v5, v3

    const/16 v3, 0xe

    const-string v4, "data14"

    aput-object v4, v5, v3

    const/16 v3, 0xf

    const-string v4, "data15"

    aput-object v4, v5, v3

    .line 1024
    .local v5, from:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "raw_contact_id=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1025
    .local v6, where:Ljava/lang/String;
    const/16 v25, 0x0

    .line 1029
    .local v25, cursor:Landroid/database/Cursor;
    :try_start_7f
    sget-object v3, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 1031
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_37c

    .line 1033
    const-string v3, "mimetype"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1034
    .local v20, colMimeType:I
    const-string v3, "data1"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1035
    .local v9, colData1:I
    const-string v3, "data2"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 1036
    .local v12, colData2:I
    const-string v3, "data3"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1037
    .local v13, colData3:I
    const-string v3, "data4"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1038
    .local v14, colData4:I
    const-string v3, "data5"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1039
    .local v15, colData5:I
    const-string v3, "data6"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1040
    .local v16, colData6:I
    const-string v3, "data7"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1041
    .local v17, colData7:I
    const-string v3, "data8"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1042
    .local v18, colData8:I
    const-string v3, "data9"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 1043
    .local v19, colData9:I
    const-string v3, "data10"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1048
    .local v10, colData10:I
    const-string v3, "data15"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1050
    .local v11, colData15:I
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_16a

    .line 1052
    new-instance v24, Lcom/syncmldstmo/base/vitem/smlContactAdapter;

    invoke-direct/range {v24 .. v24}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;-><init>()V
    :try_end_fa
    .catchall {:try_start_7f .. :try_end_fa} :catchall_39f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_fa} :catch_39c

    .end local v23           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .local v24, contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    move-object/from16 v22, v21

    .line 1056
    .end local v21           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    .local v22, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    :goto_fc
    :try_start_fc
    new-instance v21, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    invoke-direct/range {v21 .. v21}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;-><init>()V
    :try_end_101
    .catchall {:try_start_fc .. :try_end_101} :catchall_3a2
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_101} :catch_3a9

    .line 1058
    .end local v22           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    .restart local v21       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    :try_start_101
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1059
    .local v28, szMimeType:Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_183

    .line 1061
    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 1062
    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    .line 1063
    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data3:Ljava/lang/String;

    .line 1064
    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    .line 1065
    move-object/from16 v0, v25

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    .line 1066
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data6:Ljava/lang/String;

    .line 1068
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    .line 1069
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    :cond_162
    :goto_162
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_165
    .catchall {:try_start_101 .. :try_end_165} :catchall_1e3
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_165} :catch_1ab

    move-result v3

    if-nez v3, :cond_3b0

    move-object/from16 v23, v24

    .line 1154
    .end local v24           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .end local v28           #szMimeType:Ljava/lang/String;
    .restart local v23       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    :cond_16a
    if-eqz v23, :cond_17d

    .line 1155
    :try_start_16c
    new-instance v31, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    invoke-virtual/range {v23 .. v23}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->EncodeVCard()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;-><init>(IILjava/lang/Object;)V
    :try_end_17b
    .catchall {:try_start_16c .. :try_end_17b} :catchall_39f
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_17b} :catch_39c

    .end local v30           #updateItem:Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
    .local v31, updateItem:Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
    move-object/from16 v30, v31

    .line 1168
    .end local v9           #colData1:I
    .end local v10           #colData10:I
    .end local v11           #colData15:I
    .end local v12           #colData2:I
    .end local v13           #colData3:I
    .end local v14           #colData4:I
    .end local v15           #colData5:I
    .end local v16           #colData6:I
    .end local v17           #colData7:I
    .end local v18           #colData8:I
    .end local v19           #colData9:I
    .end local v20           #colMimeType:I
    .end local v31           #updateItem:Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
    .restart local v30       #updateItem:Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
    :cond_17d
    :goto_17d
    if-eqz v25, :cond_182

    .line 1169
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1172
    :cond_182
    :goto_182
    return-object v30

    .line 1071
    .end local v23           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v9       #colData1:I
    .restart local v10       #colData10:I
    .restart local v11       #colData15:I
    .restart local v12       #colData2:I
    .restart local v13       #colData3:I
    .restart local v14       #colData4:I
    .restart local v15       #colData5:I
    .restart local v16       #colData6:I
    .restart local v17       #colData7:I
    .restart local v18       #colData8:I
    .restart local v19       #colData9:I
    .restart local v20       #colMimeType:I
    .restart local v24       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v28       #szMimeType:Ljava/lang/String;
    :cond_183
    :try_start_183
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1bb

    .line 1073
    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 1074
    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    .line 1076
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->telList:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1aa
    .catchall {:try_start_183 .. :try_end_1aa} :catchall_1e3
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_1aa} :catch_1ab

    goto :goto_162

    .line 1162
    .end local v28           #szMimeType:Ljava/lang/String;
    :catch_1ab
    move-exception v26

    move-object/from16 v23, v24

    .line 1164
    .end local v9           #colData1:I
    .end local v10           #colData10:I
    .end local v11           #colData15:I
    .end local v12           #colData2:I
    .end local v13           #colData3:I
    .end local v14           #colData4:I
    .end local v15           #colData5:I
    .end local v16           #colData6:I
    .end local v17           #colData7:I
    .end local v18           #colData8:I
    .end local v19           #colData9:I
    .end local v20           #colMimeType:I
    .end local v24           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v23       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .local v26, e:Ljava/lang/Exception;
    :goto_1ae
    :try_start_1ae
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_1b5
    .catchall {:try_start_1ae .. :try_end_1b5} :catchall_39f

    .line 1168
    if-eqz v25, :cond_182

    .line 1169
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    goto :goto_182

    .line 1078
    .end local v23           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .end local v26           #e:Ljava/lang/Exception;
    .restart local v9       #colData1:I
    .restart local v10       #colData10:I
    .restart local v11       #colData15:I
    .restart local v12       #colData2:I
    .restart local v13       #colData3:I
    .restart local v14       #colData4:I
    .restart local v15       #colData5:I
    .restart local v16       #colData6:I
    .restart local v17       #colData7:I
    .restart local v18       #colData8:I
    .restart local v19       #colData9:I
    .restart local v20       #colMimeType:I
    .restart local v24       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v28       #szMimeType:Ljava/lang/String;
    :cond_1bb
    :try_start_1bb
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1ec

    .line 1080
    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 1081
    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    .line 1083
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->emailList:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e2
    .catchall {:try_start_1bb .. :try_end_1e2} :catchall_1e3
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1e2} :catch_1ab

    goto :goto_162

    .line 1168
    .end local v28           #szMimeType:Ljava/lang/String;
    :catchall_1e3
    move-exception v3

    move-object/from16 v23, v24

    .end local v9           #colData1:I
    .end local v10           #colData10:I
    .end local v11           #colData15:I
    .end local v12           #colData2:I
    .end local v13           #colData3:I
    .end local v14           #colData4:I
    .end local v15           #colData5:I
    .end local v16           #colData6:I
    .end local v17           #colData7:I
    .end local v18           #colData8:I
    .end local v19           #colData9:I
    .end local v20           #colMimeType:I
    .end local v24           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v23       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    :goto_1e6
    if-eqz v25, :cond_1eb

    .line 1169
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_1eb
    throw v3

    .line 1085
    .end local v23           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v9       #colData1:I
    .restart local v10       #colData10:I
    .restart local v11       #colData15:I
    .restart local v12       #colData2:I
    .restart local v13       #colData3:I
    .restart local v14       #colData4:I
    .restart local v15       #colData5:I
    .restart local v16       #colData6:I
    .restart local v17       #colData7:I
    .restart local v18       #colData8:I
    .restart local v19       #colData9:I
    .restart local v20       #colMimeType:I
    .restart local v24       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v28       #szMimeType:Ljava/lang/String;
    :cond_1ec
    :try_start_1ec
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_21f

    .line 1087
    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 1088
    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    .line 1089
    move-object/from16 v0, v25

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    .line 1091
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->imList:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_162

    .line 1093
    :cond_21f
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_296

    .line 1095
    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 1096
    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    .line 1098
    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    .line 1099
    move-object/from16 v0, v25

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    .line 1100
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data6:Ljava/lang/String;

    .line 1101
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data7:Ljava/lang/String;

    .line 1102
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data8:Ljava/lang/String;

    .line 1103
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data9:Ljava/lang/String;

    .line 1104
    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data10:Ljava/lang/String;

    .line 1106
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_162

    .line 1108
    :cond_296
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2c9

    .line 1110
    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 1111
    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    .line 1112
    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    .line 1114
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->orgList:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_162

    .line 1116
    :cond_2c9
    const-string v3, "vnd.android.cursor.item/website"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2e8

    .line 1118
    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 1120
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->urlList:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_162

    .line 1122
    :cond_2e8
    const-string v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_307

    .line 1124
    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 1126
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->noteList:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_162

    .line 1128
    :cond_307
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_323

    .line 1130
    move-object/from16 v0, v25

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    .line 1132
    .local v27, photoRawData:[B
    if-eqz v27, :cond_162

    .line 1134
    invoke-static/range {v27 .. v27}, Lcom/syncmldstmo/base/smlBase64;->encode([B)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->photo:Ljava/lang/String;

    goto/16 :goto_162

    .line 1137
    .end local v27           #photoRawData:[B
    :cond_323
    const-string v3, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_342

    .line 1139
    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 1141
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->nickList:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_162

    .line 1143
    :cond_342
    const-string v3, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_162

    .line 1145
    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 1146
    .local v29, type:I
    const/4 v3, 0x1

    move/from16 v0, v29

    if-ne v0, v3, :cond_36b

    .line 1147
    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->anniversary:Ljava/lang/String;

    goto/16 :goto_162

    .line 1148
    :cond_36b
    const/4 v3, 0x3

    move/from16 v0, v29

    if-ne v0, v3, :cond_162

    .line 1149
    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->birthday:Ljava/lang/String;
    :try_end_37a
    .catchall {:try_start_1ec .. :try_end_37a} :catchall_1e3
    .catch Ljava/lang/Exception; {:try_start_1ec .. :try_end_37a} :catch_1ab

    goto/16 :goto_162

    .line 1159
    .end local v9           #colData1:I
    .end local v10           #colData10:I
    .end local v11           #colData15:I
    .end local v12           #colData2:I
    .end local v13           #colData3:I
    .end local v14           #colData4:I
    .end local v15           #colData5:I
    .end local v16           #colData6:I
    .end local v17           #colData7:I
    .end local v18           #colData8:I
    .end local v19           #colData9:I
    .end local v20           #colMimeType:I
    .end local v24           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .end local v28           #szMimeType:Ljava/lang/String;
    .end local v29           #type:I
    .restart local v23       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    :cond_37c
    :try_start_37c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getProfileContactsData] rawId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data table not exist!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_39a
    .catchall {:try_start_37c .. :try_end_39a} :catchall_39f
    .catch Ljava/lang/Exception; {:try_start_37c .. :try_end_39a} :catch_39c

    goto/16 :goto_17d

    .line 1162
    :catch_39c
    move-exception v26

    goto/16 :goto_1ae

    .line 1168
    :catchall_39f
    move-exception v3

    goto/16 :goto_1e6

    .end local v21           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    .end local v23           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v9       #colData1:I
    .restart local v10       #colData10:I
    .restart local v11       #colData15:I
    .restart local v12       #colData2:I
    .restart local v13       #colData3:I
    .restart local v14       #colData4:I
    .restart local v15       #colData5:I
    .restart local v16       #colData6:I
    .restart local v17       #colData7:I
    .restart local v18       #colData8:I
    .restart local v19       #colData9:I
    .restart local v20       #colMimeType:I
    .restart local v22       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    .restart local v24       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    :catchall_3a2
    move-exception v3

    move-object/from16 v23, v24

    .end local v24           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v23       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    move-object/from16 v21, v22

    .end local v22           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    .restart local v21       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    goto/16 :goto_1e6

    .line 1162
    .end local v21           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    .end local v23           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v22       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    .restart local v24       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    :catch_3a9
    move-exception v26

    move-object/from16 v23, v24

    .end local v24           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v23       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    move-object/from16 v21, v22

    .end local v22           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    .restart local v21       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    goto/16 :goto_1ae

    .end local v23           #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v24       #contactItem:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .restart local v28       #szMimeType:Ljava/lang/String;
    :cond_3b0
    move-object/from16 v22, v21

    .end local v21           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    .restart local v22       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    goto/16 :goto_fc
.end method

.method public init()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactNewMapLuid2Crc:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 159
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    if-nez v0, :cond_10

    .line 160
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    .line 163
    :cond_10
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarNewMapLuid2Crc:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 164
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    if-nez v0, :cond_20

    .line 165
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    .line 179
    :cond_20
    return-void
.end method

.method public initMapDB()I
    .registers 3

    .prologue
    .line 327
    const/high16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->init()V

    .line 331
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->mapinit()V

    .line 332
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    #getter for: Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->_bLoadMaptable:Z
    invoke-static {v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->access$200(Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 333
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    const-string v1, "map_contact.dat"

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->LoadMaptable(Ljava/lang/String;)V

    .line 337
    :cond_1e
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->mapinit()V

    .line 338
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    #getter for: Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->_bLoadMaptable:Z
    invoke-static {v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->access$200(Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 339
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    const-string v1, "map_calendar.dat"

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->LoadMaptable(Ljava/lang/String;)V

    .line 353
    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method public mapTableReinitAlloc()I
    .registers 3

    .prologue
    .line 2002
    const/high16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2003
    const/4 v0, 0x0

    return v0
.end method

.method public notifyAddStatus(IIII)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x8

    .line 2016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dbid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", luid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", results : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2018
    const/4 v0, -0x2

    if-ne p4, v0, :cond_32

    .line 2019
    const/16 v0, 0x10

    .line 2064
    :goto_31
    return v0

    .line 2021
    :cond_32
    const/4 v0, 0x1

    if-eq p4, v0, :cond_54

    const/4 v0, -0x4

    if-eq p4, v0, :cond_54

    const/4 v0, -0x1

    if-eq p4, v0, :cond_54

    .line 2023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DB Access Error. Result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2024
    const/16 v0, 0xf

    goto :goto_31

    .line 2027
    :cond_54
    packed-switch p2, :pswitch_data_c2

    .line 2064
    :cond_57
    :goto_57
    const/4 v0, 0x0

    goto :goto_31

    .line 2031
    :pswitch_59
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactNewMapLuid2Crc:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2032
    if-eqz v0, :cond_57

    .line 2033
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, p3, v3, v4}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->insert(IIJ)V

    goto :goto_57

    .line 2039
    :pswitch_73
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarNewMapLuid2Crc:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2040
    if-eqz v0, :cond_57

    .line 2041
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, p3, v3, v4}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->insert(IIJ)V

    goto :goto_57

    .line 2047
    :pswitch_8d
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskNewMapLuid2Crc:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2048
    if-eqz v0, :cond_57

    .line 2049
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, p3, v3, v4}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->insert(IIJ)V

    goto :goto_57

    .line 2055
    :pswitch_a7
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoNewMapLuid2Crc:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2056
    if-eqz v0, :cond_57

    .line 2057
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, p3, v3, v4}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->insert(IIJ)V

    goto :goto_57

    .line 2027
    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_59
        :pswitch_73
        :pswitch_8d
        :pswitch_a7
    .end packed-switch
.end method

.method public notifyAddStatusEx(IIIIILjava/lang/String;)I
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2008
    const/high16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dbid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2009
    const/4 v0, 0x1

    invoke-virtual {p0, v3, p1, p5, v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->notifyAddStatus(IIII)I

    .line 2011
    return v3
.end method

.method public notifyDeleteAllStatus(II)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2069
    const/high16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dbid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", notificationMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2071
    packed-switch p1, :pswitch_data_40

    .line 2089
    :goto_25
    const/4 v0, 0x0

    return v0

    .line 2074
    :pswitch_27
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->deleteAll()V

    goto :goto_25

    .line 2078
    :pswitch_2d
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->deleteAll()V

    goto :goto_25

    .line 2082
    :pswitch_33
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->deleteAll()V

    goto :goto_25

    .line 2086
    :pswitch_39
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->deleteAll()V

    goto :goto_25

    .line 2071
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_27
        :pswitch_2d
        :pswitch_33
        :pswitch_39
    .end packed-switch
.end method

.method public notifyDeleteStatus(IIII)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2104
    const/4 v0, -0x2

    if-ne p4, v0, :cond_6

    .line 2105
    const/16 v0, 0x10

    .line 2134
    :goto_5
    return v0

    .line 2107
    :cond_6
    const/4 v0, 0x1

    if-eq p4, v0, :cond_2a

    const/4 v0, -0x4

    if-eq p4, v0, :cond_2a

    const/4 v0, -0x1

    if-eq p4, v0, :cond_2a

    .line 2109
    const/high16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB Access Error. Result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2110
    const/16 v0, 0xf

    goto :goto_5

    .line 2113
    :cond_2a
    packed-switch p2, :pswitch_data_50

    .line 2134
    :goto_2d
    const/4 v0, 0x0

    goto :goto_5

    .line 2116
    :pswitch_2f
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    invoke-virtual {v0, v1, p3}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->delete(II)V

    goto :goto_2d

    .line 2120
    :pswitch_37
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    invoke-virtual {v0, v1, p3}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->delete(II)V

    goto :goto_2d

    .line 2124
    :pswitch_3f
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    invoke-virtual {v0, v1, p3}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->delete(II)V

    goto :goto_2d

    .line 2128
    :pswitch_47
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    invoke-virtual {v0, v1, p3}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->delete(II)V

    goto :goto_2d

    .line 2113
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_37
        :pswitch_3f
        :pswitch_47
    .end packed-switch
.end method

.method public notifyDeleteStatusEx(IIIIILjava/lang/String;)I
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2094
    const/high16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dbid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "luid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2095
    const/4 v0, 0x1

    invoke-virtual {p0, v3, p1, p5, v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->notifyDeleteStatus(IIII)I

    .line 2097
    return v3
.end method

.method public notifyReplaceStatus(IIII)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2149
    const/4 v0, -0x2

    if-ne p4, v0, :cond_6

    .line 2151
    const/16 v0, 0x10

    .line 2197
    :goto_5
    return v0

    .line 2154
    :cond_6
    const/4 v0, 0x1

    if-eq p4, v0, :cond_2a

    const/4 v0, -0x4

    if-eq p4, v0, :cond_2a

    const/4 v0, -0x1

    if-eq p4, v0, :cond_2a

    .line 2156
    const/high16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB Access Error. Result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2157
    const/16 v0, 0xf

    goto :goto_5

    .line 2160
    :cond_2a
    packed-switch p2, :pswitch_data_98

    .line 2197
    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    goto :goto_5

    .line 2164
    :pswitch_2f
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactNewMapLuid2Crc:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2165
    if-eqz v0, :cond_2d

    .line 2166
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, p3, v3, v4}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->update(IIJ)V

    goto :goto_2d

    .line 2172
    :pswitch_49
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarNewMapLuid2Crc:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2173
    if-eqz v0, :cond_2d

    .line 2174
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, p3, v3, v4}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->update(IIJ)V

    goto :goto_2d

    .line 2180
    :pswitch_63
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskNewMapLuid2Crc:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2181
    if-eqz v0, :cond_2d

    .line 2182
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, p3, v3, v4}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->update(IIJ)V

    goto :goto_2d

    .line 2188
    :pswitch_7d
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoNewMapLuid2Crc:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2189
    if-eqz v0, :cond_2d

    .line 2190
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, p3, v3, v4}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->update(IIJ)V

    goto :goto_2d

    .line 2160
    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_49
        :pswitch_63
        :pswitch_7d
    .end packed-switch
.end method

.method public notifyReplaceStatusEx(IIIIILjava/lang/String;)I
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2139
    const/high16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dbid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "luid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2140
    const/4 v0, 0x1

    invoke-virtual {p0, v3, p1, p5, v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->notifyReplaceStatus(IIII)I

    .line 2142
    return v3
.end method

.method public replaceItem(Ljava/lang/Object;ILcom/syncmldstmo/base/sml$Item_t;I)I
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, -0x5

    const/high16 v5, 0x8

    .line 2374
    iget-object v2, p3, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2465
    :cond_c
    :goto_c
    return v0

    .line 2377
    :cond_d
    packed-switch p2, :pswitch_data_114

    .line 2465
    :goto_10
    const/4 v0, 0x1

    goto :goto_c

    .line 2383
    :pswitch_12
    iget-object v2, p3, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->DecodeVCard(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlContactAdapter;

    move-result-object v2

    .line 2385
    if-eqz v2, :cond_c

    .line 2388
    iget-object v0, p3, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contacts luid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2391
    sget-object v3, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v2, v0, p4}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->replaceContact(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;II)Z

    move-result v2

    if-nez v2, :cond_49

    .line 2393
    const-string v0, "replaceContact() fail"

    invoke-static {v5, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v0, v1

    .line 2394
    goto :goto_c

    .line 2397
    :cond_49
    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->getContacts(I)Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;

    move-result-object v2

    .line 2398
    if-eqz v2, :cond_61

    .line 2400
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactNewMapLuid2Crc:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2}, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 2404
    :cond_61
    const-string v0, "ContactsUpdate is null"

    invoke-static {v5, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v0, v1

    .line 2405
    goto :goto_c

    .line 2413
    :pswitch_68
    iget-object v2, p3, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->DecodeVCal(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;

    move-result-object v2

    .line 2414
    if-eqz v2, :cond_c

    .line 2417
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    iget-object v3, p3, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->replaceCalendar(Landroid/content/ContentResolver;I)Z

    move-result v0

    if-nez v0, :cond_89

    .line 2419
    const-string v0, "replaceCalendar() fail"

    invoke-static {v5, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v0, v1

    .line 2420
    goto :goto_c

    .line 2424
    :cond_89
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    iget-object v3, p3, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarAdapter;->m_Event:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    invoke-virtual {v2}, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->getCrc()J

    move-result-wide v4

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->update(IIJ)V

    goto/16 :goto_10

    .line 2431
    :pswitch_a2
    iget-object v2, p3, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->DecodeVTask(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlTaskAdapter;

    move-result-object v2

    .line 2432
    if-eqz v2, :cond_c

    .line 2435
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    iget-object v3, p3, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->replaceTask(Landroid/content/ContentResolver;I)I

    move-result v0

    if-gtz v0, :cond_c4

    .line 2437
    const-string v0, "replaceTask() fail"

    invoke-static {v5, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v0, v1

    .line 2438
    goto/16 :goto_c

    .line 2442
    :cond_c4
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskNewMapLuid2Crc:Ljava/util/Hashtable;

    iget-object v1, p3, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlTaskAdapter;->m_Task:Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    invoke-virtual {v2}, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    .line 2449
    :pswitch_db
    iget-object v2, p3, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->DecodeVNote(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlMemoAdapter;

    move-result-object v2

    .line 2450
    if-eqz v2, :cond_c

    .line 2453
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->cResolver:Landroid/content/ContentResolver;

    iget-object v3, p3, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->replaceMemo(Landroid/content/ContentResolver;I)I

    move-result v0

    if-gtz v0, :cond_fd

    .line 2455
    const-string v0, "replaceMemo() fail"

    invoke-static {v5, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v0, v1

    .line 2456
    goto/16 :goto_c

    .line 2460
    :cond_fd
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoNewMapLuid2Crc:Ljava/util/Hashtable;

    iget-object v1, p3, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    invoke-virtual {v2}, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    .line 2377
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_12
        :pswitch_68
        :pswitch_a2
        :pswitch_db
        :pswitch_12
    .end packed-switch
.end method

.method public saveMapTable()I
    .registers 3

    .prologue
    .line 358
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlSetCurrentProfileInfo()V

    .line 360
    const/high16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget-boolean v0, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->_bChanged:Z

    if-eqz v0, :cond_1b

    .line 363
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    const-string v1, "map_contact.dat"

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->SaveMaptable(Ljava/lang/String;)V

    .line 365
    :cond_1b
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget-boolean v0, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->_bChanged:Z

    if-eqz v0, :cond_2c

    .line 366
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    const-string v1, "map_calendar.dat"

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->SaveMaptable(Ljava/lang/String;)V

    .line 368
    :cond_2c
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget-boolean v0, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->_bChanged:Z

    if-eqz v0, :cond_3d

    .line 369
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    const-string v1, "map_task.dat"

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->SaveMaptable(Ljava/lang/String;)V

    .line 371
    :cond_3d
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget-boolean v0, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->_bChanged:Z

    if-eqz v0, :cond_4e

    .line 372
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    const-string v1, "map_memo.dat"

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->SaveMaptable(Ljava/lang/String;)V

    .line 374
    :cond_4e
    const/4 v0, 0x0

    return v0
.end method

.method public smlCheckCalendarUpdateData()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1981
    .line 1983
    invoke-virtual {p0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->init()V

    .line 1984
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    invoke-virtual {v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->mapinit()V

    .line 1987
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_calendarMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    const-string v2, "map_calendar.dat"

    invoke-virtual {v1, v2}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->LoadMaptable(Ljava/lang/String;)V

    .line 1989
    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->updateCalendarList(Z)V

    .line 1991
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCounts:I

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCounts:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeleteCounts:I

    add-int/2addr v1, v2

    .line 1992
    const/high16 v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TotalCounts : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1994
    if-lez v1, :cond_3c

    .line 1995
    const/4 v0, 0x1

    .line 1997
    :cond_3c
    return v0
.end method

.method public smlCheckContactsUpdatData()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1960
    .line 1962
    invoke-virtual {p0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->init()V

    .line 1963
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    invoke-virtual {v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->mapinit()V

    .line 1966
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_contactMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    const-string v2, "map_contact.dat"

    invoke-virtual {v1, v2}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->LoadMaptable(Ljava/lang/String;)V

    .line 1968
    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->updateConatctList(Z)V

    .line 1970
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCounts:I

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCounts:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteCounts:I

    add-int/2addr v1, v2

    .line 1971
    const/high16 v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TotalCounts : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1973
    if-lez v1, :cond_3c

    .line 1974
    const/4 v0, 0x1

    .line 1976
    :cond_3c
    return v0
.end method

.method public smlGetUpdateList(ILcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;Lcom/syncmldstmo/base/smlDebug$RefInt;)I
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/high16 v5, 0x8

    .line 1792
    iget v1, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    .line 1793
    iget v2, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    .line 1796
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nSyncType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1798
    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v3}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->setDBModeEx(IILjava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_42

    .line 1800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not supported dbid : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 1801
    const/16 v0, 0xc

    .line 1955
    :cond_41
    :goto_41
    return v0

    .line 1804
    :cond_42
    iget v3, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    packed-switch v3, :pswitch_data_31c

    goto :goto_41

    .line 1808
    :pswitch_48
    if-eq v2, v6, :cond_4d

    const/4 v3, 0x6

    if-ne v2, v3, :cond_73

    .line 1810
    :cond_4d
    invoke-direct {p0, v6}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->updateConatctList(Z)V

    .line 1812
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1813
    iput v1, p3, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 1814
    iput v1, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    .line 1815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SML_CONTACT_DBID TotalCounts : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_41

    .line 1817
    :cond_73
    if-ne v2, v8, :cond_7b

    .line 1819
    const-string v1, "SML_CONTACT_DBID SYNC_TYPE_REFRESH_FROM_SERVER"

    invoke-static {v5, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_41

    .line 1821
    :cond_7b
    if-eq v2, v7, :cond_41

    .line 1823
    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->updateConatctList(Z)V

    .line 1825
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCounts:I

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget v3, v3, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCounts:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget v3, v3, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteCounts:I

    add-int/2addr v2, v3

    .line 1826
    iput v2, p3, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 1827
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCounts:I

    iput v2, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    .line 1828
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCounts:I

    iput v2, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->replaceListCount:I

    .line 1829
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteCounts:I

    iput v2, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->deleteListCount:I

    .line 1831
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dbid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", add : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rep : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", del : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ContactsItem:Lcom/syncmldstmo/base/vitem/smlContactItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_41

    .line 1838
    :pswitch_e4
    if-eq v2, v6, :cond_e9

    const/4 v3, 0x6

    if-ne v2, v3, :cond_110

    .line 1840
    :cond_e9
    invoke-direct {p0, v6}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->updateCalendarList(Z)V

    .line 1842
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1843
    iput v1, p3, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 1844
    iput v1, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    .line 1845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SML_CALENDAR_DBID TotalCounts : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_41

    .line 1847
    :cond_110
    if-ne v2, v8, :cond_119

    .line 1849
    const-string v1, "SML_CALENDAR_DBID SYNC_TYPE_REFRESH_FROM_SERVER"

    invoke-static {v5, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_41

    .line 1851
    :cond_119
    if-eq v2, v7, :cond_41

    .line 1853
    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->updateCalendarList(Z)V

    .line 1855
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCounts:I

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget v3, v3, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCounts:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget v3, v3, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeleteCounts:I

    add-int/2addr v2, v3

    .line 1856
    iput v2, p3, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 1858
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCounts:I

    iput v2, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    .line 1859
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCounts:I

    iput v2, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->replaceListCount:I

    .line 1860
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeleteCounts:I

    iput v2, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->deleteListCount:I

    .line 1861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dbid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", add : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rep : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", del : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->CalendarItem:Lcom/syncmldstmo/base/vitem/smlCalendarItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeleteCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_41

    .line 1868
    :pswitch_182
    if-eq v2, v6, :cond_187

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1ae

    .line 1870
    :cond_187
    invoke-virtual {p0, v6}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->updateTaskList(Z)V

    .line 1872
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_TaskList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1873
    iput v1, p3, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 1874
    iput v1, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    .line 1875
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SML_TASK_DBID TotalCounts : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_41

    .line 1877
    :cond_1ae
    if-ne v2, v8, :cond_1b7

    .line 1879
    const-string v1, "SML_TASK_DBID SYNC_TYPE_REFRESH_FROM_SERVER"

    invoke-static {v5, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_41

    .line 1881
    :cond_1b7
    if-eq v2, v7, :cond_41

    .line 1883
    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->updateTaskList(Z)V

    .line 1885
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_AddCounts:I

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget v3, v3, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_ReplaceCounts:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget v3, v3, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_DeleteCounts:I

    add-int/2addr v2, v3

    .line 1886
    iput v2, p3, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 1888
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_AddCounts:I

    iput v2, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    .line 1889
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_ReplaceCounts:I

    iput v2, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->replaceListCount:I

    .line 1890
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_DeleteCounts:I

    iput v2, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->deleteListCount:I

    .line 1891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dbid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", add : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_AddCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rep : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_ReplaceCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", del : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_DeleteCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_41

    .line 1898
    :pswitch_220
    if-eq v2, v6, :cond_225

    const/4 v3, 0x6

    if-ne v2, v3, :cond_24c

    .line 1900
    :cond_225
    invoke-virtual {p0, v6}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->updateMemoList(Z)V

    .line 1902
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_MemoList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1903
    iput v1, p3, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 1904
    iput v1, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    .line 1905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SML_MEMO_DBID TotalCounts : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_41

    .line 1907
    :cond_24c
    if-ne v2, v8, :cond_255

    .line 1909
    const-string v1, "SML_MEMO_DBID SYNC_TYPE_REFRESH_FROM_SERVER"

    invoke-static {v5, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_41

    .line 1911
    :cond_255
    if-eq v2, v7, :cond_41

    .line 1913
    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->updateMemoList(Z)V

    .line 1915
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_AddCounts:I

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget v3, v3, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_ReplaceCounts:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget v3, v3, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_DeleteCounts:I

    add-int/2addr v2, v3

    .line 1916
    iput v2, p3, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 1918
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_AddCounts:I

    iput v2, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    .line 1919
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_ReplaceCounts:I

    iput v2, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->replaceListCount:I

    .line 1920
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_DeleteCounts:I

    iput v2, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->deleteListCount:I

    .line 1921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dbid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", add : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_AddCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rep : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_ReplaceCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", del : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_DeleteCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_41

    .line 1928
    :pswitch_2be
    if-eq v2, v6, :cond_2c3

    const/4 v1, 0x6

    if-ne v2, v1, :cond_2ea

    .line 1930
    :cond_2c3
    invoke-direct {p0, v6}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->updateProfileContactList(Z)V

    .line 1931
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_AddCounts:I

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_ReplaceCounts:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_DeleteCounts:I

    add-int/2addr v1, v2

    .line 1932
    iput v1, p3, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 1934
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_AddCounts:I

    iput v1, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    .line 1935
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_ReplaceCounts:I

    iput v1, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->replaceListCount:I

    .line 1936
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_DeleteCounts:I

    iput v1, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->deleteListCount:I

    goto/16 :goto_41

    .line 1938
    :cond_2ea
    if-ne v2, v8, :cond_2f3

    .line 1940
    const-string v1, "SML_PROFILE_DBID SYNC_TYPE_REFRESH_FROM_SERVER"

    invoke-static {v5, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_41

    .line 1942
    :cond_2f3
    if-eq v2, v7, :cond_41

    .line 1944
    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->updateProfileContactList(Z)V

    .line 1945
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_AddCounts:I

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_ReplaceCounts:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_DeleteCounts:I

    add-int/2addr v1, v2

    .line 1946
    iput v1, p3, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 1948
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_AddCounts:I

    iput v1, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    .line 1949
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_ReplaceCounts:I

    iput v1, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->replaceListCount:I

    .line 1950
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->ProfileItem:Lcom/syncmldstmo/base/vitem/smlProfileItem;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlProfileItem;->m_DeleteCounts:I

    iput v1, p2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->deleteListCount:I

    goto/16 :goto_41

    .line 1804
    :pswitch_data_31c
    .packed-switch 0x0
        :pswitch_48
        :pswitch_e4
        :pswitch_182
        :pswitch_220
        :pswitch_2be
    .end packed-switch
.end method

.method public updateMemoList(Z)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    const/high16 v7, 0x8

    .line 1412
    invoke-direct {p0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->getMemo()V

    .line 1414
    if-eqz p1, :cond_77

    .line 1416
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    invoke-virtual {v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->deleteAll()V

    .line 1417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1419
    const-string v1, "All"

    invoke-static {v7, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1421
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget-object v4, v4, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_MemoList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iput v4, v1, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_AddCounts:I

    move v1, v0

    .line 1422
    :goto_24
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_AddCounts:I

    if-ge v1, v0, :cond_4d

    .line 1424
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_MemoList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    .line 1425
    iput v8, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->state:I

    .line 1427
    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->getCrc()J

    move-result-wide v4

    .line 1428
    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoNewMapLuid2Crc:Ljava/util/Hashtable;

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 1432
    :cond_4d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "All Add count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget v5, v5, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_AddCounts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1479
    :goto_76
    return-void

    :cond_77
    move v1, v0

    .line 1440
    :goto_78
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    iget v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b2

    .line 1442
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    iget v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->getItem(I)Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;

    move-result-object v2

    .line 1443
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget-object v3, v3, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_MemoId2Array:Ljava/util/Hashtable;

    iget v4, v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->luid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_af

    .line 1446
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget-object v3, v3, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_DeleteMemoList:Ljava/util/Vector;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->luid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1440
    :cond_af
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .line 1449
    :cond_b2
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_DeleteMemoList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iput v2, v1, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_DeleteCounts:I

    .line 1450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_DeleteCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v1, v0

    .line 1453
    :goto_d9
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_MemoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_13f

    .line 1455
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_MemoList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    .line 1457
    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->getCrc()J

    move-result-wide v2

    .line 1458
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget-object v4, v4, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    iget v5, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    aget-object v4, v4, v5

    iget v5, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->_id:I

    invoke-virtual {v4, v5}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->getItemFromLuid(I)Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;

    move-result-object v4

    .line 1460
    if-eqz v4, :cond_125

    .line 1462
    iget-wide v4, v4, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->crc:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_121

    .line 1464
    const/4 v4, 0x2

    iput v4, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->state:I

    .line 1465
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoNewMapLuid2Crc:Ljava/util/Hashtable;

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget v2, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_ReplaceCounts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_ReplaceCounts:I

    .line 1453
    :cond_121
    :goto_121
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d9

    .line 1472
    :cond_125
    iput v8, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->state:I

    .line 1473
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_memoNewMapLuid2Crc:Ljava/util/Hashtable;

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget v2, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_AddCounts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_AddCounts:I

    goto :goto_121

    .line 1478
    :cond_13f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_AddCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Replace count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->MemoItem:Lcom/syncmldstmo/base/vitem/smlMemoItem;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlMemoItem;->m_ReplaceCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_76
.end method

.method public updateTaskList(Z)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    const/high16 v7, 0x8

    .line 1337
    invoke-direct {p0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->getTask()V

    .line 1339
    if-eqz p1, :cond_77

    .line 1341
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    invoke-virtual {v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->deleteAll()V

    .line 1342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1344
    const-string v1, "All"

    invoke-static {v7, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1346
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget-object v4, v4, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_TaskList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iput v4, v1, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_AddCounts:I

    move v1, v0

    .line 1347
    :goto_24
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_AddCounts:I

    if-ge v1, v0, :cond_4d

    .line 1349
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_TaskList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    .line 1350
    iput v8, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->state:I

    .line 1352
    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->getCrc()J

    move-result-wide v4

    .line 1353
    iget-object v6, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskNewMapLuid2Crc:Ljava/util/Hashtable;

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 1357
    :cond_4d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "All Add count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget v5, v5, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_AddCounts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1403
    :goto_76
    return-void

    :cond_77
    move v1, v0

    .line 1364
    :goto_78
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    iget v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b2

    .line 1366
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    iget v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->getItem(I)Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;

    move-result-object v2

    .line 1367
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget-object v3, v3, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_TaskId2Array:Ljava/util/Hashtable;

    iget v4, v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->luid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_af

    .line 1369
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget-object v3, v3, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_DeleteTaskList:Ljava/util/Vector;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->luid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1364
    :cond_af
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .line 1373
    :cond_b2
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_DeleteTaskList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iput v2, v1, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_DeleteCounts:I

    .line 1374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget v2, v2, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_DeleteCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v1, v0

    .line 1377
    :goto_d9
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_TaskList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_13f

    .line 1379
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_TaskList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;

    .line 1381
    invoke-virtual {v0}, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->getCrc()J

    move-result-wide v2

    .line 1382
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskMaptable:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;

    iget-object v4, v4, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    iget v5, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->curIndex:I

    aget-object v4, v4, v5

    iget v5, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->_id:I

    invoke-virtual {v4, v5}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->getItemFromLuid(I)Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;

    move-result-object v4

    .line 1384
    if-eqz v4, :cond_125

    .line 1386
    iget-wide v4, v4, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->crc:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_121

    .line 1388
    const/4 v4, 0x2

    iput v4, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->state:I

    .line 1389
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskNewMapLuid2Crc:Ljava/util/Hashtable;

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget v2, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_ReplaceCounts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_ReplaceCounts:I

    .line 1377
    :cond_121
    :goto_121
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d9

    .line 1396
    :cond_125
    iput v8, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->state:I

    .line 1397
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->_taskNewMapLuid2Crc:Ljava/util/Hashtable;

    iget v0, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget v2, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_AddCounts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_AddCounts:I

    goto :goto_121

    .line 1402
    :cond_13f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_AddCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Replace count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->TaskItem:Lcom/syncmldstmo/base/vitem/smlTaskItem;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlTaskItem;->m_ReplaceCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_76
.end method
