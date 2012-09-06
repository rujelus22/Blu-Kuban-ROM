.class public Lcom/google/android/youtube/core/model/Page$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/i;
.implements Ljava/io/Serializable;


# instance fields
.field private elementsPerPage:I

.field private entries:Ljava/util/List;

.field private nextUri:Landroid/net/Uri;

.field private previousUri:Landroid/net/Uri;

.field private startIndex:I

.field private totalResults:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 164
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->totalResults:I

    .line 165
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->elementsPerPage:I

    .line 166
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->startIndex:I

    .line 167
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->previousUri:Landroid/net/Uri;

    .line 168
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->nextUri:Landroid/net/Uri;

    .line 169
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    .line 170
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Page$Builder;->build()Lcom/google/android/youtube/core/model/Page;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 154
    iget v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->totalResults:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 155
    iget v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->elementsPerPage:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 156
    iget v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->startIndex:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->previousUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->nextUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 160
    return-void
.end method


# virtual methods
.method public addEntries(Ljava/util/List;)Lcom/google/android/youtube/core/model/Page$Builder;
    .registers 3
    .parameter

    .prologue
    .line 135
    const-string v0, "entries can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    return-object p0
.end method

.method public addEntry(Ljava/lang/Object;)Lcom/google/android/youtube/core/model/Page$Builder;
    .registers 3
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/Page;
    .registers 8

    .prologue
    .line 146
    new-instance v0, Lcom/google/android/youtube/core/model/Page;

    iget v1, p0, Lcom/google/android/youtube/core/model/Page$Builder;->totalResults:I

    iget v2, p0, Lcom/google/android/youtube/core/model/Page$Builder;->elementsPerPage:I

    iget v3, p0, Lcom/google/android/youtube/core/model/Page$Builder;->startIndex:I

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Page$Builder;->previousUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Page$Builder;->nextUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/Page;-><init>(IIILandroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Page$Builder;->build()Lcom/google/android/youtube/core/model/Page;

    move-result-object v0

    return-object v0
.end method

.method public elementsPerPage(I)Lcom/google/android/youtube/core/model/Page$Builder;
    .registers 2
    .parameter

    .prologue
    .line 108
    iput p1, p0, Lcom/google/android/youtube/core/model/Page$Builder;->elementsPerPage:I

    .line 109
    return-object p0
.end method

.method public entries(Ljava/util/List;)Lcom/google/android/youtube/core/model/Page$Builder;
    .registers 3
    .parameter

    .prologue
    .line 128
    const-string v0, "entries can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    return-object p0
.end method

.method public nextUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Page$Builder;
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Page$Builder;->nextUri:Landroid/net/Uri;

    .line 124
    return-object p0
.end method

.method public previousUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Page$Builder;
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Page$Builder;->previousUri:Landroid/net/Uri;

    .line 119
    return-object p0
.end method

.method public startIndex(I)Lcom/google/android/youtube/core/model/Page$Builder;
    .registers 2
    .parameter

    .prologue
    .line 113
    iput p1, p0, Lcom/google/android/youtube/core/model/Page$Builder;->startIndex:I

    .line 114
    return-object p0
.end method

.method public totalResults(I)Lcom/google/android/youtube/core/model/Page$Builder;
    .registers 2
    .parameter

    .prologue
    .line 103
    iput p1, p0, Lcom/google/android/youtube/core/model/Page$Builder;->totalResults:I

    .line 104
    return-object p0
.end method
