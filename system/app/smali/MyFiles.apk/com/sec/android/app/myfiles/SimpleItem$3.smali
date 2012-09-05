.class final Lcom/sec/android/app/myfiles/SimpleItem$3;
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
    .line 346
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/myfiles/SimpleItem;Lcom/sec/android/app/myfiles/SimpleItem;)I
    .registers 14
    .parameter "filea"
    .parameter "fileb"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 353
    #getter for: Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;
    invoke-static {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->access$000(Lcom/sec/android/app/myfiles/SimpleItem;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_58

    #getter for: Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;
    invoke-static {p1}, Lcom/sec/android/app/myfiles/SimpleItem;->access$000(Lcom/sec/android/app/myfiles/SimpleItem;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_58

    .line 354
    #getter for: Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;
    invoke-static {p1}, Lcom/sec/android/app/myfiles/SimpleItem;->access$000(Lcom/sec/android/app/myfiles/SimpleItem;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 355
    #getter for: Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;
    invoke-static {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->access$000(Lcom/sec/android/app/myfiles/SimpleItem;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 356
    sget-object v2, Lcom/sec/android/app/myfiles/SimpleItem;->FilesNameComparator:Ljava/util/Comparator;

    invoke-interface {v2, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 375
    :cond_2b
    :goto_2b
    return v2

    .line 361
    :cond_2c
    #getter for: Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;
    invoke-static {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->access$000(Lcom/sec/android/app/myfiles/SimpleItem;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_38

    move v2, v3

    .line 362
    goto :goto_2b

    .line 364
    :cond_38
    const-wide/16 v0, 0x0

    .line 365
    .local v0, result:J
    #getter for: Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;
    invoke-static {p1}, Lcom/sec/android/app/myfiles/SimpleItem;->access$000(Lcom/sec/android/app/myfiles/SimpleItem;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    #getter for: Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;
    invoke-static {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->access$000(Lcom/sec/android/app/myfiles/SimpleItem;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    sub-long v0, v5, v7

    .line 366
    cmp-long v5, v0, v9

    if-lez v5, :cond_52

    move v2, v3

    .line 367
    goto :goto_2b

    .line 368
    :cond_52
    cmp-long v3, v0, v9

    if-ltz v3, :cond_2b

    move v2, v4

    .line 371
    goto :goto_2b

    .end local v0           #result:J
    :cond_58
    move v2, v4

    .line 375
    goto :goto_2b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 346
    check-cast p1, Lcom/sec/android/app/myfiles/SimpleItem;

    .end local p1
    check-cast p2, Lcom/sec/android/app/myfiles/SimpleItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/myfiles/SimpleItem$3;->compare(Lcom/sec/android/app/myfiles/SimpleItem;Lcom/sec/android/app/myfiles/SimpleItem;)I

    move-result v0

    return v0
.end method
