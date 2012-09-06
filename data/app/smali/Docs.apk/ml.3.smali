.class public Lml;
.super Ljava/lang/Object;
.source "OperationQueueImpl.java"

# interfaces
.implements LTL;
.implements Lmi;


# instance fields
.field private final a:LRS;

.field private final a:LTF;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LlA;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/concurrent/Executor;

.field private final a:Llu;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LRS;Llu;LTF;Ljava/util/concurrent/Executor;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lml;->a:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lml;->b:Ljava/util/List;

    .line 52
    iput-object p1, p0, Lml;->a:LRS;

    .line 53
    iput-object p2, p0, Lml;->a:Llu;

    .line 54
    iput-object p3, p0, Lml;->a:LTF;

    .line 55
    iput-object p4, p0, Lml;->a:Ljava/util/concurrent/Executor;

    .line 56
    return-void
.end method

.method private declared-synchronized a()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "LlA;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lml;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 173
    iget-object v1, p0, Lml;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 174
    monitor-exit p0

    return-object v0

    .line 172
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Ljava/util/List;LkG;Llu;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LlA;",
            ">;",
            "LkG;",
            "Llu;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, LafQ;->a(Z)V

    .line 147
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LlA;

    invoke-virtual {v0}, LlA;->a()Lmg;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Lmg;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v1

    .line 149
    if-nez v1, :cond_22

    .line 169
    :goto_1f
    return-void

    :cond_20
    move v0, v1

    .line 146
    goto :goto_8

    .line 154
    :cond_22
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 155
    :goto_2a
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 156
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LlA;

    invoke-virtual {v0}, LlA;->b()Lmg;

    move-result-object v0

    invoke-interface {v0, v1}, Lmg;->a(LkT;)Lmg;

    goto :goto_2a

    .line 159
    :cond_3e
    invoke-interface {p2}, Llu;->a()V

    .line 161
    :try_start_41
    invoke-virtual {v1}, LkT;->c()V

    .line 162
    invoke-interface {p2}, Llu;->c()V

    .line 163
    invoke-virtual {p1}, LkG;->a()V
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_5a
    .catch Landroid/database/SQLException; {:try_start_41 .. :try_end_4a} :catch_4e

    .line 167
    invoke-interface {p2}, Llu;->b()V

    goto :goto_1f

    .line 164
    :catch_4e
    move-exception v0

    .line 165
    :try_start_4f
    const-string v1, "OperationQueueImpl"

    const-string v2, "Failed to save reverted operation in database"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_5a

    .line 167
    invoke-interface {p2}, Llu;->b()V

    goto :goto_1f

    :catchall_5a
    move-exception v0

    invoke-interface {p2}, Llu;->b()V

    throw v0
.end method

.method static synthetic a(Lml;Lmo;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lml;->a(Lmo;)V

    return-void
.end method

.method private a(Lmo;)V
    .registers 4
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lml;->a:LRS;

    invoke-interface {v0, p1}, LRS;->a(Lmo;)LRR;

    move-result-object v0

    .line 198
    invoke-direct {p0}, Lml;->a()Ljava/util/List;

    move-result-object v1

    .line 206
    invoke-direct {p0, v0, v1}, Lml;->a(LRR;Ljava/util/List;)Z

    move-result v0

    .line 208
    if-eqz v0, :cond_15

    .line 209
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lmo;->a(ILjava/lang/Throwable;)V

    .line 211
    :cond_15
    return-void
.end method

.method private a(LRR;Ljava/util/List;)Z
    .registers 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LRR;",
            "Ljava/util/List",
            "<",
            "LlA;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2d

    move v0, v1

    :goto_9
    invoke-static {v0}, LafQ;->a(Z)V

    .line 80
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LlA;

    invoke-virtual {v0}, LlA;->a()Lmg;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Lmg;->b()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-interface {v0}, Lmg;->c()Ljava/lang/String;

    move-result-object v4

    .line 85
    iget-object v0, p0, Lml;->a:Llu;

    invoke-interface {v0, v4}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v5

    .line 87
    iget-object v0, p0, Lml;->a:Llu;

    invoke-interface {v0, v5, v3}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v0

    .line 88
    if-nez v0, :cond_2f

    .line 138
    :goto_2c
    return v2

    :cond_2d
    move v0, v2

    .line 78
    goto :goto_9

    .line 96
    :cond_2f
    invoke-interface {p1, v4, v3}, LRR;->a(Ljava/lang/String;Ljava/lang/String;)LSs;

    move-result-object v6

    .line 97
    if-nez v6, :cond_3b

    .line 98
    iget-object v0, p0, Lml;->a:Llu;

    invoke-static {p2, v5, v0}, Lml;->a(Ljava/util/List;LkG;Llu;)V

    goto :goto_2c

    .line 103
    :cond_3b
    new-instance v7, LSs;

    invoke-direct {v7}, LSs;-><init>()V

    .line 106
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_44
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LlA;

    .line 107
    invoke-virtual {v0}, LlA;->a()Lmg;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Lmg;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, LafQ;->a(Z)V

    .line 109
    invoke-interface {v0}, Lmg;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, LafQ;->a(Z)V

    .line 110
    invoke-interface {v0, v7}, Lmg;->a(LSs;)V

    goto :goto_44

    .line 113
    :cond_6e
    invoke-virtual {v6}, LSs;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, LSs;->x(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v6}, LSs;->p()Ljava/lang/String;

    move-result-object v0

    .line 115
    if-nez v0, :cond_b1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://docs.google.com/feeds/default/private/full/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, LSs;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ":"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, LSs;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_b1
    invoke-virtual {v7, v0}, LSs;->q(Ljava/lang/String;)V

    .line 122
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LlA;

    invoke-virtual {v0}, LlA;->a()Lmg;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Lmg;->a()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Llf;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, LSs;->w(Ljava/lang/String;)V

    .line 126
    invoke-interface {p1, v7, v4}, LRR;->a(Lase;Ljava/lang/String;)LSs;

    move-result-object v0

    .line 127
    if-nez v0, :cond_dc

    .line 128
    iget-object v0, p0, Lml;->a:Llu;

    invoke-static {p2, v5, v0}, Lml;->a(Ljava/util/List;LkG;Llu;)V

    goto/16 :goto_2c

    .line 134
    :cond_dc
    :try_start_dc
    iget-object v2, p0, Lml;->a:LTF;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v5, v0, v3}, LTF;->a(LkG;LSs;Ljava/lang/Boolean;)V
    :try_end_e6
    .catch Ljava/text/ParseException; {:try_start_dc .. :try_end_e6} :catch_e9

    :goto_e6
    move v2, v1

    .line 138
    goto/16 :goto_2c

    .line 135
    :catch_e9
    move-exception v0

    .line 136
    const-string v2, "OperationQueueImpl"

    const-string v3, "Error processing feed returned from updated metadata"

    invoke-static {v2, v3, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e6
.end method

.method private static a(Ljava/util/List;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LlA;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 178
    .line 180
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    move-object v2, v0

    :cond_7
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LlA;

    .line 181
    invoke-virtual {v0}, LlA;->a()Lmg;

    move-result-object v0

    .line 182
    if-nez v2, :cond_24

    .line 183
    invoke-interface {v0}, Lmg;->c()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-interface {v0}, Lmg;->b()Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    .line 185
    goto :goto_7

    .line 187
    :cond_24
    invoke-interface {v0}, Lmg;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v0}, Lmg;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 189
    :cond_38
    const/4 v0, 0x0

    .line 192
    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x1

    goto :goto_39
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 299
    return-void
.end method

.method public declared-synchronized a(LkG;Lmo;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 223
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lml;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 224
    iget-object v0, p0, Lml;->a:Ljava/util/List;

    invoke-static {v0}, Lml;->a(Ljava/util/List;)Z

    move-result v0

    invoke-static {v0}, LafQ;->a(Z)V

    .line 225
    iget-object v0, p0, Lml;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lmm;

    invoke-direct {v1, p0, p2}, Lmm;-><init>(Lml;Lmo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 232
    :cond_1c
    monitor-exit p0

    return-void

    .line 223
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(LkT;)V
    .registers 2
    .parameter

    .prologue
    .line 307
    return-void
.end method

.method public declared-synchronized a(Lmg;)V
    .registers 3
    .parameter

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lml;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .registers 2

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lml;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 1

    .prologue
    .line 303
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized c()Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 246
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lml;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_5c

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    .line 294
    :goto_c
    monitor-exit p0

    return v0

    .line 256
    :cond_e
    :try_start_e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 258
    iget-object v2, p0, Lml;->a:Llu;

    invoke-interface {v2}, Llu;->a()V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_5c

    .line 260
    :try_start_18
    iget-object v2, p0, Lml;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    move-object v3, v0

    :cond_20
    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmg;

    .line 261
    if-nez v3, :cond_5f

    .line 262
    iget-object v2, p0, Lml;->a:Llu;

    invoke-interface {v0}, Lmg;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v3

    .line 263
    iget-object v2, p0, Lml;->a:Llu;

    invoke-interface {v0}, Lmg;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v2

    .line 271
    :goto_42
    if-eqz v2, :cond_20

    .line 272
    invoke-interface {v0, v2}, Lmg;->a(LkT;)Lmg;

    move-result-object v6

    .line 273
    new-instance v7, LlA;

    invoke-virtual {v2}, LkT;->h()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v6, v8}, LlA;-><init>(Lmg;Lmg;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catchall {:try_start_18 .. :try_end_54} :catchall_55

    goto :goto_20

    .line 286
    :catchall_55
    move-exception v0

    :try_start_56
    iget-object v1, p0, Lml;->a:Llu;

    invoke-interface {v1}, Llu;->b()V

    throw v0
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_5c

    .line 246
    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 265
    :cond_5f
    :try_start_5f
    invoke-interface {v0}, Lmg;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, LkG;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, LafQ;->a(Z)V

    .line 267
    invoke-interface {v0}, Lmg;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, LkT;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, LafQ;->a(Z)V
    :try_end_7d
    .catchall {:try_start_5f .. :try_end_7d} :catchall_55

    goto :goto_42

    .line 278
    :cond_7e
    :try_start_7e
    invoke-virtual {v2}, LkT;->c()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_55
    .catch Ljava/lang/RuntimeException; {:try_start_7e .. :try_end_81} :catch_9b

    .line 284
    :try_start_81
    iget-object v0, p0, Lml;->a:Llu;

    invoke-interface {v0}, Llu;->c()V
    :try_end_86
    .catchall {:try_start_81 .. :try_end_86} :catchall_55

    .line 286
    :try_start_86
    iget-object v0, p0, Lml;->a:Llu;

    invoke-interface {v0}, Llu;->b()V

    .line 289
    iget-object v0, p0, Lml;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 290
    iget-object v0, p0, Lml;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 293
    invoke-virtual {v3}, LkG;->a()V
    :try_end_98
    .catchall {:try_start_86 .. :try_end_98} :catchall_5c

    move v0, v1

    .line 294
    goto/16 :goto_c

    .line 279
    :catch_9b
    move-exception v0

    .line 280
    :try_start_9c
    const-string v1, "OperationQueueImpl"

    const-string v2, "Failed to save entry change in local database."

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_9c .. :try_end_a3} :catchall_55

    .line 281
    const/4 v0, 0x0

    .line 286
    :try_start_a4
    iget-object v1, p0, Lml;->a:Llu;

    invoke-interface {v1}, Llu;->b()V
    :try_end_a9
    .catchall {:try_start_a4 .. :try_end_a9} :catchall_5c

    goto/16 :goto_c
.end method
