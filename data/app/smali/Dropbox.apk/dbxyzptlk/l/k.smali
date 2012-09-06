.class public Ldbxyzptlk/l/k;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field public static final v:Ldbxyzptlk/n/c;


# instance fields
.field public h:J

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Z

.field public t:Z

.field public u:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 354
    new-instance v0, Ldbxyzptlk/l/l;

    invoke-direct {v0}, Ldbxyzptlk/l/l;-><init>()V

    sput-object v0, Ldbxyzptlk/l/k;->v:Ldbxyzptlk/n/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 6
    .parameter

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    const-string v0, "bytes"

    invoke-static {p1, v0}, Ldbxyzptlk/l/a;->b(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ldbxyzptlk/l/k;->h:J

    .line 301
    const-string v0, "hash"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/l/k;->i:Ljava/lang/String;

    .line 302
    const-string v0, "icon"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/l/k;->j:Ljava/lang/String;

    .line 303
    const-string v0, "is_dir"

    invoke-static {p1, v0}, Ldbxyzptlk/l/a;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ldbxyzptlk/l/k;->k:Z

    .line 304
    const-string v0, "modified"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/l/k;->l:Ljava/lang/String;

    .line 305
    const-string v0, "client_mtime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/l/k;->m:Ljava/lang/String;

    .line 306
    const-string v0, "path"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    .line 307
    const-string v0, "root"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/l/k;->o:Ljava/lang/String;

    .line 308
    const-string v0, "size"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/l/k;->p:Ljava/lang/String;

    .line 309
    const-string v0, "mime_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/l/k;->q:Ljava/lang/String;

    .line 310
    const-string v0, "rev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/l/k;->r:Ljava/lang/String;

    .line 311
    const-string v0, "thumb_exists"

    invoke-static {p1, v0}, Ldbxyzptlk/l/a;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ldbxyzptlk/l/k;->s:Z

    .line 312
    const-string v0, "is_deleted"

    invoke-static {p1, v0}, Ldbxyzptlk/l/a;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ldbxyzptlk/l/k;->t:Z

    .line 314
    const-string v0, "contents"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_b1

    instance-of v1, v0, Ldbxyzptlk/B/a;

    if-eqz v1, :cond_b1

    .line 316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ldbxyzptlk/l/k;->u:Ljava/util/List;

    .line 318
    check-cast v0, Ldbxyzptlk/B/a;

    invoke-virtual {v0}, Ldbxyzptlk/B/a;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 319
    :cond_96
    :goto_96
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 320
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 321
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_96

    .line 322
    iget-object v2, p0, Ldbxyzptlk/l/k;->u:Ljava/util/List;

    new-instance v3, Ldbxyzptlk/l/k;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v3, v0}, Ldbxyzptlk/l/k;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_96

    .line 326
    :cond_b1
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/l/k;->u:Ljava/util/List;

    .line 328
    :cond_b4
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .registers 4

    .prologue
    .line 338
    iget-object v0, p0, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 339
    iget-object v1, p0, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 4

    .prologue
    .line 346
    iget-object v0, p0, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 347
    const-string v0, ""

    .line 350
    :goto_c
    return-object v0

    .line 349
    :cond_d
    iget-object v0, p0, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 350
    iget-object v1, p0, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
