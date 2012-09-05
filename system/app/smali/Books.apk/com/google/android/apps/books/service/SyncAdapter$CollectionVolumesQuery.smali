.class interface abstract Lcom/google/android/apps/books/service/SyncAdapter$CollectionVolumesQuery;
.super Ljava/lang/Object;
.source "SyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/service/SyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CollectionVolumesQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1403
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "volume_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "has_image_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "has_text_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "preferred_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "last_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "segment_fraction"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "resource_fraction"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "page_fraction"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/service/SyncAdapter$CollectionVolumesQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
