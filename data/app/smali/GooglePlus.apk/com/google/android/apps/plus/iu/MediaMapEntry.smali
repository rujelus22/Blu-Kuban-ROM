.class public Lcom/google/android/apps/plus/iu/MediaMapEntry;
.super Lcom/android/gallery3d/common/Entry;
.source "MediaMapEntry.java"


# annotations
.annotation runtime Lcom/android/gallery3d/common/Entry$Table;
    value = "media_map"
.end annotation


# static fields
.field public static final SCHEMA:Lcom/android/gallery3d/common/EntrySchema;


# instance fields
.field public endTime:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "end_time"
    .end annotation
.end field

.field public eventId:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "event_id"
    .end annotation
.end field

.field public mediaId:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "media_id"
    .end annotation
.end field

.field public startTime:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "start_time"
    .end annotation
.end field

.field public trackerKey:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "tracker_key"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcom/android/gallery3d/common/EntrySchema;

    const-class v1, Lcom/google/android/apps/plus/iu/MediaMapEntry;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/apps/plus/iu/MediaMapEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/gallery3d/common/Entry;-><init>()V

    .line 18
    return-void
.end method

.method public static createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 72
    const-string v0, "CREATE TABLE media_map (_id INTEGER PRIMARY KEY AUTOINCREMENT, event_id TEXT, tracker_key TEXT, media_id INTEGER, start_time INTEGER, end_time INTEGER, UNIQUE (tracker_key, media_id ));"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/apps/plus/iu/MediaMapEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "media_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "event_id"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/common/EntrySchema;->toDebugString(Lcom/android/gallery3d/common/Entry;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
