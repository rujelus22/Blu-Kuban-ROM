.class public Lcom/google/android/maps/driveabout/vector/cv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/aD;

.field private final b:Lcom/google/android/maps/driveabout/vector/cw;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/aD;Lcom/google/android/maps/driveabout/vector/cw;Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->c:Ljava/util/Map;

    .line 102
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->d:Ljava/util/Map;

    .line 107
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->e:Z

    .line 112
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->f:Z

    .line 145
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cv;->a:Lcom/google/android/maps/driveabout/vector/aD;

    .line 146
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/cv;->b:Lcom/google/android/maps/driveabout/vector/cw;

    .line 147
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cx;

    .line 148
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cx;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/m;

    .line 149
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cv;->c:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 152
    :cond_42
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cx;

    .line 153
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cx;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/m;

    .line 154
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cv;->d:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    .line 157
    :cond_6c
    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/maps/driveabout/vector/aD;Lcom/google/android/maps/driveabout/vector/cw;[Lcom/google/android/maps/driveabout/vector/cx;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->c:Ljava/util/Map;

    .line 102
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->d:Ljava/util/Map;

    .line 107
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->e:Z

    .line 112
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->f:Z

    .line 124
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cv;->a:Lcom/google/android/maps/driveabout/vector/aD;

    .line 125
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/cv;->b:Lcom/google/android/maps/driveabout/vector/cw;

    .line 126
    array-length v2, p3

    move v1, v0

    :goto_1a
    if-ge v1, v2, :cond_3c

    aget-object v3, p3, v1

    .line 127
    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/cx;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/m;

    .line 128
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cv;->c:Ljava/util/Map;

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 126
    :cond_38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a

    .line 131
    :cond_3c
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/cv;)I
    .registers 5
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->b:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/cv;->b()Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    .line 239
    if-nez v0, :cond_4d

    .line 240
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->a:Lcom/google/android/maps/driveabout/vector/aD;

    .line 241
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/cv;->a()Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v2

    .line 242
    if-eqz v1, :cond_1f

    if-eqz v2, :cond_1f

    .line 243
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aD;->u_()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/aD;->u_()I

    move-result v1

    sub-int/2addr v0, v1

    .line 245
    :cond_1f
    if-nez v0, :cond_4d

    .line 249
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/cv;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 250
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cx;

    .line 251
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/cv;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/cx;

    .line 252
    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/cx;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 256
    :cond_4d
    return v0
.end method

.method public a()Lcom/google/android/maps/driveabout/vector/aD;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->a:Lcom/google/android/maps/driveabout/vector/aD;

    return-object v0
.end method

.method public a(Ln/m;)Lcom/google/android/maps/driveabout/vector/cx;
    .registers 3
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cx;

    return-object v0
.end method

.method a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cv;->e:Z

    .line 214
    return-void
.end method

.method public b()Lcom/google/android/maps/driveabout/vector/cw;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->b:Lcom/google/android/maps/driveabout/vector/cw;

    return-object v0
.end method

.method public b(Ln/m;)Lcom/google/android/maps/driveabout/vector/cx;
    .registers 3
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cx;

    return-object v0
.end method

.method b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cv;->f:Z

    .line 222
    return-void
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->b:Lcom/google/android/maps/driveabout/vector/cw;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cw;->a:Lcom/google/android/maps/driveabout/vector/cw;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->b:Lcom/google/android/maps/driveabout/vector/cw;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cw;->c:Lcom/google/android/maps/driveabout/vector/cw;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->b:Lcom/google/android/maps/driveabout/vector/cw;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cw;->h:Lcom/google/android/maps/driveabout/vector/cw;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->b:Lcom/google/android/maps/driveabout/vector/cw;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cw;->f:Lcom/google/android/maps/driveabout/vector/cw;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->b:Lcom/google/android/maps/driveabout/vector/cw;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cw;->i:Lcom/google/android/maps/driveabout/vector/cw;

    if-ne v0, v1, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/google/android/maps/driveabout/vector/cv;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cv;->a(Lcom/google/android/maps/driveabout/vector/cv;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->b:Lcom/google/android/maps/driveabout/vector/cw;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cw;->g:Lcom/google/android/maps/driveabout/vector/cw;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->b:Lcom/google/android/maps/driveabout/vector/cw;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cw;->b:Lcom/google/android/maps/driveabout/vector/cw;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->b:Lcom/google/android/maps/driveabout/vector/cw;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cw;->e:Lcom/google/android/maps/driveabout/vector/cw;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->e:Z

    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->f:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 261
    invoke-static {p0}, Lcom/google/common/base/K;->a(Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "overlay"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cv;->a:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "order"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cv;->b:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "isFirstPassForOverlay"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cv;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "isLastPassForOverlay"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cv;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "overlayRenderTweaks"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cv;->c:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "featureRenderTweaks"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cv;->d:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/M;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
