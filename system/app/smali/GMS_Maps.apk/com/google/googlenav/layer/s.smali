.class public Lcom/google/googlenav/layer/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/layer/q;


# instance fields
.field private final a:LaM/i;

.field private final b:Lcom/google/googlenav/layer/m;

.field private final c:Ljava/util/Map;


# direct methods
.method public constructor <init>(LaM/i;Lcom/google/googlenav/layer/m;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/s;->c:Ljava/util/Map;

    .line 46
    iput-object p1, p0, Lcom/google/googlenav/layer/s;->a:LaM/i;

    .line 47
    iput-object p2, p0, Lcom/google/googlenav/layer/s;->b:Lcom/google/googlenav/layer/m;

    .line 48
    return-void
.end method

.method private a(Lcom/google/googlenav/W;Z)Lac/g;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 174
    if-nez p1, :cond_4

    .line 204
    :cond_3
    :goto_3
    return-object v0

    .line 182
    :cond_4
    :try_start_4
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v1

    .line 183
    invoke-virtual {p1}, Lcom/google/googlenav/W;->r()J

    move-result-wide v3

    .line 184
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_6c

    cmp-long v1, v1, v3

    if-lez v1, :cond_6c

    const/4 v1, 0x1

    .line 187
    :goto_1f
    invoke-virtual {p1}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {p1}, Lcom/google/googlenav/W;->q()Z

    move-result v3

    if-nez v3, :cond_2b

    if-eqz v1, :cond_3

    .line 189
    :cond_2b
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->c:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/p;

    .line 190
    if-nez v0, :cond_5b

    .line 191
    new-instance v0, Lcom/google/googlenav/layer/p;

    invoke-virtual {p1}, Lcom/google/googlenav/W;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/W;->w()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/googlenav/layer/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/google/googlenav/layer/q;)V

    .line 193
    iget-object v1, p0, Lcom/google/googlenav/layer/s;->c:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const/16 v2, 0x43

    if-eqz p2, :cond_6e

    const-string v1, "p"

    :goto_4d
    invoke-static {p1}, Lcom/google/googlenav/layer/s;->a(Lcom/google/googlenav/W;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 200
    :cond_5b
    invoke-virtual {v0}, Lcom/google/googlenav/layer/p;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    invoke-virtual {v0, p2}, Lcom/google/googlenav/layer/p;->a(Z)V
    :try_end_64
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_64} :catch_65

    goto :goto_3

    .line 205
    :catch_65
    move-exception v0

    .line 206
    const-string v1, "LoadingDetailsHelper.potentiallyFetchDetails"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    throw v0

    .line 184
    :cond_6c
    const/4 v1, 0x0

    goto :goto_1f

    .line 194
    :cond_6e
    :try_start_6e
    const-string v1, "i"
    :try_end_70
    .catch Ljava/lang/ClassCastException; {:try_start_6e .. :try_end_70} :catch_65

    goto :goto_4d
.end method

.method private a()Lcom/google/googlenav/T;
    .registers 4

    .prologue
    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaM/i;

    invoke-virtual {v0}, LaM/i;->av()I

    move-result v0

    sparse-switch v0, :sswitch_data_6c

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/layer/s;->a:LaM/i;

    invoke-virtual {v2}, LaM/i;->av()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support loading details on-demand."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_2e} :catch_2e

    .line 146
    :catch_2e
    move-exception v0

    .line 147
    const-string v1, "LoadingDetailsHelper.getLayerFeatureSet"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    throw v0

    .line 131
    :sswitch_35
    :try_start_35
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaM/i;

    check-cast v0, LaM/y;

    invoke-virtual {v0}, LaM/y;->f()Lcom/google/googlenav/T;

    move-result-object v0

    .line 141
    :goto_3d
    return-object v0

    .line 133
    :sswitch_3e
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaM/i;

    check-cast v0, LaM/bj;

    invoke-virtual {v0}, LaM/bj;->bO()Lcom/google/googlenav/T;

    move-result-object v0

    goto :goto_3d

    .line 135
    :sswitch_47
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaM/i;

    check-cast v0, LaM/aI;

    invoke-virtual {v0}, LaM/aI;->bO()Lcom/google/googlenav/T;

    move-result-object v0

    goto :goto_3d

    .line 137
    :sswitch_50
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaM/i;

    check-cast v0, LaM/ak;

    invoke-virtual {v0}, LaM/ak;->b()Lcom/google/googlenav/T;

    move-result-object v0

    goto :goto_3d

    .line 139
    :sswitch_59
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaM/i;

    check-cast v0, LaM/bw;

    invoke-virtual {v0}, LaM/bw;->f()Lcom/google/googlenav/T;

    move-result-object v0

    goto :goto_3d

    .line 141
    :sswitch_62
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaM/i;

    check-cast v0, LaM/bU;

    invoke-virtual {v0}, LaM/bU;->bL()Lcom/google/googlenav/T;
    :try_end_69
    .catch Ljava/lang/ClassCastException; {:try_start_35 .. :try_end_69} :catch_2e

    move-result-object v0

    goto :goto_3d

    .line 127
    nop

    :sswitch_data_6c
    .sparse-switch
        0x0 -> :sswitch_3e
        0x6 -> :sswitch_35
        0x7 -> :sswitch_35
        0xb -> :sswitch_35
        0xf -> :sswitch_50
        0x10 -> :sswitch_59
        0x17 -> :sswitch_62
        0x1a -> :sswitch_47
    .end sparse-switch
.end method

.method private static a(Lcom/google/googlenav/W;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 213
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "l="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlenav/W;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Z
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaM/i;

    invoke-virtual {v0}, LaM/i;->av()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ai;)Lac/g;
    .registers 4
    .parameter

    .prologue
    .line 155
    :try_start_0
    check-cast p1, Lcom/google/googlenav/W;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/layer/s;->a(Lcom/google/googlenav/W;Z)Lac/g;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v0

    return-object v0

    .line 156
    :catch_8
    move-exception v0

    .line 157
    const-string v1, "LoadingDetailsHelper.loadDetails"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/W;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 55
    :try_start_2
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    if-eqz p2, :cond_8e

    .line 57
    invoke-direct {p0}, Lcom/google/googlenav/layer/s;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 58
    const/16 v0, 0x12

    invoke-virtual {p2, v0}, Lcom/google/googlenav/W;->a(B)V

    .line 62
    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->b:Lcom/google/googlenav/layer/m;

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->b:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->j()J

    move-result-wide v0

    .line 64
    :goto_1e
    cmp-long v4, v0, v2

    if-eqz v4, :cond_3a

    invoke-virtual {p2}, Lcom/google/googlenav/W;->r()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_3a

    .line 66
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v2

    .line 67
    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/google/googlenav/W;->a(J)V

    .line 71
    :cond_3a
    invoke-direct {p0}, Lcom/google/googlenav/layer/s;->a()Lcom/google/googlenav/T;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/T;->a(Ljava/lang/String;Lcom/google/googlenav/W;)V

    .line 74
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaM/i;

    invoke-virtual {v0, p2}, LaM/i;->a(Lcom/google/googlenav/ai;)V

    move-object v0, p2

    .line 86
    :cond_47
    :goto_47
    iget-object v1, p0, Lcom/google/googlenav/layer/s;->b:Lcom/google/googlenav/layer/m;

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/google/googlenav/layer/s;->b:Lcom/google/googlenav/layer/m;

    invoke-virtual {v1}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msid:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    if-eqz v0, :cond_69

    .line 88
    iget-object v1, p0, Lcom/google/googlenav/layer/s;->b:Lcom/google/googlenav/layer/m;

    invoke-virtual {v1}, Lcom/google/googlenav/layer/m;->p()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/W;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 89
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/googlenav/W;->a(B)V

    .line 92
    :cond_69
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaM/i;

    invoke-virtual {v0}, LaM/i;->af()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 95
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaM/i;

    instance-of v0, v0, LaM/m;

    if-eqz v0, :cond_7e

    .line 96
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaM/i;

    check-cast v0, LaM/m;

    invoke-virtual {v0}, LaM/m;->bp()V

    .line 108
    :cond_7e
    :goto_7e
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaM/i;

    invoke-virtual {v0}, LaM/i;->ao()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 111
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaM/i;

    invoke-virtual {v0}, LaM/i;->an()Z

    .line 117
    :cond_8b
    return-void

    :cond_8c
    move-wide v0, v2

    .line 62
    goto :goto_1e

    .line 79
    :cond_8e
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaM/i;

    invoke-virtual {v0}, LaM/i;->s()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/W;

    .line 80
    if-eqz v0, :cond_47

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/W;->a(Z)V

    .line 82
    invoke-direct {p0}, Lcom/google/googlenav/layer/s;->a()Lcom/google/googlenav/T;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/googlenav/T;->a(Ljava/lang/String;Lcom/google/googlenav/W;)V
    :try_end_a3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_a3} :catch_a4

    goto :goto_47

    .line 113
    :catch_a4
    move-exception v0

    .line 114
    const-string v1, "LoadingDetailsHelper.complete"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    throw v0

    .line 98
    :cond_ab
    if-eqz p3, :cond_7e

    .line 102
    :try_start_ad
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaM/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaM/i;->e(Z)V

    .line 103
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaM/i;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LaM/i;->a(B)V
    :try_end_b9
    .catch Ljava/lang/ClassCastException; {:try_start_ad .. :try_end_b9} :catch_a4

    goto :goto_7e
.end method

.method public b(Lcom/google/googlenav/ai;)Lac/g;
    .registers 4
    .parameter

    .prologue
    .line 165
    :try_start_0
    check-cast p1, Lcom/google/googlenav/W;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/layer/s;->a(Lcom/google/googlenav/W;Z)Lac/g;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v0

    return-object v0

    .line 166
    :catch_8
    move-exception v0

    .line 167
    const-string v1, "LoadingDetailsHelper.prefetchDetails"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    throw v0
.end method
