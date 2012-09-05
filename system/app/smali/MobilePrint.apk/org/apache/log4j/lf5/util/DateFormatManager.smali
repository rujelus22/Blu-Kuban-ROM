.class public Lorg/apache/log4j/lf5/util/DateFormatManager;
.super Ljava/lang/Object;
.source "DateFormatManager.java"


# instance fields
.field private _dateFormat:Ljava/text/DateFormat;

.field private _locale:Ljava/util/Locale;

.field private _pattern:Ljava/lang/String;

.field private _timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 52
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 60
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "pattern"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 52
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 80
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3
    .parameter "locale"

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 52
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 73
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 74
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .registers 4
    .parameter "locale"
    .parameter "pattern"

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 52
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 103
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 104
    iput-object p2, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 105
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .registers 3
    .parameter "timeZone"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 52
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 66
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 67
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/lang/String;)V
    .registers 4
    .parameter "timeZone"
    .parameter "pattern"

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 52
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 95
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 96
    iput-object p2, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 4
    .parameter "timeZone"
    .parameter "locale"

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 52
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 87
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 88
    iput-object p2, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 89
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/String;)V
    .registers 5
    .parameter "timeZone"
    .parameter "locale"
    .parameter "pattern"

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 52
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 111
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 112
    iput-object p2, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 113
    iput-object p3, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    .line 115
    return-void
.end method

.method private declared-synchronized configure()V
    .registers 4

    .prologue
    .line 228
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 231
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 233
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 234
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    check-cast v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    .line 236
    :cond_23
    monitor-exit p0

    return-void

    .line 228
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public format(Ljava/util/Date;)Ljava/lang/String;
    .registers 3
    .parameter "date"

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getDateFormatInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "date"
    .parameter "pattern"

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, formatter:Ljava/text/DateFormat;
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getDateFormatInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 193
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_15

    .line 194
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #formatter:Ljava/text/DateFormat;
    check-cast v0, Ljava/text/SimpleDateFormat;

    .restart local v0       #formatter:Ljava/text/DateFormat;
    move-object v1, v0

    .line 195
    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 197
    :cond_15
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getDateFormatInstance()Ljava/text/DateFormat;
    .registers 2

    .prologue
    .line 178
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    if-nez v0, :cond_b

    .line 136
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_e

    move-result-object v0

    .line 138
    :goto_9
    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_e

    goto :goto_9

    .line 135
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOutputFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .prologue
    .line 122
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    if-nez v0, :cond_b

    .line 123
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_e

    move-result-object v0

    .line 125
    :goto_9
    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_e

    goto :goto_9

    .line 122
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getDateFormatInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .registers 5
    .parameter "date"
    .parameter "pattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, formatter:Ljava/text/DateFormat;
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getDateFormatInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 213
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_15

    .line 214
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #formatter:Ljava/text/DateFormat;
    check-cast v0, Ljava/text/SimpleDateFormat;

    .restart local v0       #formatter:Ljava/text/DateFormat;
    move-object v1, v0

    .line 215
    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 217
    :cond_15
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized setDateFormatInstance(Ljava/text/DateFormat;)V
    .registers 3
    .parameter "dateFormat"

    .prologue
    .line 182
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 184
    monitor-exit p0

    return-void

    .line 182
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocale(Ljava/util/Locale;)V
    .registers 3
    .parameter "locale"

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 144
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 145
    monitor-exit p0

    return-void

    .line 143
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOutputFormat(Ljava/lang/String;)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 173
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 174
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 175
    monitor-exit p0

    return-void

    .line 173
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPattern(Ljava/lang/String;)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 155
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 157
    monitor-exit p0

    return-void

    .line 155
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTimeZone(Ljava/util/TimeZone;)V
    .registers 3
    .parameter "timeZone"

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 131
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 132
    monitor-exit p0

    return-void

    .line 130
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
