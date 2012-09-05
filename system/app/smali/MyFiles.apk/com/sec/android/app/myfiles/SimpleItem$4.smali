.class final Lcom/sec/android/app/myfiles/SimpleItem$4;
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
    .line 379
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/myfiles/SimpleItem;Lcom/sec/android/app/myfiles/SimpleItem;)I
    .registers 5
    .parameter "filea"
    .parameter "fileb"

    .prologue
    const/4 v0, 0x1

    .line 385
    #getter for: Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;
    invoke-static {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->access$000(Lcom/sec/android/app/myfiles/SimpleItem;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_27

    #getter for: Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;
    invoke-static {p1}, Lcom/sec/android/app/myfiles/SimpleItem;->access$000(Lcom/sec/android/app/myfiles/SimpleItem;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 386
    #getter for: Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;
    invoke-static {p1}, Lcom/sec/android/app/myfiles/SimpleItem;->access$000(Lcom/sec/android/app/myfiles/SimpleItem;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 387
    #getter for: Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;
    invoke-static {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->access$000(Lcom/sec/android/app/myfiles/SimpleItem;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 388
    sget-object v0, Lcom/sec/android/app/myfiles/SimpleItem;->FilesNameComparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 405
    :cond_27
    :goto_27
    return v0

    .line 390
    :cond_28
    const/4 v0, -0x1

    goto :goto_27

    .line 393
    :cond_2a
    #getter for: Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;
    invoke-static {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->access$000(Lcom/sec/android/app/myfiles/SimpleItem;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_27

    .line 397
    invoke-virtual {p1}, Lcom/sec/android/app/myfiles/SimpleItem;->getExtention()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getExtention()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 398
    sget-object v0, Lcom/sec/android/app/myfiles/SimpleItem;->FilesNameComparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_27

    .line 401
    :cond_49
    invoke-virtual {p1}, Lcom/sec/android/app/myfiles/SimpleItem;->getExtention()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getExtention()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_27
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 379
    check-cast p1, Lcom/sec/android/app/myfiles/SimpleItem;

    .end local p1
    check-cast p2, Lcom/sec/android/app/myfiles/SimpleItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/myfiles/SimpleItem$4;->compare(Lcom/sec/android/app/myfiles/SimpleItem;Lcom/sec/android/app/myfiles/SimpleItem;)I

    move-result v0

    return v0
.end method
