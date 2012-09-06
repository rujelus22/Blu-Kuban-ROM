.class public final LL/d;
.super Lbk/j;
.source "SourceFile"


# static fields
.field public static a:Lbk/r;

.field private static final b:LL/d;

.field private static final serialVersionUID:J


# instance fields
.field private c:I

.field private d:Ljava/util/List;

.field private e:Ljava/lang/Object;

.field private f:B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 76
    new-instance v0, LL/e;

    invoke-direct {v0}, LL/e;-><init>()V

    sput-object v0, LL/d;->a:Lbk/r;

    .line 586
    new-instance v0, LL/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LL/d;-><init>(Z)V

    sput-object v0, LL/d;->b:LL/d;

    .line 587
    sget-object v0, LL/d;->b:LL/d;

    invoke-direct {v0}, LL/d;->i()V

    .line 588
    return-void
.end method

.method private constructor <init>(Lbk/f;Lbk/i;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 31
    invoke-direct {p0}, Lbk/j;-><init>()V

    .line 175
    iput-byte v2, p0, LL/d;->f:B

    .line 195
    iput v2, p0, LL/d;->g:I

    .line 32
    invoke-direct {p0}, LL/d;->i()V

    move v2, v0

    .line 36
    :cond_e
    :goto_e
    if-nez v0, :cond_6d

    .line 37
    :try_start_10
    invoke-virtual {p1}, Lbk/f;->a()I

    move-result v3

    .line 38
    sparse-switch v3, :sswitch_data_7e

    .line 43
    invoke-virtual {p0, p1, p2, v3}, LL/d;->a(Lbk/f;Lbk/i;I)Z

    move-result v3

    if-nez v3, :cond_e

    move v0, v1

    .line 45
    goto :goto_e

    :sswitch_1f
    move v0, v1

    .line 41
    goto :goto_e

    .line 50
    :sswitch_21
    and-int/lit8 v3, v2, 0x1

    if-eq v3, v1, :cond_2e

    .line 51
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, LL/d;->d:Ljava/util/List;

    .line 52
    or-int/lit8 v2, v2, 0x1

    .line 54
    :cond_2e
    iget-object v3, p0, LL/d;->d:Ljava/util/List;

    sget-object v4, LL/a;->a:Lbk/r;

    invoke-virtual {p1, v4, p2}, Lbk/f;->a(Lbk/r;Lbk/i;)Lbk/p;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_10 .. :try_end_39} :catchall_40
    .catch Lbk/l; {:try_start_10 .. :try_end_39} :catch_3a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_39} :catch_5e

    goto :goto_e

    .line 64
    :catch_3a
    move-exception v0

    .line 65
    :try_start_3b
    invoke-virtual {v0, p0}, Lbk/l;->a(Lbk/p;)Lbk/l;

    move-result-object v0

    throw v0
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_40

    .line 70
    :catchall_40
    move-exception v0

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_4d

    .line 71
    iget-object v1, p0, LL/d;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL/d;->d:Ljava/util/List;

    .line 73
    :cond_4d
    invoke-virtual {p0}, LL/d;->s()V

    throw v0

    .line 58
    :sswitch_51
    :try_start_51
    iget v3, p0, LL/d;->c:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, LL/d;->c:I

    .line 59
    invoke-virtual {p1}, Lbk/f;->e()Lbk/d;

    move-result-object v3

    iput-object v3, p0, LL/d;->e:Ljava/lang/Object;
    :try_end_5d
    .catchall {:try_start_51 .. :try_end_5d} :catchall_40
    .catch Lbk/l; {:try_start_51 .. :try_end_5d} :catch_3a
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5d} :catch_5e

    goto :goto_e

    .line 66
    :catch_5e
    move-exception v0

    .line 67
    :try_start_5f
    new-instance v3, Lbk/l;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lbk/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lbk/l;->a(Lbk/p;)Lbk/l;

    move-result-object v0

    throw v0
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_40

    .line 70
    :cond_6d
    and-int/lit8 v0, v2, 0x1

    if-ne v0, v1, :cond_79

    .line 71
    iget-object v0, p0, LL/d;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LL/d;->d:Ljava/util/List;

    .line 73
    :cond_79
    invoke-virtual {p0}, LL/d;->s()V

    .line 75
    return-void

    .line 38
    nop

    :sswitch_data_7e
    .sparse-switch
        0x0 -> :sswitch_1f
        0xa -> :sswitch_21
        0x12 -> :sswitch_51
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lbk/f;Lbk/i;LL/e;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, LL/d;-><init>(Lbk/f;Lbk/i;)V

    return-void
.end method

.method private constructor <init>(Lbk/k;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 14
    invoke-direct {p0, p1}, Lbk/j;-><init>(Lbk/k;)V

    .line 175
    iput-byte v0, p0, LL/d;->f:B

    .line 195
    iput v0, p0, LL/d;->g:I

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lbk/k;LL/e;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1}, LL/d;-><init>(Lbk/k;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 17
    invoke-direct {p0}, Lbk/j;-><init>()V

    .line 175
    iput-byte v0, p0, LL/d;->f:B

    .line 195
    iput v0, p0, LL/d;->g:I

    .line 17
    return-void
.end method

.method static synthetic a(LL/d;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 9
    iput p1, p0, LL/d;->c:I

    return p1
.end method

.method public static a()LL/d;
    .registers 1

    .prologue
    .line 21
    sget-object v0, LL/d;->b:LL/d;

    return-object v0
.end method

.method public static a(LL/d;)LL/f;
    .registers 2
    .parameter

    .prologue
    .line 276
    invoke-static {}, LL/d;->e()LL/f;

    move-result-object v0

    invoke-virtual {v0, p0}, LL/f;->a(LL/d;)LL/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LL/d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 9
    iput-object p1, p0, LL/d;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(LL/d;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 9
    iput-object p1, p0, LL/d;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(LL/d;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 9
    iget-object v0, p0, LL/d;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(LL/d;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 9
    iget-object v0, p0, LL/d;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public static e()LL/f;
    .registers 1

    .prologue
    .line 273
    invoke-static {}, LL/f;->g()LL/f;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .registers 2

    .prologue
    .line 172
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LL/d;->d:Ljava/util/List;

    .line 173
    const-string v0, ""

    iput-object v0, p0, LL/d;->e:Ljava/lang/Object;

    .line 174
    return-void
.end method


# virtual methods
.method public a(Lbk/g;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 186
    invoke-virtual {p0}, LL/d;->g()I

    .line 187
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, LL/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 188
    iget-object v0, p0, LL/d;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbk/p;

    invoke-virtual {p1, v2, v0}, Lbk/g;->a(ILbk/p;)V

    .line 187
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 190
    :cond_1d
    iget v0, p0, LL/d;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_2b

    .line 191
    const/4 v0, 0x2

    invoke-virtual {p0}, LL/d;->c()Lbk/d;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lbk/g;->a(ILbk/d;)V

    .line 193
    :cond_2b
    return-void
.end method

.method public b()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 135
    iget v1, p0, LL/d;->c:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c()Lbk/d;
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, LL/d;->e:Ljava/lang/Object;

    .line 160
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 161
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lbk/d;->a(Ljava/lang/String;)Lbk/d;

    move-result-object v0

    .line 164
    iput-object v0, p0, LL/d;->e:Ljava/lang/Object;

    .line 167
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lbk/d;

    goto :goto_e
.end method

.method public final d()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 177
    iget-byte v1, p0, LL/d;->f:B

    .line 178
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 181
    :goto_8
    return v0

    .line 178
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 180
    :cond_b
    iput-byte v0, p0, LL/d;->f:B

    goto :goto_8
.end method

.method public f()LL/f;
    .registers 2

    .prologue
    .line 274
    invoke-static {}, LL/d;->e()LL/f;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 197
    iget v2, p0, LL/d;->g:I

    .line 198
    const/4 v1, -0x1

    if-eq v2, v1, :cond_8

    .line 210
    :goto_7
    return v2

    :cond_8
    move v1, v0

    move v2, v0

    .line 201
    :goto_a
    iget-object v0, p0, LL/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 202
    iget-object v0, p0, LL/d;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbk/p;

    invoke-static {v3, v0}, Lbk/g;->b(ILbk/p;)I

    move-result v0

    add-int/2addr v2, v0

    .line 201
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 205
    :cond_23
    iget v0, p0, LL/d;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_33

    .line 206
    const/4 v0, 0x2

    invoke-virtual {p0}, LL/d;->c()Lbk/d;

    move-result-object v1

    invoke-static {v0, v1}, Lbk/g;->b(ILbk/d;)I

    move-result v0

    add-int/2addr v2, v0

    .line 209
    :cond_33
    iput v2, p0, LL/d;->g:I

    goto :goto_7
.end method

.method public h()LL/f;
    .registers 2

    .prologue
    .line 278
    invoke-static {p0}, LL/d;->a(LL/d;)LL/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lbk/q;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, LL/d;->f()LL/f;

    move-result-object v0

    return-object v0
.end method
