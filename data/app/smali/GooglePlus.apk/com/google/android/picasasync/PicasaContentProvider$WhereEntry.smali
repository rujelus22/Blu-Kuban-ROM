.class Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;
.super Ljava/lang/Object;
.source "PicasaContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WhereEntry"
.end annotation


# static fields
.field private static final TYPE_WHERE_CLAUSE:Ljava/lang/String;

.field private static final WHERE_CLAUSE:Ljava/lang/String;


# instance fields
.field public selection:Ljava/lang/String;

.field public selectionArgs:[Ljava/lang/String;

.field public sortLimit:Ljava/lang/String;

.field public sortOrder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id in (SELECT _id FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/picasasync/PicasaContentProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "album_type = \'Buzz\' AND user_id = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;->WHERE_CLAUSE:Ljava/lang/String;

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;->WHERE_CLAUSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "content_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;->TYPE_WHERE_CLAUSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 9
    .parameter "uri"
    .parameter "order"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, userId:Ljava/lang/String;
    const-string v2, "type"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, contentType:Ljava/lang/String;
    const-string v2, "image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 379
    sget-object v2, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;->TYPE_WHERE_CLAUSE:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;->selection:Ljava/lang/String;

    .line 380
    new-array v2, v5, [Ljava/lang/String;

    aput-object v1, v2, v3

    const-string v3, "image/%"

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;->selectionArgs:[Ljava/lang/String;

    .line 388
    :goto_28
    const-string v2, "limit"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;->sortLimit:Ljava/lang/String;

    .line 389
    iput-object p2, p0, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;->sortOrder:Ljava/lang/String;

    .line 390
    return-void

    .line 381
    :cond_33
    const-string v2, "video"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 382
    sget-object v2, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;->TYPE_WHERE_CLAUSE:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;->selection:Ljava/lang/String;

    .line 383
    new-array v2, v5, [Ljava/lang/String;

    aput-object v1, v2, v3

    const-string v3, "video/%"

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;->selectionArgs:[Ljava/lang/String;

    goto :goto_28

    .line 385
    :cond_4a
    sget-object v2, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;->WHERE_CLAUSE:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;->selection:Ljava/lang/String;

    .line 386
    new-array v2, v4, [Ljava/lang/String;

    aput-object v1, v2, v3

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;->selectionArgs:[Ljava/lang/String;

    goto :goto_28
.end method
