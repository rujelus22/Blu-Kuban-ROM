.class public abstract Lja;
.super Lhf;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja$1;,
        Lja$t;,
        Lja$r;,
        Lja$q;,
        Lja$g;,
        Lja$d;,
        Lja$c;,
        Lja$b;,
        Lja$a;,
        Lja$n;,
        Lja$j;,
        Lja$k;,
        Lja$m;,
        Lja$l;,
        Lja$h;,
        Lja$p;,
        Lja$f;,
        Lja$e;,
        Lja$i;,
        Lja$s;,
        Lja$o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lhf",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final m:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lhf;-><init>()V

    .line 37
    iput-object p1, p0, Lja;->m:Ljava/lang/Class;

    .line 38
    return-void
.end method

.method protected static a(Lhb;Lhe;Lnd;Ljava/util/Map;)Lhf;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhb;",
            "Lhe;",
            "Lnd;",
            "Ljava/util/Map",
            "<",
            "Lnd;",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 480
    if-nez p3, :cond_13

    const/4 v0, 0x0

    .line 481
    :goto_3
    if-nez v0, :cond_12

    .line 482
    invoke-virtual {p1, p0, p2}, Lhe;->a(Lhb;Lnd;)Lhf;

    move-result-object v0

    .line 483
    if-eqz p3, :cond_12

    .line 484
    instance-of v1, v0, Lih;

    if-eqz v1, :cond_12

    .line 485
    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    :cond_12
    return-object v0

    .line 480
    :cond_13
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhf;

    goto :goto_3
.end method


# virtual methods
.method public a(Lfd;Lhc;Lht;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p3, p1, p2}, Lht;->d(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lfd;Lhc;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 519
    if-nez p3, :cond_18

    .line 520
    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    .line 523
    :goto_4
    invoke-virtual {p2, p1}, Lhc;->a(Lfd;)Z

    .line 524
    sget-object v1, Lhb$a;->FAIL_ON_UNKNOWN_PROPERTIES:Lhb$a;

    invoke-virtual {p2, v1}, Lhc;->a(Lhb$a;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p2, v0, p4}, Lhc;->a(Ljava/lang/Object;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 532
    :cond_14
    invoke-virtual {p1}, Lfd;->c()Lfd;

    .line 533
    return-void

    :cond_18
    move-object v0, p3

    goto :goto_4
.end method

.method public final c()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    return-object v0
.end method

.method protected final e(Lfd;Lhc;)Z
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 84
    sget-object v1, Lfg;->VALUE_TRUE:Lfg;

    if-ne v0, v1, :cond_a

    .line 85
    const/4 v0, 0x1

    .line 106
    :goto_9
    return v0

    .line 87
    :cond_a
    sget-object v1, Lfg;->VALUE_FALSE:Lfg;

    if-ne v0, v1, :cond_10

    .line 88
    const/4 v0, 0x0

    goto :goto_9

    .line 91
    :cond_10
    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-ne v0, v1, :cond_24

    .line 92
    invoke-virtual {p1}, Lfd;->q()I

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_9

    :cond_21
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1c

    .line 95
    :cond_24
    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-ne v0, v1, :cond_57

    .line 96
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 98
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_9

    .line 100
    :cond_3f
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 101
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_9

    .line 103
    :cond_4e
    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    const-string v1, "only \"true\" or \"false\" recognized"

    invoke-virtual {p2, v0, v1}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 105
    :cond_57
    sget-object v1, Lfg;->VALUE_NULL:Lfg;

    if-ne v0, v1, :cond_62

    .line 106
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_9

    .line 109
    :cond_62
    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0
.end method

.method protected final f(Lfd;Lhc;)Ljava/lang/Short;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 116
    sget-object v1, Lfg;->VALUE_NULL:Lfg;

    if-ne v0, v1, :cond_e

    .line 117
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 127
    :goto_d
    return-object v0

    .line 119
    :cond_e
    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-eq v0, v1, :cond_16

    sget-object v1, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    if-ne v0, v1, :cond_1f

    .line 120
    :cond_16
    invoke-virtual {p1}, Lfd;->p()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_d

    .line 122
    :cond_1f
    invoke-virtual {p0, p1, p2}, Lja;->h(Lfd;Lhc;)I

    move-result v0

    .line 124
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_2b

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_34

    .line 125
    :cond_2b
    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    const-string v1, "overflow, value can not be represented as 16-bit value"

    invoke-virtual {p2, v0, v1}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 127
    :cond_34
    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_d
.end method

.method protected final g(Lfd;Lhc;)S
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0, p1, p2}, Lja;->h(Lfd;Lhc;)I

    move-result v0

    .line 135
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_c

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_15

    .line 136
    :cond_c
    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    const-string v1, "overflow, value can not be represented as 16-bit value"

    invoke-virtual {p2, v0, v1}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 138
    :cond_15
    int-to-short v0, v0

    return v0
.end method

.method protected final h(Lfd;Lhc;)I
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 144
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 147
    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-eq v0, v1, :cond_d

    sget-object v1, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    if-ne v0, v1, :cond_12

    .line 148
    :cond_d
    invoke-virtual {p1}, Lfd;->q()I

    move-result v0

    .line 174
    :goto_11
    return v0

    .line 150
    :cond_12
    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-ne v0, v1, :cond_86

    .line 154
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 156
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 157
    const/16 v2, 0x9

    if-le v1, v2, :cond_7d

    .line 158
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 159
    const-wide/32 v3, -0x80000000

    cmp-long v3, v1, v3

    if-ltz v3, :cond_38

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_7b

    .line 160
    :cond_38
    iget-object v1, p0, Lja;->m:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overflow: numeric value ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") out of range of int ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v2, -0x8000

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0
    :try_end_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_71} :catch_71

    .line 170
    :catch_71
    move-exception v0

    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    const-string v1, "not a valid int value"

    invoke-virtual {p2, v0, v1}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 163
    :cond_7b
    long-to-int v0, v1

    goto :goto_11

    .line 165
    :cond_7d
    if-nez v1, :cond_81

    move v0, v3

    .line 166
    goto :goto_11

    .line 168
    :cond_81
    :try_start_81
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/lang/IllegalArgumentException; {:try_start_81 .. :try_end_84} :catch_71

    move-result v0

    goto :goto_11

    .line 173
    :cond_86
    sget-object v1, Lfg;->VALUE_NULL:Lfg;

    if-ne v0, v1, :cond_8c

    move v0, v3

    .line 174
    goto :goto_11

    .line 177
    :cond_8c
    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0
.end method

.method protected final i(Lfd;Lhc;)Ljava/lang/Integer;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 184
    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-eq v0, v1, :cond_d

    sget-object v1, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    if-ne v0, v1, :cond_16

    .line 185
    :cond_d
    invoke-virtual {p1}, Lfd;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 208
    :goto_15
    return-object v0

    .line 187
    :cond_16
    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-ne v0, v1, :cond_92

    .line 188
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 190
    :try_start_22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 191
    const/16 v2, 0x9

    if-le v1, v2, :cond_85

    .line 192
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 193
    const-wide/32 v3, -0x80000000

    cmp-long v3, v1, v3

    if-ltz v3, :cond_3c

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_7f

    .line 194
    :cond_3c
    iget-object v1, p0, Lja;->m:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overflow: numeric value ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") out of range of Integer ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v2, -0x8000

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0
    :try_end_75
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_75} :catch_75

    .line 204
    :catch_75
    move-exception v0

    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    const-string v1, "not a valid Integer value"

    invoke-virtual {p2, v0, v1}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 197
    :cond_7f
    long-to-int v0, v1

    :try_start_80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_15

    .line 199
    :cond_85
    if-nez v1, :cond_89

    move-object v0, v3

    .line 200
    goto :goto_15

    .line 202
    :cond_89
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_90
    .catch Ljava/lang/IllegalArgumentException; {:try_start_80 .. :try_end_90} :catch_75

    move-result-object v0

    goto :goto_15

    .line 207
    :cond_92
    sget-object v1, Lfg;->VALUE_NULL:Lfg;

    if-ne v0, v1, :cond_99

    move-object v0, v3

    .line 208
    goto/16 :goto_15

    .line 211
    :cond_99
    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0
.end method

.method protected final j(Lfd;Lhc;)Ljava/lang/Long;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 220
    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-eq v0, v1, :cond_d

    sget-object v1, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    if-ne v0, v1, :cond_16

    .line 221
    :cond_d
    invoke-virtual {p1}, Lfd;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 236
    :goto_15
    return-object v0

    .line 224
    :cond_16
    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-ne v0, v1, :cond_3d

    .line 226
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2a

    move-object v0, v2

    .line 228
    goto :goto_15

    .line 231
    :cond_2a
    :try_start_2a
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_31} :catch_33

    move-result-object v0

    goto :goto_15

    .line 233
    :catch_33
    move-exception v0

    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    const-string v1, "not a valid Long value"

    invoke-virtual {p2, v0, v1}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 235
    :cond_3d
    sget-object v1, Lfg;->VALUE_NULL:Lfg;

    if-ne v0, v1, :cond_43

    move-object v0, v2

    .line 236
    goto :goto_15

    .line 239
    :cond_43
    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0
.end method

.method protected final k(Lfd;Lhc;)J
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 245
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 246
    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-eq v0, v1, :cond_e

    sget-object v1, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    if-ne v0, v1, :cond_13

    .line 247
    :cond_e
    invoke-virtual {p1}, Lfd;->r()J

    move-result-wide v0

    .line 260
    :goto_12
    return-wide v0

    .line 249
    :cond_13
    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-ne v0, v1, :cond_36

    .line 250
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_27

    move-wide v0, v2

    .line 252
    goto :goto_12

    .line 255
    :cond_27
    :try_start_27
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_2a} :catch_2c

    move-result-wide v0

    goto :goto_12

    .line 257
    :catch_2c
    move-exception v0

    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    const-string v1, "not a valid long value"

    invoke-virtual {p2, v0, v1}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 259
    :cond_36
    sget-object v1, Lfg;->VALUE_NULL:Lfg;

    if-ne v0, v1, :cond_3c

    move-wide v0, v2

    .line 260
    goto :goto_12

    .line 262
    :cond_3c
    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0
.end method

.method protected final l(Lfd;Lhc;)Ljava/lang/Float;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 269
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 271
    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-eq v0, v1, :cond_d

    sget-object v1, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    if-ne v0, v1, :cond_16

    .line 272
    :cond_d
    invoke-virtual {p1}, Lfd;->t()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 303
    :goto_15
    return-object v0

    .line 275
    :cond_16
    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-ne v0, v1, :cond_82

    .line 276
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2a

    move-object v0, v2

    .line 278
    goto :goto_15

    .line 280
    :cond_2a
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_90

    .line 298
    :cond_32
    :try_start_32
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_39} :catch_78

    move-result-object v0

    goto :goto_15

    .line 282
    :sswitch_3b
    const-string v1, "Infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string v1, "INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 283
    :cond_4b
    const/high16 v0, 0x7f80

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_15

    .line 287
    :sswitch_52
    const-string v1, "NaN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 288
    const/high16 v0, 0x7fc0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_15

    .line 292
    :sswitch_61
    const-string v1, "-Infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "-INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 293
    :cond_71
    const/high16 v0, -0x80

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_15

    .line 300
    :catch_78
    move-exception v0

    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    const-string v1, "not a valid Float value"

    invoke-virtual {p2, v0, v1}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 302
    :cond_82
    sget-object v1, Lfg;->VALUE_NULL:Lfg;

    if-ne v0, v1, :cond_88

    move-object v0, v2

    .line 303
    goto :goto_15

    .line 306
    :cond_88
    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    .line 280
    nop

    :sswitch_data_90
    .sparse-switch
        0x2d -> :sswitch_61
        0x49 -> :sswitch_3b
        0x4e -> :sswitch_52
    .end sparse-switch
.end method

.method protected final m(Lfd;Lhc;)F
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 312
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 314
    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-eq v0, v1, :cond_d

    sget-object v1, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    if-ne v0, v1, :cond_12

    .line 315
    :cond_d
    invoke-virtual {p1}, Lfd;->t()F

    move-result v0

    .line 345
    :goto_11
    return v0

    .line 317
    :cond_12
    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-ne v0, v1, :cond_6e

    .line 318
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_26

    move v0, v2

    .line 320
    goto :goto_11

    .line 322
    :cond_26
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_7c

    .line 340
    :cond_2e
    :try_start_2e
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_31} :catch_64

    move-result v0

    goto :goto_11

    .line 324
    :sswitch_33
    const-string v1, "Infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    const-string v1, "INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 325
    :cond_43
    const/high16 v0, 0x7f80

    goto :goto_11

    .line 329
    :sswitch_46
    const-string v1, "NaN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 330
    const/high16 v0, 0x7fc0

    goto :goto_11

    .line 334
    :sswitch_51
    const-string v1, "-Infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    const-string v1, "-INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 335
    :cond_61
    const/high16 v0, -0x80

    goto :goto_11

    .line 342
    :catch_64
    move-exception v0

    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    const-string v1, "not a valid float value"

    invoke-virtual {p2, v0, v1}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 344
    :cond_6e
    sget-object v1, Lfg;->VALUE_NULL:Lfg;

    if-ne v0, v1, :cond_74

    move v0, v2

    .line 345
    goto :goto_11

    .line 348
    :cond_74
    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    .line 322
    nop

    :sswitch_data_7c
    .sparse-switch
        0x2d -> :sswitch_51
        0x49 -> :sswitch_33
        0x4e -> :sswitch_46
    .end sparse-switch
.end method

.method protected final n(Lfd;Lhc;)Ljava/lang/Double;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 354
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 356
    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-eq v0, v1, :cond_d

    sget-object v1, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    if-ne v0, v1, :cond_16

    .line 357
    :cond_d
    invoke-virtual {p1}, Lfd;->u()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 387
    :goto_15
    return-object v0

    .line 359
    :cond_16
    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-ne v0, v1, :cond_82

    .line 360
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2a

    move-object v0, v2

    .line 362
    goto :goto_15

    .line 364
    :cond_2a
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_90

    .line 382
    :cond_32
    :try_start_32
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_39} :catch_78

    move-result-object v0

    goto :goto_15

    .line 366
    :sswitch_3b
    const-string v1, "Infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string v1, "INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 367
    :cond_4b
    const-wide/high16 v0, 0x7ff0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_15

    .line 371
    :sswitch_52
    const-string v1, "NaN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 372
    const-wide/high16 v0, 0x7ff8

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_15

    .line 376
    :sswitch_61
    const-string v1, "-Infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "-INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 377
    :cond_71
    const-wide/high16 v0, -0x10

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_15

    .line 384
    :catch_78
    move-exception v0

    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    const-string v1, "not a valid Double value"

    invoke-virtual {p2, v0, v1}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 386
    :cond_82
    sget-object v1, Lfg;->VALUE_NULL:Lfg;

    if-ne v0, v1, :cond_88

    move-object v0, v2

    .line 387
    goto :goto_15

    .line 390
    :cond_88
    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    .line 364
    nop

    :sswitch_data_90
    .sparse-switch
        0x2d -> :sswitch_61
        0x49 -> :sswitch_3b
        0x4e -> :sswitch_52
    .end sparse-switch
.end method

.method protected final o(Lfd;Lhc;)D
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 397
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 399
    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-eq v0, v1, :cond_e

    sget-object v1, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    if-ne v0, v1, :cond_13

    .line 400
    :cond_e
    invoke-virtual {p1}, Lfd;->u()D

    move-result-wide v0

    .line 431
    :goto_12
    return-wide v0

    .line 403
    :cond_13
    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-ne v0, v1, :cond_6f

    .line 404
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_27

    move-wide v0, v2

    .line 406
    goto :goto_12

    .line 408
    :cond_27
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_7c

    .line 426
    :cond_2f
    :try_start_2f
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_32} :catch_65

    move-result-wide v0

    goto :goto_12

    .line 410
    :sswitch_34
    const-string v1, "Infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    const-string v1, "INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 411
    :cond_44
    const-wide/high16 v0, 0x7ff0

    goto :goto_12

    .line 415
    :sswitch_47
    const-string v1, "NaN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 416
    const-wide/high16 v0, 0x7ff8

    goto :goto_12

    .line 420
    :sswitch_52
    const-string v1, "-Infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    const-string v1, "-INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 421
    :cond_62
    const-wide/high16 v0, -0x10

    goto :goto_12

    .line 428
    :catch_65
    move-exception v0

    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    const-string v1, "not a valid double value"

    invoke-virtual {p2, v0, v1}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 430
    :cond_6f
    sget-object v1, Lfg;->VALUE_NULL:Lfg;

    if-ne v0, v1, :cond_75

    move-wide v0, v2

    .line 431
    goto :goto_12

    .line 434
    :cond_75
    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    .line 408
    :sswitch_data_7c
    .sparse-switch
        0x2d -> :sswitch_52
        0x49 -> :sswitch_34
        0x4e -> :sswitch_47
    .end sparse-switch
.end method

.method protected final p(Lfd;Lhc;)Ljava/util/Date;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 441
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 443
    :try_start_4
    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-ne v0, v1, :cond_12

    .line 444
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lfd;->r()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 454
    :goto_11
    return-object v0

    .line 446
    :cond_12
    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-ne v0, v1, :cond_2b

    .line 450
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_26

    .line 452
    const/4 v0, 0x0

    goto :goto_11

    .line 454
    :cond_26
    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_11

    .line 456
    :cond_2b
    iget-object v0, p0, Lja;->m:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_32} :catch_32

    .line 457
    :catch_32
    move-exception v0

    .line 458
    iget-object v1, p0, Lja;->m:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a valid representation (error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0
.end method
