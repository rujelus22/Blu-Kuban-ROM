.class public Ln/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ln/b;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ln/b;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_d

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter labelElements can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/F;

    .line 50
    invoke-virtual {v0}, Ln/F;->c()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 51
    invoke-virtual {v0}, Ln/F;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_2f
    invoke-virtual {v0}, Ln/F;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 54
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 57
    :cond_3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln/E;->c:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Ln/E;->b:Ln/b;

    .line 60
    iput-object p1, p0, Ln/E;->a:Ljava/util/List;

    .line 61
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILn/ah;[Ljava/lang/String;Ln/ag;Ljava/lang/String;)Ln/E;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v8

    .line 82
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 83
    const/4 v0, 0x0

    move v7, v0

    :goto_b
    if-ge v7, v8, :cond_1a

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 84
    invoke-static/range {v0 .. v6}, Ln/F;->a(Ljava/io/DataInput;ILn/ah;[Ljava/lang/String;Ln/ag;Ljava/lang/String;Ljava/util/List;)V

    .line 83
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_b

    .line 91
    :cond_1a
    const/4 v0, 0x1

    if-le v8, v0, :cond_27

    .line 92
    invoke-static {p0, p1}, Ln/b;->a(Ljava/io/DataInput;I)Ln/b;

    move-result-object v0

    .line 97
    :goto_21
    new-instance v1, Ln/E;

    invoke-direct {v1, v6, v0}, Ln/E;-><init>(Ljava/util/List;Ln/b;)V

    return-object v1

    .line 94
    :cond_27
    sget-object v0, Ln/b;->b:Ln/b;

    goto :goto_21
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Ln/E;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Ln/F;
    .registers 3
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Ln/E;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/F;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Ln/E;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c()Ln/b;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Ln/E;->b:Ln/b;

    return-object v0
.end method

.method public d()I
    .registers 4

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    iget-object v1, p0, Ln/E;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/F;

    .line 168
    invoke-virtual {v0}, Ln/F;->l()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_8

    .line 170
    :cond_1b
    add-int/lit8 v0, v1, 0x18

    iget-object v1, p0, Ln/E;->c:Ljava/lang/String;

    invoke-static {v1}, Ln/L;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ln/E;->b:Ln/b;

    invoke-virtual {v1}, Ln/b;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 145
    if-ne p0, p1, :cond_5

    .line 146
    const/4 v0, 0x1

    .line 162
    :cond_4
    :goto_4
    return v0

    .line 148
    :cond_5
    if-eqz p1, :cond_4

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 154
    check-cast p1, Ln/E;

    .line 155
    iget-object v1, p0, Ln/E;->b:Ln/b;

    if-nez v1, :cond_24

    .line 156
    iget-object v1, p1, Ln/E;->b:Ln/b;

    if-nez v1, :cond_4

    .line 162
    :cond_1b
    iget-object v0, p0, Ln/E;->a:Ljava/util/List;

    iget-object v1, p1, Ln/E;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    .line 159
    :cond_24
    iget-object v1, p0, Ln/E;->b:Ln/b;

    iget-object v2, p1, Ln/E;->b:Ln/b;

    invoke-virtual {v1, v2}, Ln/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 136
    .line 138
    iget-object v0, p0, Ln/E;->b:Ln/b;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    .line 139
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ln/E;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    return v0

    .line 138
    :cond_11
    iget-object v0, p0, Ln/E;->b:Ln/b;

    invoke-virtual {v0}, Ln/b;->hashCode()I

    move-result v0

    goto :goto_5
.end method
