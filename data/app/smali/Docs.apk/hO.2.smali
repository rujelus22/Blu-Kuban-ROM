.class public LhO;
.super Ljava/lang/Object;
.source "CriterionFactoryImpl.java"

# interfaces
.implements LhM;


# instance fields
.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LhV;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljn;

.field private final a:Llu;


# direct methods
.method public constructor <init>(Llu;LanD;)V
    .registers 4
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llu;",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, LhP;

    invoke-direct {v0, p0}, LhP;-><init>(LhO;)V

    iput-object v0, p0, LhO;->a:Ljava/util/Map;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, LhO;->a:Ljn;

    .line 107
    iput-object p1, p0, LhO;->a:Llu;

    .line 108
    iput-object p2, p0, LhO;->a:LanD;

    .line 109
    return-void
.end method


# virtual methods
.method public a()LhK;
    .registers 7

    .prologue
    .line 134
    iget-object v0, p0, LhO;->a:Ljn;

    if-nez v0, :cond_1d

    .line 135
    invoke-static {}, LMj;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, LnL;->a(Ljava/lang/String;Ljava/util/Collection;)LnL;

    move-result-object v4

    .line 138
    new-instance v0, Ljn;

    const-string v1, "notInTrash"

    sget-object v2, LSR;->a:LSR;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljn;-><init>(Ljava/lang/String;LSR;Ljava/lang/String;LnL;Z)V

    iput-object v0, p0, LhO;->a:Ljn;

    .line 142
    :cond_1d
    iget-object v0, p0, LhO;->a:Ljn;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)LhK;
    .registers 7
    .parameter

    .prologue
    .line 147
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v0, "kind"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    if-nez v1, :cond_13

    .line 151
    new-instance v0, LhN;

    const-string v1, "Criterion bundle is missing \"kind\" key."

    invoke-direct {v0, v1}, LhN;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_13
    iget-object v0, p0, LhO;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhV;

    .line 156
    if-nez v0, :cond_3c

    .line 157
    new-instance v0, LhN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Criterion bundle has invalid kind \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LhN;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_3c
    :try_start_3c
    iget-object v2, p0, LhO;->a:LanD;

    iget-object v3, p0, LhO;->a:Llu;

    invoke-interface {v0, p1, v2, v3}, LhV;->a(Landroid/os/Bundle;LanD;Llu;)LhK;
    :try_end_43
    .catch LhL; {:try_start_3c .. :try_end_43} :catch_65

    move-result-object v0

    .line 169
    if-nez v0, :cond_85

    .line 170
    new-instance v0, LhN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to deserialize criterion from bundle with kind \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LhN;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :catch_65
    move-exception v0

    .line 165
    new-instance v2, LhN;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to deserialize criterion from bundle with kind \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, LhN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 173
    :cond_85
    return-object v0
.end method

.method public a(Ljava/lang/String;)LhK;
    .registers 4
    .parameter

    .prologue
    .line 129
    new-instance v0, LhA;

    iget-object v1, p0, LhO;->a:Llu;

    invoke-direct {v0, p1, v1}, LhA;-><init>(Ljava/lang/String;Llu;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;LOG;)LhK;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 123
    new-instance v0, Ljm;

    invoke-virtual {p2}, LOG;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, LOG;->a()LnL;

    move-result-object v2

    iget-object v3, p0, LhO;->a:LanD;

    invoke-direct {v0, v1, p1, v2, v3}, Ljm;-><init>(Ljava/lang/String;Ljava/lang/String;LnL;LanD;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)LhK;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 113
    new-instance v0, LhJ;

    iget-object v1, p0, LhO;->a:Llu;

    invoke-direct {v0, p1, v1, p2}, LhJ;-><init>(Ljava/lang/String;Llu;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lnk;Ljava/lang/String;)LhK;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 118
    new-instance v0, Lic;

    const/4 v2, 0x0

    iget-object v3, p0, LhO;->a:LanD;

    iget-object v4, p0, LhO;->a:Llu;

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lic;-><init>(Lnk;ZLanD;Llu;Ljava/lang/String;)V

    return-object v0
.end method
