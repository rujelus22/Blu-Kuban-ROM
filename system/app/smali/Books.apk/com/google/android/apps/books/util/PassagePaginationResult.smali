.class public Lcom/google/android/apps/books/util/PassagePaginationResult;
.super Ljava/lang/Object;
.source "PassagePaginationResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;
    }
.end annotation


# instance fields
.field private final mPageBounds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 9
    .parameter "pageBounds"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, numbers:[Ljava/lang/String;
    array-length v5, v2

    div-int/lit8 v3, v5, 0x2

    .line 57
    .local v3, pagesCount:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/google/android/apps/books/util/PassagePaginationResult;->mPageBounds:Ljava/util/ArrayList;

    .line 59
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_14
    add-int/lit8 v5, v1, 0x1

    array-length v6, v2

    if-ge v5, v6, :cond_3c

    .line 60
    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 61
    .local v4, top:I
    add-int/lit8 v5, v1, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 62
    .local v0, bot:I
    iget-object v5, p0, Lcom/google/android/apps/books/util/PassagePaginationResult;->mPageBounds:Ljava/util/ArrayList;

    new-instance v6, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;

    invoke-direct {v6, p0, v4, v0}, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;-><init>(Lcom/google/android/apps/books/util/PassagePaginationResult;II)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v1, v1, 0x2

    goto :goto_14

    .line 64
    .end local v0           #bot:I
    .end local v4           #top:I
    :cond_3c
    return-void
.end method


# virtual methods
.method public getBottomOfLastPage()I
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/apps/books/util/PassagePaginationResult;->mPageBounds:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/books/util/PassagePaginationResult;->mPageBounds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;

    iget v0, v0, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;->pageBottom:I

    return v0
.end method

.method public getPageBounds(I)Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;
    .registers 3
    .parameter "pageIndex"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/books/util/PassagePaginationResult;->mPageBounds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;

    return-object v0
.end method

.method public getPageIndexForPosition(ILjava/lang/Integer;)I
    .registers 7
    .parameter "position"
    .parameter "nearByPage"

    .prologue
    .line 94
    if-nez p2, :cond_1d

    .line 95
    const/4 v0, 0x0

    .line 105
    .local v0, currentPage:I
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/google/android/apps/books/util/PassagePaginationResult;->mPageBounds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;

    .line 106
    .local v1, currentPageBounds:Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;
    iget v2, v1, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;->pageTop:I

    if-ge p1, v2, :cond_36

    .line 107
    add-int/lit8 v0, v0, -0x1

    .line 114
    :goto_11
    if-ltz v0, :cond_1b

    iget-object v2, p0, Lcom/google/android/apps/books/util/PassagePaginationResult;->mPageBounds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 115
    :cond_1b
    const/4 v2, -0x1

    :goto_1c
    return v2

    .line 97
    .end local v0           #currentPage:I
    .end local v1           #currentPageBounds:Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;
    :cond_1d
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2f

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/books/util/PassagePaginationResult;->mPageBounds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_31

    .line 98
    :cond_2f
    const/4 v0, 0x0

    .restart local v0       #currentPage:I
    goto :goto_3

    .line 100
    .end local v0           #currentPage:I
    :cond_31
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #currentPage:I
    goto :goto_3

    .line 108
    .restart local v1       #currentPageBounds:Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;
    :cond_36
    iget v2, v1, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;->pageBottom:I

    if-lt p1, v2, :cond_3d

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_3d
    move v2, v0

    .line 112
    goto :goto_1c
.end method

.method public getPagesCount()I
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/books/util/PassagePaginationResult;->mPageBounds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
