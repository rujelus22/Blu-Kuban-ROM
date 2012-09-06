.class public interface abstract Lcom/google/android/apps/plus/phone/CameraAlbumLoader$PhotoQuery;
.super Ljava/lang/Object;
.source "CameraAlbumLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/CameraAlbumLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "PhotoQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 92
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/apps/plus/phone/CameraAlbumLoader$CorrectedMediaStoreColumn;->DATE_TAKEN:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/phone/CameraAlbumLoader$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
