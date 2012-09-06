.class public interface abstract Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoShapeQuery;
.super Ljava/lang/Object;
.source "PhotoViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PhotoViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhotoShapeQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 206
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "creator_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "creator_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "shape_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "subject_avatar"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "subject_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "subject_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoShapeQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
