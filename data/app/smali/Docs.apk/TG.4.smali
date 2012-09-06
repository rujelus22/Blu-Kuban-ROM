.class public LTG;
.super Ljava/lang/Object;
.source "DocEntrySynchronizerImpl.java"

# interfaces
.implements LTF;


# instance fields
.field private final a:I

.field private final a:LTL;

.field private final a:Lle;

.field private final a:Llu;

.field private final b:I


# direct methods
.method public constructor <init>(Llu;Lle;LFX;LTL;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, LTG;->a:Llu;

    .line 54
    iput-object p2, p0, LTG;->a:Lle;

    .line 55
    const-string v0, "syncDbBackoff"

    const/16 v1, 0x258

    invoke-interface {p3, v0, v1}, LFX;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, LTG;->a:I

    .line 56
    const-string v0, "syncMaxBackoff"

    const/4 v1, 0x2

    invoke-interface {p3, v0, v1}, LFX;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, LTG;->b:I

    .line 57
    iput-object p4, p0, LTG;->a:LTL;

    .line 58
    return-void
.end method

.method private a(LkG;LSs;Ljava/lang/Boolean;)LkT;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    iget-object v0, p0, LTG;->a:Llu;

    invoke-virtual {p2}, LSs;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, LSs;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v3, v4}, Llu;->a(LkG;Ljava/lang/String;Ljava/lang/String;)LkR;

    move-result-object v3

    .line 126
    invoke-virtual {p2}, LSs;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, LkR;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    move v0, v1

    .line 128
    :goto_21
    invoke-virtual {v3}, LkR;->l()Z

    move-result v4

    .line 132
    iget-object v5, p0, LTG;->a:Lle;

    invoke-virtual {p2}, LSs;->e()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lle;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3}, LkR;->c()Ljava/util/Date;

    move-result-object v6

    invoke-static {v5, v6}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    move v2, v1

    :cond_3a
    or-int/2addr v2, v4

    .line 135
    if-nez v0, :cond_3f

    if-eqz v2, :cond_44

    .line 136
    :cond_3f
    iget-object v4, p0, LTG;->a:Lle;

    invoke-interface {v4, p2, v3}, Lle;->a(LSs;LkR;)V

    .line 139
    :cond_44
    if-eqz p3, :cond_58

    invoke-virtual {v3}, LkR;->j()Z

    move-result v4

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v4, v5, :cond_58

    .line 142
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, LkR;->g(Z)V

    move v0, v1

    .line 147
    :cond_58
    if-eqz v0, :cond_6a

    .line 148
    invoke-virtual {v3}, LkR;->g()Z

    move-result v1

    if-nez v1, :cond_65

    .line 149
    sget-object v1, LQM;->a:LQM;

    invoke-virtual {v3, v7, v8, v1}, LkR;->a(JLQM;)V

    .line 151
    :cond_65
    sget-object v1, LQM;->b:LQM;

    invoke-virtual {v3, v7, v8, v1}, LkR;->a(JLQM;)V

    .line 154
    :cond_6a
    if-nez v0, :cond_6e

    if-eqz v2, :cond_76

    .line 156
    :cond_6e
    iget-object v0, p0, LTG;->a:LTL;

    invoke-interface {v0, v3}, LTL;->a(LkT;)V

    .line 157
    invoke-virtual {v3}, LkR;->c()V

    .line 160
    :cond_76
    return-object v3

    :cond_77
    move v0, v2

    .line 126
    goto :goto_21
.end method

.method private b(LkG;LSs;Ljava/lang/Boolean;)LkT;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, LTG;->a:Llu;

    invoke-virtual {p2}, LSs;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Llu;->b(LkG;Ljava/lang/String;)LkM;

    move-result-object v3

    .line 167
    invoke-virtual {p2}, LSs;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, LkM;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    move v0, v1

    .line 168
    :goto_1b
    invoke-virtual {v3}, LkM;->l()Z

    move-result v4

    .line 169
    if-nez v0, :cond_23

    if-eqz v4, :cond_2b

    .line 170
    :cond_23
    iget-object v5, p0, LTG;->a:Lle;

    invoke-interface {v5, p2, v3}, Lle;->a(LSs;LkM;)V

    .line 171
    invoke-virtual {v3, v2}, LkM;->i(Z)V

    .line 174
    :cond_2b
    if-eqz p3, :cond_3f

    invoke-virtual {v3}, LkM;->j()Z

    move-result v2

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v2, v5, :cond_3f

    .line 176
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, LkM;->g(Z)V

    move v0, v1

    .line 179
    :cond_3f
    if-nez v0, :cond_43

    if-eqz v4, :cond_4b

    .line 181
    :cond_43
    iget-object v0, p0, LTG;->a:LTL;

    invoke-interface {v0, v3}, LTL;->a(LkT;)V

    .line 182
    invoke-virtual {v3}, LkM;->c()V

    .line 184
    :cond_4b
    return-object v3

    :cond_4c
    move v0, v2

    .line 167
    goto :goto_1b
.end method


# virtual methods
.method public a(LkG;LSs;Ljava/lang/Boolean;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    :goto_1
    iget v1, p0, LTG;->a:I

    if-lez v1, :cond_27

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, LTG;->b:I

    if-ge v0, v2, :cond_27

    iget-object v0, p0, LTG;->a:Llu;

    invoke-interface {v0}, Llu;->a()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 68
    :try_start_13
    const-string v0, "DocEntrySynchronizer"

    const-string v2, "Database already locked, backing off"

    invoke-static {v0, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget v0, p0, LTG;->a:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_20} :catch_22

    move v0, v1

    .line 73
    goto :goto_1

    .line 70
    :catch_22
    move-exception v0

    .line 71
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 112
    :goto_26
    return-void

    .line 76
    :cond_27
    iget-object v0, p0, LTG;->a:Llu;

    invoke-interface {v0}, Llu;->a()V

    .line 78
    :try_start_2c
    sget-object v0, LkU;->h:LkU;

    invoke-virtual {v0}, LkU;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, LSs;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 79
    invoke-direct {p0, p1, p2, p3}, LTG;->b(LkG;LSs;Ljava/lang/Boolean;)LkT;

    move-result-object v0

    move-object v1, v0

    .line 85
    :goto_41
    iget-object v0, p0, LTG;->a:Llu;

    invoke-interface {v0, v1}, Llu;->a(LkT;)Ljava/util/Map;

    move-result-object v2

    .line 86
    invoke-virtual {p2}, LSs;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4f
    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSu;

    .line 87
    iget-object v4, p0, LTG;->a:Llu;

    invoke-virtual {v0}, LSu;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Llu;->b(LkG;Ljava/lang/String;)LkM;

    move-result-object v4

    .line 89
    invoke-virtual {v4}, LkM;->c()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_7d

    .line 90
    invoke-virtual {v0}, LSu;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, LkM;->c(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, LkM;->i(Z)V

    .line 94
    invoke-virtual {v4}, LkM;->c()V

    .line 97
    :cond_7d
    invoke-virtual {v4}, LkM;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    .line 98
    if-nez v0, :cond_4f

    .line 99
    iget-object v0, p0, LTG;->a:Llu;

    invoke-interface {v0, v1, v4}, Llu;->a(LkT;LkM;)Llc;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Llc;->c()V
    :try_end_96
    .catchall {:try_start_2c .. :try_end_96} :catchall_97

    goto :goto_4f

    .line 110
    :catchall_97
    move-exception v0

    iget-object v1, p0, LTG;->a:Llu;

    invoke-interface {v1}, Llu;->b()V

    throw v0

    .line 81
    :cond_9e
    :try_start_9e
    invoke-direct {p0, p1, p2, p3}, LTG;->a(LkG;LSs;Ljava/lang/Boolean;)LkT;

    move-result-object v0

    move-object v1, v0

    goto :goto_41

    .line 105
    :cond_a4
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ac
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    .line 106
    invoke-virtual {v0}, Llc;->b()V

    goto :goto_ac

    .line 108
    :cond_bc
    iget-object v0, p0, LTG;->a:Llu;

    invoke-interface {v0}, Llu;->c()V
    :try_end_c1
    .catchall {:try_start_9e .. :try_end_c1} :catchall_97

    .line 110
    iget-object v0, p0, LTG;->a:Llu;

    invoke-interface {v0}, Llu;->b()V

    goto/16 :goto_26
.end method

.method public a(LkG;Ljava/util/Set;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkG;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, LTG;->a:Llu;

    invoke-interface {v0}, Llu;->a()V

    .line 192
    :try_start_5
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    iget-object v2, p0, LTG;->a:Llu;

    invoke-interface {v2, p1, v0}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_9

    .line 195
    invoke-virtual {v0}, LkT;->b()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    goto :goto_9

    .line 200
    :catchall_21
    move-exception v0

    iget-object v1, p0, LTG;->a:Llu;

    invoke-interface {v1}, Llu;->b()V

    throw v0

    .line 198
    :cond_28
    :try_start_28
    iget-object v0, p0, LTG;->a:Llu;

    invoke-interface {v0}, Llu;->c()V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_21

    .line 200
    iget-object v0, p0, LTG;->a:Llu;

    invoke-interface {v0}, Llu;->b()V

    .line 202
    return-void
.end method

.method public b(LkG;LSs;Ljava/lang/Boolean;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, LTG;->a:Llu;

    invoke-virtual {p2}, LSs;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_f

    .line 118
    invoke-virtual {v0}, LkT;->b()V

    .line 120
    :cond_f
    return-void
.end method
