.class public final Ldbxyzptlk/v/t;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final f:Ldbxyzptlk/v/M;


# instance fields
.field private a:Ldbxyzptlk/v/G;

.field private b:Ldbxyzptlk/v/G;

.field private c:J

.field private d:Z

.field private final e:Ldbxyzptlk/v/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 751
    new-instance v0, Ldbxyzptlk/v/u;

    invoke-direct {v0}, Ldbxyzptlk/v/u;-><init>()V

    sput-object v0, Ldbxyzptlk/v/t;->f:Ldbxyzptlk/v/M;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-object v0, Ldbxyzptlk/v/G;->c:Ldbxyzptlk/v/G;

    iput-object v0, p0, Ldbxyzptlk/v/t;->a:Ldbxyzptlk/v/G;

    .line 91
    sget-object v0, Ldbxyzptlk/v/G;->c:Ldbxyzptlk/v/G;

    iput-object v0, p0, Ldbxyzptlk/v/t;->b:Ldbxyzptlk/v/G;

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldbxyzptlk/v/t;->c:J

    .line 94
    new-instance v0, Ldbxyzptlk/v/c;

    invoke-direct {v0}, Ldbxyzptlk/v/c;-><init>()V

    iput-object v0, p0, Ldbxyzptlk/v/t;->e:Ldbxyzptlk/v/c;

    .line 101
    return-void
.end method

.method static synthetic a(Ldbxyzptlk/v/t;)Ldbxyzptlk/v/G;
    .registers 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Ldbxyzptlk/v/t;->a:Ldbxyzptlk/v/G;

    return-object v0
.end method

.method private a(Ldbxyzptlk/v/G;)Ldbxyzptlk/v/t;
    .registers 5
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Ldbxyzptlk/v/t;->b:Ldbxyzptlk/v/G;

    sget-object v1, Ldbxyzptlk/v/G;->c:Ldbxyzptlk/v/G;

    if-eq v0, v1, :cond_27

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value strength was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldbxyzptlk/v/t;->b:Ldbxyzptlk/v/G;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_27
    iput-object p1, p0, Ldbxyzptlk/v/t;->b:Ldbxyzptlk/v/G;

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldbxyzptlk/v/t;->d:Z

    .line 238
    return-object p0
.end method

.method static synthetic b(Ldbxyzptlk/v/t;)Ldbxyzptlk/v/G;
    .registers 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Ldbxyzptlk/v/t;->b:Ldbxyzptlk/v/G;

    return-object v0
.end method

.method static synthetic c(Ldbxyzptlk/v/t;)J
    .registers 3
    .parameter

    .prologue
    .line 89
    iget-wide v0, p0, Ldbxyzptlk/v/t;->c:J

    return-wide v0
.end method

.method static synthetic c()Ldbxyzptlk/v/M;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Ldbxyzptlk/v/t;->f:Ldbxyzptlk/v/M;

    return-object v0
.end method

.method static synthetic d()Ldbxyzptlk/v/M;
    .registers 1

    .prologue
    .line 89
    invoke-static {}, Ldbxyzptlk/v/t;->e()Ldbxyzptlk/v/M;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Ldbxyzptlk/v/t;)Ldbxyzptlk/v/c;
    .registers 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Ldbxyzptlk/v/t;->e:Ldbxyzptlk/v/c;

    return-object v0
.end method

.method private static e()Ldbxyzptlk/v/M;
    .registers 1

    .prologue
    .line 771
    sget-object v0, Ldbxyzptlk/v/t;->f:Ldbxyzptlk/v/M;

    return-object v0
.end method


# virtual methods
.method public final a()Ldbxyzptlk/v/t;
    .registers 2

    .prologue
    .line 206
    sget-object v0, Ldbxyzptlk/v/G;->a:Ldbxyzptlk/v/G;

    invoke-direct {p0, v0}, Ldbxyzptlk/v/t;->a(Ldbxyzptlk/v/G;)Ldbxyzptlk/v/t;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ldbxyzptlk/v/t;
    .registers 3
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Ldbxyzptlk/v/t;->e:Ldbxyzptlk/v/c;

    invoke-virtual {v0, p1}, Ldbxyzptlk/v/c;->a(I)Ldbxyzptlk/v/c;

    .line 115
    return-object p0
.end method

.method public final b(I)Ldbxyzptlk/v/t;
    .registers 3
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Ldbxyzptlk/v/t;->e:Ldbxyzptlk/v/c;

    invoke-virtual {v0, p1}, Ldbxyzptlk/v/c;->b(I)Ldbxyzptlk/v/c;

    .line 139
    return-object p0
.end method

.method public final b()Ljava/util/concurrent/ConcurrentMap;
    .registers 5

    .prologue
    .line 280
    iget-boolean v0, p0, Ldbxyzptlk/v/t;->d:Z

    if-eqz v0, :cond_c

    new-instance v0, Ldbxyzptlk/v/C;

    invoke-direct {v0, p0}, Ldbxyzptlk/v/C;-><init>(Ldbxyzptlk/v/t;)V

    iget-object v0, v0, Ldbxyzptlk/v/C;->c:Ljava/util/concurrent/ConcurrentMap;

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Ldbxyzptlk/v/t;->e:Ldbxyzptlk/v/c;

    invoke-virtual {v1}, Ldbxyzptlk/v/c;->a()I

    move-result v1

    const/high16 v2, 0x3f40

    iget-object v3, p0, Ldbxyzptlk/v/t;->e:Ldbxyzptlk/v/c;

    invoke-virtual {v3}, Ldbxyzptlk/v/c;->b()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    goto :goto_b
.end method
