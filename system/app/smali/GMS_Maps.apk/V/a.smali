.class public abstract Lv/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/util/LinkedList;

.field protected b:I

.field public c:Ljava/lang/Object;

.field public d:I

.field private final e:Lv/e;

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:I


# direct methods
.method public constructor <init>(IILv/e;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lv/a;->a:Ljava/util/LinkedList;

    .line 121
    iput p2, p0, Lv/a;->h:I

    .line 122
    const/4 v0, 0x1

    iget v1, p0, Lv/a;->h:I

    shl-int/2addr v0, v1

    iput v0, p0, Lv/a;->f:I

    .line 123
    iget v0, p0, Lv/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lv/a;->g:I

    .line 125
    iput-object p3, p0, Lv/a;->e:Lv/e;

    .line 126
    invoke-direct {p0, p1}, Lv/a;->d(I)I

    move-result v0

    iput v0, p0, Lv/a;->i:I

    .line 127
    invoke-virtual {p0}, Lv/a;->a()V

    .line 128
    return-void
.end method

.method private d(I)I
    .registers 4
    .parameter

    .prologue
    .line 143
    iget v0, p0, Lv/a;->h:I

    shr-int v1, p1, v0

    iget v0, p0, Lv/a;->g:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    add-int/2addr v0, v1

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 153
    iget v0, p0, Lv/a;->i:I

    if-le p1, v0, :cond_2f

    .line 154
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of bound : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(index) > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lv/a;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(size)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lv/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt p1, v0, :cond_43

    .line 158
    iget-object v0, p0, Lv/a;->a:Ljava/util/LinkedList;

    iget-object v1, p0, Lv/a;->e:Lv/e;

    invoke-virtual {v1}, Lv/e;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 160
    :cond_43
    iget-object v0, p0, Lv/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lv/a;->b:I

    .line 133
    iput v0, p0, Lv/a;->d:I

    .line 136
    invoke-virtual {p0, v0}, Lv/a;->a(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lv/a;->c:Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-virtual {p0}, Lv/a;->a()V

    move v1, v2

    .line 195
    :goto_5
    if-ge v1, p2, :cond_2a

    .line 196
    iget v0, p0, Lv/a;->f:I

    .line 197
    iget v3, p0, Lv/a;->f:I

    add-int/2addr v3, v1

    if-le v3, p2, :cond_10

    .line 198
    sub-int v0, p2, v1

    .line 200
    :cond_10
    iget v3, p0, Lv/a;->b:I

    invoke-virtual {p0, v3}, Lv/a;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    add-int/2addr v1, v0

    .line 202
    iget v3, p0, Lv/a;->f:I

    if-ne v0, v3, :cond_27

    .line 203
    iget v0, p0, Lv/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv/a;->b:I

    .line 204
    iput v2, p0, Lv/a;->d:I

    goto :goto_5

    .line 206
    :cond_27
    iput v0, p0, Lv/a;->d:I

    goto :goto_5

    .line 209
    :cond_2a
    return-void
.end method

.method public b()I
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lv/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lv/a;->h:I

    shl-int/2addr v0, v1

    return v0
.end method

.method public b(I)V
    .registers 7
    .parameter

    .prologue
    .line 170
    iget v0, p0, Lv/a;->f:I

    if-lt p1, v0, :cond_2a

    .line 171
    iget v0, p0, Lv/a;->g:I

    and-int/2addr v0, p1

    .line 172
    iget v1, p0, Lv/a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lv/a;->b:I

    .line 173
    iget v1, p0, Lv/a;->b:I

    iget v2, p0, Lv/a;->i:I

    if-eq v1, v2, :cond_27

    .line 174
    iget-object v1, p0, Lv/a;->c:Ljava/lang/Object;

    .line 175
    iget v2, p0, Lv/a;->b:I

    invoke-virtual {p0, v2}, Lv/a;->a(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lv/a;->c:Ljava/lang/Object;

    .line 177
    if-eqz v0, :cond_27

    .line 179
    iget v2, p0, Lv/a;->f:I

    iget-object v3, p0, Lv/a;->c:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    :cond_27
    iput v0, p0, Lv/a;->d:I

    .line 186
    :goto_29
    return-void

    .line 184
    :cond_2a
    iput p1, p0, Lv/a;->d:I

    goto :goto_29
.end method

.method public c()V
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lv/a;->e:Lv/e;

    iget-object v1, p0, Lv/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lv/e;->a(Ljava/util/List;)V

    .line 224
    iget-object v0, p0, Lv/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 225
    return-void
.end method

.method public c(I)V
    .registers 4
    .parameter

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lv/a;->d(I)I

    move-result v0

    iget v1, p0, Lv/a;->i:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lv/a;->i:I

    .line 214
    return-void
.end method
