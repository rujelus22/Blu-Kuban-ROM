.class final Lcom/sec/android/app/myfiles/SimpleItem$1;
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
    .line 302
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/myfiles/SimpleItem;Lcom/sec/android/app/myfiles/SimpleItem;)I
    .registers 6
    .parameter "filea"
    .parameter "fileb"

    .prologue
    const/4 v1, 0x1

    .line 311
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 313
    .local v0, collator:Ljava/text/Collator;
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 315
    #getter for: Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;
    invoke-static {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->access$000(Lcom/sec/android/app/myfiles/SimpleItem;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_20

    #getter for: Lcom/sec/android/app/myfiles/SimpleItem;->mFile:Ljava/io/File;
    invoke-static {p1}, Lcom/sec/android/app/myfiles/SimpleItem;->access$000(Lcom/sec/android/app/myfiles/SimpleItem;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 320
    invoke-virtual {p1}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 322
    :cond_20
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 302
    check-cast p1, Lcom/sec/android/app/myfiles/SimpleItem;

    .end local p1
    check-cast p2, Lcom/sec/android/app/myfiles/SimpleItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/myfiles/SimpleItem$1;->compare(Lcom/sec/android/app/myfiles/SimpleItem;Lcom/sec/android/app/myfiles/SimpleItem;)I

    move-result v0

    return v0
.end method
