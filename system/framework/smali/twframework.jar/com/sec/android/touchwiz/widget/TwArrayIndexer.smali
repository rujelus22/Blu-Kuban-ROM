.class public Lcom/sec/android/touchwiz/widget/TwArrayIndexer;
.super Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
.source "TwArrayIndexer.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final debug:Z

.field protected mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter
    .parameter "indexCharacters"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, listData:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;-><init>(Ljava/lang/CharSequence;)V

    .line 63
    const-string v0, "TwListIndexer"

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;->TAG:Ljava/lang/String;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;->debug:Z

    .line 103
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;->mData:Ljava/util/List;

    .line 105
    const-string v0, "TwListIndexer"

    const-string v1, "TwArrayIndexer constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method


# virtual methods
.method protected getItemAt(I)Ljava/lang/String;
    .registers 3
    .parameter "pos"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getItemCount()I
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isDataToBeIndexedAvailable()Z
    .registers 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;->getItemCount()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
