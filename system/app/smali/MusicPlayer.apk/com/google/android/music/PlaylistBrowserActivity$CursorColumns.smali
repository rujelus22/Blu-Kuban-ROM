.class interface abstract Lcom/google/android/music/PlaylistBrowserActivity$CursorColumns;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CursorColumns"
.end annotation


# static fields
.field public static final COLUMN_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 457
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ListType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "KeepOnId"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hasRemote"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hasLocal"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/PlaylistBrowserActivity$CursorColumns;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method
