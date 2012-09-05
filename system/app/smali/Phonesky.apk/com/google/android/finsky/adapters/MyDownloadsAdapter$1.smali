.class final Lcom/google/android/finsky/adapters/MyDownloadsAdapter$1;
.super Ljava/lang/Object;
.source "MyDownloadsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/MyDownloadsAdapter;
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
        "Lcom/google/android/vending/model/Asset;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/vending/model/Asset;Lcom/google/android/vending/model/Asset;)I
    .registers 8
    .parameter "asset1"
    .parameter "asset2"

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, title1:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, title2:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->access$000()Ljava/text/Collator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 106
    .local v2, titleComp:I
    if-eqz v2, :cond_13

    .line 110
    .end local v2           #titleComp:I
    :goto_12
    return v2

    .restart local v2       #titleComp:I
    :cond_13
    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_12
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    check-cast p1, Lcom/google/android/vending/model/Asset;

    .end local p1
    check-cast p2, Lcom/google/android/vending/model/Asset;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$1;->compare(Lcom/google/android/vending/model/Asset;Lcom/google/android/vending/model/Asset;)I

    move-result v0

    return v0
.end method
