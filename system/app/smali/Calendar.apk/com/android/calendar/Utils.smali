.class public Lcom/android/calendar/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/Utils$1;,
        Lcom/android/calendar/Utils$DNASegment;,
        Lcom/android/calendar/Utils$DNAStrand;
    }
.end annotation


# static fields
.field static CONFLICT_COLOR:I

.field static WORK_DAY_END_LENGTH:I

.field static WORK_DAY_END_MINUTES:I

.field static WORK_DAY_MINUTES:I

.field static WORK_DAY_START_MINUTES:I

.field private static mAllowWeekForDetailView:Z

.field static mMinutesLoaded:Z

.field private static final mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

.field private static mTardis:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 91
    const/16 v0, 0x348

    sput v0, Lcom/android/calendar/Utils;->WORK_DAY_MINUTES:I

    .line 92
    const/16 v0, 0x168

    sput v0, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    .line 93
    const/16 v0, 0x4b0

    sput v0, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    .line 94
    sget v0, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    rsub-int v0, v0, 0x5a0

    sput v0, Lcom/android/calendar/Utils;->WORK_DAY_END_LENGTH:I

    .line 95
    const/high16 v0, -0x100

    sput v0, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    .line 96
    sput-boolean v2, Lcom/android/calendar/Utils;->mMinutesLoaded:Z

    .line 106
    new-instance v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    const-string v1, "com.android.calendar_preferences"

    invoke-direct {v0, v1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    .line 107
    sput-boolean v2, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    .line 108
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/calendar/Utils;->mTardis:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    return-void
.end method

.method private static addAllDayToStrands(Lcom/android/calendar/Event;Ljava/util/HashMap;II)V
    .registers 9
    .parameter "event"
    .parameter
    .parameter "firstJulianDay"
    .parameter "numDays"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/Event;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 880
    .local p1, strands:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    sget v3, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    invoke-static {p1, v3}, Lcom/android/calendar/Utils;->getOrCreateStrand(Ljava/util/HashMap;I)Lcom/android/calendar/Utils$DNAStrand;

    move-result-object v2

    .line 882
    .local v2, strand:Lcom/android/calendar/Utils$DNAStrand;
    iget-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    if-nez v3, :cond_e

    .line 883
    new-array v3, p3, [I

    iput-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    .line 887
    :cond_e
    iget v3, p0, Lcom/android/calendar/Event;->endDay:I

    sub-int/2addr v3, p2

    add-int/lit8 v4, p3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 888
    .local v0, end:I
    iget v3, p0, Lcom/android/calendar/Event;->startDay:I

    sub-int/2addr v3, p2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, i:I
    :goto_1f
    if-gt v1, v0, :cond_37

    .line 889
    iget-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    aget v3, v3, v1

    if-eqz v3, :cond_30

    .line 891
    iget-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    sget v4, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    aput v4, v3, v1

    .line 888
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 894
    :cond_30
    iget-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    iget v4, p0, Lcom/android/calendar/Event;->color:I

    aput v4, v3, v1

    goto :goto_2d

    .line 897
    :cond_37
    return-void
.end method

.method private static addNewSegment(Ljava/util/LinkedList;Lcom/android/calendar/Event;Ljava/util/HashMap;III)V
    .registers 17
    .parameter
    .parameter "event"
    .parameter
    .parameter "firstJulianDay"
    .parameter "minStart"
    .parameter "minMinutes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/calendar/Utils$DNASegment;",
            ">;",
            "Lcom/android/calendar/Event;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 967
    .local p0, segments:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/Utils$DNASegment;>;"
    .local p2, strands:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    iget v2, p1, Lcom/android/calendar/Event;->endDay:I

    if-le v0, v2, :cond_22

    .line 968
    const-string v0, "CalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event starts after it ends: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_22
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    iget v2, p1, Lcom/android/calendar/Event;->endDay:I

    if-eq v0, v2, :cond_64

    .line 972
    new-instance v1, Lcom/android/calendar/Event;

    invoke-direct {v1}, Lcom/android/calendar/Event;-><init>()V

    .line 973
    .local v1, lhs:Lcom/android/calendar/Event;
    iget v0, p1, Lcom/android/calendar/Event;->color:I

    iput v0, v1, Lcom/android/calendar/Event;->color:I

    .line 974
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    iput v0, v1, Lcom/android/calendar/Event;->startDay:I

    .line 976
    iget v0, p1, Lcom/android/calendar/Event;->startTime:I

    iput v0, v1, Lcom/android/calendar/Event;->startTime:I

    .line 977
    iget v0, v1, Lcom/android/calendar/Event;->startDay:I

    iput v0, v1, Lcom/android/calendar/Event;->endDay:I

    .line 978
    const/16 v0, 0x59f

    iput v0, v1, Lcom/android/calendar/Event;->endTime:I

    .line 980
    :goto_41
    iget v0, v1, Lcom/android/calendar/Event;->startDay:I

    iget v2, p1, Lcom/android/calendar/Event;->endDay:I

    if-eq v0, v2, :cond_5f

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    .line 981
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->addNewSegment(Ljava/util/LinkedList;Lcom/android/calendar/Event;Ljava/util/HashMap;III)V

    .line 984
    iget v0, v1, Lcom/android/calendar/Event;->startDay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/android/calendar/Event;->startDay:I

    .line 985
    iget v0, v1, Lcom/android/calendar/Event;->startDay:I

    iput v0, v1, Lcom/android/calendar/Event;->endDay:I

    .line 986
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/calendar/Event;->startTime:I

    .line 987
    const/4 p4, 0x0

    goto :goto_41

    .line 990
    :cond_5f
    iget v0, p1, Lcom/android/calendar/Event;->endTime:I

    iput v0, v1, Lcom/android/calendar/Event;->endTime:I

    .line 991
    move-object p1, v1

    .line 994
    .end local v1           #lhs:Lcom/android/calendar/Event;
    :cond_64
    new-instance v9, Lcom/android/calendar/Utils$DNASegment;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/android/calendar/Utils$DNASegment;-><init>(Lcom/android/calendar/Utils$1;)V

    .line 995
    .local v9, segment:Lcom/android/calendar/Utils$DNASegment;
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    sub-int/2addr v0, p3

    mul-int/lit16 v6, v0, 0x5a0

    .line 996
    .local v6, dayOffset:I
    add-int/lit16 v0, v6, 0x5a0

    add-int/lit8 v7, v0, -0x1

    .line 998
    .local v7, endOfDay:I
    iget v0, p1, Lcom/android/calendar/Event;->startTime:I

    add-int/2addr v0, v6

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v9, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 1001
    iget v0, v9, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    add-int v0, v0, p5

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1002
    .local v8, minEnd:I
    iget v0, p1, Lcom/android/calendar/Event;->endTime:I

    add-int/2addr v0, v6

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v9, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 1003
    iget v0, v9, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    if-le v0, v7, :cond_93

    .line 1004
    iput v7, v9, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 1007
    :cond_93
    iget v0, p1, Lcom/android/calendar/Event;->color:I

    iput v0, v9, Lcom/android/calendar/Utils$DNASegment;->color:I

    .line 1008
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    iput v0, v9, Lcom/android/calendar/Utils$DNASegment;->day:I

    .line 1009
    invoke-virtual {p0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1012
    iget v0, v9, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {p2, v0}, Lcom/android/calendar/Utils;->getOrCreateStrand(Ljava/util/HashMap;I)Lcom/android/calendar/Utils$DNAStrand;

    move-result-object v10

    .line 1013
    .local v10, strand:Lcom/android/calendar/Utils$DNAStrand;
    iget v0, v10, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v10, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 1014
    return-void
.end method

.method public static checkForDuplicateNames(Ljava/util/Map;Landroid/database/Cursor;I)V
    .registers 5
    .parameter
    .parameter "cursor"
    .parameter "nameIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/database/Cursor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, isDuplicateName:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 559
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 560
    :cond_7
    :goto_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 561
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, displayName:Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 564
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 567
    .end local v0           #displayName:Ljava/lang/String;
    :cond_1f
    return-void
.end method

.method public static compareCursors(Landroid/database/Cursor;Landroid/database/Cursor;)Z
    .registers 8
    .parameter "c1"
    .parameter "c2"

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 300
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 323
    :cond_6
    :goto_6
    return v2

    .line 304
    :cond_7
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 305
    .local v1, numColumns:I
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ne v1, v3, :cond_6

    .line 309
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 313
    invoke-interface {p0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 314
    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 315
    :cond_21
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 316
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2e
    if-ge v0, v1, :cond_21

    .line 317
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 323
    .end local v0           #i:I
    :cond_41
    const/4 v2, 0x1

    goto :goto_6
.end method

.method public static convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J
    .registers 6
    .parameter "recycle"
    .parameter "localTime"
    .parameter "tz"

    .prologue
    .line 518
    if-nez p0, :cond_7

    .line 519
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 521
    .restart local p0
    :cond_7
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 522
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 523
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 524
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J
    .registers 6
    .parameter "recycle"
    .parameter "utcTime"
    .parameter "tz"

    .prologue
    .line 508
    if-nez p0, :cond_7

    .line 509
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 511
    .restart local p0
    :cond_7
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 512
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 513
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 514
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static createDNAStrands(ILjava/util/ArrayList;III[ILandroid/content/Context;)Ljava/util/HashMap;
    .registers 35
    .parameter "firstJulianDay"
    .parameter
    .parameter "top"
    .parameter "bottom"
    .parameter "minPixels"
    .parameter "dayXs"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;III[I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 664
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    sget-boolean v5, Lcom/android/calendar/Utils;->mMinutesLoaded:Z

    if-nez v5, :cond_42

    .line 665
    if-nez p6, :cond_d

    .line 666
    const-string v5, "CalUtils"

    const-string v6, "No context and haven\'t loaded parameters yet! Can\'t create DNA."

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_d
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 669
    .local v25, res:Landroid/content/res/Resources;
    const v5, 0x7f080029

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sput v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    .line 670
    const v5, 0x7f0b0007

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    .line 671
    const v5, 0x7f0b0008

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    .line 672
    sget v5, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    rsub-int v5, v5, 0x5a0

    sput v5, Lcom/android/calendar/Utils;->WORK_DAY_END_LENGTH:I

    .line 673
    sget v5, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    sub-int/2addr v5, v6

    sput v5, Lcom/android/calendar/Utils;->WORK_DAY_MINUTES:I

    .line 674
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/calendar/Utils;->mMinutesLoaded:Z

    .line 677
    .end local v25           #res:Landroid/content/res/Resources;
    :cond_42
    if-eqz p1, :cond_5a

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5a

    if-eqz p5, :cond_5a

    move-object/from16 v0, p5

    array-length v5, v0

    const/4 v6, 0x1

    if-lt v5, v6, :cond_5a

    sub-int v5, p3, p2

    const/16 v6, 0x8

    if-lt v5, v6, :cond_5a

    if-gez p4, :cond_9c

    .line 679
    :cond_5a
    const-string v5, "CalUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad values for createDNAStrands! events:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " dayXs:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " bot-top:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v8, p3, p2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " minPixels:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v4, 0x0

    .line 874
    :goto_9b
    return-object v4

    .line 686
    :cond_9c
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 687
    .local v2, segments:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/Utils$DNASegment;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 690
    .local v4, strands:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    new-instance v14, Lcom/android/calendar/Utils$DNAStrand;

    invoke-direct {v14}, Lcom/android/calendar/Utils$DNAStrand;-><init>()V

    .line 691
    .local v14, blackStrand:Lcom/android/calendar/Utils$DNAStrand;
    sget v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    iput v5, v14, Lcom/android/calendar/Utils$DNAStrand;->color:I

    .line 692
    sget v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    mul-int/lit8 v5, p4, 0x4

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_MINUTES:I

    mul-int/2addr v5, v6

    sub-int v6, p3, p2

    mul-int/lit8 v6, v6, 0x3

    div-int v7, v5, v6

    .line 701
    .local v7, minMinutes:I
    mul-int/lit8 v5, v7, 0x5

    div-int/lit8 v24, v5, 0x2

    .line 702
    .local v24, minOtherMinutes:I
    move-object/from16 v0, p5

    array-length v5, v0

    add-int v5, v5, p0

    add-int/lit8 v21, v5, -0x1

    .line 704
    .local v21, lastJulianDay:I
    new-instance v3, Lcom/android/calendar/Event;

    invoke-direct {v3}, Lcom/android/calendar/Event;-><init>()V

    .line 706
    .local v3, event:Lcom/android/calendar/Event;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_d7
    :goto_d7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/calendar/Event;

    .line 708
    .local v15, currEvent:Lcom/android/calendar/Event;
    iget v5, v15, Lcom/android/calendar/Event;->endDay:I

    move/from16 v0, p0

    if-lt v5, v0, :cond_d7

    iget v5, v15, Lcom/android/calendar/Event;->startDay:I

    move/from16 v0, v21

    if-gt v5, v0, :cond_d7

    .line 711
    invoke-virtual {v15}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v5

    if-eqz v5, :cond_fe

    .line 712
    move-object/from16 v0, p5

    array-length v5, v0

    move/from16 v0, p0

    invoke-static {v15, v4, v0, v5}, Lcom/android/calendar/Utils;->addAllDayToStrands(Lcom/android/calendar/Event;Ljava/util/HashMap;II)V

    goto :goto_d7

    .line 716
    :cond_fe
    invoke-virtual {v15, v3}, Lcom/android/calendar/Event;->copyTo(Lcom/android/calendar/Event;)V

    .line 717
    iget v5, v3, Lcom/android/calendar/Event;->startDay:I

    move/from16 v0, p0

    if-ge v5, v0, :cond_10e

    .line 718
    move/from16 v0, p0

    iput v0, v3, Lcom/android/calendar/Event;->startDay:I

    .line 719
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/calendar/Event;->startTime:I

    .line 723
    :cond_10e
    iget v5, v3, Lcom/android/calendar/Event;->startTime:I

    move/from16 v0, v24

    rsub-int v6, v0, 0x5a0

    if-le v5, v6, :cond_11c

    .line 724
    move/from16 v0, v24

    rsub-int v5, v0, 0x5a0

    iput v5, v3, Lcom/android/calendar/Event;->startTime:I

    .line 726
    :cond_11c
    iget v5, v3, Lcom/android/calendar/Event;->endDay:I

    move/from16 v0, v21

    if-le v5, v0, :cond_12a

    .line 727
    move/from16 v0, v21

    iput v0, v3, Lcom/android/calendar/Event;->endDay:I

    .line 728
    const/16 v5, 0x59f

    iput v5, v3, Lcom/android/calendar/Event;->endTime:I

    .line 732
    :cond_12a
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    move/from16 v0, v24

    if-ge v5, v0, :cond_134

    .line 733
    move/from16 v0, v24

    iput v0, v3, Lcom/android/calendar/Event;->endTime:I

    .line 739
    :cond_134
    iget v5, v3, Lcom/android/calendar/Event;->startDay:I

    iget v6, v3, Lcom/android/calendar/Event;->endDay:I

    if-ne v5, v6, :cond_156

    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    iget v6, v3, Lcom/android/calendar/Event;->startTime:I

    sub-int/2addr v5, v6

    move/from16 v0, v24

    if-ge v5, v0, :cond_156

    .line 743
    iget v5, v3, Lcom/android/calendar/Event;->startTime:I

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    if-ge v5, v6, :cond_164

    .line 746
    iget v5, v3, Lcom/android/calendar/Event;->startTime:I

    add-int v5, v5, v24

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v3, Lcom/android/calendar/Event;->endTime:I

    .line 760
    :cond_156
    :goto_156
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_186

    .line 761
    const/4 v6, 0x0

    move/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/Utils;->addNewSegment(Ljava/util/LinkedList;Lcom/android/calendar/Event;Ljava/util/HashMap;III)V

    goto/16 :goto_d7

    .line 749
    :cond_164
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    if-le v5, v6, :cond_156

    .line 751
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    add-int v5, v5, v24

    const/16 v6, 0x59f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v3, Lcom/android/calendar/Event;->endTime:I

    .line 753
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    iget v6, v3, Lcom/android/calendar/Event;->startTime:I

    sub-int/2addr v5, v6

    move/from16 v0, v24

    if-ge v5, v0, :cond_156

    .line 754
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    sub-int v5, v5, v24

    iput v5, v3, Lcom/android/calendar/Event;->startTime:I

    goto :goto_156

    .line 766
    :cond_186
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/calendar/Utils$DNASegment;

    .line 767
    .local v22, lastSegment:Lcom/android/calendar/Utils$DNASegment;
    iget v5, v3, Lcom/android/calendar/Event;->startDay:I

    sub-int v5, v5, p0

    mul-int/lit16 v5, v5, 0x5a0

    iget v6, v3, Lcom/android/calendar/Event;->startTime:I

    add-int v27, v5, v6

    .line 768
    .local v27, startMinute:I
    iget v5, v3, Lcom/android/calendar/Event;->endDay:I

    sub-int v5, v5, p0

    mul-int/lit16 v5, v5, 0x5a0

    iget v6, v3, Lcom/android/calendar/Event;->endTime:I

    add-int/2addr v5, v6

    add-int v6, v27, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 771
    .local v17, endMinute:I
    if-gez v27, :cond_1a9

    .line 772
    const/16 v27, 0x0

    .line 774
    :cond_1a9
    const/16 v5, 0x2760

    move/from16 v0, v17

    if-lt v0, v5, :cond_1b1

    .line 775
    const/16 v17, 0x275f

    .line 780
    :cond_1b1
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move/from16 v0, v27

    if-ge v0, v5, :cond_37a

    .line 781
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v18

    .line 783
    .local v18, i:I
    :cond_1bd
    add-int/lit8 v18, v18, -0x1

    if-ltz v18, :cond_1cf

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNASegment;

    iget v5, v5, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    move/from16 v0, v17

    if-lt v0, v5, :cond_1bd

    :cond_1cf
    move/from16 v19, v18

    .line 787
    .end local v18           #i:I
    .local v19, i:I
    :goto_1d1
    if-ltz v19, :cond_37a

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/calendar/Utils$DNASegment;

    .local v16, currSegment:Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move/from16 v0, v27

    if-gt v0, v5, :cond_37a

    .line 789
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    sget v6, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    if-ne v5, v6, :cond_1f2

    move/from16 v18, v19

    .line 787
    .end local v19           #i:I
    .restart local v18       #i:I
    :cond_1ed
    :goto_1ed
    add-int/lit8 v18, v18, -0x1

    move/from16 v19, v18

    .end local v18           #i:I
    .restart local v19       #i:I
    goto :goto_1d1

    .line 794
    :cond_1f2
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    sub-int/2addr v5, v7

    move/from16 v0, v17

    if-ge v0, v5, :cond_242

    .line 795
    new-instance v26, Lcom/android/calendar/Utils$DNASegment;

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lcom/android/calendar/Utils$DNASegment;-><init>(Lcom/android/calendar/Utils$1;)V

    .line 796
    .local v26, rhs:Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 797
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    .line 798
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 799
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    .line 800
    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 801
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v2, v5, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 802
    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 810
    .end local v26           #rhs:Lcom/android/calendar/Utils$DNASegment;
    :cond_242
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    add-int/2addr v5, v7

    move/from16 v0, v27

    if-le v0, v5, :cond_39c

    .line 811
    new-instance v23, Lcom/android/calendar/Utils$DNASegment;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lcom/android/calendar/Utils$DNASegment;-><init>(Lcom/android/calendar/Utils$1;)V

    .line 812
    .local v23, lhs:Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 813
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    .line 814
    add-int/lit8 v5, v27, -0x1

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 815
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    .line 816
    move/from16 v0, v27

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 820
    add-int/lit8 v18, v19, 0x1

    .end local v19           #i:I
    .restart local v18       #i:I
    move/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 821
    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 829
    .end local v23           #lhs:Lcom/android/calendar/Utils$DNASegment;
    :goto_294
    add-int/lit8 v5, v18, 0x1

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2ed

    .line 830
    add-int/lit8 v5, v18, 0x1

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/calendar/Utils$DNASegment;

    .line 831
    .restart local v26       #rhs:Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    sget v6, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    if-ne v5, v6, :cond_2ed

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    move-object/from16 v0, v26

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    if-ne v5, v6, :cond_2ed

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    add-int/lit8 v6, v6, 0x1

    if-gt v5, v6, :cond_2ed

    .line 833
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    move-object/from16 v0, v26

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 834
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 835
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 837
    move-object/from16 v16, v26

    .line 842
    .end local v26           #rhs:Lcom/android/calendar/Utils$DNASegment;
    :cond_2ed
    add-int/lit8 v5, v18, -0x1

    if-ltz v5, :cond_344

    .line 843
    add-int/lit8 v5, v18, -0x1

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/calendar/Utils$DNASegment;

    .line 844
    .restart local v23       #lhs:Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    sget v6, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    if-ne v5, v6, :cond_344

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    if-ne v5, v6, :cond_344

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_344

    .line 846
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 847
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 848
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 850
    move-object/from16 v16, v23

    .line 853
    add-int/lit8 v18, v18, -0x1

    .line 859
    .end local v23           #lhs:Lcom/android/calendar/Utils$DNASegment;
    :cond_344
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    sget v6, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    if-eq v5, v6, :cond_1ed

    .line 860
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 861
    sget v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    move-object/from16 v0, v16

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    .line 862
    sget v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    goto/16 :goto_1ed

    .line 868
    .end local v16           #currSegment:Lcom/android/calendar/Utils$DNASegment;
    .end local v18           #i:I
    :cond_37a
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move/from16 v0, v17

    if-le v0, v5, :cond_d7

    .line 869
    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/Utils;->addNewSegment(Ljava/util/LinkedList;Lcom/android/calendar/Event;Ljava/util/HashMap;III)V

    goto/16 :goto_d7

    .end local v15           #currEvent:Lcom/android/calendar/Event;
    .end local v17           #endMinute:I
    .end local v22           #lastSegment:Lcom/android/calendar/Utils$DNASegment;
    .end local v27           #startMinute:I
    :cond_38d
    move-object v8, v2

    move/from16 v9, p0

    move-object v10, v4

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p5

    .line 873
    invoke-static/range {v8 .. v13}, Lcom/android/calendar/Utils;->weaveDNAStrands(Ljava/util/LinkedList;ILjava/util/HashMap;II[I)V

    goto/16 :goto_9b

    .restart local v15       #currEvent:Lcom/android/calendar/Event;
    .restart local v16       #currSegment:Lcom/android/calendar/Utils$DNASegment;
    .restart local v17       #endMinute:I
    .restart local v19       #i:I
    .restart local v22       #lastSegment:Lcom/android/calendar/Utils$DNASegment;
    .restart local v27       #startMinute:I
    :cond_39c
    move/from16 v18, v19

    .end local v19           #i:I
    .restart local v18       #i:I
    goto/16 :goto_294
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 577
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 199
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMonthYear(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;
    .registers 8
    .parameter "context"
    .parameter "time"

    .prologue
    .line 360
    const/16 v5, 0x34

    .line 362
    .local v5, flags:I
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .local v1, millis:J
    move-object v0, p0

    move-wide v3, v1

    .line 363
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllowWeekForDetailView()Z
    .registers 1

    .prologue
    .line 585
    sget-boolean v0, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    return v0
.end method

.method public static getConfigBool(Landroid/content/Context;I)Z
    .registers 3
    .parameter "c"
    .parameter "key"

    .prologue
    .line 589
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static getDayOfWeekString(IIJLandroid/content/Context;)Ljava/lang/String;
    .registers 16
    .parameter "julianDay"
    .parameter "todayJulianDay"
    .parameter "millis"
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 1095
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    .line 1096
    const/4 v6, 0x2

    .line 1098
    .local v6, flags:I
    if-ne p0, p1, :cond_26

    .line 1099
    const v8, 0x7f0c0042

    new-array v9, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p4

    move-wide v2, p2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {p4, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1110
    .local v7, dayViewText:Ljava/lang/String;
    :goto_21
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 1111
    return-object v7

    .line 1101
    .end local v7           #dayViewText:Ljava/lang/String;
    :cond_26
    add-int/lit8 v0, p1, -0x1

    if-ne p0, v0, :cond_43

    .line 1102
    const v8, 0x7f0c0043

    new-array v9, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p4

    move-wide v2, p2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {p4, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #dayViewText:Ljava/lang/String;
    goto :goto_21

    .line 1104
    .end local v7           #dayViewText:Ljava/lang/String;
    :cond_43
    add-int/lit8 v0, p1, 0x1

    if-ne p0, v0, :cond_60

    .line 1105
    const v8, 0x7f0c0044

    new-array v9, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p4

    move-wide v2, p2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {p4, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #dayViewText:Ljava/lang/String;
    goto :goto_21

    .line 1108
    .end local v7           #dayViewText:Ljava/lang/String;
    :cond_60
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p4

    move-wide v2, p2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #dayViewText:Ljava/lang/String;
    goto :goto_21
.end method

.method public static getDaysPerWeek(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 469
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 470
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_days_per_week"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getDeclinedColorFromColor(I)I
    .registers 11
    .parameter "color"

    .prologue
    const/high16 v9, 0xff

    const v8, 0xff00

    const/high16 v7, -0x100

    .line 602
    const/4 v2, -0x1

    .line 603
    .local v2, bg:I
    const/16 v0, 0x66

    .line 604
    .local v0, a:I
    and-int v5, p0, v9

    mul-int/2addr v5, v0

    const/high16 v6, -0x6799

    add-int/2addr v5, v6

    and-int v4, v5, v7

    .line 605
    .local v4, r:I
    and-int v5, p0, v8

    mul-int/2addr v5, v0

    const v6, 0x986700

    add-int/2addr v5, v6

    and-int v3, v5, v9

    .line 606
    .local v3, g:I
    and-int/lit16 v5, p0, 0xff

    mul-int/2addr v5, v0

    const v6, 0x9867

    add-int/2addr v5, v6

    and-int v1, v5, v8

    .line 607
    .local v1, b:I
    or-int v5, v4, v3

    or-int/2addr v5, v1

    shr-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v7

    return v5
.end method

.method public static getDisplayColorFromColor(I)I
    .registers 5
    .parameter "color"

    .prologue
    const/4 v3, 0x1

    .line 593
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 594
    .local v0, hsv:[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 595
    aget v1, v0, v3

    const v2, 0x3e99999a

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, v3

    .line 596
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public static getFirstDayOfWeek(Landroid/content/Context;)I
    .registers 6
    .parameter "context"

    .prologue
    .line 431
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 432
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_week_start_day"

    const-string v4, "-1"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, pref:Ljava/lang/String;
    const-string v3, "-1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 437
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    .line 442
    .local v2, startDay:I
    :goto_1c
    const/4 v3, 0x7

    if-ne v2, v3, :cond_26

    .line 443
    const/4 v3, 0x6

    .line 447
    :goto_20
    return v3

    .line 439
    .end local v2           #startDay:I
    :cond_21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2       #startDay:I
    goto :goto_1c

    .line 444
    :cond_26
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    .line 445
    const/4 v3, 0x1

    goto :goto_20

    .line 447
    :cond_2b
    const/4 v3, 0x0

    goto :goto_20
.end method

.method public static getHideDeclinedEvents(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 464
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 465
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_hide_declined"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getJulianMondayFromWeeksSinceEpoch(I)I
    .registers 3
    .parameter "week"

    .prologue
    .line 422
    const v0, 0x253d89

    mul-int/lit8 v1, p0, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public static getNextMidnight(Landroid/text/format/Time;JLjava/lang/String;)J
    .registers 6
    .parameter "recycle"
    .parameter "theTime"
    .parameter "tz"

    .prologue
    const/4 v1, 0x0

    .line 535
    if-nez p0, :cond_8

    .line 536
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 538
    .restart local p0
    :cond_8
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 539
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 540
    iget v0, p0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 541
    iput v1, p0, Landroid/text/format/Time;->hour:I

    .line 542
    iput v1, p0, Landroid/text/format/Time;->minute:I

    .line 543
    iput v1, p0, Landroid/text/format/Time;->second:I

    .line 544
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getOrCreateStrand(Ljava/util/HashMap;I)Lcom/android/calendar/Utils$DNAStrand;
    .registers 4
    .parameter
    .parameter "color"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;I)",
            "Lcom/android/calendar/Utils$DNAStrand;"
        }
    .end annotation

    .prologue
    .line 1020
    .local p0, strands:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Utils$DNAStrand;

    .line 1021
    .local v0, strand:Lcom/android/calendar/Utils$DNAStrand;
    if-nez v0, :cond_1f

    .line 1022
    new-instance v0, Lcom/android/calendar/Utils$DNAStrand;

    .end local v0           #strand:Lcom/android/calendar/Utils$DNAStrand;
    invoke-direct {v0}, Lcom/android/calendar/Utils$DNAStrand;-><init>()V

    .line 1023
    .restart local v0       #strand:Lcom/android/calendar/Utils$DNAStrand;
    iput p1, v0, Lcom/android/calendar/Utils$DNAStrand;->color:I

    .line 1024
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 1025
    iget v1, v0, Lcom/android/calendar/Utils$DNAStrand;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    :cond_1f
    return-object v0
.end method

.method private static getPixelOffsetFromMinutes(III)I
    .registers 7
    .parameter "minute"
    .parameter "workDayHeight"
    .parameter "remainderHeight"

    .prologue
    .line 949
    sget v1, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    if-ge p0, v1, :cond_b

    .line 950
    mul-int v1, p0, p2

    sget v2, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    div-int v0, v1, v2

    .line 958
    .local v0, y:I
    :goto_a
    return v0

    .line 951
    .end local v0           #y:I
    :cond_b
    sget v1, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    if-ge p0, v1, :cond_1a

    .line 952
    sget v1, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    sub-int v1, p0, v1

    mul-int/2addr v1, p1

    sget v2, Lcom/android/calendar/Utils;->WORK_DAY_MINUTES:I

    div-int/2addr v1, v2

    add-int v0, p2, v1

    .restart local v0       #y:I
    goto :goto_a

    .line 955
    .end local v0           #y:I
    :cond_1a
    add-int v1, p2, p1

    sget v2, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    sub-int v2, p0, v2

    mul-int/2addr v2, p2

    sget v3, Lcom/android/calendar/Utils;->WORK_DAY_END_LENGTH:I

    div-int/2addr v2, v3

    add-int v0, v1, v2

    .restart local v0       #y:I
    goto :goto_a
.end method

.method public static getSearchAuthority(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".CalendarRecentSuggestionsProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 208
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 203
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 5
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 213
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 214
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getShowWeekNumber(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 455
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 456
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_show_week_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected static getTardis()J
    .registers 2

    .prologue
    .line 234
    sget-wide v0, Lcom/android/calendar/Utils;->mTardis:J

    return-wide v0
.end method

.method public static getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .registers 3
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 184
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getViewTypeFromIntentAndSharedPref(Landroid/app/Activity;)I
    .registers 7
    .parameter "activity"

    .prologue
    const/4 v3, 0x2

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 112
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 113
    .local v0, extras:Landroid/os/Bundle;
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 115
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.EDIT"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 116
    const/4 v3, 0x5

    .line 130
    :cond_1a
    :goto_1a
    return v3

    .line 118
    :cond_1b
    if-eqz v0, :cond_3b

    .line 119
    const-string v4, "DETAIL_VIEW"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 121
    const-string v4, "preferred_detailedView"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1a

    .line 123
    :cond_2d
    const-string v4, "DAY"

    const-string v5, "VIEW"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 130
    :cond_3b
    const-string v3, "preferred_startView"

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1a
.end method

.method public static getWeekNumberFromTime(JLandroid/content/Context;)I
    .registers 8
    .parameter "millisSinceEpoch"
    .parameter "context"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 1064
    new-instance v1, Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1065
    .local v1, weekTime:Landroid/text/format/Time;
    invoke-virtual {v1, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1066
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1067
    invoke-static {p2}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    .line 1071
    .local v0, firstDayOfWeek:I
    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    if-nez v2, :cond_2c

    if-eqz v0, :cond_1e

    if-ne v0, v4, :cond_2c

    .line 1073
    :cond_1e
    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 1074
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1079
    :cond_27
    :goto_27
    invoke-virtual {v1}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v2

    return v2

    .line 1075
    :cond_2c
    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    if-ne v2, v4, :cond_27

    if-ne v0, v4, :cond_27

    .line 1076
    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 1077
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_27
.end method

.method public static getWeeksSinceEpochFromJulianDay(II)I
    .registers 5
    .parameter "julianDay"
    .parameter "firstDayOfWeek"

    .prologue
    .line 402
    rsub-int/lit8 v0, p1, 0x4

    .line 403
    .local v0, diff:I
    if-gez v0, :cond_6

    .line 404
    add-int/lit8 v0, v0, 0x7

    .line 406
    :cond_6
    const v2, 0x253d8c

    sub-int v1, v2, v0

    .line 407
    .local v1, refDay:I
    sub-int v2, p0, v1

    div-int/lit8 v2, v2, 0x7

    return v2
.end method

.method public static getWidgetScheduledUpdateAction(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".APPWIDGET_SCHEDULED_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetUpdateAction(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isSaturday(II)Z
    .registers 5
    .parameter "column"
    .parameter "firstDayOfWeek"

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x1

    .line 481
    if-nez p1, :cond_6

    if-eq p0, v2, :cond_f

    :cond_6
    if-ne p1, v0, :cond_b

    const/4 v1, 0x5

    if-eq p0, v1, :cond_f

    :cond_b
    if-ne p1, v2, :cond_10

    if-nez p0, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isSunday(II)Z
    .registers 4
    .parameter "column"
    .parameter "firstDayOfWeek"

    .prologue
    const/4 v1, 0x6

    const/4 v0, 0x1

    .line 494
    if-nez p1, :cond_6

    if-eqz p0, :cond_e

    :cond_6
    if-ne p1, v0, :cond_a

    if-eq p0, v1, :cond_e

    :cond_a
    if-ne p1, v1, :cond_f

    if-ne p0, v0, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter "delim"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, things:Ljava/util/List;,"Ljava/util/List<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 377
    .local v1, first:Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 378
    .local v3, thing:Ljava/lang/Object;
    if-eqz v1, :cond_1f

    .line 379
    const/4 v1, 0x0

    .line 383
    :goto_17
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 381
    :cond_1f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 385
    .end local v3           #thing:Ljava/lang/Object;
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .registers 6
    .parameter "cursor"

    .prologue
    .line 280
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 281
    .local v2, newCursor:Landroid/database/MatrixCursor;
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    .line 282
    .local v3, numColumns:I
    new-array v0, v3, [Ljava/lang/String;

    .line 283
    .local v0, data:[Ljava/lang/String;
    const/4 v4, -0x1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 284
    :goto_13
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 285
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    if-ge v1, v3, :cond_25

    .line 286
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 288
    :cond_25
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_13

    .line 290
    .end local v1           #i:I
    :cond_29
    return-object v2
.end method

.method public static returnToCalendarHome(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 1036
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/calendar/AllInOneActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1037
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1038
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1039
    const-string v1, "KEY_HOME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1040
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1041
    return-void
.end method

.method public static setAllowWeekForDetailView(Z)V
    .registers 1
    .parameter "allowWeekView"

    .prologue
    .line 581
    sput-boolean p0, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    .line 582
    return-void
.end method

.method static setDefaultView(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "viewId"

    .prologue
    const/4 v3, 0x1

    .line 258
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 259
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 261
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .line 262
    .local v2, validDetailView:Z
    sget-boolean v4, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    if-eqz v4, :cond_22

    const/4 v4, 0x3

    if-ne p1, v4, :cond_22

    .line 263
    const/4 v2, 0x1

    .line 269
    :goto_12
    if-eqz v2, :cond_19

    .line 271
    const-string v3, "preferred_detailedView"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 275
    :cond_19
    const-string v3, "preferred_startView"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 276
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 277
    return-void

    .line 265
    :cond_22
    if-eq p1, v3, :cond_27

    const/4 v4, 0x2

    if-ne p1, v4, :cond_29

    :cond_27
    move v2, v3

    :goto_28
    goto :goto_12

    :cond_29
    const/4 v2, 0x0

    goto :goto_28
.end method

.method static setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 245
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 246
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 247
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 248
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 249
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 225
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 226
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    return-void
.end method

.method static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 238
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 239
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 240
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 242
    return-void
.end method

.method public static setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "timeZone"

    .prologue
    .line 165
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public static setUpSearchView(Landroid/widget/SearchView;Landroid/app/Activity;)V
    .registers 4
    .parameter "view"
    .parameter "act"

    .prologue
    .line 1051
    const-string v1, "search"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1052
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 1053
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    .line 1054
    return-void
.end method

.method protected static tardis()V
    .registers 2

    .prologue
    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/calendar/Utils;->mTardis:J

    .line 231
    return-void
.end method

.method public static final timeFromIntentInMillis(Landroid/content/Intent;)J
    .registers 9
    .parameter "intent"

    .prologue
    const-wide/16 v6, -0x1

    .line 333
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 334
    .local v0, data:Landroid/net/Uri;
    const-string v5, "beginTime"

    invoke-virtual {p0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 335
    .local v2, millis:J
    cmp-long v5, v2, v6

    if-nez v5, :cond_3e

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 336
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 337
    .local v4, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3e

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "time"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 339
    :try_start_32
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_3d} :catch_49

    move-result-wide v2

    .line 346
    .end local v4           #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3e
    :goto_3e
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_48

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 349
    :cond_48
    return-wide v2

    .line 340
    .restart local v4       #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_49
    move-exception v1

    .line 341
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "Calendar"

    const-string v6, "timeFromIntentInMillis: Data existed but no valid time found. Using current time."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method private static weaveDNAStrands(Ljava/util/LinkedList;ILjava/util/HashMap;II[I)V
    .registers 23
    .parameter
    .parameter "firstJulianDay"
    .parameter
    .parameter "top"
    .parameter "bottom"
    .parameter "dayXs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/calendar/Utils$DNASegment;",
            ">;I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;II[I)V"
        }
    .end annotation

    .prologue
    .line 904
    .local p0, segments:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/Utils$DNASegment;>;"
    .local p2, strands:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 905
    .local v9, strandIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Utils$DNAStrand;>;"
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2d

    .line 906
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/Utils$DNAStrand;

    .line 907
    .local v8, strand:Lcom/android/calendar/Utils$DNAStrand;
    iget v14, v8, Lcom/android/calendar/Utils$DNAStrand;->count:I

    const/4 v15, 0x1

    if-ge v14, v15, :cond_21

    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    if-nez v14, :cond_21

    .line 908
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 911
    :cond_21
    iget v14, v8, Lcom/android/calendar/Utils$DNAStrand;->count:I

    mul-int/lit8 v14, v14, 0x4

    new-array v14, v14, [F

    iput-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    .line 912
    const/4 v14, 0x0

    iput v14, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    goto :goto_8

    .line 915
    .end local v8           #strand:Lcom/android/calendar/Utils$DNAStrand;
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_ae

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/Utils$DNASegment;

    .line 917
    .local v7, segment:Lcom/android/calendar/Utils$DNASegment;
    iget v14, v7, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/Utils$DNAStrand;

    .line 918
    .restart local v8       #strand:Lcom/android/calendar/Utils$DNAStrand;
    iget v14, v7, Lcom/android/calendar/Utils$DNASegment;->day:I

    sub-int v2, v14, p1

    .line 919
    .local v2, dayIndex:I
    iget v14, v7, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    rem-int/lit16 v3, v14, 0x5a0

    .line 920
    .local v3, dayStartMinute:I
    iget v14, v7, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    rem-int/lit16 v1, v14, 0x5a0

    .line 921
    .local v1, dayEndMinute:I
    sub-int v4, p4, p3

    .line 922
    .local v4, height:I
    mul-int/lit8 v14, v4, 0x3

    div-int/lit8 v10, v14, 0x4

    .line 923
    .local v10, workDayHeight:I
    sub-int v14, v4, v10

    div-int/lit8 v6, v14, 0x2

    .line 925
    .local v6, remainderHeight:I
    aget v11, p5, v2

    .line 926
    .local v11, x:I
    const/4 v12, 0x0

    .line 927
    .local v12, y0:I
    const/4 v13, 0x0

    .line 929
    .local v13, y1:I
    invoke-static {v3, v10, v6}, Lcom/android/calendar/Utils;->getPixelOffsetFromMinutes(III)I

    move-result v14

    add-int v12, p3, v14

    .line 930
    invoke-static {v1, v10, v6}, Lcom/android/calendar/Utils;->getPixelOffsetFromMinutes(III)I

    move-result v14

    add-int v13, p3, v14

    .line 935
    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget v15, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    int-to-float v0, v11

    move/from16 v16, v0

    aput v16, v14, v15

    .line 936
    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget v15, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    int-to-float v0, v12

    move/from16 v16, v0

    aput v16, v14, v15

    .line 937
    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget v15, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    int-to-float v0, v11

    move/from16 v16, v0

    aput v16, v14, v15

    .line 938
    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget v15, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    int-to-float v0, v13

    move/from16 v16, v0

    aput v16, v14, v15

    goto :goto_31

    .line 940
    .end local v1           #dayEndMinute:I
    .end local v2           #dayIndex:I
    .end local v3           #dayStartMinute:I
    .end local v4           #height:I
    .end local v6           #remainderHeight:I
    .end local v7           #segment:Lcom/android/calendar/Utils$DNASegment;
    .end local v8           #strand:Lcom/android/calendar/Utils$DNAStrand;
    .end local v10           #workDayHeight:I
    .end local v11           #x:I
    .end local v12           #y0:I
    .end local v13           #y1:I
    :cond_ae
    return-void
.end method
