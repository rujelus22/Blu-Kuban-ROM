.class public Lcom/android/calendarcommon/RecurrenceSet;
.super Ljava/lang/Object;
.source "RecurrenceSet.java"


# static fields
.field private static final FOLD_RE:Ljava/util/regex/Pattern;

.field private static final IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;


# instance fields
.field public exdates:[J

.field public exrules:[Lcom/android/calendarcommon/EventRecurrence;

.field public rdates:[J

.field public rrules:[Lcom/android/calendarcommon/EventRecurrence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 401
    const-string v0, "(?:\\r\\n?|\\n)[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendarcommon/RecurrenceSet;->IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

    .line 404
    const-string v0, ".{75}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendarcommon/RecurrenceSet;->FOLD_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .registers 7
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v4, p0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    .line 43
    iput-object v4, p0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    .line 44
    iput-object v4, p0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    .line 45
    iput-object v4, p0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    .line 54
    const-string v4, "rrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, rruleStr:Ljava/lang/String;
    const-string v4, "rdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, rdateStr:Ljava/lang/String;
    const-string v4, "exrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, exruleStr:Ljava/lang/String;
    const-string v4, "exdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, exdateStr:Ljava/lang/String;
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/calendarcommon/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "rruleStr"
    .parameter "rdateStr"
    .parameter "exruleStr"
    .parameter "exdateStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    .line 43
    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    .line 44
    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    .line 45
    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendarcommon/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "rruleStr"
    .parameter "rdateStr"
    .parameter "exruleStr"
    .parameter "exdateStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 94
    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 95
    const-string v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, rruleStrs:[Ljava/lang/String;
    array-length v5, v4

    new-array v5, v5, [Lcom/android/calendarcommon/EventRecurrence;

    iput-object v5, p0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    .line 97
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1e
    array-length v5, v4

    if-ge v2, v5, :cond_32

    .line 98
    new-instance v3, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v3}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 99
    .local v3, rrule:Lcom/android/calendarcommon/EventRecurrence;
    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 100
    iget-object v5, p0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    aput-object v3, v5, v2

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 104
    .end local v2           #i:I
    .end local v3           #rrule:Lcom/android/calendarcommon/EventRecurrence;
    .end local v4           #rruleStrs:[Ljava/lang/String;
    :cond_32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 105
    invoke-static {p2}, Lcom/android/calendarcommon/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    .line 108
    :cond_3e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    .line 109
    const-string v5, "\n"

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, exruleStrs:[Ljava/lang/String;
    array-length v5, v1

    new-array v5, v5, [Lcom/android/calendarcommon/EventRecurrence;

    iput-object v5, p0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    .line 111
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_50
    array-length v5, v1

    if-ge v2, v5, :cond_62

    .line 112
    new-instance v0, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v0}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 113
    .local v0, exrule:Lcom/android/calendarcommon/EventRecurrence;
    invoke-virtual {v0, p3}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 114
    iget-object v5, p0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    aput-object v0, v5, v2

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 118
    .end local v0           #exrule:Lcom/android/calendarcommon/EventRecurrence;
    .end local v1           #exruleStrs:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_62
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 119
    invoke-static {p4}, Lcom/android/calendarcommon/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    .line 122
    :cond_6e
    return-void
.end method

.method public static parseRecurrenceDates(Ljava/lang/String;)[J
    .registers 12
    .parameter "recurrence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 142
    const-string v6, "UTC"

    .line 143
    .local v6, tz:Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 144
    .local v7, tzidx:I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_16

    .line 145
    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 146
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 148
    :cond_16
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 149
    .local v5, time:Landroid/text/format/Time;
    const-string v8, ","

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, rawDates:[Ljava/lang/String;
    array-length v3, v4

    .line 151
    .local v3, n:I
    new-array v0, v3, [J

    .line 152
    .local v0, dates:[J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_25
    if-ge v2, v3, :cond_5d

    .line 155
    :try_start_27
    aget-object v8, v4, v2

    invoke-virtual {v5, v8}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_2c
    .catch Landroid/util/TimeFormatException; {:try_start_27 .. :try_end_2c} :catch_37

    .line 162
    invoke-virtual {v5, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    aput-wide v8, v0, v2

    .line 163
    iput-object v6, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 156
    :catch_37
    move-exception v1

    .line 157
    .local v1, e:Landroid/util/TimeFormatException;
    new-instance v8, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TimeFormatException thrown when parsing time "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in recurrence "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 165
    .end local v1           #e:Landroid/util/TimeFormatException;
    :cond_5d
    return-object v0
.end method


# virtual methods
.method public hasRecurrence()Z
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
