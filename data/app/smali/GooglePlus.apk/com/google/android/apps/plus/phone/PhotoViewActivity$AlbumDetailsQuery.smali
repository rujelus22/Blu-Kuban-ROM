.class interface abstract Lcom/google/android/apps/plus/phone/PhotoViewActivity$AlbumDetailsQuery;
.super Ljava/lang/Object;
.source "PhotoViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/PhotoViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "AlbumDetailsQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "photo_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$AlbumDetailsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
