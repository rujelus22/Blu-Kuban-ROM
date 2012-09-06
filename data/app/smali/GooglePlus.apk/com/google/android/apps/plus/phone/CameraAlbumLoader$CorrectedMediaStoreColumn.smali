.class interface abstract Lcom/google/android/apps/plus/phone/CameraAlbumLoader$CorrectedMediaStoreColumn;
.super Ljava/lang/Object;
.source "CameraAlbumLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/CameraAlbumLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CorrectedMediaStoreColumn"
.end annotation


# static fields
.field public static final DATE_TAKEN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 71
    const-string v0, "case when (datetaken >= %1$d and datetaken < %2$d) then datetaken * 1000 when (datetaken >= %3$d and datetaken < %4$d) then datetaken when (datetaken >= %5$d and datetaken < %6$d) then datetaken / 1000 else 0 end as %7$s"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/32 v3, 0x9660180

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-wide/32 v3, 0x70c81200

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-wide v3, 0x24b675dc00L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-wide v3, 0x1b88d865000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-wide v3, 0x8f68bc636000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-wide v3, 0x6b8e8d4a88000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "corrected_date_taken"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/phone/CameraAlbumLoader$CorrectedMediaStoreColumn;->DATE_TAKEN:Ljava/lang/String;

    return-void
.end method
