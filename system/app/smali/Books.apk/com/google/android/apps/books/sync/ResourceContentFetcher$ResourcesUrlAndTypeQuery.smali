.class interface abstract Lcom/google/android/apps/books/sync/ResourceContentFetcher$ResourcesUrlAndTypeQuery;
.super Ljava/lang/Object;
.source "ResourceContentFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/sync/ResourceContentFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ResourcesUrlAndTypeQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "remote_url"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "resource_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher$ResourcesUrlAndTypeQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
