.class public Ldbxyzptlk/a/d;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field m:I

.field n:Ldbxyzptlk/a/f;

.field o:Landroid/content/Context;

.field p:Z

.field q:Z

.field r:Z

.field s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v1, p0, Ldbxyzptlk/a/d;->p:Z

    .line 39
    iput-boolean v1, p0, Ldbxyzptlk/a/d;->q:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldbxyzptlk/a/d;->r:Z

    .line 41
    iput-boolean v1, p0, Ldbxyzptlk/a/d;->s:Z

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/a/d;->o:Landroid/content/Context;

    .line 92
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    .prologue
    .line 225
    return-void
.end method

.method public final a(ILdbxyzptlk/a/f;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Ldbxyzptlk/a/d;->n:Ldbxyzptlk/a/f;

    if-eqz v0, :cond_c

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_c
    iput-object p2, p0, Ldbxyzptlk/a/d;->n:Ldbxyzptlk/a/f;

    .line 133
    iput p1, p0, Ldbxyzptlk/a/d;->m:I

    .line 134
    return-void
.end method

.method public final a(Ldbxyzptlk/a/f;)V
    .registers 4
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Ldbxyzptlk/a/d;->n:Ldbxyzptlk/a/f;

    if-nez v0, :cond_c

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_c
    iget-object v0, p0, Ldbxyzptlk/a/d;->n:Ldbxyzptlk/a/f;

    if-eq v0, p1, :cond_18

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/a/d;->n:Ldbxyzptlk/a/f;

    .line 149
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Ldbxyzptlk/a/d;->m:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 367
    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ldbxyzptlk/a/d;->n:Ldbxyzptlk/a/f;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 368
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ldbxyzptlk/a/d;->p:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 369
    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ldbxyzptlk/a/d;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 370
    const-string v0, " mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ldbxyzptlk/a/d;->q:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 371
    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ldbxyzptlk/a/d;->r:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 372
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Ldbxyzptlk/a/d;->n:Ldbxyzptlk/a/f;

    if-eqz v0, :cond_9

    .line 103
    iget-object v0, p0, Ldbxyzptlk/a/d;->n:Ldbxyzptlk/a/f;

    invoke-interface {v0, p0, p1}, Ldbxyzptlk/a/f;->a(Ldbxyzptlk/a/d;Ljava/lang/Object;)V

    .line 105
    :cond_9
    return-void
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 342
    invoke-static {p1, v0}, Ldbxyzptlk/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 343
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected g()V
    .registers 1

    .prologue
    .line 206
    return-void
.end method

.method protected h()V
    .registers 1

    .prologue
    .line 253
    return-void
.end method

.method protected i()V
    .registers 1

    .prologue
    .line 304
    return-void
.end method

.method public final j()Landroid/content/Context;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Ldbxyzptlk/a/d;->o:Landroid/content/Context;

    return-object v0
.end method

.method public final k()Z
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Ldbxyzptlk/a/d;->p:Z

    return v0
.end method

.method public final l()Z
    .registers 2

    .prologue
    .line 166
    iget-boolean v0, p0, Ldbxyzptlk/a/d;->q:Z

    return v0
.end method

.method public final m()Z
    .registers 2

    .prologue
    .line 175
    iget-boolean v0, p0, Ldbxyzptlk/a/d;->r:Z

    return v0
.end method

.method public final n()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldbxyzptlk/a/d;->p:Z

    .line 195
    iput-boolean v1, p0, Ldbxyzptlk/a/d;->r:Z

    .line 196
    iput-boolean v1, p0, Ldbxyzptlk/a/d;->q:Z

    .line 197
    invoke-virtual {p0}, Ldbxyzptlk/a/d;->g()V

    .line 198
    return-void
.end method

.method public final o()V
    .registers 1

    .prologue
    .line 217
    invoke-virtual {p0}, Ldbxyzptlk/a/d;->a()V

    .line 218
    return-void
.end method

.method public final p()V
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldbxyzptlk/a/d;->p:Z

    .line 243
    invoke-virtual {p0}, Ldbxyzptlk/a/d;->h()V

    .line 244
    return-void
.end method

.method public final q()V
    .registers 2

    .prologue
    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldbxyzptlk/a/d;->q:Z

    .line 262
    invoke-virtual {p0}, Ldbxyzptlk/a/d;->r()V

    .line 263
    return-void
.end method

.method protected final r()V
    .registers 1

    .prologue
    .line 275
    return-void
.end method

.method public final s()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 290
    invoke-virtual {p0}, Ldbxyzptlk/a/d;->i()V

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldbxyzptlk/a/d;->r:Z

    .line 292
    iput-boolean v1, p0, Ldbxyzptlk/a/d;->p:Z

    .line 293
    iput-boolean v1, p0, Ldbxyzptlk/a/d;->q:Z

    .line 294
    iput-boolean v1, p0, Ldbxyzptlk/a/d;->s:Z

    .line 295
    return-void
.end method

.method public final t()Z
    .registers 3

    .prologue
    .line 312
    iget-boolean v0, p0, Ldbxyzptlk/a/d;->s:Z

    .line 313
    const/4 v1, 0x0

    iput-boolean v1, p0, Ldbxyzptlk/a/d;->s:Z

    .line 314
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 350
    invoke-static {p0, v0}, Ldbxyzptlk/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 351
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget v1, p0, Ldbxyzptlk/a/d;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .registers 2

    .prologue
    .line 326
    iget-boolean v0, p0, Ldbxyzptlk/a/d;->p:Z

    if-eqz v0, :cond_8

    .line 327
    invoke-virtual {p0}, Ldbxyzptlk/a/d;->o()V

    .line 334
    :goto_7
    return-void

    .line 332
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldbxyzptlk/a/d;->s:Z

    goto :goto_7
.end method
