.class public abstract Lz/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected d:Z

.field protected e:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lz/E;->d:Z

    .line 24
    iput v0, p0, Lz/E;->e:I

    .line 36
    return-void
.end method


# virtual methods
.method a(Lz/h;)V
    .registers 3
    .parameter

    .prologue
    .line 104
    iget v0, p0, Lz/E;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lz/E;->e:I

    .line 113
    return-void
.end method

.method protected a(Lz/j;Lz/i;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 62
    iget-boolean v1, p2, Lz/i;->e:Z

    iget-boolean v2, p0, Lz/E;->d:Z

    if-ne v1, v2, :cond_c

    iget-boolean v1, p2, Lz/i;->f:Z

    if-nez v1, :cond_c

    .line 73
    :cond_b
    :goto_b
    return v0

    .line 66
    :cond_c
    iget-boolean v1, p2, Lz/i;->e:Z

    if-nez v1, :cond_18

    iget-boolean v1, p2, Lz/i;->f:Z

    if-nez v1, :cond_18

    .line 67
    iget v1, p0, Lz/E;->e:I

    if-nez v1, :cond_b

    .line 72
    :cond_18
    iget-boolean v0, p2, Lz/i;->e:Z

    iput-boolean v0, p0, Lz/E;->d:Z

    .line 73
    const/4 v0, 0x1

    goto :goto_b
.end method

.method b(Lz/h;)V
    .registers 3
    .parameter

    .prologue
    .line 123
    iget v0, p0, Lz/E;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz/E;->e:I

    .line 129
    return-void
.end method
