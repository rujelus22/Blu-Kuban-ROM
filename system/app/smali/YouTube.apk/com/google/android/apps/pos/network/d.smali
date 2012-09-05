.class final Lcom/google/android/apps/pos/network/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/List;)Lcom/google/android/apps/pos/model/Plusones;
    .registers 7
    .parameter

    .prologue
    .line 53
    new-instance v2, Lcom/google/android/apps/pos/model/Plusones;

    invoke-direct {v2}, Lcom/google/android/apps/pos/model/Plusones;-><init>()V

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/pos/network/a;

    .line 56
    new-instance v1, Lcom/google/android/apps/pos/model/Plusone;

    invoke-direct {v1}, Lcom/google/android/apps/pos/model/Plusone;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/apps/pos/network/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/apps/pos/model/Plusone;->setResponseId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Plusone;

    invoke-virtual {v0}, Lcom/google/android/apps/pos/network/a;->a_()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-virtual {v0}, Lcom/google/android/apps/pos/network/a;->c()Lcom/google/android/apps/pos/model/PlusoneError;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/pos/network/d;->a(Lcom/google/android/apps/pos/model/PlusoneError;)V

    :cond_33
    invoke-virtual {v0}, Lcom/google/android/apps/pos/network/a;->d()Z

    move-result v5

    if-nez v5, :cond_3e

    move-object v0, v1

    .line 57
    :goto_3a
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 56
    :cond_3e
    invoke-virtual {v0}, Lcom/google/android/apps/pos/network/a;->e()Lcom/google/android/apps/pos/network/b;

    move-result-object v0

    if-nez v0, :cond_46

    move-object v0, v1

    goto :goto_3a

    :cond_46
    invoke-virtual {v0}, Lcom/google/android/apps/pos/network/b;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/apps/pos/model/Plusone;->setAbuseToken(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/network/b;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/apps/pos/model/Plusone;->setId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/network/b;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/apps/pos/model/Plusone;->setKind(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/network/b;->i()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/apps/pos/model/Plusone;->setSetByViewer(Ljava/lang/Boolean;)Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/network/b;->h()Lcom/google/android/apps/pos/model/Metadata;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/pos/model/Plusone;->setMetadata(Lcom/google/android/apps/pos/model/Metadata;)Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v0

    goto :goto_3a

    .line 59
    :cond_6f
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/pos/model/Plusone;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/pos/model/Plusone;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/pos/model/Plusones;->setItems([Lcom/google/android/apps/pos/model/Plusone;)Lcom/google/android/apps/pos/model/Plusones;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/google/android/apps/pos/network/a;)Lcom/google/android/apps/pos/model/SignUpState;
    .registers 4
    .parameter

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/apps/pos/model/SignUpState;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/SignUpState;-><init>()V

    .line 21
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/pos/model/SignUpState;->setResponseId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/SignUpState;

    .line 22
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/a;->a_()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 23
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/a;->c()Lcom/google/android/apps/pos/model/PlusoneError;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/pos/network/d;->a(Lcom/google/android/apps/pos/model/PlusoneError;)V

    .line 25
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/a;->d()Z

    move-result v1

    if-nez v1, :cond_20

    .line 29
    :goto_1f
    return-object v0

    .line 28
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/a;->e()Lcom/google/android/apps/pos/network/b;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/google/android/apps/pos/network/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/pos/model/SignUpState;->setDisplayName(Ljava/lang/String;)Lcom/google/android/apps/pos/model/SignUpState;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/apps/pos/network/b;->b_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/pos/model/SignUpState;->setEmail(Ljava/lang/String;)Lcom/google/android/apps/pos/model/SignUpState;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/apps/pos/network/b;->c()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/pos/model/SignUpState;->setSignedUp(Ljava/lang/Boolean;)Lcom/google/android/apps/pos/model/SignUpState;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/apps/pos/network/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/pos/model/SignUpState;->setProfileImageUrl(Ljava/lang/String;)Lcom/google/android/apps/pos/model/SignUpState;

    move-result-object v0

    goto :goto_1f
.end method

.method private static a(Lcom/google/android/apps/pos/model/PlusoneError;)V
    .registers 3
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError;->getCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_e

    .line 87
    new-instance v0, Lcom/google/android/apps/pos/network/PosAuthorizationException;

    invoke-direct {v0, p0}, Lcom/google/android/apps/pos/network/PosAuthorizationException;-><init>(Lcom/google/android/apps/pos/model/PlusoneError;)V

    throw v0

    .line 89
    :cond_e
    new-instance v0, Lcom/google/android/apps/pos/network/PosException;

    invoke-direct {v0, p0}, Lcom/google/android/apps/pos/network/PosException;-><init>(Lcom/google/android/apps/pos/model/PlusoneError;)V

    throw v0
.end method
