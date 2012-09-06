.class public Ln/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ln/ab;

.field private b:I

.field private c:[Ln/Q;

.field private d:Z

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private g:I


# direct methods
.method public constructor <init>(Ln/ab;)V
    .registers 3
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln/f;->e:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln/f;->f:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p0, p1}, Ln/f;->a(Ln/ab;)V

    .line 28
    return-void
.end method

.method private a(ILn/Q;IZ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 119
    iget v0, p0, Ln/f;->b:I

    if-ne p1, v0, :cond_9

    .line 120
    invoke-direct {p0, p2, p3, p4}, Ln/f;->a(Ln/Q;IZ)V

    .line 155
    :goto_8
    return-void

    .line 124
    :cond_9
    if-nez p1, :cond_48

    .line 125
    iget-object v0, p0, Ln/f;->a:Ln/ab;

    invoke-virtual {v0}, Ln/ab;->c()Ln/Q;

    move-result-object v1

    .line 126
    iget-object v0, p0, Ln/f;->a:Ln/ab;

    invoke-virtual {v0, v4}, Ln/ab;->a(I)Ln/Q;

    move-result-object v0

    .line 132
    :goto_17
    invoke-static {v1, v0, p2}, Ln/S;->a(Ln/Q;Ln/Q;Ln/Q;)I

    move-result v2

    if-ltz v2, :cond_57

    .line 134
    if-nez p4, :cond_3b

    iget-object v2, p0, Ln/f;->c:[Ln/Q;

    aget-object v2, v2, p1

    invoke-static {v1, v0, v2}, Ln/S;->a(Ln/Q;Ln/Q;Ln/Q;)I

    move-result v2

    if-gez v2, :cond_3b

    .line 137
    new-instance v2, Ln/Q;

    invoke-direct {v2}, Ln/Q;-><init>()V

    .line 138
    iget-object v3, p0, Ln/f;->c:[Ln/Q;

    aget-object v3, v3, p1

    invoke-static {v1, v0, p2, v3, v2}, Ln/S;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;Ln/Q;)Z

    .line 140
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, p3, v1}, Ln/f;->a(ILn/Q;IZ)V

    .line 142
    :cond_3b
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, p2, p3, p4}, Ln/f;->a(ILn/Q;IZ)V

    .line 153
    :cond_40
    :goto_40
    iget-object v0, p0, Ln/f;->c:[Ln/Q;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ln/Q;->b(Ln/Q;)V

    goto :goto_8

    .line 128
    :cond_48
    iget-object v0, p0, Ln/f;->a:Ln/ab;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ln/ab;->a(I)Ln/Q;

    move-result-object v1

    .line 129
    iget-object v0, p0, Ln/f;->a:Ln/ab;

    invoke-virtual {v0, p1}, Ln/ab;->a(I)Ln/Q;

    move-result-object v0

    goto :goto_17

    .line 144
    :cond_57
    if-nez p4, :cond_40

    iget-object v2, p0, Ln/f;->c:[Ln/Q;

    aget-object v2, v2, p1

    invoke-static {v1, v0, v2}, Ln/S;->a(Ln/Q;Ln/Q;Ln/Q;)I

    move-result v2

    if-ltz v2, :cond_40

    .line 148
    new-instance v2, Ln/Q;

    invoke-direct {v2}, Ln/Q;-><init>()V

    .line 149
    iget-object v3, p0, Ln/f;->c:[Ln/Q;

    aget-object v3, v3, p1

    invoke-static {v1, v0, v3, p2, v2}, Ln/S;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;Ln/Q;)Z

    .line 151
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, v2, p3, v4}, Ln/f;->a(ILn/Q;IZ)V

    goto :goto_40
.end method

.method private a(Ln/Q;IZ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    if-eqz p3, :cond_26

    .line 196
    iget v0, p0, Ln/f;->g:I

    iget-object v1, p0, Ln/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_20

    .line 199
    iget-object v0, p0, Ln/f;->e:Ljava/util/ArrayList;

    new-instance v1, Ln/W;

    invoke-direct {v1}, Ln/W;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Ln/f;->f:Ljava/util/ArrayList;

    new-instance v1, Ln/g;

    invoke-direct {v1}, Ln/g;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_20
    iget v0, p0, Ln/f;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ln/f;->g:I

    .line 204
    :cond_26
    iget-object v0, p0, Ln/f;->e:Ljava/util/ArrayList;

    iget v1, p0, Ln/f;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/W;

    .line 205
    invoke-virtual {v0, p1}, Ln/W;->a(Ln/Q;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-boolean v0, p0, Ln/f;->d:Z

    if-eqz v0, :cond_4b

    .line 206
    iget-object v0, p0, Ln/f;->f:Ljava/util/ArrayList;

    iget v1, p0, Ln/f;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/g;

    .line 207
    invoke-virtual {v0, p2}, Ln/g;->a(I)V

    .line 209
    :cond_4b
    return-void
.end method


# virtual methods
.method public a(Ln/U;Ljava/util/ArrayList;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 165
    iput v0, p0, Ln/f;->g:I

    .line 166
    iput-boolean v0, p0, Ln/f;->d:Z

    .line 169
    new-instance v2, Ln/Q;

    invoke-direct {v2}, Ln/Q;-><init>()V

    .line 170
    invoke-virtual {p1}, Ln/U;->b()I

    move-result v3

    move v1, v0

    .line 171
    :goto_10
    if-ge v1, v3, :cond_23

    .line 172
    invoke-virtual {p1, v1, v2}, Ln/U;->a(ILn/Q;)V

    .line 173
    invoke-direct {p0, v0, v2, v0, v5}, Ln/f;->a(ILn/Q;IZ)V

    .line 174
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4, v2}, Ln/U;->a(ILn/Q;)V

    .line 175
    invoke-direct {p0, v0, v2, v0, v0}, Ln/f;->a(ILn/Q;IZ)V

    .line 171
    add-int/lit8 v1, v1, 0x2

    goto :goto_10

    :cond_23
    move v1, v0

    .line 180
    :goto_24
    iget v0, p0, Ln/f;->g:I

    if-ge v1, v0, :cond_44

    .line 181
    iget-object v0, p0, Ln/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/W;

    .line 182
    invoke-virtual {v0}, Ln/W;->a()I

    move-result v2

    if-le v2, v5, :cond_3d

    .line 183
    invoke-virtual {v0}, Ln/W;->d()Ln/U;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_3d
    invoke-virtual {v0}, Ln/W;->c()V

    .line 180
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 187
    :cond_44
    return-void
.end method

.method public a(Ln/U;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, v0, p2, v0}, Ln/f;->a(Ln/U;[ILjava/util/List;Ljava/util/List;)V

    .line 49
    return-void
.end method

.method public a(Ln/U;[ILjava/util/List;Ljava/util/List;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    iput v2, p0, Ln/f;->g:I

    .line 66
    if-eqz p2, :cond_18

    if-eqz p4, :cond_18

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Ln/f;->d:Z

    .line 69
    invoke-virtual {p1}, Ln/U;->a()Ln/aa;

    move-result-object v0

    .line 70
    iget-object v3, p0, Ln/f;->a:Ln/ab;

    invoke-virtual {v3, v0}, Ln/ab;->a(Ln/ab;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 107
    :cond_17
    :goto_17
    return-void

    :cond_18
    move v0, v2

    .line 66
    goto :goto_9

    .line 72
    :cond_1a
    iget-object v3, p0, Ln/f;->a:Ln/ab;

    invoke-virtual {v3, v0}, Ln/ab;->b(Ln/ab;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 73
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-boolean v0, p0, Ln/f;->d:Z

    if-eqz v0, :cond_17

    .line 75
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 81
    :cond_2d
    new-instance v4, Ln/Q;

    invoke-direct {v4}, Ln/Q;-><init>()V

    .line 82
    invoke-virtual {p1}, Ln/U;->b()I

    move-result v5

    .line 83
    invoke-virtual {p1, v2, v4}, Ln/U;->a(ILn/Q;)V

    .line 84
    iget-boolean v0, p0, Ln/f;->d:Z

    if-eqz v0, :cond_55

    aget v0, p2, v2

    :goto_3f
    invoke-direct {p0, v2, v4, v0, v1}, Ln/f;->a(ILn/Q;IZ)V

    move v3, v1

    .line 85
    :goto_43
    if-ge v3, v5, :cond_59

    .line 86
    invoke-virtual {p1, v3, v4}, Ln/U;->a(ILn/Q;)V

    .line 87
    iget-boolean v0, p0, Ln/f;->d:Z

    if-eqz v0, :cond_57

    aget v0, p2, v3

    :goto_4e
    invoke-direct {p0, v2, v4, v0, v2}, Ln/f;->a(ILn/Q;IZ)V

    .line 85
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_43

    :cond_55
    move v0, v2

    .line 84
    goto :goto_3f

    :cond_57
    move v0, v2

    .line 87
    goto :goto_4e

    .line 92
    :cond_59
    :goto_59
    iget v0, p0, Ln/f;->g:I

    if-ge v2, v0, :cond_17

    .line 93
    iget-object v0, p0, Ln/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/W;

    .line 94
    invoke-virtual {v0}, Ln/W;->a()I

    move-result v3

    if-le v3, v1, :cond_72

    .line 95
    invoke-virtual {v0}, Ln/W;->d()Ln/U;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_72
    invoke-virtual {v0}, Ln/W;->c()V

    .line 99
    iget-boolean v0, p0, Ln/f;->d:Z

    if-eqz v0, :cond_91

    .line 100
    iget-object v0, p0, Ln/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/g;

    .line 101
    invoke-virtual {v0}, Ln/g;->c()I

    move-result v3

    if-le v3, v1, :cond_8e

    .line 102
    invoke-virtual {v0}, Ln/g;->a()[I

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_8e
    invoke-virtual {v0}, Ln/g;->b()V

    .line 92
    :cond_91
    add-int/lit8 v2, v2, 0x1

    goto :goto_59
.end method

.method public a(Ln/ab;)V
    .registers 5
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Ln/f;->a:Ln/ab;

    .line 35
    invoke-virtual {p1}, Ln/ab;->b()I

    move-result v0

    iput v0, p0, Ln/f;->b:I

    .line 36
    iget v0, p0, Ln/f;->b:I

    new-array v0, v0, [Ln/Q;

    iput-object v0, p0, Ln/f;->c:[Ln/Q;

    .line 37
    const/4 v0, 0x0

    :goto_f
    iget-object v1, p0, Ln/f;->c:[Ln/Q;

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 38
    iget-object v1, p0, Ln/f;->c:[Ln/Q;

    new-instance v2, Ln/Q;

    invoke-direct {v2}, Ln/Q;-><init>()V

    aput-object v2, v1, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 40
    :cond_20
    return-void
.end method
