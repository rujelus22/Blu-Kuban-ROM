.class final Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;
.super Ljava/lang/Object;
.source "PicasaSyncHelper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/PicasaSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EntryMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field public dateEdited:J

.field public id:J

.field public survived:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;->survived:Z

    .line 318
    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 6
    .parameter "id"
    .parameter "dateEdited"

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;->survived:Z

    .line 326
    iput-wide p1, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;->id:J

    .line 327
    iput-wide p3, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;->dateEdited:J

    .line 328
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;)I
    .registers 6
    .parameter "other"

    .prologue
    .line 332
    iget-wide v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;->id:J

    iget-wide v2, p1, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;->id:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 312
    check-cast p1, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;->compareTo(Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;)I

    move-result v0

    return v0
.end method

.method public updateId(J)Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;
    .registers 3
    .parameter "id"

    .prologue
    .line 321
    iput-wide p1, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;->id:J

    .line 322
    return-object p0
.end method
