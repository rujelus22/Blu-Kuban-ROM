.class public Lt/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/HashMap;

.field protected final b:I

.field private c:Lt/i;

.field private d:Lt/i;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lt/f;->a:Ljava/util/HashMap;

    .line 21
    iput p1, p0, Lt/f;->b:I

    .line 22
    return-void
.end method

.method private a(Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lt/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/i;

    .line 148
    if-nez v0, :cond_c

    .line 149
    const/4 v0, 0x0

    .line 159
    :goto_b
    return-object v0

    .line 151
    :cond_c
    invoke-direct {p0, v0}, Lt/f;->b(Lt/i;)V

    .line 152
    if-eqz p2, :cond_16

    .line 154
    iget-object v1, v0, Lt/i;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lt/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    :cond_16
    iget-object v0, v0, Lt/i;->d:Ljava/lang/Object;

    goto :goto_b
.end method

.method private a(Lt/i;)V
    .registers 3
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lt/f;->d:Lt/i;

    if-nez v0, :cond_9

    .line 192
    iput-object p1, p0, Lt/f;->c:Lt/i;

    .line 193
    iput-object p1, p0, Lt/f;->d:Lt/i;

    .line 200
    :goto_8
    return-void

    .line 195
    :cond_9
    iget-object v0, p0, Lt/f;->d:Lt/i;

    .line 196
    iput-object v0, p1, Lt/i;->a:Lt/i;

    .line 197
    iput-object p1, v0, Lt/i;->b:Lt/i;

    .line 198
    iput-object p1, p0, Lt/f;->d:Lt/i;

    goto :goto_8
.end method

.method private b(Lt/i;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v0, p1, Lt/i;->a:Lt/i;

    .line 204
    iget-object v1, p1, Lt/i;->b:Lt/i;

    .line 205
    if-eqz v0, :cond_9

    .line 206
    iput-object v1, v0, Lt/i;->b:Lt/i;

    .line 208
    :cond_9
    if-eqz v1, :cond_d

    .line 209
    iput-object v0, v1, Lt/i;->a:Lt/i;

    .line 212
    :cond_d
    iput-object v2, p1, Lt/i;->a:Lt/i;

    .line 213
    iput-object v2, p1, Lt/i;->b:Lt/i;

    .line 215
    iget-object v2, p0, Lt/f;->c:Lt/i;

    if-ne v2, p1, :cond_17

    .line 216
    iput-object v1, p0, Lt/f;->c:Lt/i;

    .line 219
    :cond_17
    iget-object v1, p0, Lt/f;->d:Lt/i;

    if-ne v1, p1, :cond_1d

    .line 220
    iput-object v0, p0, Lt/f;->d:Lt/i;

    .line 222
    :cond_1d
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lt/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/i;

    .line 94
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, v0, Lt/i;->d:Ljava/lang/Object;

    goto :goto_b
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 182
    :goto_0
    iget-object v0, p0, Lt/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, p1, :cond_18

    .line 183
    iget-object v0, p0, Lt/f;->c:Lt/i;

    iget-object v0, v0, Lt/i;->c:Ljava/lang/Object;

    .line 184
    iget-object v1, p0, Lt/f;->c:Lt/i;

    iget-object v1, v1, Lt/i;->c:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lt/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 186
    invoke-virtual {p0, v0, v1}, Lt/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    :cond_18
    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 49
    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lt/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/i;

    .line 102
    if-nez v0, :cond_c

    .line 103
    const/4 v0, 0x0

    .line 111
    :goto_b
    return-object v0

    .line 107
    :cond_c
    invoke-direct {p0, v0}, Lt/f;->b(Lt/i;)V

    .line 108
    invoke-direct {p0, v0}, Lt/f;->a(Lt/i;)V

    .line 111
    iget-object v0, v0, Lt/i;->d:Ljava/lang/Object;

    goto :goto_b
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 61
    return-void
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 133
    const/4 v0, 0x1

    .line 134
    invoke-direct {p0, p1, v0}, Lt/f;->a(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lt/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/i;

    .line 67
    if-nez v0, :cond_11

    .line 68
    iget v1, p0, Lt/f;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lt/f;->a(I)V

    .line 73
    :cond_11
    new-instance v1, Lt/i;

    invoke-direct {v1}, Lt/i;-><init>()V

    .line 74
    iput-object p2, v1, Lt/i;->d:Ljava/lang/Object;

    .line 75
    iput-object p1, v1, Lt/i;->c:Ljava/lang/Object;

    .line 77
    if-eqz v0, :cond_29

    .line 78
    invoke-direct {p0, v0}, Lt/f;->b(Lt/i;)V

    .line 81
    iget-object v2, v0, Lt/i;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lt/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    iget-object v0, v0, Lt/i;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lt/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    :cond_29
    iget-object v0, p0, Lt/f;->a:Ljava/util/HashMap;

    iget-object v2, v1, Lt/i;->c:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-direct {p0, v1}, Lt/f;->a(Lt/i;)V

    .line 89
    return-void
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lt/f;->a(I)V

    .line 30
    return-void
.end method

.method public final f()I
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lt/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lt/f;->c:Lt/i;

    if-nez v0, :cond_6

    .line 116
    const/4 v0, 0x0

    .line 118
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lt/f;->c:Lt/i;

    iget-object v0, v0, Lt/i;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lt/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public h()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lt/f;->d:Lt/i;

    if-nez v0, :cond_6

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lt/f;->d:Lt/i;

    iget-object v0, v0, Lt/i;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lt/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public final i()Ljava/util/Collection;
    .registers 4

    .prologue
    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lt/f;->f()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    iget-object v0, p0, Lt/f;->c:Lt/i;

    :goto_b
    if-eqz v0, :cond_15

    .line 175
    iget-object v2, v0, Lt/i;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, v0, Lt/i;->b:Lt/i;

    goto :goto_b

    .line 177
    :cond_15
    return-object v1
.end method

.method public j()Lt/g;
    .registers 3

    .prologue
    .line 278
    new-instance v0, Lt/g;

    iget-object v1, p0, Lt/f;->c:Lt/i;

    invoke-direct {v0, v1}, Lt/g;-><init>(Lt/i;)V

    return-object v0
.end method
