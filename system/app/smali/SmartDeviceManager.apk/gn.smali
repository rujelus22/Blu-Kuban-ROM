.class final Lgn;
.super Lgm;
.source "a"


# instance fields
.field protected f:Ljava/lang/String;

.field protected g:Z


# direct methods
.method public constructor <init>(Lgm;)V
    .registers 3
    .parameter

    .prologue
    .line 198
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lgm;-><init>(ILgm;)V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lgn;->f:Ljava/lang/String;

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgn;->g:Z

    .line 201
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .registers 3
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lgn;->f:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 210
    const/4 v0, 0x4

    .line 213
    :goto_5
    return v0

    .line 212
    :cond_6
    iput-object p1, p0, Lgn;->f:Ljava/lang/String;

    .line 213
    iget v0, p0, Lgn;->b:I

    if-gez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_5

    :cond_e
    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected final a(Ljava/lang/StringBuilder;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x22

    .line 230
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    iget-object v0, p0, Lgn;->f:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 232
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    iget-object v0, p0, Lgn;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    :goto_16
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    return-void

    .line 237
    :cond_1c
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_16
.end method

.method public final g()I
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lgn;->f:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 220
    const/4 v0, 0x5

    .line 224
    :goto_5
    return v0

    .line 222
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lgn;->f:Ljava/lang/String;

    .line 223
    iget v0, p0, Lgn;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgn;->b:I

    .line 224
    const/4 v0, 0x2

    goto :goto_5
.end method
