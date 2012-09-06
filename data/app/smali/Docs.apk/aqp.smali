.class Laqp;
.super Ljava/lang/Object;
.source "Elements.java"

# interfaces
.implements LanA;
.implements Lcom/google/inject/Binder;


# instance fields
.field private final a:LanO;

.field private final a:LapW;

.field private final a:Lapq;

.field private final a:Laqp;

.field private final a:Ljava/lang/Object;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laqm;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lanz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(LanO;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Laqp;->a:LanO;

    .line 139
    invoke-static {}, LakX;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Laqp;->a:Ljava/util/Set;

    .line 140
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Laqp;->a:Ljava/util/List;

    .line 141
    iput-object v4, p0, Laqp;->a:Ljava/lang/Object;

    .line 142
    sget-object v0, LapW;->a:LapW;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Laqn;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Laqp;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lanf;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Laom;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, LanW;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Laob;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, LapW;->a([Ljava/lang/Class;)LapW;

    move-result-object v0

    iput-object v0, p0, Laqp;->a:LapW;

    .line 145
    iput-object v4, p0, Laqp;->a:Laqp;

    .line 146
    iput-object v4, p0, Laqp;->a:Lapq;

    .line 147
    return-void
.end method

.method synthetic constructor <init>(LanO;Laqo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-direct {p0, p1}, Laqp;-><init>(LanO;)V

    return-void
.end method

.method private constructor <init>(Laqp;Lapq;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iget-object v0, p1, Laqp;->a:LanO;

    iput-object v0, p0, Laqp;->a:LanO;

    .line 166
    invoke-static {}, LakX;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Laqp;->a:Ljava/util/Set;

    .line 167
    invoke-virtual {p2}, Lapq;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laqp;->a:Ljava/util/List;

    .line 168
    iget-object v0, p1, Laqp;->a:Ljava/lang/Object;

    iput-object v0, p0, Laqp;->a:Ljava/lang/Object;

    .line 169
    iget-object v0, p1, Laqp;->a:LapW;

    iput-object v0, p0, Laqp;->a:LapW;

    .line 170
    iput-object p1, p0, Laqp;->a:Laqp;

    .line 171
    iput-object p2, p0, Laqp;->a:Lapq;

    .line 172
    return-void
.end method

.method private constructor <init>(Laqp;Ljava/lang/Object;LapW;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    if-nez p2, :cond_27

    move v2, v0

    :goto_8
    if-nez p3, :cond_29

    :goto_a
    xor-int/2addr v0, v2

    invoke-static {v0}, LafQ;->a(Z)V

    .line 154
    iget-object v0, p1, Laqp;->a:LanO;

    iput-object v0, p0, Laqp;->a:LanO;

    .line 155
    iget-object v0, p1, Laqp;->a:Ljava/util/Set;

    iput-object v0, p0, Laqp;->a:Ljava/util/Set;

    .line 156
    iget-object v0, p1, Laqp;->a:Ljava/util/List;

    iput-object v0, p0, Laqp;->a:Ljava/util/List;

    .line 157
    iput-object p2, p0, Laqp;->a:Ljava/lang/Object;

    .line 158
    iput-object p3, p0, Laqp;->a:LapW;

    .line 159
    iget-object v0, p1, Laqp;->a:Laqp;

    iput-object v0, p0, Laqp;->a:Laqp;

    .line 160
    iget-object v0, p1, Laqp;->a:Lapq;

    iput-object v0, p0, Laqp;->a:Lapq;

    .line 161
    return-void

    :cond_27
    move v2, v1

    .line 152
    goto :goto_8

    :cond_29
    move v0, v1

    goto :goto_a
.end method

.method private a(Lant;)LanS;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;)",
            "LanS;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Laqp;->a:Lapq;

    if-nez v0, :cond_15

    .line 337
    const-string v0, "Cannot expose %s on a standard binder. Exposed bindings are only applicable to private binders."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Laqp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    new-instance v0, Laqq;

    invoke-direct {v0, p0}, Laqq;-><init>(Laqp;)V

    .line 347
    :goto_14
    return-object v0

    .line 345
    :cond_15
    new-instance v0, LaoH;

    invoke-virtual {p0}, Laqp;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, LaoH;-><init>(Lcom/google/inject/Binder;Ljava/lang/Object;Lant;)V

    .line 346
    iget-object v1, p0, Laqp;->a:Lapq;

    invoke-virtual {v1, v0}, Lapq;->a(LaoH;)V

    goto :goto_14
.end method

.method static synthetic a(Laqp;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Laqp;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()LanA;
    .registers 3

    .prologue
    .line 306
    new-instance v0, Lapq;

    invoke-virtual {p0}, Laqp;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lapq;-><init>(Ljava/lang/Object;)V

    .line 307
    iget-object v1, p0, Laqp;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance v1, Laqp;

    invoke-direct {v1, p0, v0}, Laqp;-><init>(Laqp;Lapq;)V

    return-object v1
.end method

.method public a(Lant;)LanD;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;)",
            "LanD",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, LaqK;

    invoke-virtual {p0}, Laqp;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LaqK;-><init>(Ljava/lang/Object;Lant;)V

    .line 278
    iget-object v1, p0, Laqp;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {v0}, LaqK;->a()LanD;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)LanD;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "LanD",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {p1}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-virtual {p0, v0}, Laqp;->a(Lant;)LanD;

    move-result-object v0

    return-object v0
.end method

.method public a(LanP;)LanQ;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LanP",
            "<TT;>;)",
            "LanQ",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {p1}, Lant;->a(LanP;)Lant;

    move-result-object v0

    invoke-virtual {p0, v0}, Laqp;->a(Lant;)LanQ;

    move-result-object v0

    return-object v0
.end method

.method public a(Lant;)LanQ;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;)",
            "LanQ",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Laob;

    iget-object v1, p0, Laqp;->a:Ljava/util/List;

    invoke-virtual {p0}, Laqp;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Laob;-><init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lant;)V

    return-object v0
.end method

.method public a(Ljava/lang/Class;)LanQ;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "LanQ",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 269
    invoke-static {p1}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-virtual {p0, v0}, Laqp;->a(Lant;)LanQ;

    move-result-object v0

    return-object v0
.end method

.method public a()LanR;
    .registers 4

    .prologue
    .line 273
    new-instance v0, Laom;

    iget-object v1, p0, Laqp;->a:Ljava/util/List;

    invoke-virtual {p0}, Laqp;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Laom;-><init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic a(Lant;)LanU;
    .registers 3
    .parameter

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Laqp;->a(Lant;)LanQ;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Laqp;
    .registers 4
    .parameter

    .prologue
    .line 292
    new-instance v0, Laqp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Laqp;-><init>(Laqp;Ljava/lang/Object;LapW;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/inject/Binder;
    .registers 3
    .parameter

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Laqp;->a(Ljava/lang/Object;)Laqp;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Laqp;->a:LapW;

    if-eqz v0, :cond_b

    iget-object v0, p0, Laqp;->a:LapW;

    invoke-virtual {v0}, LapW;->a()Ljava/lang/StackTraceElement;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Laqp;->a:Ljava/lang/Object;

    goto :goto_a
.end method

.method public a(Lant;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lant",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 324
    invoke-direct {p0, p1}, Laqp;->a(Lant;)LanS;

    .line 325
    return-void
.end method

.method public a(Lanz;)V
    .registers 6
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Laqp;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 225
    instance-of v0, p1, LanB;

    if-eqz v0, :cond_30

    .line 226
    invoke-interface {p0}, Lcom/google/inject/Binder;->a()LanA;

    move-result-object v0

    .line 230
    :goto_10
    :try_start_10
    invoke-interface {p1, v0}, Lanz;->a(Lcom/google/inject/Binder;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_13} :catch_1b

    .line 239
    :goto_13
    invoke-static {p1}, Lapx;->a(Lanz;)Lanz;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/inject/Binder;->a(Lanz;)V

    .line 241
    :cond_1a
    return-void

    .line 231
    :catch_1b
    move-exception v1

    .line 232
    invoke-static {v1}, Laoy;->a(Ljava/lang/Throwable;)Ljava/util/Collection;

    move-result-object v2

    .line 233
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 234
    iget-object v1, p0, Laqp;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_13

    .line 236
    :cond_2c
    invoke-virtual {p0, v1}, Laqp;->a(Ljava/lang/Throwable;)V

    goto :goto_13

    :cond_30
    move-object v0, p0

    goto :goto_10
.end method

.method public a(LaqF;)V
    .registers 3
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Laqp;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    return-void
.end method

.method public a(Ljava/lang/Class;LanG;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "LanG;",
            ")V"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Laqp;->a:Ljava/util/List;

    new-instance v1, LaqP;

    invoke-virtual {p0}, Laqp;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, LaqP;-><init>(Ljava/lang/Object;Ljava/lang/Class;LanG;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Laqp;->a:Ljava/util/List;

    new-instance v1, LaqF;

    invoke-virtual {p0}, Laqp;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, p2}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LaqF;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 6
    .parameter

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An exception was caught and reported. Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    iget-object v1, p0, Laqp;->a:Ljava/util/List;

    new-instance v2, LaqF;

    invoke-virtual {p0}, Laqp;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, LaiA;->a(Ljava/lang/Object;)LaiA;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1}, LaqF;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method public varargs a([Ljava/lang/Class;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 217
    array-length v1, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_17

    aget-object v2, p1, v0

    .line 218
    iget-object v3, p0, Laqp;->a:Ljava/util/List;

    new-instance v4, LaqQ;

    invoke-virtual {p0}, Laqp;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5, v2}, LaqQ;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 220
    :cond_17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 357
    const-string v0, "Binder"

    return-object v0
.end method
