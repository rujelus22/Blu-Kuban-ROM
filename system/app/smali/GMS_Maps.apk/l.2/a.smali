.class public final LL/a;
.super Lbk/j;
.source "SourceFile"


# static fields
.field public static a:Lbk/r;

.field private static final b:LL/a;

.field private static final serialVersionUID:J


# instance fields
.field private c:I

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 70
    new-instance v0, LL/b;

    invoke-direct {v0}, LL/b;-><init>()V

    sput-object v0, LL/a;->a:Lbk/r;

    .line 530
    new-instance v0, LL/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LL/a;-><init>(Z)V

    sput-object v0, LL/a;->b:LL/a;

    .line 531
    sget-object v0, LL/a;->b:LL/a;

    invoke-direct {v0}, LL/a;->k()V

    .line 532
    return-void
.end method

.method private constructor <init>(Lbk/f;Lbk/i;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 31
    invoke-direct {p0}, Lbk/j;-><init>()V

    .line 176
    iput-byte v0, p0, LL/a;->f:B

    .line 196
    iput v0, p0, LL/a;->g:I

    .line 32
    invoke-direct {p0}, LL/a;->k()V

    .line 35
    const/4 v0, 0x0

    .line 36
    :cond_d
    :goto_d
    if-nez v0, :cond_54

    .line 37
    :try_start_f
    invoke-virtual {p1}, Lbk/f;->a()I

    move-result v2

    .line 38
    sparse-switch v2, :sswitch_data_58

    .line 43
    invoke-virtual {p0, p1, p2, v2}, LL/a;->a(Lbk/f;Lbk/i;I)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    .line 45
    goto :goto_d

    :sswitch_1e
    move v0, v1

    .line 41
    goto :goto_d

    .line 50
    :sswitch_20
    iget v2, p0, LL/a;->c:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, LL/a;->c:I

    .line 51
    invoke-virtual {p1}, Lbk/f;->e()Lbk/d;

    move-result-object v2

    iput-object v2, p0, LL/a;->d:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lbk/l; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 61
    :catch_2d
    move-exception v0

    .line 62
    :try_start_2e
    invoke-virtual {v0, p0}, Lbk/l;->a(Lbk/p;)Lbk/l;

    move-result-object v0

    throw v0
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 67
    :catchall_33
    move-exception v0

    invoke-virtual {p0}, LL/a;->s()V

    throw v0

    .line 55
    :sswitch_38
    :try_start_38
    iget v2, p0, LL/a;->c:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, LL/a;->c:I

    .line 56
    invoke-virtual {p1}, Lbk/f;->e()Lbk/d;

    move-result-object v2

    iput-object v2, p0, LL/a;->e:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lbk/l; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 63
    :catch_45
    move-exception v0

    .line 64
    :try_start_46
    new-instance v1, Lbk/l;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbk/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lbk/l;->a(Lbk/p;)Lbk/l;

    move-result-object v0

    throw v0
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_33

    .line 67
    :cond_54
    invoke-virtual {p0}, LL/a;->s()V

    .line 69
    return-void

    .line 38
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lbk/f;Lbk/i;LL/b;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, LL/a;-><init>(Lbk/f;Lbk/i;)V

    return-void
.end method

.method private constructor <init>(Lbk/k;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 14
    invoke-direct {p0, p1}, Lbk/j;-><init>(Lbk/k;)V

    .line 176
    iput-byte v0, p0, LL/a;->f:B

    .line 196
    iput v0, p0, LL/a;->g:I

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lbk/k;LL/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1}, LL/a;-><init>(Lbk/k;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 17
    invoke-direct {p0}, Lbk/j;-><init>()V

    .line 176
    iput-byte v0, p0, LL/a;->f:B

    .line 196
    iput v0, p0, LL/a;->g:I

    .line 17
    return-void
.end method

.method static synthetic a(LL/a;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 9
    iput p1, p0, LL/a;->c:I

    return p1
.end method

.method public static a()LL/a;
    .registers 1

    .prologue
    .line 21
    sget-object v0, LL/a;->b:LL/a;

    return-object v0
.end method

.method static synthetic a(LL/a;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 9
    iget-object v0, p0, LL/a;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(LL/a;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 9
    iput-object p1, p0, LL/a;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(LL/a;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 9
    iget-object v0, p0, LL/a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(LL/a;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 9
    iput-object p1, p0, LL/a;->e:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()LL/c;
    .registers 1

    .prologue
    .line 274
    invoke-static {}, LL/c;->g()LL/c;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .registers 2

    .prologue
    .line 173
    const-string v0, ""

    iput-object v0, p0, LL/a;->d:Ljava/lang/Object;

    .line 174
    const-string v0, ""

    iput-object v0, p0, LL/a;->e:Ljava/lang/Object;

    .line 175
    return-void
.end method


# virtual methods
.method public a(Lbk/g;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 187
    invoke-virtual {p0}, LL/a;->g()I

    .line 188
    iget v0, p0, LL/a;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 189
    invoke-virtual {p0}, LL/a;->c()Lbk/d;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lbk/g;->a(ILbk/d;)V

    .line 191
    :cond_12
    iget v0, p0, LL/a;->c:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 192
    invoke-virtual {p0}, LL/a;->e()Lbk/d;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lbk/g;->a(ILbk/d;)V

    .line 194
    :cond_1f
    return-void
.end method

.method public b()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 93
    iget v1, p0, LL/a;->c:I

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
    .line 117
    iget-object v0, p0, LL/a;->d:Ljava/lang/Object;

    .line 118
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 119
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lbk/d;->a(Ljava/lang/String;)Lbk/d;

    move-result-object v0

    .line 122
    iput-object v0, p0, LL/a;->d:Ljava/lang/Object;

    .line 125
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lbk/d;

    goto :goto_e
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 136
    iget v0, p0, LL/a;->c:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public e()Lbk/d;
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, LL/a;->e:Ljava/lang/Object;

    .line 161
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 162
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lbk/d;->a(Ljava/lang/String;)Lbk/d;

    move-result-object v0

    .line 165
    iput-object v0, p0, LL/a;->e:Ljava/lang/Object;

    .line 168
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lbk/d;

    goto :goto_e
.end method

.method public final f()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 178
    iget-byte v1, p0, LL/a;->f:B

    .line 179
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 182
    :goto_8
    return v0

    .line 179
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 181
    :cond_b
    iput-byte v0, p0, LL/a;->f:B

    goto :goto_8
.end method

.method public g()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 198
    iget v0, p0, LL/a;->g:I

    .line 199
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 211
    :goto_7
    return v0

    .line 201
    :cond_8
    const/4 v0, 0x0

    .line 202
    iget v1, p0, LL/a;->c:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_18

    .line 203
    invoke-virtual {p0}, LL/a;->c()Lbk/d;

    move-result-object v1

    invoke-static {v2, v1}, Lbk/g;->b(ILbk/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 206
    :cond_18
    iget v1, p0, LL/a;->c:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_27

    .line 207
    invoke-virtual {p0}, LL/a;->e()Lbk/d;

    move-result-object v1

    invoke-static {v3, v1}, Lbk/g;->b(ILbk/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 210
    :cond_27
    iput v0, p0, LL/a;->g:I

    goto :goto_7
.end method

.method public i()LL/c;
    .registers 2

    .prologue
    .line 275
    invoke-static {}, LL/a;->h()LL/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lbk/q;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, LL/a;->i()LL/c;

    move-result-object v0

    return-object v0
.end method
