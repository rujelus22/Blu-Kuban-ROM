.class public interface abstract Lcom/google/android/apps/plus/phone/PhotoViewLoader$PhotoCommentQuery;
.super Ljava/lang/Object;
.source "PhotoViewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/PhotoViewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhotoCommentQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 128
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->access$300()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "comment_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "author_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "owner_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "create_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "truncated"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "content"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "plusone_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader$PhotoCommentQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
