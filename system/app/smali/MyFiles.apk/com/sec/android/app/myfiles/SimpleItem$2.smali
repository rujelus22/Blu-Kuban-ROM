.class final Lcom/sec/android/app/myfiles/SimpleItem$2;
.super Ljava/lang/Object;
.source "SimpleItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/SimpleItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/myfiles/SimpleItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 326
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/myfiles/SimpleItem;Lcom/sec/android/app/myfiles/SimpleItem;)I
    .registers 12
    .parameter "filea"
    .parameter "fileb"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    .line 332
    #getter for: Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;
    invoke-static {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->access$000(Lcom/sec/android/app/myfiles/SimpleItem;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_20

    #getter for: Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;
    invoke-static {p1}, Lcom/sec/android/app/myfiles/SimpleItem;->access$000(Lcom/sec/android/app/myfiles/SimpleItem;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 333
    const-wide/16 v0, 0x0

    .line 334
    .local v0, result:J
    invoke-virtual {p1}, Lcom/sec/android/app/myfiles/SimpleItem;->getDateLong()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getDateLong()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 335
    cmp-long v3, v0, v7

    if-lez v3, :cond_21

    .line 336
    const/4 v2, -0x1

    .line 342
    .end local v0           #result:J
    :cond_20
    :goto_20
    return v2

    .line 337
    .restart local v0       #result:J
    :cond_21
    cmp-long v3, v0, v7

    if-gez v3, :cond_20

    .line 338
    const/4 v2, 0x1

    goto :goto_20
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 326
    check-cast p1, Lcom/sec/android/app/myfiles/SimpleItem;

    .end local p1
    check-cast p2, Lcom/sec/android/app/myfiles/SimpleItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/myfiles/SimpleItem$2;->compare(Lcom/sec/android/app/myfiles/SimpleItem;Lcom/sec/android/app/myfiles/SimpleItem;)I

    move-result v0

    return v0
.end method
