.class Lcom/android/email/provider/ContentCache$TokenList;
.super Ljava/util/ArrayList;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TokenList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/email/provider/ContentCache$CacheToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLogTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenList-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/ContentCache$TokenList;->mLogTag:Ljava/lang/String;

    .line 184
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lcom/android/email/provider/ContentCache$CacheToken;
    .registers 4
    .parameter "id"

    .prologue
    .line 228
    new-instance v0, Lcom/android/email/provider/ContentCache$CacheToken;

    invoke-direct {v0, p1}, Lcom/android/email/provider/ContentCache$CacheToken;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, token:Lcom/android/email/provider/ContentCache$CacheToken;
    invoke-super {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 233
    :cond_c
    return-object v0
.end method

.method invalidate()V
    .registers 4

    .prologue
    .line 206
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 209
    :cond_4
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCache$TokenList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/provider/ContentCache$CacheToken;

    .line 210
    .local v1, token:Lcom/android/email/provider/ContentCache$CacheToken;
    invoke-virtual {v1}, Lcom/android/email/provider/ContentCache$CacheToken;->invalidate()V

    goto :goto_8

    .line 212
    .end local v1           #token:Lcom/android/email/provider/ContentCache$CacheToken;
    :cond_18
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCache$TokenList;->clear()V

    .line 213
    return-void
.end method

.method invalidateTokens(Ljava/lang/String;)I
    .registers 7
    .parameter "id"

    .prologue
    .line 187
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 190
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v2, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/provider/ContentCache$CacheToken;>;"
    const/4 v0, 0x0

    .line 192
    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCache$TokenList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/provider/ContentCache$CacheToken;

    .line 193
    .local v3, token:Lcom/android/email/provider/ContentCache$CacheToken;
    invoke-virtual {v3}, Lcom/android/email/provider/ContentCache$CacheToken;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 194
    invoke-virtual {v3}, Lcom/android/email/provider/ContentCache$CacheToken;->invalidate()V

    .line 195
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 199
    .end local v3           #token:Lcom/android/email/provider/ContentCache$CacheToken;
    :cond_2d
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/provider/ContentCache$CacheToken;

    .line 200
    .restart local v3       #token:Lcom/android/email/provider/ContentCache$CacheToken;
    invoke-virtual {p0, v3}, Lcom/android/email/provider/ContentCache$TokenList;->remove(Lcom/android/email/provider/ContentCache$CacheToken;)Z

    goto :goto_31

    .line 202
    .end local v3           #token:Lcom/android/email/provider/ContentCache$CacheToken;
    :cond_41
    return v0
.end method

.method remove(Lcom/android/email/provider/ContentCache$CacheToken;)Z
    .registers 4
    .parameter "token"

    .prologue
    .line 216
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 217
    .local v0, result:Z
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 224
    :cond_8
    return v0
.end method
