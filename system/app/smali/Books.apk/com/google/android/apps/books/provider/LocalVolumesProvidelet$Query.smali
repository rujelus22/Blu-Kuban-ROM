.class interface abstract Lcom/google/android/apps/books/provider/LocalVolumesProvidelet$Query;
.super Ljava/lang/Object;
.source "LocalVolumesProvidelet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Query"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 73
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "volume_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "viewability"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "buy_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "open_access"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "content_version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet$Query;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
