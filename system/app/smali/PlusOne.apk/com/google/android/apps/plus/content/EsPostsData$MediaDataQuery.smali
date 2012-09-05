.class interface abstract Lcom/google/android/apps/plus/content/EsPostsData$MediaDataQuery;
.super Ljava/lang/Object;
.source "EsPostsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/content/EsPostsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "MediaDataQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/content/EsPostsData$MediaDataQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
