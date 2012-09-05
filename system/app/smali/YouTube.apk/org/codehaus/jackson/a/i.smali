.class public final Lorg/codehaus/jackson/a/i;
.super Lorg/codehaus/jackson/b;
.source "SourceFile"


# instance fields
.field protected final c:Lorg/codehaus/jackson/a/i;

.field protected d:Ljava/lang/String;

.field protected e:Lorg/codehaus/jackson/a/i;


# direct methods
.method private constructor <init>(ILorg/codehaus/jackson/a/i;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/codehaus/jackson/b;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/a/i;->e:Lorg/codehaus/jackson/a/i;

    .line 49
    iput p1, p0, Lorg/codehaus/jackson/a/i;->a:I

    .line 50
    iput-object p2, p0, Lorg/codehaus/jackson/a/i;->c:Lorg/codehaus/jackson/a/i;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/a/i;->b:I

    .line 52
    return-void
.end method

.method private final a(I)Lorg/codehaus/jackson/a/i;
    .registers 3
    .parameter

    .prologue
    .line 62
    iput p1, p0, Lorg/codehaus/jackson/a/i;->a:I

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/a/i;->b:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/a/i;->d:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public static g()Lorg/codehaus/jackson/a/i;
    .registers 3

    .prologue
    .line 58
    new-instance v0, Lorg/codehaus/jackson/a/i;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/a/i;-><init>(ILorg/codehaus/jackson/a/i;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x4

    .line 105
    iget v1, p0, Lorg/codehaus/jackson/a/i;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 106
    iget-object v1, p0, Lorg/codehaus/jackson/a/i;->d:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 112
    :cond_a
    :goto_a
    return v0

    .line 109
    :cond_b
    iput-object p1, p0, Lorg/codehaus/jackson/a/i;->d:Ljava/lang/String;

    .line 110
    iget v0, p0, Lorg/codehaus/jackson/a/i;->b:I

    if-gez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_a

    :cond_13
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public final h()Lorg/codehaus/jackson/a/i;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 70
    iget-object v0, p0, Lorg/codehaus/jackson/a/i;->e:Lorg/codehaus/jackson/a/i;

    .line 71
    if-nez v0, :cond_d

    .line 72
    new-instance v0, Lorg/codehaus/jackson/a/i;

    invoke-direct {v0, v1, p0}, Lorg/codehaus/jackson/a/i;-><init>(ILorg/codehaus/jackson/a/i;)V

    iput-object v0, p0, Lorg/codehaus/jackson/a/i;->e:Lorg/codehaus/jackson/a/i;

    .line 75
    :goto_c
    return-object v0

    :cond_d
    invoke-direct {v0, v1}, Lorg/codehaus/jackson/a/i;->a(I)Lorg/codehaus/jackson/a/i;

    move-result-object v0

    goto :goto_c
.end method

.method public final i()Lorg/codehaus/jackson/a/i;
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 80
    iget-object v0, p0, Lorg/codehaus/jackson/a/i;->e:Lorg/codehaus/jackson/a/i;

    .line 81
    if-nez v0, :cond_d

    .line 82
    new-instance v0, Lorg/codehaus/jackson/a/i;

    invoke-direct {v0, v1, p0}, Lorg/codehaus/jackson/a/i;-><init>(ILorg/codehaus/jackson/a/i;)V

    iput-object v0, p0, Lorg/codehaus/jackson/a/i;->e:Lorg/codehaus/jackson/a/i;

    .line 85
    :goto_c
    return-object v0

    :cond_d
    invoke-direct {v0, v1}, Lorg/codehaus/jackson/a/i;->a(I)Lorg/codehaus/jackson/a/i;

    move-result-object v0

    goto :goto_c
.end method

.method public final j()Lorg/codehaus/jackson/a/i;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/codehaus/jackson/a/i;->c:Lorg/codehaus/jackson/a/i;

    return-object v0
.end method

.method public final k()I
    .registers 5

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    iget v3, p0, Lorg/codehaus/jackson/a/i;->a:I

    if-ne v3, v0, :cond_17

    .line 119
    iget-object v1, p0, Lorg/codehaus/jackson/a/i;->d:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 120
    const/4 v0, 0x5

    .line 137
    :goto_c
    return v0

    .line 122
    :cond_d
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/a/i;->d:Ljava/lang/String;

    .line 123
    iget v1, p0, Lorg/codehaus/jackson/a/i;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/a/i;->b:I

    goto :goto_c

    .line 128
    :cond_17
    iget v0, p0, Lorg/codehaus/jackson/a/i;->a:I

    if-ne v0, v2, :cond_29

    .line 129
    iget v0, p0, Lorg/codehaus/jackson/a/i;->b:I

    .line 130
    iget v3, p0, Lorg/codehaus/jackson/a/i;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/i;->b:I

    .line 131
    if-gez v0, :cond_27

    move v0, v1

    goto :goto_c

    :cond_27
    move v0, v2

    goto :goto_c

    .line 136
    :cond_29
    iget v0, p0, Lorg/codehaus/jackson/a/i;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/i;->b:I

    .line 137
    iget v0, p0, Lorg/codehaus/jackson/a/i;->b:I

    if-nez v0, :cond_35

    move v0, v1

    goto :goto_c

    :cond_35
    const/4 v0, 0x3

    goto :goto_c
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x5d

    const/16 v3, 0x22

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 175
    iget v1, p0, Lorg/codehaus/jackson/a/i;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_32

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/jackson/a/i;->d:Ljava/lang/String;

    if-eqz v1, :cond_2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/jackson/a/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_24
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    :goto_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :cond_2c
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_32
    iget v1, p0, Lorg/codehaus/jackson/a/i;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_47

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/i;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_47
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27
.end method
