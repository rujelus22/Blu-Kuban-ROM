.class public final LL/j;
.super Lbk/j;
.source "SourceFile"


# static fields
.field public static a:Lbk/r;

.field private static final b:LL/j;

.field private static final serialVersionUID:J


# instance fields
.field private c:B

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 59
    new-instance v0, LL/k;

    invoke-direct {v0}, LL/k;-><init>()V

    sput-object v0, LL/j;->a:Lbk/r;

    .line 242
    new-instance v0, LL/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LL/j;-><init>(Z)V

    sput-object v0, LL/j;->b:LL/j;

    .line 243
    sget-object v0, LL/j;->b:LL/j;

    invoke-direct {v0}, LL/j;->e()V

    .line 244
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

    .line 76
    iput-byte v0, p0, LL/j;->c:B

    .line 90
    iput v0, p0, LL/j;->d:I

    .line 32
    invoke-direct {p0}, LL/j;->e()V

    .line 34
    const/4 v0, 0x0

    .line 35
    :cond_d
    :goto_d
    if-nez v0, :cond_20

    .line 36
    :try_start_f
    invoke-virtual {p1}, Lbk/f;->a()I

    move-result v2

    .line 37
    packed-switch v2, :pswitch_data_3e

    .line 42
    invoke-virtual {p0, p1, p2, v2}, LL/j;->a(Lbk/f;Lbk/i;I)Z
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_2a
    .catch Lbk/l; {:try_start_f .. :try_end_19} :catch_24
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_2f

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    .line 44
    goto :goto_d

    :pswitch_1e
    move v0, v1

    .line 40
    goto :goto_d

    .line 56
    :cond_20
    invoke-virtual {p0}, LL/j;->s()V

    .line 58
    return-void

    .line 50
    :catch_24
    move-exception v0

    .line 51
    :try_start_25
    invoke-virtual {v0, p0}, Lbk/l;->a(Lbk/p;)Lbk/l;

    move-result-object v0

    throw v0
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2a

    .line 56
    :catchall_2a
    move-exception v0

    invoke-virtual {p0}, LL/j;->s()V

    throw v0

    .line 52
    :catch_2f
    move-exception v0

    .line 53
    :try_start_30
    new-instance v1, Lbk/l;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbk/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lbk/l;->a(Lbk/p;)Lbk/l;

    move-result-object v0

    throw v0
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_2a

    .line 37
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_1e
    .end packed-switch
.end method

.method synthetic constructor <init>(Lbk/f;Lbk/i;LL/k;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, LL/j;-><init>(Lbk/f;Lbk/i;)V

    return-void
.end method

.method private constructor <init>(Lbk/k;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 14
    invoke-direct {p0, p1}, Lbk/j;-><init>(Lbk/k;)V

    .line 76
    iput-byte v0, p0, LL/j;->c:B

    .line 90
    iput v0, p0, LL/j;->d:I

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lbk/k;LL/k;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1}, LL/j;-><init>(Lbk/k;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 17
    invoke-direct {p0}, Lbk/j;-><init>()V

    .line 76
    iput-byte v0, p0, LL/j;->c:B

    .line 90
    iput v0, p0, LL/j;->d:I

    .line 17
    return-void
.end method

.method public static a()LL/j;
    .registers 1

    .prologue
    .line 21
    sget-object v0, LL/j;->b:LL/j;

    return-object v0
.end method

.method public static c()LL/l;
    .registers 1

    .prologue
    .line 160
    invoke-static {}, LL/l;->g()LL/l;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .registers 1

    .prologue
    .line 75
    return-void
.end method


# virtual methods
.method public a(Lbk/g;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0}, LL/j;->g()I

    .line 88
    return-void
.end method

.method public final b()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 78
    iget-byte v1, p0, LL/j;->c:B

    .line 79
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 82
    :goto_8
    return v0

    .line 79
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 81
    :cond_b
    iput-byte v0, p0, LL/j;->c:B

    goto :goto_8
.end method

.method public d()LL/l;
    .registers 2

    .prologue
    .line 161
    invoke-static {}, LL/j;->c()LL/l;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .registers 3

    .prologue
    .line 92
    iget v0, p0, LL/j;->d:I

    .line 93
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 97
    :goto_5
    return v0

    .line 95
    :cond_6
    const/4 v0, 0x0

    .line 96
    iput v0, p0, LL/j;->d:I

    goto :goto_5
.end method

.method public synthetic j()Lbk/q;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, LL/j;->d()LL/l;

    move-result-object v0

    return-object v0
.end method
