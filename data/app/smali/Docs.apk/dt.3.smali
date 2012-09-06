.class public Ldt;
.super Ljava/lang/Object;
.source "AclType.java"


# instance fields
.field private a:Ldw;

.field private a:Ldx;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lds;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object v0, p0, Ldt;->a:Ljava/lang/String;

    .line 250
    iput-object v0, p0, Ldt;->b:Ljava/lang/String;

    .line 251
    sget-object v0, Ldx;->e:Ldx;

    iput-object v0, p0, Ldt;->a:Ldx;

    .line 252
    sget-object v0, Ldw;->f:Ldw;

    iput-object v0, p0, Ldt;->a:Ldw;

    .line 253
    const-class v0, Lds;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Ldt;->a:Ljava/util/Set;

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldt;->a:Z

    .line 265
    return-void
.end method

.method private a(Ldu;Ldx;Z)Ldt;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 343
    invoke-virtual {p1}, Ldu;->a()Ldw;

    move-result-object v0

    iput-object v0, p0, Ldt;->a:Ldw;

    .line 344
    iput-object p2, p0, Ldt;->a:Ldx;

    .line 345
    iput-boolean p3, p0, Ldt;->a:Z

    .line 346
    iget-object v0, p0, Ldt;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 347
    iget-object v0, p0, Ldt;->a:Ljava/util/Set;

    invoke-virtual {p1}, Ldu;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 348
    return-object p0
.end method


# virtual methods
.method public a()Ldq;
    .registers 8

    .prologue
    .line 336
    new-instance v0, Ldq;

    iget-object v1, p0, Ldt;->a:Ljava/lang/String;

    iget-object v2, p0, Ldt;->b:Ljava/lang/String;

    iget-object v3, p0, Ldt;->a:Ldx;

    iget-object v4, p0, Ldt;->a:Ldw;

    iget-object v5, p0, Ldt;->a:Ljava/util/Set;

    invoke-static {v4, v5}, Ldu;->a(Ldw;Ljava/util/Set;)Ldu;

    move-result-object v4

    iget-boolean v5, p0, Ldt;->a:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ldq;-><init>(Ljava/lang/String;Ljava/lang/String;Ldx;Ldu;ZLdr;)V

    return-object v0
.end method

.method public a(Ldq;)Ldt;
    .registers 4
    .parameter

    .prologue
    .line 319
    invoke-static {p1}, Ldq;->a(Ldq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldt;->a:Ljava/lang/String;

    .line 320
    invoke-static {p1}, Ldq;->b(Ldq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldt;->b:Ljava/lang/String;

    .line 321
    invoke-static {p1}, Ldq;->a(Ldq;)Ldx;

    move-result-object v0

    iput-object v0, p0, Ldt;->a:Ldx;

    .line 322
    invoke-virtual {p1}, Ldq;->a()Ldw;

    move-result-object v0

    iput-object v0, p0, Ldt;->a:Ldw;

    .line 323
    invoke-static {p1}, Ldq;->a(Ldq;)Z

    move-result v0

    iput-boolean v0, p0, Ldt;->a:Z

    .line 324
    iget-object v0, p0, Ldt;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 325
    iget-object v0, p0, Ldt;->a:Ljava/util/Set;

    invoke-virtual {p1}, Ldq;->a()Ldu;

    move-result-object v1

    invoke-virtual {v1}, Ldu;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 326
    return-object p0
.end method

.method public a(Ldu;)Ldt;
    .registers 3
    .parameter

    .prologue
    .line 307
    invoke-virtual {p1}, Ldu;->a()Ldw;

    move-result-object v0

    iput-object v0, p0, Ldt;->a:Ldw;

    .line 308
    invoke-virtual {p1}, Ldu;->a()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldt;->a(Ljava/util/Set;)Ldt;

    .line 309
    return-object p0
.end method

.method public a(Ldv;)Ldt;
    .registers 5
    .parameter

    .prologue
    .line 330
    invoke-virtual {p1}, Ldv;->a()Ldu;

    move-result-object v0

    invoke-virtual {p1}, Ldv;->a()Ldx;

    move-result-object v1

    invoke-virtual {p1}, Ldv;->a()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Ldt;->a(Ldu;Ldx;Z)Ldt;

    move-result-object v0

    return-object v0
.end method

.method public a(Ldw;)Ldt;
    .registers 2
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Ldt;->a:Ldw;

    .line 284
    return-object p0
.end method

.method public a(Ldx;)Ldt;
    .registers 2
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Ldt;->a:Ldx;

    .line 279
    return-object p0
.end method

.method public a(Ljava/lang/String;)Ldt;
    .registers 2
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Ldt;->a:Ljava/lang/String;

    .line 269
    return-object p0
.end method

.method public a(Ljava/util/Set;)Ldt;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lds;",
            ">;)",
            "Ldt;"
        }
    .end annotation

    .prologue
    .line 288
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 289
    const-class v0, Lds;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Ldt;->a:Ljava/util/Set;

    .line 293
    :goto_e
    return-object p0

    .line 291
    :cond_f
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Ldt;->a:Ljava/util/Set;

    goto :goto_e
.end method

.method public a(Z)Ldt;
    .registers 2
    .parameter

    .prologue
    .line 297
    iput-boolean p1, p0, Ldt;->a:Z

    .line 298
    return-object p0
.end method

.method public b(Ljava/lang/String;)Ldt;
    .registers 2
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Ldt;->b:Ljava/lang/String;

    .line 274
    return-object p0
.end method
