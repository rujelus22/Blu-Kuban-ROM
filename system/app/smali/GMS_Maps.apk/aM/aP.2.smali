.class public LaM/aP;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Z

.field private final b:[Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private final g:[Z

.field private final h:[Z

.field private final i:[Z

.field private final j:[Z

.field private k:Z


# direct methods
.method public constructor <init>([I[I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    aget v0, p1, v1

    new-array v0, v0, [Z

    iput-object v0, p0, LaM/aP;->a:[Z

    .line 155
    aget v0, p1, v2

    new-array v0, v0, [Z

    iput-object v0, p0, LaM/aP;->b:[Z

    .line 156
    iput-boolean v1, p0, LaM/aP;->c:Z

    .line 157
    aget v0, p2, v1

    new-array v0, v0, [Z

    iput-object v0, p0, LaM/aP;->g:[Z

    .line 158
    aget v0, p2, v2

    new-array v0, v0, [Z

    iput-object v0, p0, LaM/aP;->h:[Z

    .line 159
    const/4 v0, 0x2

    aget v0, p2, v0

    new-array v0, v0, [Z

    iput-object v0, p0, LaM/aP;->i:[Z

    .line 160
    const/4 v0, 0x3

    aget v0, p2, v0

    new-array v0, v0, [Z

    iput-object v0, p0, LaM/aP;->j:[Z

    .line 161
    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 248
    iput-boolean p1, p0, LaM/aP;->d:Z

    .line 249
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 244
    iget-boolean v0, p0, LaM/aP;->d:Z

    return v0
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 264
    iput-boolean p1, p0, LaM/aP;->e:Z

    .line 265
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 260
    iget-boolean v0, p0, LaM/aP;->e:Z

    return v0
.end method

.method public c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 272
    iput-boolean p1, p0, LaM/aP;->f:Z

    .line 273
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 268
    iget-boolean v0, p0, LaM/aP;->f:Z

    return v0
.end method

.method public d(Z)V
    .registers 2
    .parameter

    .prologue
    .line 280
    iput-boolean p1, p0, LaM/aP;->k:Z

    .line 281
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 276
    iget-boolean v0, p0, LaM/aP;->k:Z

    return v0
.end method
