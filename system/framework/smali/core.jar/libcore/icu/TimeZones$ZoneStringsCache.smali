.class public Llibcore/icu/TimeZones$ZoneStringsCache;
.super Llibcore/util/BasicLruCache;
.source "TimeZones.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/icu/TimeZones;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoneStringsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llibcore/util/BasicLruCache",
        "<",
        "Ljava/util/Locale;",
        "[[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final internTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-static {}, Llibcore/icu/TimeZones;->access$000()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Llibcore/util/BasicLruCache;-><init>(I)V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llibcore/icu/TimeZones$ZoneStringsCache;->internTable:Ljava/util/HashMap;

    .line 63
    return-void
.end method

.method private declared-synchronized internStrings([[Ljava/lang/String;)V
    .registers 7
    .parameter "result"

    .prologue
    .line 83
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    :try_start_2
    array-length v4, p1

    if-ge v0, v4, :cond_2a

    .line 84
    const/4 v1, 0x1

    .local v1, j:I
    :goto_6
    const/4 v4, 0x5

    if-ge v1, v4, :cond_27

    .line 85
    aget-object v4, p1, v0

    aget-object v3, v4, v1

    .line 86
    .local v3, original:Ljava/lang/String;
    iget-object v4, p0, Llibcore/icu/TimeZones$ZoneStringsCache;->internTable:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    .local v2, nonDuplicate:Ljava/lang/String;
    if-nez v2, :cond_1f

    .line 88
    iget-object v4, p0, Llibcore/icu/TimeZones$ZoneStringsCache;->internTable:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 90
    :cond_1f
    aget-object v4, p1, v0

    aput-object v2, v4, v1
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_24

    goto :goto_1c

    .line 83
    .end local v1           #j:I
    .end local v2           #nonDuplicate:Ljava/lang/String;
    .end local v3           #original:Ljava/lang/String;
    :catchall_24
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v1       #j:I
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 94
    .end local v1           #j:I
    :cond_2a
    monitor-exit p0

    return-void
.end method


# virtual methods
.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    check-cast p1, Ljava/util/Locale;

    .end local p1
    invoke-virtual {p0, p1}, Llibcore/icu/TimeZones$ZoneStringsCache;->create(Ljava/util/Locale;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected create(Ljava/util/Locale;)[[Ljava/lang/String;
    .registers 18
    .parameter "locale"

    .prologue
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .local v9, nativeStart:J
    move-wide v12, v9

    .line 68
    .local v12, start:J
    invoke-virtual/range {p1 .. p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Llibcore/icu/TimeZones;->access$000()[Ljava/lang/String;

    move-result-object v15

    #calls: Llibcore/icu/TimeZones;->getZoneStringsImpl(Ljava/lang/String;[Ljava/lang/String;)[[Ljava/lang/String;
    invoke-static {v14, v15}, Llibcore/icu/TimeZones;->access$100(Ljava/lang/String;[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v11

    .line 69
    .local v11, result:[[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 70
    .local v7, nativeEnd:J
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Llibcore/icu/TimeZones$ZoneStringsCache;->internStrings([[Ljava/lang/String;)V

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 75
    .local v3, end:J
    sub-long v1, v3, v12

    .line 76
    .local v1, duration:J
    sub-long v5, v7, v9

    .line 77
    .local v5, nativeDuration:J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Loaded time zone names for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms in ICU)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/System;->logI(Ljava/lang/String;)V

    .line 79
    return-object v11
.end method
