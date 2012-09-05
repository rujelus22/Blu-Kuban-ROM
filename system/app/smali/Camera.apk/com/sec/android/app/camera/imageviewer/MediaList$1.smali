.class Lcom/sec/android/app/camera/imageviewer/MediaList$1;
.super Ljava/lang/Object;
.source "MediaList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/imageviewer/MediaList;->initialize(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/imageviewer/MediaList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/imageviewer/MediaList;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sec/android/app/camera/imageviewer/MediaList$1;->this$0:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;)I
    .registers 7
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 161
    if-eqz p1, :cond_20

    if-eqz p2, :cond_20

    .line 162
    #getter for: Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->id:J
    invoke-static {p1}, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->access$000(Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;)J

    move-result-wide v0

    #getter for: Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->id:J
    invoke-static {p2}, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->access$000(Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    .line 163
    const/4 v0, 0x1

    .line 167
    :goto_11
    return v0

    .line 164
    :cond_12
    #getter for: Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->id:J
    invoke-static {p1}, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->access$000(Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;)J

    move-result-wide v0

    #getter for: Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->id:J
    invoke-static {p2}, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->access$000(Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    .line 165
    const/4 v0, -0x1

    goto :goto_11

    .line 167
    :cond_20
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    check-cast p1, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    .end local p1
    check-cast p2, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/imageviewer/MediaList$1;->compare(Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;)I

    move-result v0

    return v0
.end method
