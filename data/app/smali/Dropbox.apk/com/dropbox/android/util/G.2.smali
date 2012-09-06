.class public Lcom/dropbox/android/util/G;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field static final synthetic h:Z

.field private static final i:Ljava/lang/String;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field protected e:[Ljava/lang/Object;

.field protected f:Ljava/util/TreeSet;

.field protected g:Ljava/util/TreeSet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-class v0, Lcom/dropbox/android/util/G;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/dropbox/android/util/G;->h:Z

    .line 13
    const-class v0, Lcom/dropbox/android/util/G;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/util/G;->i:Ljava/lang/String;

    return-void

    .line 10
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/dropbox/android/util/G;->a:I

    .line 16
    iput v0, p0, Lcom/dropbox/android/util/G;->b:I

    .line 18
    iput v0, p0, Lcom/dropbox/android/util/G;->c:I

    .line 19
    iput v0, p0, Lcom/dropbox/android/util/G;->d:I

    .line 22
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lcom/dropbox/android/util/G;->f:Ljava/util/TreeSet;

    .line 23
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lcom/dropbox/android/util/G;->g:Ljava/util/TreeSet;

    .line 29
    iput p1, p0, Lcom/dropbox/android/util/G;->a:I

    .line 30
    iget v1, p0, Lcom/dropbox/android/util/G;->a:I

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    .line 31
    iput p2, p0, Lcom/dropbox/android/util/G;->b:I

    .line 34
    if-eqz p1, :cond_2a

    .line 35
    iput v0, p0, Lcom/dropbox/android/util/G;->c:I

    .line 36
    iput v0, p0, Lcom/dropbox/android/util/G;->d:I

    .line 39
    :cond_2a
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lcom/dropbox/android/util/G;->g:Ljava/util/TreeSet;

    .line 40
    :goto_31
    if-ge v0, p1, :cond_3f

    .line 41
    iget-object v1, p0, Lcom/dropbox/android/util/G;->g:Ljava/util/TreeSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 43
    :cond_3f
    return-void
.end method

.method private a(Ljava/util/TreeSet;I)Ljava/lang/Integer;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_11

    .line 144
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 148
    :goto_10
    return-object v0

    .line 147
    :cond_11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_10

    :cond_23
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_10
.end method

.method private b(Ljava/util/TreeSet;I)Ljava/lang/Integer;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_11

    .line 154
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 158
    :goto_10
    return-object v0

    .line 157
    :cond_11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_10

    :cond_23
    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_10
.end method

.method private d()Lcom/dropbox/android/util/I;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 217
    iget v0, p0, Lcom/dropbox/android/util/G;->c:I

    iget v1, p0, Lcom/dropbox/android/util/G;->b:I

    iget v2, p0, Lcom/dropbox/android/util/G;->d:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 218
    iget v1, p0, Lcom/dropbox/android/util/G;->b:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v1, v0

    iget v2, p0, Lcom/dropbox/android/util/G;->a:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 219
    iget v2, p0, Lcom/dropbox/android/util/G;->a:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2c

    .line 223
    iget v0, p0, Lcom/dropbox/android/util/G;->b:I

    add-int/lit8 v0, v0, -0x1

    sub-int v0, v1, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 226
    :cond_2c
    new-instance v2, Lcom/dropbox/android/util/I;

    invoke-direct {v2, v0, v1}, Lcom/dropbox/android/util/I;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dropbox/android/util/G;->f:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 53
    iget-object v1, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v1, v3

    instance-of v1, v1, Lcom/dropbox/android/util/D;

    if-eqz v1, :cond_2b

    .line 54
    iget-object v1, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v1, v3

    check-cast v1, Lcom/dropbox/android/util/D;

    invoke-virtual {v1}, Lcom/dropbox/android/util/D;->b()V

    .line 56
    :cond_2b
    iget-object v1, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x0

    aput-object v3, v1, v0

    goto :goto_6

    .line 58
    :cond_35
    iget-object v0, p0, Lcom/dropbox/android/util/G;->g:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/dropbox/android/util/G;->f:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 59
    iget-object v0, p0, Lcom/dropbox/android/util/G;->f:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 60
    return-void
.end method

.method public final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 69
    new-instance v0, Lcom/dropbox/android/util/J;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/J;-><init>(Lcom/dropbox/android/util/H;)V

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/android/util/G;->a(ILjava/lang/Object;)V

    .line 70
    return-void
.end method

.method public final a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 63
    sget-boolean v0, Lcom/dropbox/android/util/G;->h:Z

    if-nez v0, :cond_e

    iget v0, p0, Lcom/dropbox/android/util/G;->b:I

    if-lt p2, v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_e
    iput p1, p0, Lcom/dropbox/android/util/G;->c:I

    .line 65
    iput p2, p0, Lcom/dropbox/android/util/G;->d:I

    .line 66
    return-void
.end method

.method public final a(ILcom/dropbox/android/util/D;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-virtual {p2}, Lcom/dropbox/android/util/D;->a()V

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/util/G;->a(ILjava/lang/Object;)V

    .line 75
    return-void
.end method

.method protected final a(ILjava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-nez v0, :cond_89

    .line 79
    iget-object v0, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 80
    iget-object v0, p0, Lcom/dropbox/android/util/G;->f:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/dropbox/android/util/G;->g:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 94
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/dropbox/android/util/G;->f:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    iget v1, p0, Lcom/dropbox/android/util/G;->b:I

    if-le v0, v1, :cond_88

    .line 95
    invoke-direct {p0}, Lcom/dropbox/android/util/G;->d()Lcom/dropbox/android/util/I;

    move-result-object v1

    .line 96
    iget v2, v1, Lcom/dropbox/android/util/I;->a:I

    iget-object v0, p0, Lcom/dropbox/android/util/G;->f:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v1, v1, Lcom/dropbox/android/util/I;->b:I

    iget-object v0, p0, Lcom/dropbox/android/util/G;->f:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v2, v0, :cond_ba

    iget-object v0, p0, Lcom/dropbox/android/util/G;->f:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_5c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 99
    iget-object v0, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/dropbox/android/util/D;

    if-eqz v0, :cond_71

    .line 100
    iget-object v0, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/dropbox/android/util/D;

    invoke-virtual {v0}, Lcom/dropbox/android/util/D;->b()V

    .line 102
    :cond_71
    iget-object v0, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 103
    iget-object v0, p0, Lcom/dropbox/android/util/G;->f:Ljava/util/TreeSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/dropbox/android/util/G;->g:Ljava/util/TreeSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_88
    return-void

    .line 82
    :cond_89
    iget-object v0, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aget-object v0, v0, p1

    instance-of v0, v0, Lcom/dropbox/android/util/D;

    if-eqz v0, :cond_a2

    .line 84
    iget-object v0, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/dropbox/android/util/D;

    check-cast v0, Lcom/dropbox/android/util/D;

    invoke-virtual {v0}, Lcom/dropbox/android/util/D;->b()V

    .line 85
    iget-object v0, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aput-object p2, v0, p1

    goto/16 :goto_1c

    .line 86
    :cond_a2
    iget-object v0, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aget-object v0, v0, p1

    instance-of v0, v0, Lcom/dropbox/android/util/J;

    if-eqz v0, :cond_b0

    .line 88
    iget-object v0, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aput-object p2, v0, p1

    goto/16 :goto_1c

    .line 90
    :cond_b0
    sget-boolean v0, Lcom/dropbox/android/util/G;->h:Z

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 96
    :cond_ba
    iget-object v0, p0, Lcom/dropbox/android/util/G;->f:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_5c
.end method

.method public final b()I
    .registers 7

    .prologue
    const/4 v2, -0x1

    .line 164
    iget-object v0, p0, Lcom/dropbox/android/util/G;->g:Ljava/util/TreeSet;

    iget v1, p0, Lcom/dropbox/android/util/G;->c:I

    invoke-direct {p0, v0, v1}, Lcom/dropbox/android/util/G;->a(Ljava/util/TreeSet;I)Ljava/lang/Integer;

    move-result-object v0

    .line 165
    iget v1, p0, Lcom/dropbox/android/util/G;->c:I

    iget v3, p0, Lcom/dropbox/android/util/G;->d:I

    add-int/2addr v3, v1

    .line 167
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v3, :cond_1b

    .line 168
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 201
    :cond_1a
    :goto_1a
    return v2

    .line 172
    :cond_1b
    iget-object v0, p0, Lcom/dropbox/android/util/G;->g:Ljava/util/TreeSet;

    iget v1, p0, Lcom/dropbox/android/util/G;->c:I

    invoke-direct {p0, v0, v1}, Lcom/dropbox/android/util/G;->b(Ljava/util/TreeSet;I)Ljava/lang/Integer;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/dropbox/android/util/G;->g:Ljava/util/TreeSet;

    invoke-direct {p0, v1, v3}, Lcom/dropbox/android/util/G;->a(Ljava/util/TreeSet;I)Ljava/lang/Integer;

    move-result-object v1

    .line 174
    iget-object v4, p0, Lcom/dropbox/android/util/G;->f:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    iget v5, p0, Lcom/dropbox/android/util/G;->b:I

    if-ge v4, v5, :cond_5b

    .line 175
    if-eqz v0, :cond_4d

    if-eqz v1, :cond_4d

    .line 176
    iget v2, p0, Lcom/dropbox/android/util/G;->c:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v3, v4, v3

    if-ge v2, v3, :cond_4b

    :goto_46
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1a

    :cond_4b
    move-object v0, v1

    goto :goto_46

    .line 177
    :cond_4d
    if-eqz v0, :cond_54

    .line 178
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1a

    .line 179
    :cond_54
    if-eqz v1, :cond_1a

    .line 180
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1a

    .line 186
    :cond_5b
    if-eqz v0, :cond_85

    if-eqz v1, :cond_85

    .line 187
    iget v4, p0, Lcom/dropbox/android/util/G;->c:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v3, v5, v3

    if-ge v4, v3, :cond_83

    :goto_6e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 195
    :goto_72
    if-eq v0, v2, :cond_81

    .line 196
    invoke-direct {p0}, Lcom/dropbox/android/util/G;->d()Lcom/dropbox/android/util/I;

    move-result-object v1

    .line 197
    iget v3, v1, Lcom/dropbox/android/util/I;->a:I

    if-lt v0, v3, :cond_80

    iget v1, v1, Lcom/dropbox/android/util/I;->b:I

    if-le v0, v1, :cond_81

    :cond_80
    move v0, v2

    :cond_81
    move v2, v0

    .line 201
    goto :goto_1a

    :cond_83
    move-object v0, v1

    .line 187
    goto :goto_6e

    .line 188
    :cond_85
    if-eqz v0, :cond_8c

    .line 189
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_72

    .line 190
    :cond_8c
    if-eqz v1, :cond_93

    .line 191
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_72

    :cond_93
    move v0, v2

    .line 193
    goto :goto_72
.end method

.method public final b(I)Lcom/dropbox/android/util/D;
    .registers 3
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aget-object v0, v0, p1

    instance-of v0, v0, Lcom/dropbox/android/util/D;

    if-eqz v0, :cond_12

    .line 110
    iget-object v0, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/dropbox/android/util/D;

    .line 111
    invoke-virtual {v0}, Lcom/dropbox/android/util/D;->a()V

    .line 114
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final c()Ljava/util/HashMap;
    .registers 6

    .prologue
    .line 234
    new-instance v1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/dropbox/android/util/G;->f:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 235
    iget-object v0, p0, Lcom/dropbox/android/util/G;->f:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 236
    iget-object v0, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aget-object v0, v0, v3

    instance-of v0, v0, Lcom/dropbox/android/util/D;

    if-eqz v0, :cond_11

    .line 237
    iget-object v0, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Lcom/dropbox/android/util/D;

    invoke-virtual {v0}, Lcom/dropbox/android/util/D;->a()V

    .line 238
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Lcom/dropbox/android/util/D;

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 241
    :cond_40
    return-object v1
.end method

.method public final c(I)Z
    .registers 3
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aget-object v0, v0, p1

    instance-of v0, v0, Lcom/dropbox/android/util/D;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 124
    const-string v1, "["

    .line 125
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_6
    iget-object v2, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_a4

    .line 126
    if-lez v1, :cond_20

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_20
    iget-object v2, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_40

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 132
    :cond_40
    iget-object v2, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aget-object v2, v2, v1

    instance-of v2, v2, Lcom/dropbox/android/util/D;

    if-eqz v2, :cond_80

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 135
    :cond_80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dropbox/android/util/G;->e:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 138
    :cond_a4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    return-object v0
.end method
