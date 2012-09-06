.class public final Lcom/google/android/youtube/core/model/Page;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# instance fields
.field public final elementsPerPage:I

.field public final entries:Ljava/util/List;

.field public final nextUri:Landroid/net/Uri;

.field public final previousUri:Landroid/net/Uri;

.field public final startIndex:I

.field public final totalResults:I


# direct methods
.method public constructor <init>(IIILandroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/google/android/youtube/core/model/Page;->totalResults:I

    .line 65
    iput p2, p0, Lcom/google/android/youtube/core/model/Page;->elementsPerPage:I

    .line 66
    iput p3, p0, Lcom/google/android/youtube/core/model/Page;->startIndex:I

    .line 67
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Page;->previousUri:Landroid/net/Uri;

    .line 68
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    .line 69
    invoke-static {p6}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    .line 70
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 91
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Page;->buildUpon()Lcom/google/android/youtube/core/model/Page$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/Page$Builder;
    .registers 3

    .prologue
    .line 77
    new-instance v0, Lcom/google/android/youtube/core/model/Page$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Page$Builder;-><init>()V

    iget v1, p0, Lcom/google/android/youtube/core/model/Page;->totalResults:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Page$Builder;->totalResults(I)Lcom/google/android/youtube/core/model/Page$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/Page;->elementsPerPage:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Page$Builder;->elementsPerPage(I)Lcom/google/android/youtube/core/model/Page$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/Page;->startIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Page$Builder;->startIndex(I)Lcom/google/android/youtube/core/model/Page$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Page;->previousUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Page$Builder;->previousUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Page$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Page$Builder;->nextUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Page$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Page$Builder;->addEntries(Ljava/util/List;)Lcom/google/android/youtube/core/model/Page$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
