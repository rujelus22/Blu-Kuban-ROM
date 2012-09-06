.class public Lcom/google/android/apps/unveil/env/media/MediaStoreUtils;
.super Ljava/lang/Object;
.source "MediaStoreUtils.java"


# static fields
.field public static final CORRECTED_DATE_TAKEN:Ljava/lang/String; = "corrected_date_taken"

.field public static final CORRECTED_DATE_TAKEN_EXPR:Ljava/lang/String; = null

.field public static final MAX_ALLOWABLE_UTC_MSEC:J = 0x1b88d865000L

.field public static final MAX_ALLOWABLE_UTC_SEC:J = 0x70c81200L

.field public static final MAX_ALLOWABLE_UTC_USEC:J = 0x6b8e8d4a88000L

.field public static final MAX_ALLOWABLE_YEAR:J = 0x7eeL

.field public static final MIN_ALLOWABLE_UTC_MSEC:J = 0x24b675dc00L

.field public static final MIN_ALLOWABLE_UTC_SEC:J = 0x9660180L

.field public static final MIN_ALLOWABLE_UTC_USEC:J = 0x8f68bc636000L

.field public static final MIN_ALLOWABLE_YEAR:J = 0x7b7L


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 63
    const-string v0, "case when (datetaken >= %1$d and datetaken < %2$d) then datetaken * 1000 when (datetaken >= %3$d and datetaken < %4$d) then datetaken when (datetaken >= %5$d and datetaken < %6$d) then datetaken / 1000 else 0 end AS %7$s"

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

    sput-object v0, Lcom/google/android/apps/unveil/env/media/MediaStoreUtils;->CORRECTED_DATE_TAKEN_EXPR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static isMediaStoreUri(Landroid/net/Uri;)Z
    .registers 3
    .parameter "uri"

    .prologue
    .line 85
    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "media"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
