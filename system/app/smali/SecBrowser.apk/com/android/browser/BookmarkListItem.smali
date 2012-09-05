.class public Lcom/android/browser/BookmarkListItem;
.super Ljava/lang/Object;
.source "BookmarkListItem.java"


# instance fields
.field private favicon:[B

.field private id:J

.field private isfolder:J

.field private thumbnail:[B

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;[B[BJ)V
    .registers 9
    .parameter "id"
    .parameter "title"
    .parameter "url"
    .parameter "favicon"
    .parameter "thumbnail"
    .parameter "isfolder"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BookmarkListItem;->setId(J)V

    .line 39
    invoke-virtual {p0, p3}, Lcom/android/browser/BookmarkListItem;->setTitle(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p4}, Lcom/android/browser/BookmarkListItem;->setUrl(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p5}, Lcom/android/browser/BookmarkListItem;->setFavicon([B)V

    .line 42
    invoke-virtual {p0, p6}, Lcom/android/browser/BookmarkListItem;->setThumbnail([B)V

    .line 43
    invoke-virtual {p0, p7, p8}, Lcom/android/browser/BookmarkListItem;->setIsFolder(J)V

    .line 44
    return-void
.end method


# virtual methods
.method public getFavicon()[B
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/browser/BookmarkListItem;->favicon:[B

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/android/browser/BookmarkListItem;->id:J

    return-wide v0
.end method

.method public getIsFolder()J
    .registers 3

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/browser/BookmarkListItem;->isfolder:J

    return-wide v0
.end method

.method public getThumbnail()[B
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/browser/BookmarkListItem;->thumbnail:[B

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/browser/BookmarkListItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/browser/BookmarkListItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setFavicon([B)V
    .registers 2
    .parameter "favicon"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/browser/BookmarkListItem;->favicon:[B

    .line 76
    return-void
.end method

.method public setId(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/android/browser/BookmarkListItem;->id:J

    .line 52
    return-void
.end method

.method public setIsFolder(J)V
    .registers 3
    .parameter "isfolder"

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/android/browser/BookmarkListItem;->isfolder:J

    .line 92
    return-void
.end method

.method public setThumbnail([B)V
    .registers 2
    .parameter "thumbnail"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/browser/BookmarkListItem;->thumbnail:[B

    .line 84
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/browser/BookmarkListItem;->title:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/browser/BookmarkListItem;->url:Ljava/lang/String;

    .line 68
    return-void
.end method
