.class public LhY;
.super Ljava/lang/Object;
.source "CriterionSetImpl.java"

# interfaces
.implements LhW;


# instance fields
.field private a:Ljava/lang/String;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LhK;",
            ">;"
        }
    .end annotation
.end field

.field private a:LnL;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "LhK;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LhY;->a:Ljava/util/List;

    .line 33
    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, LhY;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhK;

    .line 69
    if-nez v1, :cond_1f

    .line 70
    invoke-interface {v0}, LhK;->a()LnL;

    move-result-object v0

    invoke-virtual {v0}, LnL;->a()LnN;

    move-result-object v0

    :goto_1d
    move-object v1, v0

    .line 72
    goto :goto_7

    :cond_1f
    sget-object v3, LnO;->a:LnO;

    invoke-interface {v0}, LhK;->a()LnL;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, LnN;->a(LnO;LnL;)LnN;

    move-object v0, v1

    goto :goto_1d

    .line 76
    :cond_2a
    if-eqz v1, :cond_33

    invoke-virtual {v1}, LnN;->a()LnL;

    move-result-object v0

    :goto_30
    iput-object v0, p0, LhY;->a:LnL;

    .line 77
    return-void

    .line 76
    :cond_33
    sget-object v0, LnL;->b:LnL;

    goto :goto_30
.end method

.method private c()V
    .registers 6

    .prologue
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, LhY;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhK;

    .line 84
    invoke-interface {v0}, LhK;->a()Ljava/lang/String;

    move-result-object v4

    .line 85
    if-eqz v4, :cond_38

    .line 86
    if-eqz v1, :cond_26

    .line 87
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_26
    const/4 v0, 0x1

    .line 91
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2a
    move v1, v0

    .line 93
    goto :goto_d

    .line 95
    :cond_2c
    if-nez v1, :cond_31

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, LhY;->a:Ljava/lang/String;

    .line 99
    :cond_31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LhY;->a:Ljava/lang/String;

    .line 100
    return-void

    :cond_38
    move v0, v1

    goto :goto_2a
.end method


# virtual methods
.method public a()LSR;
    .registers 4

    .prologue
    .line 169
    sget-object v0, LSR;->a:LSR;

    .line 171
    iget-object v1, p0, LhY;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhK;

    .line 172
    invoke-interface {v0}, LhK;->a()LSR;

    move-result-object v0

    invoke-virtual {v1, v0}, LSR;->a(LSR;)LSR;

    move-result-object v0

    move-object v1, v0

    goto :goto_9

    .line 176
    :cond_1f
    return-object v1
.end method

.method public a()LhX;
    .registers 3

    .prologue
    .line 114
    new-instance v0, LhX;

    iget-object v1, p0, LhY;->a:Ljava/util/List;

    invoke-direct {v0, v1}, LhX;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, LhY;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()LnL;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, LhY;->a:LnL;

    return-object v0
.end method

.method public a()Lnk;
    .registers 5

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, LhY;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhK;

    .line 183
    instance-of v3, v0, Lic;

    if-eqz v3, :cond_3b

    .line 184
    if-eqz v1, :cond_32

    .line 185
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "More than one EnriesFilterCriterions found in CriterionSet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_32
    check-cast v0, Lic;

    .line 189
    invoke-virtual {v0}, Lic;->a()Lnk;

    move-result-object v0

    :goto_38
    move-object v1, v0

    .line 190
    goto :goto_7

    .line 192
    :cond_3a
    return-object v1

    :cond_3b
    move-object v0, v1

    goto :goto_38
.end method

.method public a()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, LhY;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhK;

    .line 58
    invoke-interface {v0}, LhK;->a()V

    goto :goto_6

    .line 61
    :cond_16
    invoke-direct {p0}, LhY;->c()V

    .line 62
    invoke-direct {p0}, LhY;->b()V

    .line 63
    return-void
.end method

.method public a(LhK;)Z
    .registers 3
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, LhY;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(LhW;)Z
    .registers 4
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, LhY;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhK;

    .line 48
    invoke-interface {p1, v0}, LhW;->a(LhK;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 49
    const/4 v0, 0x0

    .line 52
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public b()Ljava/lang/String;
    .registers 4

    .prologue
    .line 119
    iget-object v0, p0, LhY;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhK;

    .line 120
    instance-of v2, v0, Ljm;

    if-eqz v2, :cond_6

    .line 121
    check-cast v0, Ljm;

    invoke-virtual {v0}, Ljm;->b()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public c()Ljava/lang/String;
    .registers 4

    .prologue
    .line 130
    iget-object v0, p0, LhY;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhK;

    .line 131
    instance-of v2, v0, LhJ;

    if-eqz v2, :cond_6

    .line 132
    check-cast v0, LhJ;

    invoke-virtual {v0}, LhJ;->b()Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    if-ne p0, p1, :cond_6

    move v0, v1

    .line 164
    :goto_5
    return v0

    .line 148
    :cond_6
    instance-of v0, p1, LhY;

    if-eqz v0, :cond_46

    .line 149
    check-cast p1, LhY;

    .line 150
    iget-object v0, p0, LhY;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhK;

    .line 151
    iget-object v4, p1, LhY;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v2

    .line 152
    goto :goto_5

    .line 155
    :cond_28
    iget-object v0, p1, LhY;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhK;

    .line 156
    iget-object v4, p0, LhY;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    move v0, v2

    .line 157
    goto :goto_5

    :cond_44
    move v0, v1

    .line 161
    goto :goto_5

    :cond_46
    move v0, v2

    .line 164
    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 141
    const-class v0, LhY;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, LhY;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "LhK;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, LhY;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 196
    const-string v0, "CriterionSet %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LhY;->a:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
