.class public Lcom/google/wireless/gdata2/data/Feed;
.super Ljava/lang/Object;
.source "Feed.java"


# instance fields
.field private category:Ljava/lang/String;

.field private categoryScheme:Ljava/lang/String;

.field private eTagValue:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private itemsPerPage:I

.field private lastUpdated:Ljava/lang/String;

.field private startIndex:I

.field private title:Ljava/lang/String;

.field private totalResults:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Feed;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Feed;->categoryScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Feed;->eTagValue:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Feed;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getItemsPerPage()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/google/wireless/gdata2/data/Feed;->itemsPerPage:I

    return v0
.end method

.method public getLastUpdated()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Feed;->lastUpdated:Ljava/lang/String;

    return-object v0
.end method

.method public getStartIndex()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/google/wireless/gdata2/data/Feed;->startIndex:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/Feed;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalResults()I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/google/wireless/gdata2/data/Feed;->totalResults:I

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Feed;->category:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setCategoryScheme(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Feed;->categoryScheme:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Feed;->eTagValue:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Feed;->id:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setItemsPerPage(I)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lcom/google/wireless/gdata2/data/Feed;->itemsPerPage:I

    .line 76
    return-void
.end method

.method public setLastUpdated(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Feed;->lastUpdated:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setStartIndex(I)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput p1, p0, Lcom/google/wireless/gdata2/data/Feed;->startIndex:I

    .line 59
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/Feed;->title:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setTotalResults(I)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/google/wireless/gdata2/data/Feed;->totalResults:I

    .line 42
    return-void
.end method
