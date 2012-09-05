.class public Lbj;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field private mDwdPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbn;",
            ">;"
        }
    .end annotation
.end field

.field private mFeature:Ldg;

.field private mFeatureResourceInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Lu",
            "<",
            "Ljava/lang/String;",
            "Leg;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mHash:Ljava/lang/String;

.field private mLocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbn;",
            ">;"
        }
    .end annotation
.end field

.field private mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbp;",
            ">;"
        }
    .end annotation
.end field

.field private mSubHashes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ldg;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lbj;->mLocks:Ljava/util/List;

    .line 33
    iput-object v0, p0, Lbj;->mMessages:Ljava/util/List;

    .line 34
    iput-object v0, p0, Lbj;->mDwdPreferences:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public getAppIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lbj;->mFeatureResourceInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lbl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    sget-object v0, Ldg;->k:Ldg;

    iget-object v1, p0, Lbj;->mFeature:Ldg;

    invoke-virtual {v0, v1}, Ldg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 161
    iget-object v0, p0, Lbj;->mLocks:Ljava/util/List;

    .line 167
    :goto_c
    return-object v0

    .line 162
    :cond_d
    sget-object v0, Ldg;->u:Ldg;

    iget-object v1, p0, Lbj;->mFeature:Ldg;

    invoke-virtual {v0, v1}, Ldg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 163
    iget-object v0, p0, Lbj;->mMessages:Ljava/util/List;

    goto :goto_c

    .line 164
    :cond_1a
    sget-object v0, Ldg;->q:Ldg;

    iget-object v1, p0, Lbj;->mFeature:Ldg;

    invoke-virtual {v0, v1}, Ldg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 165
    iget-object v0, p0, Lbj;->mDwdPreferences:Ljava/util/List;

    goto :goto_c

    .line 167
    :cond_27
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getFeature()Ldg;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lbj;->mFeature:Ldg;

    return-object v0
.end method

.method public getFeatureAppResourceInfos(Ljava/lang/Integer;)Ljava/util/Set;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lu",
            "<",
            "Ljava/lang/String;",
            "Leg;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lbj;->mFeatureResourceInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public getHash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lbj;->mHash:Ljava/lang/String;

    return-object v0
.end method

.method public getSubHashes()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ldg;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lbj;->mSubHashes:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbj;->mSubHashes:Ljava/util/Map;

    .line 148
    :cond_b
    iget-object v0, p0, Lbj;->mSubHashes:Ljava/util/Map;

    return-object v0
.end method

.method public isActive()Z
    .registers 3

    .prologue
    .line 140
    const-string v0, "-"

    iget-object v1, p0, Lbj;->mHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setDwdPreferences(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lbj;->mDwdPreferences:Ljava/util/List;

    .line 129
    return-void
.end method

.method public setFeature(Ldg;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lbj;->mFeature:Ldg;

    .line 43
    return-void
.end method

.method public setFeatureResourceInfos(Ljava/util/List;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbi;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lfx;
        a = "applications"
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbj;->mFeatureResourceInfos:Ljava/util/Map;

    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbi;

    .line 74
    invoke-virtual {v0}, Lbi;->getId()Ljava/lang/Integer;

    move-result-object v3

    .line 76
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 77
    invoke-virtual {v0}, Lbi;->getResources()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 79
    invoke-virtual {v0}, Lbi;->getResources()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_33
    :goto_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    const/16 v6, 0x2f

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 85
    const/4 v7, -0x1

    if-ne v6, v7, :cond_6d

    move-object v6, v1

    move-object v1, v8

    .line 93
    :goto_56
    if-eqz v1, :cond_90

    .line 94
    invoke-static {}, Lah;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 95
    sget-object v1, Leg;->a:Leg;

    .line 103
    :goto_64
    new-instance v7, Lu;

    invoke-direct {v7, v6, v1, v0}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 88
    :cond_6d
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 89
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v1, v7

    goto :goto_56

    .line 96
    :cond_7b
    invoke-static {}, Lah;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 97
    sget-object v1, Leg;->b:Leg;

    goto :goto_64

    .line 107
    :cond_88
    iget-object v0, p0, Lbj;->mFeatureResourceInfos:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 112
    :cond_8f
    return-void

    :cond_90
    move-object v1, v8

    goto :goto_64
.end method

.method public setHash(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lbj;->mHash:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setLocks(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    iput-object p1, p0, Lbj;->mLocks:Ljava/util/List;

    .line 121
    return-void
.end method

.method public setMessages(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    iput-object p1, p0, Lbj;->mMessages:Ljava/util/List;

    .line 125
    return-void
.end method

.method public setSubHashes(Ljava/util/Map;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lfx;
        a = "hashes"
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbj;->mSubHashes:Ljava/util/Map;

    .line 58
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    invoke-static {v1}, Ldg;->a(Ljava/lang/String;)Ldg;

    move-result-object v1

    .line 62
    iget-object v3, p0, Lbj;->mSubHashes:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 64
    :cond_31
    return-void
.end method
