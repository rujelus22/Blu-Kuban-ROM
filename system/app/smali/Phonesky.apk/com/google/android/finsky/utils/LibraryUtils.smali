.class public Lcom/google/android/finsky/utils/LibraryUtils;
.super Ljava/lang/Object;
.source "LibraryUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 7
    .parameter "document"
    .parameter "libraries"
    .parameter "currentAccount"

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    .line 72
    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwners(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;)Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 79
    .end local v0           #owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    .end local p2
    :cond_12
    :goto_12
    return-object p2

    .line 76
    .restart local v0       #owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    .restart local p2
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    :cond_20
    move-object p2, v1

    goto :goto_12

    .line 79
    .end local v0           #owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    :cond_22
    invoke-virtual {p1, p2}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v2

    if-nez v2, :cond_12

    move-object p2, v1

    goto :goto_12
.end method

.method public static getOwnerWithCurrentAccount(Ljava/util/List;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 7
    .parameter
    .parameter "libraries"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Lcom/google/android/finsky/library/Libraries;",
            "Landroid/accounts/Account;",
            ")",
            "Landroid/accounts/Account;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, docs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    .line 92
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v0, p1, p2}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v2

    .line 93
    .local v2, owner:Landroid/accounts/Account;
    if-eqz v2, :cond_4

    .line 97
    .end local v0           #doc:Lcom/google/android/finsky/api/model/Document;
    .end local v2           #owner:Landroid/accounts/Account;
    :goto_16
    return-object v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public static getOwners(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;)Ljava/util/List;
    .registers 6
    .parameter "document"
    .parameter "libraries"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "Lcom/google/android/finsky/library/Libraries;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 108
    .local v2, owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-virtual {p1}, Lcom/google/android/finsky/library/Libraries;->getAccountLibraries()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AccountLibrary;

    .line 109
    .local v0, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 110
    invoke-virtual {v0}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 113
    .end local v0           #accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    :cond_26
    return-object v2
.end method

.method public static isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z
    .registers 12
    .parameter "document"
    .parameter "dfeToc"
    .parameter "library"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    if-eqz p1, :cond_1e

    .line 39
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    .line 40
    .local v0, corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    if-nez v0, :cond_27

    .line 41
    const-string v5, "Corpus for %s is not available."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v5, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 59
    .end local v0           #corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_1d
    :goto_1d
    return v1

    .line 44
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_27

    move v1, v3

    .line 46
    goto :goto_1d

    .line 49
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAvailabilityRestriction()I

    move-result v2

    .line 50
    .local v2, restriction:I
    if-ne v2, v4, :cond_66

    move v1, v4

    .line 51
    .local v1, isAvailable:Z
    :goto_2e
    if-nez v1, :cond_50

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->isAvailableIfOwned()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-static {p0, p2}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 52
    const-string v5, "%s available because owned, overriding [restriction=%d]."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    const/4 v1, 0x1

    .line 56
    :cond_50
    if-nez v1, :cond_1d

    .line 57
    const-string v5, "%s not available [restriction=%d]."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d

    .end local v1           #isAvailable:Z
    :cond_66
    move v1, v3

    .line 50
    goto :goto_2e
.end method

.method public static isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z
    .registers 6
    .parameter "document"
    .parameter "library"
    .parameter "offerType"

    .prologue
    .line 137
    sget-object v1, Lcom/google/android/finsky/library/LibraryEntry;->UNKNOWN_ACCOUNT:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/finsky/library/AccountLibrary;->getLibraryIdFromBackend(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0, p2}, Lcom/google/android/finsky/library/LibraryEntry;->fromDocument(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;I)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v0

    .line 141
    .local v0, entry:Lcom/google/android/finsky/library/LibraryEntry;
    invoke-interface {p1, v0}, Lcom/google/android/finsky/library/Library;->contains(Lcom/google/android/finsky/library/LibraryEntry;)Z

    move-result v1

    return v1
.end method

.method public static isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z
    .registers 6
    .parameter "document"
    .parameter "library"

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 125
    invoke-static {p0, p1, v0}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    if-ne v1, v3, :cond_15

    const/4 v1, 0x7

    invoke-static {p0, p1, v1}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v1

    if-nez v1, :cond_29

    :cond_15
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2a

    invoke-static {p0, p1, v3}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v1

    if-nez v1, :cond_29

    const/4 v1, 0x3

    invoke-static {p0, p1, v1}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_29
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method
