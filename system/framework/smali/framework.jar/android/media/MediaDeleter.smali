.class public Landroid/media/MediaDeleter;
.super Ljava/lang/Object;
.source "MediaDeleter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaDeleter$DeletingEntry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaScanner_MediaDeleter"


# instance fields
.field private mBufferSize:I

.field private mDeletingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaDeleter$DeletingEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mProvider:Landroid/content/IContentProviderDBAccess;

.field mTotalCount:I


# direct methods
.method public constructor <init>(Landroid/content/IContentProvider;I)V
    .registers 4
    .parameter "provider"
    .parameter "bufferSize"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaDeleter;->mDeletingList:Ljava/util/List;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaDeleter;->mTotalCount:I

    .line 55
    instance-of v0, p1, Landroid/content/IContentProviderDBAccess;

    if-eqz v0, :cond_15

    .line 56
    check-cast p1, Landroid/content/IContentProviderDBAccess;

    .end local p1
    iput-object p1, p0, Landroid/media/MediaDeleter;->mProvider:Landroid/content/IContentProviderDBAccess;

    .line 58
    :cond_15
    iput p2, p0, Landroid/media/MediaDeleter;->mBufferSize:I

    .line 59
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 6
    .parameter "uri"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Landroid/media/MediaDeleter$DeletingEntry;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-direct {v0, p0, p1, v1}, Landroid/media/MediaDeleter$DeletingEntry;-><init>(Landroid/media/MediaDeleter;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 63
    .local v0, entry:Landroid/media/MediaDeleter$DeletingEntry;
    iget-object v1, p0, Landroid/media/MediaDeleter;->mDeletingList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Landroid/media/MediaDeleter;->mDeletingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Landroid/media/MediaDeleter;->mBufferSize:I

    if-lt v1, v2, :cond_1c

    .line 65
    invoke-virtual {p0}, Landroid/media/MediaDeleter;->flush()V

    .line 67
    :cond_1c
    return-void
.end method

.method public flush()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v4, p0, Landroid/media/MediaDeleter;->mDeletingList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_72

    .line 71
    iget-object v4, p0, Landroid/media/MediaDeleter;->mDeletingList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 72
    .local v1, size:I
    new-array v2, v1, [Landroid/net/Uri;

    .line 73
    .local v2, urisArray:[Landroid/net/Uri;
    new-array v3, v1, [Landroid/content/ContentValues;

    .line 74
    .local v3, valuesArray:[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    if-ge v0, v1, :cond_30

    .line 75
    iget-object v4, p0, Landroid/media/MediaDeleter;->mDeletingList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaDeleter$DeletingEntry;

    iget-object v4, v4, Landroid/media/MediaDeleter$DeletingEntry;->mUri:Landroid/net/Uri;

    aput-object v4, v2, v0

    .line 76
    iget-object v4, p0, Landroid/media/MediaDeleter;->mDeletingList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaDeleter$DeletingEntry;

    iget-object v4, v4, Landroid/media/MediaDeleter$DeletingEntry;->mValue:Landroid/content/ContentValues;

    aput-object v4, v3, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 78
    :cond_30
    iget-object v4, p0, Landroid/media/MediaDeleter;->mProvider:Landroid/content/IContentProviderDBAccess;

    if-eqz v4, :cond_73

    .line 79
    iget-object v4, p0, Landroid/media/MediaDeleter;->mProvider:Landroid/content/IContentProviderDBAccess;

    invoke-interface {v4, v2, v3}, Landroid/content/IContentProviderDBAccess;->bulkDelete([Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 80
    const-string v4, "MediaScanner_MediaDeleter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bulk Delete Flushed. Start ID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/MediaDeleter;->mDeletingList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_68
    iget v4, p0, Landroid/media/MediaDeleter;->mTotalCount:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/media/MediaDeleter;->mTotalCount:I

    .line 86
    iget-object v4, p0, Landroid/media/MediaDeleter;->mDeletingList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 88
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #urisArray:[Landroid/net/Uri;
    .end local v3           #valuesArray:[Landroid/content/ContentValues;
    :cond_72
    return-void

    .line 83
    .restart local v0       #i:I
    .restart local v1       #size:I
    .restart local v2       #urisArray:[Landroid/net/Uri;
    .restart local v3       #valuesArray:[Landroid/content/ContentValues;
    :cond_73
    const-string v4, "MediaScanner_MediaDeleter"

    const-string v5, "MediaProvider is not a instance of DB Acceor"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Landroid/media/MediaDeleter;->mTotalCount:I

    return v0
.end method
