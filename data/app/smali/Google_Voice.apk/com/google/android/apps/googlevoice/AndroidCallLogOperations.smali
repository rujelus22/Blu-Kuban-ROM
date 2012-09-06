.class public Lcom/google/android/apps/googlevoice/AndroidCallLogOperations;
.super Ljava/lang/Object;
.source "AndroidCallLogOperations.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/CallLogOperations;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/log/GLog;Landroid/content/Context;)V
    .registers 3
    .parameter "log"
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/AndroidCallLogOperations;->context:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private insertCallLogEntry(Ljava/lang/String;JJI)V
    .registers 14
    .parameter "number"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "callType"

    .prologue
    .line 25
    sub-long v3, p4, p2

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0

    add-double/2addr v3, v5

    double-to-long v0, v3

    .line 26
    .local v0, durationInSeconds:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 27
    .local v2, value:Landroid/content/ContentValues;
    const-string v3, "number"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v3, "date"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 29
    const-string v3, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 30
    const-string v3, "type"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/AndroidCallLogOperations;->doInsertCall(Landroid/content/ContentValues;)V

    .line 32
    return-void
.end method


# virtual methods
.method public addIncomingCall(Ljava/lang/String;JJ)V
    .registers 13
    .parameter "number"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 36
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/googlevoice/AndroidCallLogOperations;->insertCallLogEntry(Ljava/lang/String;JJI)V

    .line 37
    return-void
.end method

.method public addMissedCall(Ljava/lang/String;J)V
    .registers 11
    .parameter "number"
    .parameter "startTime"

    .prologue
    .line 47
    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/googlevoice/AndroidCallLogOperations;->insertCallLogEntry(Ljava/lang/String;JJI)V

    .line 48
    return-void
.end method

.method public addOutgoingCall(Ljava/lang/String;JJ)V
    .registers 13
    .parameter "number"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 41
    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/googlevoice/AndroidCallLogOperations;->insertCallLogEntry(Ljava/lang/String;JJI)V

    .line 42
    return-void
.end method

.method protected doInsertCall(Landroid/content/ContentValues;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallLogOperations;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 53
    return-void
.end method
