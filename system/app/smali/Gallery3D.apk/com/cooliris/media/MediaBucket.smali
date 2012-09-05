.class public Lcom/cooliris/media/MediaBucket;
.super Ljava/lang/Object;
.source "MediaBucket.java"


# instance fields
.field public mediaItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public mediaSet:Lcom/cooliris/media/MediaSet;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
