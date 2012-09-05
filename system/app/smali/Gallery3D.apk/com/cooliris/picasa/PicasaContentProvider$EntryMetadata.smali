.class final Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;
.super Ljava/lang/Object;
.source "PicasaContentProvider.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/picasa/PicasaContentProvider;
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
        "Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;",
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
    .line 687
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 684
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->survived:Z

    .line 688
    return-void
.end method

.method public constructor <init>(JJI)V
    .registers 7
    .parameter "id"
    .parameter "dateEdited"
    .parameter "displayIndex"

    .prologue
    .line 690
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 684
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->survived:Z

    .line 691
    iput-wide p1, p0, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->id:J

    .line 692
    iput-wide p3, p0, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->dateEdited:J

    .line 693
    iput p5, p0, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->displayIndex:I

    .line 694
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;)I
    .registers 6
    .parameter "other"

    .prologue
    .line 697
    iget-wide v0, p0, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->id:J

    iget-wide v2, p1, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->id:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 677
    check-cast p1, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->compareTo(Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;)I

    move-result v0

    return v0
.end method
