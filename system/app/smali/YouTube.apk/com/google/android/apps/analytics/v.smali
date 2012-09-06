.class final Lcom/google/android/apps/analytics/v;
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
.field private a:Lcom/google/android/apps/analytics/w;

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

    const-string v1, "CREATE TABLE events ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    sput-object v0, Lcom/google/android/apps/analytics/v;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS session ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    sput-object v0, Lcom/google/android/apps/analytics/v;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE custom_variables ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    sput-object v0, Lcom/google/android/apps/analytics/v;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS custom_var_cache ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    sput-object v0, Lcom/google/android/apps/analytics/v;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE transaction_events ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    sput-object v0, Lcom/google/android/apps/analytics/v;->r:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE item_events ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    sput-object v0, Lcom/google/android/apps/analytics/v;->s:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS hits ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    sput-object v0, Lcom/google/android/apps/analytics/v;->t:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "google_analytics.db"

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/analytics/v;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/apps/analytics/v;->k:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/v;->l:Ljava/util/Random;

    new-instance v0, Lcom/google/android/apps/analytics/w;

    const/4 v1, 0x5

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/google/android/apps/analytics/w;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/apps/analytics/v;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/w;

    :try_start_16
    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/w;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/analytics/v;->b(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_1f} :catch_26

    :goto_1f
    invoke-direct {p0}, Lcom/google/android/apps/analytics/v;->k()Lcom/google/android/apps/analytics/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/v;->m:Lcom/google/android/apps/analytics/e;

    return-void

    :catch_26
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method private static a(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/aa;
    .registers 12

    const/4 v8, 0x0

    :try_start_1
    const-string v1, "transaction_events"

    const/4 v2, 0x0

    const-string v3, "event_id= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_85
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_17} :catch_74

    move-result-object v1

    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6d

    new-instance v0, Lcom/google/android/apps/analytics/ab;

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

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/analytics/ab;-><init>(Ljava/lang/String;D)V

    const-string v2, "tran_storename"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/analytics/ab;->a(Ljava/lang/String;)Lcom/google/android/apps/analytics/ab;

    move-result-object v0

    const-string v2, "tran_totaltax"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/analytics/ab;->a(D)Lcom/google/android/apps/analytics/ab;

    move-result-object v0

    const-string v2, "tran_shippingcost"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/analytics/ab;->b(D)Lcom/google/android/apps/analytics/ab;

    move-result-object v2

    new-instance v0, Lcom/google/android/apps/analytics/aa;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/apps/analytics/aa;-><init>(Lcom/google/android/apps/analytics/ab;B)V
    :try_end_67
    .catchall {:try_start_18 .. :try_end_67} :catchall_8d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_67} :catch_8f

    if-eqz v1, :cond_6c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6c
    :goto_6c
    return-object v0

    :cond_6d
    if-eqz v1, :cond_72

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_72
    :goto_72
    move-object v0, v8

    goto :goto_6c

    :catch_74
    move-exception v0

    move-object v1, v8

    :goto_76
    :try_start_76
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_8d

    if-eqz v1, :cond_72

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_72

    :catchall_85
    move-exception v0

    move-object v1, v8

    :goto_87
    if-eqz v1, :cond_8c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8c
    throw v0

    :catchall_8d
    move-exception v0

    goto :goto_87

    :catch_8f
    move-exception v0

    goto :goto_76
.end method

.method static a(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/e;
    .registers 11

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

    move-object v0, p0

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

.method static synthetic a(Lcom/google/android/apps/analytics/v;Lcom/google/android/apps/analytics/e;)Lcom/google/android/apps/analytics/e;
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/analytics/v;->m:Lcom/google/android/apps/analytics/e;

    return-object p1
.end method

.method private a(Lcom/google/android/apps/analytics/h;Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 16

    const/4 v11, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/h;->l()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->l:Ljava/util/Random;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/h;->a(I)V

    iget-wide v0, p0, Lcom/google/android/apps/analytics/v;->c:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/h;->c(I)V

    iget-wide v0, p0, Lcom/google/android/apps/analytics/v;->d:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/h;->d(I)V

    iget-wide v0, p0, Lcom/google/android/apps/analytics/v;->e:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/h;->e(I)V

    iget v0, p0, Lcom/google/android/apps/analytics/v;->f:I

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/h;->f(I)V

    :cond_2c
    iget-boolean v0, p0, Lcom/google/android/apps/analytics/v;->j:Z

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/h;->a(Z)V

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/h;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3d

    iget v0, p0, Lcom/google/android/apps/analytics/v;->b:I

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/h;->g(I)V

    :cond_3d
    const-string v0, "__##GOOGLEITEM##__"

    iget-object v1, p1, Lcom/google/android/apps/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string v0, "__##GOOGLETRANSACTION##__"

    iget-object v1, p1, Lcom/google/android/apps/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    :cond_51
    :goto_51
    invoke-static {p2}, Lcom/google/android/apps/analytics/v;->e(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/z;

    move-result-object v0

    if-eqz v0, :cond_15f

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/z;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_11d

    :goto_61
    iget-object v1, p1, Lcom/google/android/apps/analytics/h;->b:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    if-ne v1, v7, :cond_162

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/apps/analytics/v;->a(Lcom/google/android/apps/analytics/h;Lcom/google/android/apps/analytics/z;Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_6f
    return-void

    :cond_70
    :try_start_70
    iget-object v0, p1, Lcom/google/android/apps/analytics/h;->i:Lcom/google/android/apps/analytics/e;

    iget-boolean v1, p0, Lcom/google/android/apps/analytics/v;->i:Z

    if-eqz v1, :cond_173

    if-nez v0, :cond_7f

    new-instance v0, Lcom/google/android/apps/analytics/e;

    invoke-direct {v0}, Lcom/google/android/apps/analytics/e;-><init>()V

    iput-object v0, p1, Lcom/google/android/apps/analytics/h;->i:Lcom/google/android/apps/analytics/e;

    :cond_7f
    move v1, v7

    :goto_80
    if-gt v1, v11, :cond_96

    iget-object v2, p0, Lcom/google/android/apps/analytics/v;->m:Lcom/google/android/apps/analytics/e;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/analytics/e;->b(I)Lcom/google/android/apps/analytics/d;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/e;->b(I)Lcom/google/android/apps/analytics/d;

    move-result-object v3

    if-eqz v2, :cond_93

    if-nez v3, :cond_93

    invoke-virtual {v0, v2}, Lcom/google/android/apps/analytics/e;->a(Lcom/google/android/apps/analytics/d;)V

    :cond_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_80

    :cond_96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/analytics/v;->i:Z

    move-object v1, v0

    :goto_9a
    if-eqz v1, :cond_51

    move v0, v7

    :goto_9d
    if-gt v0, v11, :cond_51

    invoke-virtual {v1, v0}, Lcom/google/android/apps/analytics/e;->a(I)Z

    move-result v2

    if-nez v2, :cond_104

    invoke-virtual {v1, v0}, Lcom/google/android/apps/analytics/e;->b(I)Lcom/google/android/apps/analytics/d;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "event_id"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "cv_index"

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/d;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "cv_name"

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "cv_scope"

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/d;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "cv_value"

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "custom_var_cache"

    const-string v5, "cv_index = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/d;->d()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p2, v4, v3, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/d;->a()I

    move-result v3

    if-ne v3, v7, :cond_107

    iget-object v3, p0, Lcom/google/android/apps/analytics/v;->m:Lcom/google/android/apps/analytics/e;

    invoke-virtual {v3, v2}, Lcom/google/android/apps/analytics/e;->a(Lcom/google/android/apps/analytics/d;)V

    :cond_104
    :goto_104
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    :cond_107
    iget-object v3, p0, Lcom/google/android/apps/analytics/v;->m:Lcom/google/android/apps/analytics/e;

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/d;->d()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/android/apps/analytics/e;->c(I)V
    :try_end_110
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_70 .. :try_end_110} :catch_111

    goto :goto_104

    :catch_111
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_51

    :cond_11d
    invoke-virtual {v0}, Lcom/google/android/apps/analytics/z;->d()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/z;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "referrer"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timestamp_referrer"

    iget-wide v3, p0, Lcom/google/android/apps/analytics/v;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "referrer_visit"

    iget v3, p0, Lcom/google/android/apps/analytics/v;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "referrer_index"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p2, v0}, Lcom/google/android/apps/analytics/v;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_15f

    new-instance v0, Lcom/google/android/apps/analytics/z;

    iget-wide v2, p0, Lcom/google/android/apps/analytics/v;->e:J

    iget v4, p0, Lcom/google/android/apps/analytics/v;->f:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/analytics/z;-><init>(Ljava/lang/String;JII)V

    goto/16 :goto_61

    :cond_15f
    const/4 v0, 0x0

    goto/16 :goto_61

    :cond_162
    array-length v3, v2

    move v1, v6

    :goto_164
    if-ge v1, v3, :cond_6f

    aget-object v4, v2, v1

    new-instance v5, Lcom/google/android/apps/analytics/h;

    invoke-direct {v5, p1, v4}, Lcom/google/android/apps/analytics/h;-><init>(Lcom/google/android/apps/analytics/h;Ljava/lang/String;)V

    invoke-direct {p0, v5, v0, p2, p3}, Lcom/google/android/apps/analytics/v;->a(Lcom/google/android/apps/analytics/h;Lcom/google/android/apps/analytics/z;Landroid/database/sqlite/SQLiteDatabase;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_164

    :cond_173
    move-object v1, v0

    goto/16 :goto_9a
.end method

.method private a(Lcom/google/android/apps/analytics/h;Lcom/google/android/apps/analytics/z;Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 9

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1, p2}, Lcom/google/android/apps/analytics/n;->a(Lcom/google/android/apps/analytics/h;Lcom/google/android/apps/analytics/z;)Ljava/lang/String;

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

    iget v0, p0, Lcom/google/android/apps/analytics/v;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/analytics/v;->g:I

    return-void

    :cond_2a
    const-wide/16 v0, 0x0

    goto :goto_16
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/v;Lcom/google/android/apps/analytics/h;Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/analytics/v;->a(Lcom/google/android/apps/analytics/h;Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "referrer"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "referrer"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_14} :catch_21

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-static {p0}, Lcom/google/android/apps/analytics/v;->d(Landroid/database/sqlite/SQLiteDatabase;)Z

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

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {p0}, Lcom/google/android/apps/analytics/v;->d(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_20

    :catchall_38
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-static {p0}, Lcom/google/android/apps/analytics/v;->d(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_45
    throw v1

    :cond_46
    const/4 v0, 0x1

    goto :goto_20
.end method

.method private static b(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/p;
    .registers 12

    const/4 v8, 0x0

    :try_start_1
    const-string v1, "item_events"

    const/4 v2, 0x0

    const-string v3, "event_id= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_8b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_17} :catch_7a

    move-result-object v7

    :try_start_18
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_73

    new-instance v0, Lcom/google/android/apps/analytics/q;

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

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/analytics/q;-><init>(Ljava/lang/String;Ljava/lang/String;DJ)V

    const-string v1, "item_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/q;->a(Ljava/lang/String;)Lcom/google/android/apps/analytics/q;

    move-result-object v0

    const-string v1, "item_category"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/q;->b(Ljava/lang/String;)Lcom/google/android/apps/analytics/q;

    move-result-object v1

    new-instance v0, Lcom/google/android/apps/analytics/p;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/p;-><init>(Lcom/google/android/apps/analytics/q;B)V
    :try_end_6d
    .catchall {:try_start_18 .. :try_end_6d} :catchall_93
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_6d} :catch_98

    if-eqz v7, :cond_72

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_72
    :goto_72
    return-object v0

    :cond_73
    if-eqz v7, :cond_78

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_78
    :goto_78
    move-object v0, v8

    goto :goto_72

    :catch_7a
    move-exception v0

    move-object v1, v8

    :goto_7c
    :try_start_7c
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_95

    if-eqz v1, :cond_78

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_78

    :catchall_8b
    move-exception v0

    move-object v7, v8

    :goto_8d
    if-eqz v7, :cond_92

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_92
    throw v0

    :catchall_93
    move-exception v0

    goto :goto_8d

    :catchall_95
    move-exception v0

    move-object v7, v1

    goto :goto_8d

    :catch_98
    move-exception v0

    move-object v1, v7

    goto :goto_7c
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v5, 0x0

    const/4 v9, 0x2

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

    if-nez v0, :cond_1e

    const-string v0, "%3D"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    :try_start_18
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_1d} :catch_42

    move-result-object p0

    :cond_1e
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_2b
    if-ge v0, v4, :cond_50

    aget-object v6, v3, v0

    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    if-le v8, v1, :cond_47

    aget-object v8, v6, v2

    aget-object v6, v6, v1

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :catch_42
    move-exception v0

    move-object v0, v5

    goto :goto_7

    :cond_45
    move-object v0, v5

    goto :goto_7

    :cond_47
    array-length v8, v6

    if-ne v8, v1, :cond_3f

    aget-object v6, v6, v2

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_50
    const-string v0, "utm_campaign"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_85

    move v0, v1

    :goto_59
    const-string v3, "utm_medium"

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_87

    move v3, v1

    :goto_62
    const-string v4, "utm_source"

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_89

    move v4, v1

    :goto_6b
    const-string v6, "gclid"

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8b

    move v6, v1

    :goto_74
    if-nez v6, :cond_8d

    if-eqz v0, :cond_7c

    if-eqz v3, :cond_7c

    if-nez v4, :cond_8d

    :cond_7c
    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "Badly formatted referrer missing campaign, medium and source or click ID"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    goto :goto_7

    :cond_85
    move v0, v2

    goto :goto_59

    :cond_87
    move v3, v2

    goto :goto_62

    :cond_89
    move v4, v2

    goto :goto_6b

    :cond_8b
    move v6, v2

    goto :goto_74

    :cond_8d
    const/4 v0, 0x7

    new-array v4, v0, [[Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/String;

    const-string v0, "utmcid"

    aput-object v0, v3, v2

    const-string v0, "utm_id"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    aput-object v3, v4, v2

    new-array v3, v9, [Ljava/lang/String;

    const-string v0, "utmcsr"

    aput-object v0, v3, v2

    const-string v0, "utm_source"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    aput-object v3, v4, v1

    new-array v3, v9, [Ljava/lang/String;

    const-string v0, "utmgclid"

    aput-object v0, v3, v2

    const-string v0, "gclid"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    aput-object v3, v4, v9

    const/4 v3, 0x3

    new-array v5, v9, [Ljava/lang/String;

    const-string v0, "utmccn"

    aput-object v0, v5, v2

    const-string v0, "utm_campaign"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v1

    aput-object v5, v4, v3

    const/4 v3, 0x4

    new-array v5, v9, [Ljava/lang/String;

    const-string v0, "utmcmd"

    aput-object v0, v5, v2

    const-string v0, "utm_medium"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v1

    aput-object v5, v4, v3

    const/4 v3, 0x5

    new-array v5, v9, [Ljava/lang/String;

    const-string v0, "utmctr"

    aput-object v0, v5, v2

    const-string v0, "utm_term"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v1

    aput-object v5, v4, v3

    const/4 v3, 0x6

    new-array v5, v9, [Ljava/lang/String;

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

    move v3, v2

    move v0, v1

    :goto_119
    array-length v6, v4

    if-ge v3, v6, :cond_153

    aget-object v6, v4, v3

    aget-object v6, v6, v1

    if-eqz v6, :cond_14a

    aget-object v6, v4, v3

    aget-object v6, v6, v1

    const-string v7, "+"

    const-string v8, "%20"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, "%20"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_14d

    move v0, v2

    :goto_139
    aget-object v7, v4, v3

    aget-object v7, v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14a
    add-int/lit8 v3, v3, 0x1

    goto :goto_119

    :cond_14d
    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_139

    :cond_153
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7
.end method

.method private b(I)[Lcom/google/android/apps/analytics/m;
    .registers 13

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/w;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/w;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "hits"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "hit_id"

    const/16 v8, 0x3e8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_5d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_1e} :catch_67

    move-result-object v1

    :goto_1f
    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v0, Lcom/google/android/apps/analytics/m;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/analytics/m;-><init>(Ljava/lang/String;J)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_65
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_37} :catch_38

    goto :goto_1f

    :catch_38
    move-exception v0

    :goto_39
    :try_start_39
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/analytics/m;
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_65

    if-eqz v1, :cond_4a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4a
    :goto_4a
    return-object v0

    :cond_4b
    if-eqz v1, :cond_50

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_50
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/analytics/m;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/m;

    goto :goto_4a

    :catchall_5d
    move-exception v0

    move-object v1, v9

    :goto_5f
    if-eqz v1, :cond_64

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_64
    throw v0

    :catchall_65
    move-exception v0

    goto :goto_5f

    :catch_67
    move-exception v0

    move-object v1, v9

    goto :goto_39
.end method

.method private static c(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/e;
    .registers 13

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

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

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

.method static synthetic c(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/apps/analytics/v;->d(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/apps/analytics/v;->n:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Landroid/database/sqlite/SQLiteDatabase;)Z
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

    const-string v3, "exception ending transaction:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

.method private static e(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/z;
    .registers 10

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

    move-object v0, p0

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

    new-instance v0, Lcom/google/android/apps/analytics/z;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/analytics/z;-><init>(Ljava/lang/String;JII)V
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

.method static synthetic e()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/apps/analytics/v;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/apps/analytics/v;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/apps/analytics/v;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/apps/analytics/v;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/apps/analytics/v;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/apps/analytics/v;->t:Ljava/lang/String;

    return-object v0
.end method

.method private k()Lcom/google/android/apps/analytics/e;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/w;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/w;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/v;->a(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/e;
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

.method private l()I
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/w;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/w;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

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


# virtual methods
.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/v;->k:I

    return-void
.end method

.method public final declared-synchronized a(J)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/apps/analytics/v;->g:I

    iget-object v1, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/w;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

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

    iput v0, p0, Lcom/google/android/apps/analytics/v;->g:I
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

.method public final a(Lcom/google/android/apps/analytics/h;)V
    .registers 8

    iget v0, p0, Lcom/google/android/apps/analytics/v;->g:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_e

    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "Store full. Not storing last event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget v0, p0, Lcom/google/android/apps/analytics/v;->k:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_3c

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/h;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_37

    iget v0, p0, Lcom/google/android/apps/analytics/v;->b:I

    :goto_1d
    rem-int/lit16 v0, v0, 0x2710

    iget v1, p0, Lcom/google/android/apps/analytics/v;->k:I

    mul-int/lit8 v1, v1, 0x64

    if-lt v0, v1, :cond_3c

    invoke-static {}, Lcom/google/android/apps/analytics/i;->a()Lcom/google/android/apps/analytics/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/i;->d()Z

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
    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/w;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_c7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3d .. :try_end_42} :catch_ca

    move-result-object v1

    :try_start_43
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/v;->h:Z

    if-nez v0, :cond_b4

    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/w;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "session"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/google/android/apps/analytics/v;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_e6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/apps/analytics/v;->c:J

    iput-wide v2, p0, Lcom/google/android/apps/analytics/v;->d:J

    iput-wide v2, p0, Lcom/google/android/apps/analytics/v;->e:J

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/apps/analytics/v;->f:I

    :goto_6f
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "timestamp_first"

    iget-wide v4, p0, Lcom/google/android/apps/analytics/v;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "timestamp_previous"

    iget-wide v4, p0, Lcom/google/android/apps/analytics/v;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "timestamp_current"

    iget-wide v4, p0, Lcom/google/android/apps/analytics/v;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "visits"

    iget v4, p0, Lcom/google/android/apps/analytics/v;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "store_id"

    iget v4, p0, Lcom/google/android/apps/analytics/v;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "session"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/v;->h:Z

    :cond_b4
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/apps/analytics/v;->a(Lcom/google/android/apps/analytics/h;Landroid/database/sqlite/SQLiteDatabase;Z)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_bb
    .catchall {:try_start_43 .. :try_end_bb} :catchall_12d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_bb} :catch_10a

    :try_start_bb
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_c4

    invoke-static {v1}, Lcom/google/android/apps/analytics/v;->d(Landroid/database/sqlite/SQLiteDatabase;)Z

    :cond_c4
    :goto_c4
    monitor-exit p0
    :try_end_c5
    .catchall {:try_start_bb .. :try_end_c5} :catchall_c7

    goto/16 :goto_d

    :catchall_c7
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_ca
    move-exception v0

    :try_start_cb
    const-string v1, "GoogleAnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t get db: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_e4
    .catchall {:try_start_cb .. :try_end_e4} :catchall_c7

    goto/16 :goto_d

    :cond_e6
    :try_start_e6
    iget-wide v2, p0, Lcom/google/android/apps/analytics/v;->e:J

    iput-wide v2, p0, Lcom/google/android/apps/analytics/v;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/apps/analytics/v;->e:J

    iget-wide v2, p0, Lcom/google/android/apps/analytics/v;->e:J

    iget-wide v4, p0, Lcom/google/android/apps/analytics/v;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_102

    iget-wide v2, p0, Lcom/google/android/apps/analytics/v;->e:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/apps/analytics/v;->e:J

    :cond_102
    iget v2, p0, Lcom/google/android/apps/analytics/v;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/apps/analytics/v;->f:I
    :try_end_108
    .catchall {:try_start_e6 .. :try_end_108} :catchall_12d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e6 .. :try_end_108} :catch_10a

    goto/16 :goto_6f

    :catch_10a
    move-exception v0

    :try_start_10b
    const-string v2, "GoogleAnalyticsTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "putEventOuter:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_123
    .catchall {:try_start_10b .. :try_end_123} :catchall_12d

    :try_start_123
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_c4

    invoke-static {v1}, Lcom/google/android/apps/analytics/v;->d(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_c4

    :catchall_12d
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_137

    invoke-static {v1}, Lcom/google/android/apps/analytics/v;->d(Landroid/database/sqlite/SQLiteDatabase;)Z

    :cond_137
    throw v0
    :try_end_138
    .catchall {:try_start_123 .. :try_end_138} :catchall_c7
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/apps/analytics/v;->j:Z

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 14

    const-wide/16 v2, 0x1

    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/apps/analytics/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v4

    :goto_c
    return v0

    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/google/android/apps/analytics/v;->a:Lcom/google/android/apps/analytics/w;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_12} :catch_57

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/analytics/v;->e(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/z;

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

    invoke-virtual {v6}, Lcom/google/android/apps/analytics/z;->d()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v6}, Lcom/google/android/apps/analytics/z;->b()J

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

    invoke-static {v5, v7}, Lcom/google/android/apps/analytics/v;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/v;->c()V

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

.method public final a(ILandroid/database/sqlite/SQLiteDatabase;I)[Lcom/google/android/apps/analytics/h;
    .registers 22

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :try_start_6
    const-string v2, "events"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "event_id"

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_13d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_1a} :catch_145

    move-result-object v16

    :goto_1b
    :try_start_1b
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_129

    new-instance v1, Lcom/google/android/apps/analytics/h;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x7

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/16 v10, 0x8

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x9

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xa

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xb

    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/16 v14, 0xc

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/16 v15, 0xd

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-direct/range {v1 .. v15}, Lcom/google/android/apps/analytics/h;-><init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/analytics/h;->g(I)V

    const-string v2, "event_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "__##GOOGLETRANSACTION##__"

    iget-object v5, v1, Lcom/google/android/apps/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e4

    move-object/from16 v0, p2

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/analytics/v;->a(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/aa;

    move-result-object v4

    if-nez v4, :cond_c5

    const-string v5, "GoogleAnalyticsTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "missing expected transaction for event "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c5
    invoke-virtual {v1, v4}, Lcom/google/android/apps/analytics/h;->a(Lcom/google/android/apps/analytics/aa;)V

    :goto_c8
    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_cd
    .catchall {:try_start_1b .. :try_end_cd} :catchall_10e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_cd} :catch_cf

    goto/16 :goto_1b

    :catch_cf
    move-exception v1

    move-object/from16 v2, v16

    :goto_d2
    :try_start_d2
    const-string v3, "GoogleAnalyticsTracker"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/analytics/h;
    :try_end_de
    .catchall {:try_start_d2 .. :try_end_de} :catchall_141

    if-eqz v2, :cond_e3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e3
    :goto_e3
    return-object v1

    :cond_e4
    :try_start_e4
    const-string v4, "__##GOOGLEITEM##__"

    iget-object v5, v1, Lcom/google/android/apps/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_115

    move-object/from16 v0, p2

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/analytics/v;->b(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/p;

    move-result-object v4

    if-nez v4, :cond_10a

    const-string v5, "GoogleAnalyticsTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "missing expected item for event "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10a
    invoke-virtual {v1, v4}, Lcom/google/android/apps/analytics/h;->a(Lcom/google/android/apps/analytics/p;)V
    :try_end_10d
    .catchall {:try_start_e4 .. :try_end_10d} :catchall_10e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e4 .. :try_end_10d} :catch_cf

    goto :goto_c8

    :catchall_10e
    move-exception v1

    :goto_10f
    if-eqz v16, :cond_114

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_114
    throw v1

    :cond_115
    const/4 v4, 0x1

    move/from16 v0, p3

    if-le v0, v4, :cond_123

    :try_start_11a
    move-object/from16 v0, p2

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/analytics/v;->c(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/e;

    move-result-object v2

    :goto_120
    iput-object v2, v1, Lcom/google/android/apps/analytics/h;->i:Lcom/google/android/apps/analytics/e;

    goto :goto_c8

    :cond_123
    new-instance v2, Lcom/google/android/apps/analytics/e;

    invoke-direct {v2}, Lcom/google/android/apps/analytics/e;-><init>()V
    :try_end_128
    .catchall {:try_start_11a .. :try_end_128} :catchall_10e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11a .. :try_end_128} :catch_cf

    goto :goto_120

    :cond_129
    if-eqz v16, :cond_12e

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_12e
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/analytics/h;

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/apps/analytics/h;

    goto :goto_e3

    :catchall_13d
    move-exception v1

    move-object/from16 v16, v10

    goto :goto_10f

    :catchall_141
    move-exception v1

    move-object/from16 v16, v2

    goto :goto_10f

    :catch_145
    move-exception v1

    move-object v2, v10

    goto :goto_d2
.end method

.method public final a()[Lcom/google/android/apps/analytics/m;
    .registers 2

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/google/android/apps/analytics/v;->b(I)[Lcom/google/android/apps/analytics/m;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/v;->g:I

    return v0
.end method

.method public final b(Landroid/database/sqlite/SQLiteDatabase;)V
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

    iput-wide v2, p0, Lcom/google/android/apps/analytics/v;->c:J

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/analytics/v;->d:J

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/analytics/v;->e:J

    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/analytics/v;->f:I

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/analytics/v;->b:I

    invoke-static {p1}, Lcom/google/android/apps/analytics/v;->e(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/z;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/apps/analytics/v;->c:J

    cmp-long v2, v2, v11

    if-eqz v2, :cond_58

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/z;->b()J

    move-result-wide v2

    cmp-long v0, v2, v11

    if-eqz v0, :cond_58

    :cond_4f
    move v0, v9

    :goto_50
    iput-boolean v0, p0, Lcom/google/android/apps/analytics/v;->h:Z
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
    iput-boolean v0, p0, Lcom/google/android/apps/analytics/v;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/v;->i:Z

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/apps/analytics/v;->b:I

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

    iget v2, p0, Lcom/google/android/apps/analytics/v;->b:I

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

.method public final declared-synchronized c()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/analytics/v;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/v;->i:Z

    invoke-direct {p0}, Lcom/google/android/apps/analytics/v;->l()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/analytics/v;->g:I
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
