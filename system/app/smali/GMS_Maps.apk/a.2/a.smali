.class public La/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:La/b;

.field c:Z

.field d:Z

.field e:Z

.field f:Z


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 342
    invoke-static {p1, v0}, Lc/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 343
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, La/a;->c:Z

    .line 195
    iput-boolean v1, p0, La/a;->e:Z

    .line 196
    iput-boolean v1, p0, La/a;->d:Z

    .line 197
    invoke-virtual {p0}, La/a;->b()V

    .line 198
    return-void
.end method

.method public a(ILa/b;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, La/a;->b:La/b;

    if-eqz v0, :cond_c

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_c
    iput-object p2, p0, La/a;->b:La/b;

    .line 133
    iput p1, p0, La/a;->a:I

    .line 134
    return-void
.end method

.method public a(La/b;)V
    .registers 4
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, La/a;->b:La/b;

    if-nez v0, :cond_c

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_c
    iget-object v0, p0, La/a;->b:La/b;

    if-eq v0, p1, :cond_18

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, La/a;->b:La/b;

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

    iget v0, p0, La/a;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 367
    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a;->b:La/b;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 368
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, La/a;->c:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 369
    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, La/a;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 370
    const-string v0, " mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, La/a;->d:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 371
    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, La/a;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 372
    return-void
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 206
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, La/a;->c:Z

    .line 243
    invoke-virtual {p0}, La/a;->d()V

    .line 244
    return-void
.end method

.method protected d()V
    .registers 1

    .prologue
    .line 253
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 290
    invoke-virtual {p0}, La/a;->f()V

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, La/a;->e:Z

    .line 292
    iput-boolean v1, p0, La/a;->c:Z

    .line 293
    iput-boolean v1, p0, La/a;->d:Z

    .line 294
    iput-boolean v1, p0, La/a;->f:Z

    .line 295
    return-void
.end method

.method protected f()V
    .registers 1

    .prologue
    .line 304
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 350
    invoke-static {p0, v0}, Lc/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 351
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget v1, p0, La/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
