.class public final Lcom/android/email/provider/ContentCache$CacheToken;
.super Ljava/lang/Object;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheToken"
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private mIsValid:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "id"

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/provider/ContentCache$CacheToken;->mIsValid:Z

    .line 247
    iput-object p1, p0, Lcom/android/email/provider/ContentCache$CacheToken;->mId:Ljava/lang/String;

    .line 248
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "token"

    .prologue
    .line 264
    instance-of v0, p1, Lcom/android/email/provider/ContentCache$CacheToken;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/android/email/provider/ContentCache$CacheToken;

    .end local p1
    iget-object v0, p1, Lcom/android/email/provider/ContentCache$CacheToken;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/provider/ContentCache$CacheToken;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/email/provider/ContentCache$CacheToken;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/email/provider/ContentCache$CacheToken;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method invalidate()V
    .registers 2

    .prologue
    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/provider/ContentCache$CacheToken;->mIsValid:Z

    .line 260
    return-void
.end method

.method isValid()Z
    .registers 2

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/android/email/provider/ContentCache$CacheToken;->mIsValid:Z

    return v0
.end method
