.class public LNq;
.super Ljava/lang/Object;
.source "PunchModelImpl.java"

# interfaces
.implements LNt;


# instance fields
.field private a:I

.field private a:LNr;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LNs;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "LNo;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, LNq;->a:Ljava/util/Set;

    .line 79
    iput v1, p0, LNq;->a:I

    .line 83
    iput-boolean v1, p0, LNq;->a:Z

    return-void
.end method

.method private a(I)LNs;
    .registers 3
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, LNq;->a:Ljava/util/List;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, LNq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, LafQ;->b(II)I

    .line 133
    iget-object v0, p0, LNq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNs;

    .line 134
    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, LNq;->b:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, LNq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 139
    invoke-direct {p0, p1}, LNq;->a(I)LNs;

    move-result-object v0

    .line 140
    if-nez v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    invoke-static {v0}, LNs;->a(LNs;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method a()V
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, LNq;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNo;

    .line 186
    invoke-interface {v0}, LNo;->a()V

    goto :goto_6

    .line 188
    :cond_16
    return-void
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, LNq;->a:Ljava/util/List;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, LNq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, LafQ;->b(II)I

    .line 165
    iget-boolean v0, p0, LNq;->a:Z

    invoke-static {v0}, LafQ;->b(Z)V

    .line 166
    iget-object v0, p0, LNq;->a:LNr;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, LNq;->a:LNr;

    invoke-interface {v0, p1}, LNr;->a(I)V

    .line 168
    return-void
.end method

.method a(ILNs;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, LNq;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-virtual {p0, p1}, LNq;->b(I)V

    .line 247
    return-void
.end method

.method public a(LNo;)V
    .registers 3
    .parameter

    .prologue
    .line 93
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, LNq;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, LafQ;->b(Z)V

    .line 95
    iget-object v0, p0, LNq;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    return-void

    .line 94
    :cond_15
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public a(LNr;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, LNq;->a:LNr;

    .line 89
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, LNq;->a:Ljava/lang/String;

    .line 287
    invoke-virtual {p0}, LNq;->a()V

    .line 288
    return-void
.end method

.method public a(Ljava/lang/String;IIII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, LNq;->a:Ljava/lang/String;

    .line 223
    iput p5, p0, LNq;->d:I

    .line 224
    iput p4, p0, LNq;->a:I

    .line 225
    iput p2, p0, LNq;->b:I

    .line 226
    iput p3, p0, LNq;->c:I

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LNq;->a:Ljava/util/List;

    .line 229
    const/4 v0, 0x0

    :goto_12
    if-ge v0, p4, :cond_1d

    .line 230
    iget-object v1, p0, LNq;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 233
    :cond_1d
    invoke-virtual {p0}, LNq;->d()V

    .line 234
    invoke-virtual {p0}, LNq;->a()V

    .line 235
    invoke-virtual {p0}, LNq;->b()V

    .line 236
    invoke-virtual {p0}, LNq;->c()V

    .line 237
    return-void
.end method

.method a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 255
    iput-boolean p1, p0, LNq;->a:Z

    .line 256
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 262
    iget-boolean v0, p0, LNq;->a:Z

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, LNq;->c:I

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 145
    invoke-direct {p0, p1}, LNq;->a(I)LNs;

    move-result-object v0

    .line 146
    if-nez v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    invoke-static {v0}, LNs;->b(LNs;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method b()V
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, LNq;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNo;

    .line 192
    invoke-interface {v0}, LNo;->e()V

    goto :goto_6

    .line 194
    :cond_16
    return-void
.end method

.method b(I)V
    .registers 4
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, LNq;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNo;

    .line 198
    invoke-interface {v0, p1}, LNo;->a(I)V

    goto :goto_6

    .line 200
    :cond_16
    return-void
.end method

.method public b(LNo;)V
    .registers 3
    .parameter

    .prologue
    .line 100
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, LNq;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, LafQ;->b(Z)V

    .line 102
    iget-object v0, p0, LNq;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, LNq;->a:I

    return v0
.end method

.method public c(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 151
    invoke-direct {p0, p1}, LNq;->a(I)LNs;

    move-result-object v0

    .line 152
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {v0}, LNs;->c(LNs;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method c()V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, LNq;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNo;

    .line 204
    invoke-interface {v0}, LNo;->g()V

    goto :goto_6

    .line 206
    :cond_16
    return-void
.end method

.method c(I)V
    .registers 3
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, LNq;->a:Ljava/util/List;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, LNq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, LafQ;->a(II)I

    .line 274
    iget v0, p0, LNq;->d:I

    if-eq v0, p1, :cond_1b

    const/4 v0, 0x1

    .line 275
    :goto_13
    iput p1, p0, LNq;->d:I

    .line 277
    if-eqz v0, :cond_1a

    .line 278
    invoke-virtual {p0}, LNq;->c()V

    .line 280
    :cond_1a
    return-void

    .line 274
    :cond_1b
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public d()I
    .registers 2

    .prologue
    .line 127
    iget v0, p0, LNq;->d:I

    return v0
.end method

.method d()V
    .registers 3

    .prologue
    .line 209
    iget-object v0, p0, LNq;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNo;

    .line 210
    invoke-interface {v0}, LNo;->c()V

    goto :goto_6

    .line 212
    :cond_16
    return-void
.end method
