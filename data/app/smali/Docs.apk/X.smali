.class public LX;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:I

.field a:LY;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LY",
            "<TD;>;"
        }
    .end annotation
.end field

.field a:Landroid/content/Context;

.field a:Z

.field b:Z

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v1, p0, LX;->a:Z

    .line 39
    iput-boolean v1, p0, LX;->b:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, LX;->c:Z

    .line 41
    iput-boolean v1, p0, LX;->d:Z

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LX;->a:Landroid/content/Context;

    .line 92
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 342
    invoke-static {p1, v0}, Lan;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 343
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .registers 1

    .prologue
    .line 225
    return-void
.end method

.method public a(ILY;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LY",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, LX;->a:LY;

    if-eqz v0, :cond_c

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_c
    iput-object p2, p0, LX;->a:LY;

    .line 133
    iput p1, p0, LX;->a:I

    .line 134
    return-void
.end method

.method public a(LY;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LY",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, LX;->a:LY;

    if-nez v0, :cond_c

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_c
    iget-object v0, p0, LX;->a:LY;

    if-eq v0, p1, :cond_18

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, LX;->a:LY;

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

    iget v0, p0, LX;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 367
    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, LX;->a:LY;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 368
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, LX;->a:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 369
    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, LX;->d:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 370
    const-string v0, " mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, LX;->b:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 371
    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, LX;->c:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 372
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, LX;->a:LY;

    if-eqz v0, :cond_9

    .line 103
    iget-object v0, p0, LX;->a:LY;

    invoke-interface {v0, p0, p1}, LY;->a(LX;Ljava/lang/Object;)V

    .line 105
    :cond_9
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, LX;->a:Z

    return v0
.end method

.method public final c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, LX;->a:Z

    .line 195
    iput-boolean v1, p0, LX;->c:Z

    .line 196
    iput-boolean v1, p0, LX;->b:Z

    .line 197
    invoke-virtual {p0}, LX;->d()V

    .line 198
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 166
    iget-boolean v0, p0, LX;->b:Z

    return v0
.end method

.method protected d()V
    .registers 1

    .prologue
    .line 206
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 175
    iget-boolean v0, p0, LX;->c:Z

    return v0
.end method

.method public e()V
    .registers 1

    .prologue
    .line 217
    invoke-virtual {p0}, LX;->a()V

    .line 218
    return-void
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 312
    iget-boolean v0, p0, LX;->d:Z

    .line 313
    const/4 v1, 0x0

    iput-boolean v1, p0, LX;->d:Z

    .line 314
    return v0
.end method

.method public f()V
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, LX;->a:Z

    .line 243
    invoke-virtual {p0}, LX;->g()V

    .line 244
    return-void
.end method

.method protected g()V
    .registers 1

    .prologue
    .line 253
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, LX;->b:Z

    .line 262
    invoke-virtual {p0}, LX;->i()V

    .line 263
    return-void
.end method

.method protected i()V
    .registers 1

    .prologue
    .line 275
    return-void
.end method

.method public j()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 290
    invoke-virtual {p0}, LX;->k()V

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, LX;->c:Z

    .line 292
    iput-boolean v1, p0, LX;->a:Z

    .line 293
    iput-boolean v1, p0, LX;->b:Z

    .line 294
    iput-boolean v1, p0, LX;->d:Z

    .line 295
    return-void
.end method

.method protected k()V
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
    invoke-static {p0, v0}, Lan;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 351
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget v1, p0, LX;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
