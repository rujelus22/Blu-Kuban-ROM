.class Lcom/google/android/apps/analytics/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/analytics/o;


# static fields
.field private static final n:Ljava/lang/String;

.field private static final o:Ljava/lang/String;

.field private static final p:Ljava/lang/String;

.field private static final q:Ljava/lang/String;

.field private static final r:Ljava/lang/String;

.field private static final s:Ljava/lang/String;

.field private static final t:Ljava/lang/String;


# instance fields
.field private a:Lcom/google/android/apps/analytics/y;

.field private b:I

.field private c:J

.field private d:J

.field private e:J

.field private f:I

.field private volatile g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Ljava/util/Random;

.field private m:Lcom/google/android/apps/analytics/e;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE events ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "event_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "user_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(256) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "account_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "random_val"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "timestamp_first"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "timestamp_previous"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "timestamp_current"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "visits"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(256) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "category"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(256) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "action"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(256), "

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "label"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "value"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "screen_width"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "screen_height"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/analytics/x;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS session ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER PRIMARY KEY,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "timestamp_first"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "timestamp_previous"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "timestamp_current"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "visits"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "store_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/analytics/x;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE custom_variables ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "event_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_index"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(64) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_name"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(64) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_value"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_scope"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/analytics/x;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS custom_var_cache ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "event_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_index"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(64) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_name"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(64) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_value"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_scope"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/analytics/x;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE transaction_events ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "tran_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "event_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "order_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "tran_storename"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "tran_totalcost"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "tran_totaltax"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "tran_shippingcost"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/analytics/x;->r:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE item_events ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "item_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "event_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "order_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "item_sku"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "item_name"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "item_category"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "item_price"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT NOT NULL);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "item_count"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/analytics/x;->s:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS hits ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "hit_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "hit_string"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "hit_time"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/analytics/x;->t:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "google_analytics.db"

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/analytics/x;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/apps/analytics/x;->k:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/x;->l:Ljava/util/Random;

    new-instance v0, Lcom/google/android/apps/analytics/y;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/google/android/apps/analytics/y;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/apps/analytics/x;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/x;->a:Lcom/google/android/apps/analytics/y;

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/x;->f()V

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/x;->d()Lcom/google/android/apps/analytics/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/x;->m:Lcom/google/android/apps/analytics/e;

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/x;Lcom/google/android/apps/analytics/e;)Lcom/google/android/apps/analytics/e;
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/analytics/x;->m:Lcom/google/android/apps/analytics/e;

    return-object p1
.end method

.method private a(Lcom/google/android/apps/analytics/h;Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 10

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/h;->m()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/apps/analytics/x;->l:Ljava/util/Random;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/h;->a(I)V

    iget-wide v0, p0, Lcom/google/android/apps/analytics/x;->c:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/h;->c(I)V

    iget-wide v0, p0, Lcom/google/android/apps/analytics/x;->d:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/h;->d(I)V

    iget-wide v0, p0, Lcom/google/android/apps/analytics/x;->e:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/h;->e(I)V

    iget v0, p0, Lcom/google/android/apps/analytics/x;->f:I

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/h;->f(I)V

    :cond_29
    iget-boolean v0, p0, Lcom/google/android/apps/analytics/x;->j:Z

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/h;->a(Z)V

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/h;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3a

    iget v0, p0, Lcom/google/android/apps/analytics/x;->b:I

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/h;->g(I)V

    :cond_3a
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/analytics/x;->a(Lcom/google/android/apps/analytics/h;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p2}, Lcom/google/android/apps/analytics/x;->g(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/B;

    move-result-object v1

    iget-object v0, p1, Lcom/google/android/apps/analytics/h;->b:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_51

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/google/android/apps/analytics/x;->a(Lcom/google/android/apps/analytics/h;Lcom/google/android/apps/analytics/B;Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_50
    return-void

    :cond_51
    array-length v3, v2

    const/4 v0, 0x0

    :goto_53
    if-ge v0, v3, :cond_50

    aget-object v4, v2, v0

    new-instance v5, Lcom/google/android/apps/analytics/h;

    invoke-direct {v5, p1, v4}, Lcom/google/android/apps/analytics/h;-><init>(Lcom/google/android/apps/analytics/h;Ljava/lang/String;)V

    invoke-virtual {p0, v5, v1, p2, p3}, Lcom/google/android/apps/analytics/x;->a(Lcom/google/android/apps/analytics/h;Lcom/google/android/apps/analytics/B;Landroid/database/sqlite/SQLiteDatabase;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_53
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/x;Lcom/google/android/apps/analytics/h;Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/analytics/x;->a(Lcom/google/android/apps/analytics/h;Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "referrer"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "referrer"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_14} :catch_21

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-static {p1}, Lcom/google/android/apps/analytics/x;->f(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_46

    :cond_20
    :goto_20
    return v0

    :catch_21
    move-exception v1

    :try_start_22
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_38

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {p1}, Lcom/google/android/apps/analytics/x;->f(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_20

    :catchall_38
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-static {p1}, Lcom/google/android/apps/analytics/x;->f(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_45
    throw v1

    :cond_46
    const/4 v0, 0x1

    goto :goto_20
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_8

    move-object v0, v5

    :goto_7
    return-object v0

    :cond_8
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    :goto_10
    invoke-static {p0}, Lcom/google/android/apps/analytics/F;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    const-string v0, "utm_campaign"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5d

    move v0, v1

    :goto_1d
    const-string v3, "utm_medium"

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5f

    move v3, v1

    :goto_26
    const-string v4, "utm_source"

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_61

    move v4, v1

    :goto_2f
    const-string v6, "gclid"

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_63

    move v6, v1

    :goto_38
    if-nez v6, :cond_65

    if-eqz v0, :cond_40

    if-eqz v3, :cond_40

    if-nez v4, :cond_65

    :cond_40
    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "Badly formatted referrer missing campaign, medium and source or click ID"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    goto :goto_7

    :cond_49
    const-string v0, "%3D"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    :try_start_51
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_56
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_51 .. :try_end_56} :catch_58

    move-result-object p0

    goto :goto_10

    :catch_58
    move-exception v0

    move-object v0, v5

    goto :goto_7

    :cond_5b
    move-object v0, v5

    goto :goto_7

    :cond_5d
    move v0, v2

    goto :goto_1d

    :cond_5f
    move v3, v2

    goto :goto_26

    :cond_61
    move v4, v2

    goto :goto_2f

    :cond_63
    move v6, v2

    goto :goto_38

    :cond_65
    const/4 v0, 0x7

    new-array v4, v0, [[Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "utmcid"

    aput-object v0, v3, v2

    const-string v0, "utm_id"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    aput-object v3, v4, v2

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "utmcsr"

    aput-object v0, v3, v2

    const-string v0, "utm_source"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    aput-object v3, v4, v1

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "utmgclid"

    aput-object v0, v3, v2

    const-string v0, "gclid"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    aput-object v3, v4, v8

    const/4 v3, 0x3

    new-array v5, v8, [Ljava/lang/String;

    const-string v0, "utmccn"

    aput-object v0, v5, v2

    const-string v0, "utm_campaign"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v1

    aput-object v5, v4, v3

    const/4 v3, 0x4

    new-array v5, v8, [Ljava/lang/String;

    const-string v0, "utmcmd"

    aput-object v0, v5, v2

    const-string v0, "utm_medium"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v1

    aput-object v5, v4, v3

    const/4 v3, 0x5

    new-array v5, v8, [Ljava/lang/String;

    const-string v0, "utmctr"

    aput-object v0, v5, v2

    const-string v0, "utm_term"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v1

    aput-object v5, v4, v3

    const/4 v3, 0x6

    new-array v5, v8, [Ljava/lang/String;

    const-string v0, "utmcct"

    aput-object v0, v5, v2

    const-string v0, "utm_content"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v1

    aput-object v5, v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    move v3, v1

    :goto_f1
    array-length v6, v4

    if-ge v0, v6, :cond_12b

    aget-object v6, v4, v0

    aget-object v6, v6, v1

    if-eqz v6, :cond_122

    aget-object v6, v4, v0

    aget-object v6, v6, v1

    const-string v7, "+"

    const-string v8, "%20"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, "%20"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_125

    move v3, v2

    :goto_111
    aget-object v7, v4, v0

    aget-object v7, v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_122
    add-int/lit8 v0, v0, 0x1

    goto :goto_f1

    :cond_125
    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_111

    :cond_12b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7
.end method

.method static synthetic e(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/apps/analytics/x;->f(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method private static f(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception ending transaction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_4
.end method

.method private g(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/B;
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/analytics/x;->d(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/B;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v1}, Lcom/google/android/apps/analytics/B;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_14

    move-object v0, v1

    goto :goto_7

    :cond_14
    invoke-virtual {v1}, Lcom/google/android/apps/analytics/B;->d()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/B;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "referrer"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "timestamp_referrer"

    iget-wide v6, p0, Lcom/google/android/apps/analytics/x;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "referrer_visit"

    iget v4, p0, Lcom/google/android/apps/analytics/x;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "referrer_index"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/analytics/x;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lcom/google/android/apps/analytics/B;

    iget-wide v2, p0, Lcom/google/android/apps/analytics/x;->e:J

    iget v4, p0, Lcom/google/android/apps/analytics/x;->f:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/analytics/B;-><init>(Ljava/lang/String;JII)V

    goto :goto_7
.end method

.method static synthetic g()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/apps/analytics/x;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/apps/analytics/x;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/apps/analytics/x;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/apps/analytics/x;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/apps/analytics/x;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/apps/analytics/x;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/apps/analytics/x;->t:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/C;
    .registers 13

    const/4 v8, 0x0

    :try_start_1
    const-string v1, "transaction_events"

    const/4 v2, 0x0

    const-string v3, "event_id= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_83
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_17} :catch_72

    move-result-object v1

    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6b

    new-instance v0, Lcom/google/android/apps/analytics/E;

    const-string v2, "order_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tran_totalcost"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/analytics/E;-><init>(Ljava/lang/String;D)V

    const-string v2, "tran_storename"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/analytics/E;->a(Ljava/lang/String;)Lcom/google/android/apps/analytics/E;

    move-result-object v0

    const-string v2, "tran_totaltax"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/analytics/E;->a(D)Lcom/google/android/apps/analytics/E;

    move-result-object v0

    const-string v2, "tran_shippingcost"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/analytics/E;->b(D)Lcom/google/android/apps/analytics/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/E;->a()Lcom/google/android/apps/analytics/C;
    :try_end_64
    .catchall {:try_start_18 .. :try_end_64} :catchall_8b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_64} :catch_8d

    move-result-object v0

    if-eqz v1, :cond_6a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6a
    :goto_6a
    return-object v0

    :cond_6b
    if-eqz v1, :cond_70

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_70
    :goto_70
    move-object v0, v8

    goto :goto_6a

    :catch_72
    move-exception v0

    move-object v1, v8

    :goto_74
    :try_start_74
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_8b

    if-eqz v1, :cond_70

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_70

    :catchall_83
    move-exception v0

    move-object v1, v8

    :goto_85
    if-eqz v1, :cond_8a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8a
    throw v0

    :catchall_8b
    move-exception v0

    goto :goto_85

    :catch_8d
    move-exception v0

    goto :goto_74
.end method

.method a(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/e;
    .registers 12

    const/4 v8, 0x0

    new-instance v9, Lcom/google/android/apps/analytics/e;

    invoke-direct {v9}, Lcom/google/android/apps/analytics/e;-><init>()V

    :try_start_6
    const-string v1, "custom_var_cache"

    const/4 v2, 0x0

    const-string v3, "cv_scope= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_6b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_1d} :catch_75

    move-result-object v1

    :goto_1e
    :try_start_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_65

    new-instance v0, Lcom/google/android/apps/analytics/d;

    const-string v2, "cv_index"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "cv_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cv_value"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cv_scope"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/apps/analytics/d;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Lcom/google/android/apps/analytics/e;->a(Lcom/google/android/apps/analytics/d;)V
    :try_end_54
    .catchall {:try_start_1e .. :try_end_54} :catchall_73
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_54} :catch_55

    goto :goto_1e

    :catch_55
    move-exception v0

    :goto_56
    :try_start_56
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_73

    if-eqz v1, :cond_64

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_64
    :goto_64
    return-object v9

    :cond_65
    if-eqz v1, :cond_64

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_64

    :catchall_6b
    move-exception v0

    move-object v1, v8

    :goto_6d
    if-eqz v1, :cond_72

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_72
    throw v0

    :catchall_73
    move-exception v0

    goto :goto_6d

    :catch_75
    move-exception v0

    move-object v1, v8

    goto :goto_56
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/x;->k:I

    return-void
.end method

.method public declared-synchronized a(J)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/apps/analytics/x;->g:I

    iget-object v1, p0, Lcom/google/android/apps/analytics/x;->a:Lcom/google/android/apps/analytics/y;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/y;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "hits"

    const-string v3, "hit_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/analytics/x;->g:I
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_2b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1e} :catch_20

    :goto_1e
    monitor-exit p0

    return-void

    :catch_20
    move-exception v0

    :try_start_21
    const-string v1, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2b

    goto :goto_1e

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/apps/analytics/h;)V
    .registers 7

    iget v0, p0, Lcom/google/android/apps/analytics/x;->g:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_e

    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "Store full. Not storing last event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget v0, p0, Lcom/google/android/apps/analytics/x;->k:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_3c

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/h;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_37

    iget v0, p0, Lcom/google/android/apps/analytics/x;->b:I

    :goto_1d
    rem-int/lit16 v0, v0, 0x2710

    iget v1, p0, Lcom/google/android/apps/analytics/x;->k:I

    mul-int/lit8 v1, v1, 0x64

    if-lt v0, v1, :cond_3c

    invoke-static {}, Lcom/google/android/apps/analytics/i;->a()Lcom/google/android/apps/analytics/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/i;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "User has been sampled out. Aborting hit."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_37
    invoke-virtual {p1}, Lcom/google/android/apps/analytics/h;->g()I

    move-result v0

    goto :goto_1d

    :cond_3c
    monitor-enter p0

    :try_start_3d
    iget-object v0, p0, Lcom/google/android/apps/analytics/x;->a:Lcom/google/android/apps/analytics/y;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/y;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_5f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3d .. :try_end_42} :catch_62

    move-result-object v1

    :try_start_43
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/x;->h:Z

    if-nez v0, :cond_4d

    invoke-virtual {p0, v1}, Lcom/google/android/apps/analytics/x;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_4d
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/apps/analytics/x;->a(Lcom/google/android/apps/analytics/h;Landroid/database/sqlite/SQLiteDatabase;Z)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_a8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_54} :catch_81

    :try_start_54
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-static {v1}, Lcom/google/android/apps/analytics/x;->f(Landroid/database/sqlite/SQLiteDatabase;)Z

    :cond_5d
    :goto_5d
    monitor-exit p0

    goto :goto_d

    :catchall_5f
    move-exception v0

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_5f

    throw v0

    :catch_62
    move-exception v0

    :try_start_63
    const-string v1, "GoogleAnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_80
    .catchall {:try_start_63 .. :try_end_80} :catchall_5f

    goto :goto_d

    :catch_81
    move-exception v0

    :try_start_82
    const-string v2, "GoogleAnalyticsTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putEventOuter:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_82 .. :try_end_9e} :catchall_a8

    :try_start_9e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-static {v1}, Lcom/google/android/apps/analytics/x;->f(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_5d

    :catchall_a8
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_b2

    invoke-static {v1}, Lcom/google/android/apps/analytics/x;->f(Landroid/database/sqlite/SQLiteDatabase;)Z

    :cond_b2
    throw v0
    :try_end_b3
    .catchall {:try_start_9e .. :try_end_b3} :catchall_5f
.end method

.method a(Lcom/google/android/apps/analytics/h;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 14

    const/4 v10, 0x5

    const/4 v1, 0x1

    const-string v0, "__##GOOGLEITEM##__"

    iget-object v2, p1, Lcom/google/android/apps/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "__##GOOGLETRANSACTION##__"

    iget-object v2, p1, Lcom/google/android/apps/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    :goto_16
    return-void

    :cond_17
    :try_start_17
    invoke-virtual {p1}, Lcom/google/android/apps/analytics/h;->j()Lcom/google/android/apps/analytics/e;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/apps/analytics/x;->i:Z

    if-eqz v2, :cond_c7

    if-nez v0, :cond_29

    new-instance v0, Lcom/google/android/apps/analytics/e;

    invoke-direct {v0}, Lcom/google/android/apps/analytics/e;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/h;->a(Lcom/google/android/apps/analytics/e;)V

    :cond_29
    move v2, v1

    :goto_2a
    if-gt v2, v10, :cond_40

    iget-object v3, p0, Lcom/google/android/apps/analytics/x;->m:Lcom/google/android/apps/analytics/e;

    invoke-virtual {v3, v2}, Lcom/google/android/apps/analytics/e;->b(I)Lcom/google/android/apps/analytics/d;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/google/android/apps/analytics/e;->b(I)Lcom/google/android/apps/analytics/d;

    move-result-object v4

    if-eqz v3, :cond_3d

    if-nez v4, :cond_3d

    invoke-virtual {v0, v3}, Lcom/google/android/apps/analytics/e;->a(Lcom/google/android/apps/analytics/d;)V

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_40
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/analytics/x;->i:Z

    move-object v2, v0

    :goto_44
    if-eqz v2, :cond_16

    move v0, v1

    :goto_47
    if-gt v0, v10, :cond_16

    invoke-virtual {v2, v0}, Lcom/google/android/apps/analytics/e;->a(I)Z

    move-result v3

    if-nez v3, :cond_ae

    invoke-virtual {v2, v0}, Lcom/google/android/apps/analytics/e;->b(I)Lcom/google/android/apps/analytics/d;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "event_id"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "cv_index"

    invoke-virtual {v3}, Lcom/google/android/apps/analytics/d;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "cv_name"

    invoke-virtual {v3}, Lcom/google/android/apps/analytics/d;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "cv_scope"

    invoke-virtual {v3}, Lcom/google/android/apps/analytics/d;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "cv_value"

    invoke-virtual {v3}, Lcom/google/android/apps/analytics/d;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "custom_var_cache"

    const-string v6, "cv_index = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v3}, Lcom/google/android/apps/analytics/d;->d()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p2, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/google/android/apps/analytics/d;->a()I

    move-result v4

    if-ne v4, v1, :cond_b1

    iget-object v4, p0, Lcom/google/android/apps/analytics/x;->m:Lcom/google/android/apps/analytics/e;

    invoke-virtual {v4, v3}, Lcom/google/android/apps/analytics/e;->a(Lcom/google/android/apps/analytics/d;)V

    :cond_ae
    :goto_ae
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_b1
    iget-object v4, p0, Lcom/google/android/apps/analytics/x;->m:Lcom/google/android/apps/analytics/e;

    invoke-virtual {v3}, Lcom/google/android/apps/analytics/d;->d()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/google/android/apps/analytics/e;->c(I)V
    :try_end_ba
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_ba} :catch_bb

    goto :goto_ae

    :catch_bb
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_c7
    move-object v2, v0

    goto/16 :goto_44
.end method

.method a(Lcom/google/android/apps/analytics/h;Lcom/google/android/apps/analytics/B;Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 9

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1, p2}, Lcom/google/android/apps/analytics/n;->a(Lcom/google/android/apps/analytics/h;Lcom/google/android/apps/analytics/B;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hit_string"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "hit_time"

    if-eqz p4, :cond_2a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "hits"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget v0, p0, Lcom/google/android/apps/analytics/x;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/analytics/x;->g:I

    return-void

    :cond_2a
    const-wide/16 v0, 0x0

    goto :goto_16
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/apps/analytics/x;->j:Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 14

    const-wide/16 v2, 0x1

    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/apps/analytics/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v4

    :goto_c
    return v0

    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/google/android/apps/analytics/x;->a:Lcom/google/android/apps/analytics/y;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/y;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_12} :catch_57

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/apps/analytics/x;->d(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/B;

    move-result-object v6

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "referrer"

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "timestamp_referrer"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "referrer_visit"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v6, :cond_65

    invoke-virtual {v6}, Lcom/google/android/apps/analytics/B;->d()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v6}, Lcom/google/android/apps/analytics/B;->b()J

    move-result-wide v8

    cmp-long v6, v8, v10

    if-lez v6, :cond_43

    add-long/2addr v0, v2

    :cond_43
    :goto_43
    const-string v2, "referrer_index"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, v5, v7}, Lcom/google/android/apps/analytics/x;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/x;->c()V

    const/4 v0, 0x1

    goto :goto_c

    :catch_57
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_c

    :cond_63
    move v0, v4

    goto :goto_c

    :cond_65
    move-wide v0, v2

    goto :goto_43
.end method

.method public a(ILandroid/database/sqlite/SQLiteDatabase;I)[Lcom/google/android/apps/analytics/h;
    .registers 23

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :try_start_6
    const-string v3, "events"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "event_id"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_14c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_18} :catch_154

    move-result-object v17

    :goto_19
    :try_start_19
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_138

    new-instance v2, Lcom/google/android/apps/analytics/h;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x6

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x7

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/16 v11, 0x8

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x9

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xa

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xb

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/16 v15, 0xc

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v16, 0xd

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-direct/range {v2 .. v16}, Lcom/google/android/apps/analytics/h;-><init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/analytics/h;->g(I)V

    const-string v3, "event_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v5, "__##GOOGLETRANSACTION##__"

    iget-object v6, v2, Lcom/google/android/apps/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ea

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/apps/analytics/x;->a(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/C;

    move-result-object v5

    if-nez v5, :cond_cb

    const-string v6, "GoogleAnalyticsTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "missing expected transaction for event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cb
    invoke-virtual {v2, v5}, Lcom/google/android/apps/analytics/h;->a(Lcom/google/android/apps/analytics/C;)V

    :goto_ce
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d3
    .catchall {:try_start_19 .. :try_end_d3} :catchall_11a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_d3} :catch_d5

    goto/16 :goto_19

    :catch_d5
    move-exception v2

    move-object/from16 v3, v17

    :goto_d8
    :try_start_d8
    const-string v4, "GoogleAnalyticsTracker"

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/apps/analytics/h;
    :try_end_e4
    .catchall {:try_start_d8 .. :try_end_e4} :catchall_150

    if-eqz v3, :cond_e9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_e9
    :goto_e9
    return-object v2

    :cond_ea
    :try_start_ea
    const-string v5, "__##GOOGLEITEM##__"

    iget-object v6, v2, Lcom/google/android/apps/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_121

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/apps/analytics/x;->b(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/p;

    move-result-object v5

    if-nez v5, :cond_116

    const-string v6, "GoogleAnalyticsTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "missing expected item for event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_116
    invoke-virtual {v2, v5}, Lcom/google/android/apps/analytics/h;->a(Lcom/google/android/apps/analytics/p;)V
    :try_end_119
    .catchall {:try_start_ea .. :try_end_119} :catchall_11a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ea .. :try_end_119} :catch_d5

    goto :goto_ce

    :catchall_11a
    move-exception v2

    :goto_11b
    if-eqz v17, :cond_120

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_120
    throw v2

    :cond_121
    const/4 v5, 0x1

    move/from16 v0, p3

    if-le v0, v5, :cond_132

    :try_start_126
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/apps/analytics/x;->c(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/e;

    move-result-object v3

    :goto_12e
    invoke-virtual {v2, v3}, Lcom/google/android/apps/analytics/h;->a(Lcom/google/android/apps/analytics/e;)V

    goto :goto_ce

    :cond_132
    new-instance v3, Lcom/google/android/apps/analytics/e;

    invoke-direct {v3}, Lcom/google/android/apps/analytics/e;-><init>()V
    :try_end_137
    .catchall {:try_start_126 .. :try_end_137} :catchall_11a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_126 .. :try_end_137} :catch_d5

    goto :goto_12e

    :cond_138
    if-eqz v17, :cond_13d

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_13d
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/apps/analytics/h;

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/apps/analytics/h;

    goto :goto_e9

    :catchall_14c
    move-exception v2

    move-object/from16 v17, v11

    goto :goto_11b

    :catchall_150
    move-exception v2

    move-object/from16 v17, v3

    goto :goto_11b

    :catch_154
    move-exception v2

    move-object v3, v11

    goto :goto_d8
.end method

.method public a()[Lcom/google/android/apps/analytics/m;
    .registers 2

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/analytics/x;->b(I)[Lcom/google/android/apps/analytics/m;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/x;->g:I

    return v0
.end method

.method b(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/p;
    .registers 13

    const/4 v8, 0x0

    :try_start_1
    const-string v1, "item_events"

    const/4 v2, 0x0

    const-string v3, "event_id= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_89
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_17} :catch_78

    move-result-object v7

    :try_start_18
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_71

    new-instance v0, Lcom/google/android/apps/analytics/r;

    const-string v1, "order_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "item_sku"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "item_price"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    const-string v5, "item_count"

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/analytics/r;-><init>(Ljava/lang/String;Ljava/lang/String;DJ)V

    const-string v1, "item_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/r;->a(Ljava/lang/String;)Lcom/google/android/apps/analytics/r;

    move-result-object v0

    const-string v1, "item_category"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/r;->b(Ljava/lang/String;)Lcom/google/android/apps/analytics/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/r;->a()Lcom/google/android/apps/analytics/p;
    :try_end_6a
    .catchall {:try_start_18 .. :try_end_6a} :catchall_91
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_6a} :catch_96

    move-result-object v0

    if-eqz v7, :cond_70

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_70
    :goto_70
    return-object v0

    :cond_71
    if-eqz v7, :cond_76

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_76
    :goto_76
    move-object v0, v8

    goto :goto_70

    :catch_78
    move-exception v0

    move-object v1, v8

    :goto_7a
    :try_start_7a
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_7a .. :try_end_83} :catchall_93

    if-eqz v1, :cond_76

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_76

    :catchall_89
    move-exception v0

    move-object v7, v8

    :goto_8b
    if-eqz v7, :cond_90

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_90
    throw v0

    :catchall_91
    move-exception v0

    goto :goto_8b

    :catchall_93
    move-exception v0

    move-object v7, v1

    goto :goto_8b

    :catch_96
    move-exception v0

    move-object v1, v7

    goto :goto_7a
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 15

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    :try_start_5
    const-string v1, "session"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_c6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_11} :catch_b5

    move-result-object v1

    :try_start_12
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/analytics/x;->c:J

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/analytics/x;->d:J

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/analytics/x;->e:J

    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/analytics/x;->f:I

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/analytics/x;->b:I

    invoke-virtual {p0, p1}, Lcom/google/android/apps/analytics/x;->d(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/B;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/apps/analytics/x;->c:J

    cmp-long v2, v2, v11

    if-eqz v2, :cond_58

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/B;->b()J

    move-result-wide v2

    cmp-long v0, v2, v11

    if-eqz v0, :cond_58

    :cond_4f
    move v0, v9

    :goto_50
    iput-boolean v0, p0, Lcom/google/android/apps/analytics/x;->h:Z
    :try_end_52
    .catchall {:try_start_12 .. :try_end_52} :catchall_ce
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_52} :catch_d0

    :goto_52
    if-eqz v1, :cond_57

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_57
    :goto_57
    return-void

    :cond_58
    move v0, v10

    goto :goto_50

    :cond_5a
    const/4 v0, 0x0

    :try_start_5b
    iput-boolean v0, p0, Lcom/google/android/apps/analytics/x;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/x;->i:Z

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/apps/analytics/x;->b:I

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_72
    .catchall {:try_start_5b .. :try_end_72} :catchall_ce
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5b .. :try_end_72} :catch_d0

    :try_start_72
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "timestamp_first"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "timestamp_previous"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "timestamp_current"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "visits"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "store_id"

    iget v2, p0, Lcom/google/android/apps/analytics/x;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "session"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_b3
    .catchall {:try_start_72 .. :try_end_b3} :catchall_c6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_72 .. :try_end_b3} :catch_b5

    move-object v1, v8

    goto :goto_52

    :catch_b5
    move-exception v0

    move-object v1, v8

    :goto_b7
    :try_start_b7
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_b7 .. :try_end_c0} :catchall_ce

    if-eqz v1, :cond_57

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_57

    :catchall_c6
    move-exception v0

    move-object v1, v8

    :goto_c8
    if-eqz v1, :cond_cd

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_cd
    throw v0

    :catchall_ce
    move-exception v0

    goto :goto_c8

    :catch_d0
    move-exception v0

    goto :goto_b7
.end method

.method public b(I)[Lcom/google/android/apps/analytics/m;
    .registers 13

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    iget-object v0, p0, Lcom/google/android/apps/analytics/x;->a:Lcom/google/android/apps/analytics/y;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/y;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "hits"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "hit_id"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_5b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_1c} :catch_65

    move-result-object v1

    :goto_1d
    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_49

    new-instance v0, Lcom/google/android/apps/analytics/m;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/analytics/m;-><init>(Ljava/lang/String;J)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_63
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_35} :catch_36

    goto :goto_1d

    :catch_36
    move-exception v0

    :goto_37
    :try_start_37
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/analytics/m;
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_63

    if-eqz v1, :cond_48

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_48
    :goto_48
    return-object v0

    :cond_49
    if-eqz v1, :cond_4e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4e
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/analytics/m;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/m;

    goto :goto_48

    :catchall_5b
    move-exception v0

    move-object v1, v9

    :goto_5d
    if-eqz v1, :cond_62

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_62
    throw v0

    :catchall_63
    move-exception v0

    goto :goto_5d

    :catch_65
    move-exception v0

    move-object v1, v9

    goto :goto_37
.end method

.method c(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/e;
    .registers 14

    const/4 v8, 0x0

    new-instance v9, Lcom/google/android/apps/analytics/e;

    invoke-direct {v9}, Lcom/google/android/apps/analytics/e;-><init>()V

    :try_start_6
    const-string v1, "custom_variables"

    const/4 v2, 0x0

    const-string v3, "event_id= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_1c} :catch_74

    move-result-object v1

    :goto_1d
    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_64

    new-instance v0, Lcom/google/android/apps/analytics/d;

    const-string v2, "cv_index"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "cv_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cv_value"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cv_scope"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/apps/analytics/d;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Lcom/google/android/apps/analytics/e;->a(Lcom/google/android/apps/analytics/d;)V
    :try_end_53
    .catchall {:try_start_1d .. :try_end_53} :catchall_72
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_53} :catch_54

    goto :goto_1d

    :catch_54
    move-exception v0

    :goto_55
    :try_start_55
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_72

    if-eqz v1, :cond_63

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_63
    :goto_63
    return-object v9

    :cond_64
    if-eqz v1, :cond_63

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_63

    :catchall_6a
    move-exception v0

    move-object v1, v8

    :goto_6c
    if-eqz v1, :cond_71

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_71
    throw v0

    :catchall_72
    move-exception v0

    goto :goto_6c

    :catch_74
    move-exception v0

    move-object v1, v8

    goto :goto_55
.end method

.method public declared-synchronized c()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/analytics/x;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/x;->i:Z

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/x;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/analytics/x;->g:I
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11

    const-wide/16 v7, 0x3e8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/apps/analytics/x;->a:Lcom/google/android/apps/analytics/y;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/y;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "session"

    invoke-virtual {v0, v1, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-wide v1, p0, Lcom/google/android/apps/analytics/x;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_68

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v7

    iput-wide v1, p0, Lcom/google/android/apps/analytics/x;->c:J

    iput-wide v1, p0, Lcom/google/android/apps/analytics/x;->d:J

    iput-wide v1, p0, Lcom/google/android/apps/analytics/x;->e:J

    iput v6, p0, Lcom/google/android/apps/analytics/x;->f:I

    :goto_24
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "timestamp_first"

    iget-wide v3, p0, Lcom/google/android/apps/analytics/x;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "timestamp_previous"

    iget-wide v3, p0, Lcom/google/android/apps/analytics/x;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "timestamp_current"

    iget-wide v3, p0, Lcom/google/android/apps/analytics/x;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "visits"

    iget v3, p0, Lcom/google/android/apps/analytics/x;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "store_id"

    iget v3, p0, Lcom/google/android/apps/analytics/x;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "session"

    invoke-virtual {v0, v2, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iput-boolean v6, p0, Lcom/google/android/apps/analytics/x;->h:Z

    return-void

    :cond_68
    iget-wide v1, p0, Lcom/google/android/apps/analytics/x;->e:J

    iput-wide v1, p0, Lcom/google/android/apps/analytics/x;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v7

    iput-wide v1, p0, Lcom/google/android/apps/analytics/x;->e:J

    iget-wide v1, p0, Lcom/google/android/apps/analytics/x;->e:J

    iget-wide v3, p0, Lcom/google/android/apps/analytics/x;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_82

    iget-wide v1, p0, Lcom/google/android/apps/analytics/x;->e:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/apps/analytics/x;->e:J

    :cond_82
    iget v1, p0, Lcom/google/android/apps/analytics/x;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/analytics/x;->f:I

    goto :goto_24
.end method

.method d(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/B;
    .registers 11

    const/4 v8, 0x0

    :try_start_1
    const-string v1, "referrer"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "referrer"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "timestamp_referrer"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "referrer_visit"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "referrer_index"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_6f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_23} :catch_5d

    move-result-object v6

    :try_start_24
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7f

    const-string v0, "timestamp_referrer"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v0, "referrer_visit"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v0, "referrer_index"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v0, "referrer"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/apps/analytics/B;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/analytics/B;-><init>(Ljava/lang/String;JII)V
    :try_end_57
    .catchall {:try_start_24 .. :try_end_57} :catchall_77
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24 .. :try_end_57} :catch_7c

    :goto_57
    if-eqz v6, :cond_5c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5c
    :goto_5c
    return-object v0

    :catch_5d
    move-exception v0

    move-object v1, v8

    :goto_5f
    :try_start_5f
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_79

    if-eqz v1, :cond_6d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6d
    move-object v0, v8

    goto :goto_5c

    :catchall_6f
    move-exception v0

    move-object v6, v8

    :goto_71
    if-eqz v6, :cond_76

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_76
    throw v0

    :catchall_77
    move-exception v0

    goto :goto_71

    :catchall_79
    move-exception v0

    move-object v6, v1

    goto :goto_71

    :catch_7c
    move-exception v0

    move-object v1, v6

    goto :goto_5f

    :cond_7f
    move-object v0, v8

    goto :goto_57
.end method

.method d()Lcom/google/android/apps/analytics/e;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/x;->a:Lcom/google/android/apps/analytics/y;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/y;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/analytics/x;->a(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/e;
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/apps/analytics/e;

    invoke-direct {v0}, Lcom/google/android/apps/analytics/e;-><init>()V

    goto :goto_a
.end method

.method public e()I
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/apps/analytics/x;->a:Lcom/google/android/apps/analytics/y;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/y;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "SELECT COUNT(*) from hits"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_31
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_19} :catch_21

    move-result-wide v0

    long-to-int v0, v0

    :cond_1b
    if-eqz v2, :cond_20

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_20
    :goto_20
    return v0

    :catch_21
    move-exception v1

    :try_start_22
    const-string v3, "GoogleAnalyticsTracker"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_31

    if-eqz v2, :cond_20

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_20

    :catchall_31
    move-exception v0

    if-eqz v2, :cond_37

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_37
    throw v0
.end method

.method public f()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/x;->a:Lcom/google/android/apps/analytics/y;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/y;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/analytics/x;->b(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
