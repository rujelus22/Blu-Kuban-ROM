.class interface abstract Lcom/google/android/apps/reader/content/ReaderSync$PendingActionsQuery;
.super Ljava/lang/Object;
.source "ReaderSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/content/ReaderSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PendingActionsQuery"
.end annotation


# static fields
.field public static final COLUMN_CREATED:I = 0x3

.field public static final COLUMN_DATA:I = 0x2

.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_URL:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "created"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/content/ReaderSync$PendingActionsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
