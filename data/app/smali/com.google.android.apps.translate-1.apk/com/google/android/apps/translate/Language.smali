.class public Lcom/google/android/apps/translate/Language;
.super Ljava/lang/Object;
.source "Language.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/apps/translate/Language;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mLongName:Ljava/lang/String;

.field private mShortName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "shortName"
    .parameter "longName"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p2}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/translate/Language;->mLongName:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/translate/Language;->mShortName:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/apps/translate/Language;)I
    .registers 4
    .parameter "another"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/translate/Language;->mLongName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/apps/translate/Language;->mLongName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 5
    check-cast p1, Lcom/google/android/apps/translate/Language;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/Language;->compareTo(Lcom/google/android/apps/translate/Language;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    if-ne p0, p1, :cond_5

    .line 37
    :cond_4
    :goto_4
    return v1

    .line 33
    :cond_5
    instance-of v3, p1, Lcom/google/android/apps/translate/Language;

    if-nez v3, :cond_b

    move v1, v2

    .line 34
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 36
    check-cast v0, Lcom/google/android/apps/translate/Language;

    .line 37
    .local v0, that:Lcom/google/android/apps/translate/Language;
    iget-object v3, p0, Lcom/google/android/apps/translate/Language;->mLongName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/apps/translate/Language;->mLongName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/google/android/apps/translate/Language;->mShortName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/apps/translate/Language;->mShortName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_22
    move v1, v2

    goto :goto_4
.end method

.method public getLongName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/apps/translate/Language;->mLongName:Ljava/lang/String;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/apps/translate/Language;->mShortName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/translate/Language;->mLongName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/translate/Language;->mShortName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/translate/Language;->mLongName:Ljava/lang/String;

    return-object v0
.end method
