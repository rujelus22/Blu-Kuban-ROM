.class final Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
.super Ljava/lang/Object;
.source "PicasaSyncHelper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaSyncHelper;
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
        "Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field public dateEdited:J

.field public displayIndex:I

.field public id:J

.field public survived:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->survived:Z

    .line 649
    return-void
.end method

.method public constructor <init>(JJI)V
    .registers 7
    .parameter "id"
    .parameter "dateEdited"
    .parameter "displayIndex"

    .prologue
    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->survived:Z

    .line 657
    iput-wide p1, p0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    .line 658
    iput-wide p3, p0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->dateEdited:J

    .line 659
    iput p5, p0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->displayIndex:I

    .line 660
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;)I
    .registers 6
    .parameter "other"

    .prologue
    .line 664
    iget-wide v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    iget-wide v2, p1, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 642
    check-cast p1, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->compareTo(Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;)I

    move-result v0

    return v0
.end method

.method public updateId(J)Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    .registers 3
    .parameter "id"

    .prologue
    .line 652
    iput-wide p1, p0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    .line 653
    return-object p0
.end method
