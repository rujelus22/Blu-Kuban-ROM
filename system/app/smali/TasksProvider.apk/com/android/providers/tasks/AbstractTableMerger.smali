.class public abstract Lcom/android/providers/tasks/AbstractTableMerger;
.super Ljava/lang/Object;
.source "AbstractTableMerger.java"


# static fields
.field private static TRACE:Z

.field protected static mSyncMarkValues:Landroid/content/ContentValues;

.field private static final syncDirtyProjection:[Ljava/lang/String;

.field private static final syncIdAndVersionProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/providers/tasks/AbstractTableMerger;->mSyncMarkValues:Landroid/content/ContentValues;

    .line 54
    sget-object v0, Lcom/android/providers/tasks/AbstractTableMerger;->mSyncMarkValues:Landroid/content/ContentValues;

    const-string v1, "_sync_mark"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    sput-boolean v3, Lcom/android/providers/tasks/AbstractTableMerger;->TRACE:Z

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_sync_dirty"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_sync_id"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "_sync_version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/tasks/AbstractTableMerger;->syncDirtyProjection:[Ljava/lang/String;

    .line 61
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_sync_id"

    aput-object v1, v0, v3

    const-string v1, "_sync_version"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/tasks/AbstractTableMerger;->syncIdAndVersionProjection:[Ljava/lang/String;

    return-void
.end method
