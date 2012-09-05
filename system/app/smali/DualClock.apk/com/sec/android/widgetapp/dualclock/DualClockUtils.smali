.class public Lcom/sec/android/widgetapp/dualclock/DualClockUtils;
.super Ljava/lang/Object;
.source "DualClockUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAddedCityListCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 8
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 24
    const-string v6, "homezone asc"

    .line 26
    .local v6, orderBy:Ljava/lang/String;
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->DATA_URI:Landroid/net/Uri;

    const-string v5, "homezone asc"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static getIndexName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "context"
    .parameter "matcher"

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 34
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x7f050004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, indexs:[Ljava/lang/String;
    const v5, 0x7f050006

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, cities:[Ljava/lang/String;
    array-length v4, v2

    .line 40
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v4, :cond_24

    .line 42
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 43
    aget-object v5, v0, v1

    .line 46
    :goto_20
    return-object v5

    .line 40
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 46
    :cond_24
    const/16 v5, 0x2d

    aget-object v5, v0, v5

    goto :goto_20
.end method

.method static isAutoDST(Ljava/lang/String;)I
    .registers 4
    .parameter "tzID"

    .prologue
    .line 15
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 17
    .local v1, tmpz:Ljava/util/TimeZone;
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 19
    .local v0, timeZoneDate:Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method
