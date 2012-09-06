.class public Lcom/google/googlenav/friend/reporting/d;
.super Lcom/google/googlenav/friend/reporting/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:LaT/b;

.field private c:Lcom/google/googlenav/friend/reporting/s;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE activityDetections (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' BLOB,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "activityType"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "timeMs"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/friend/reporting/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LaT/b;Lcom/google/googlenav/friend/reporting/s;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    const-string v2, "activityDetections"

    const-string v3, "timeMs"

    const/16 v4, 0x3e8

    const-wide/32 v5, 0x5265c00

    sget-object v7, Lcom/google/googlenav/friend/reporting/d;->a:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/friend/reporting/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    .line 67
    iput-object p3, p0, Lcom/google/googlenav/friend/reporting/d;->c:Lcom/google/googlenav/friend/reporting/s;

    .line 68
    iput-object p2, p0, Lcom/google/googlenav/friend/reporting/d;->b:LaT/b;

    .line 69
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/location/clientlib/NlpActivity;)Landroid/content/ContentValues;
    .registers 6
    .parameter

    .prologue
    .line 94
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 95
    const-string v1, "activityType"

    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/d;->b:LaT/b;

    invoke-virtual {p1}, Lcom/google/android/location/clientlib/NlpActivity;->getActivity()Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LaT/b;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 96
    const-string v1, "timeMs"

    invoke-virtual {p1}, Lcom/google/android/location/clientlib/NlpActivity;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .registers 3
    .parameter

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/location/clientlib/NlpActivity;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/reporting/d;->a(Lcom/google/android/location/clientlib/NlpActivity;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/reporting/d;->b(Landroid/database/Cursor;)Lcom/google/android/location/clientlib/NlpActivity;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/d;->c:Lcom/google/googlenav/friend/reporting/s;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/s;->b()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/database/Cursor;)Lcom/google/android/location/clientlib/NlpActivity;
    .registers 7
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 73
    const/4 v0, 0x0

    .line 75
    const-string v1, "activityType"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 76
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/d;->b:LaT/b;

    const-string v1, "activityType"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, LaT/b;->c([B)Ljava/lang/String;

    move-result-object v0

    .line 78
    if-nez v0, :cond_27

    .line 79
    new-instance v0, Lcom/google/googlenav/friend/reporting/b;

    invoke-direct {v0}, Lcom/google/googlenav/friend/reporting/b;-><init>()V

    throw v0

    .line 81
    :cond_27
    invoke-static {v0}, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;->valueOf(Ljava/lang/String;)Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    move-result-object v0

    .line 83
    :cond_2b
    const-string v1, "timeMs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_54

    .line 84
    const-string v1, "timeMs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 86
    :goto_41
    if-eqz v0, :cond_4e

    cmp-long v3, v1, v3

    if-lez v3, :cond_4e

    .line 87
    new-instance v3, Lcom/google/android/location/clientlib/NlpActivity;

    const/4 v4, -0x1

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/google/android/location/clientlib/NlpActivity;-><init>(Lcom/google/android/location/clientlib/NlpActivity$ActivityType;IJ)V

    return-object v3

    .line 89
    :cond_4e
    new-instance v0, Lcom/google/googlenav/friend/reporting/b;

    invoke-direct {v0}, Lcom/google/googlenav/friend/reporting/b;-><init>()V

    throw v0

    :cond_54
    move-wide v1, v3

    goto :goto_41
.end method
