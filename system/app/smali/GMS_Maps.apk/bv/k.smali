.class public Lbv/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lbv/k;->g:J

    return-void
.end method

.method static synthetic a(Lbv/k;)J
    .registers 3

    iget-wide v0, p0, Lbv/k;->g:J

    return-wide v0
.end method

.method static synthetic b(Lbv/k;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbv/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lbv/k;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbv/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lbv/k;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbv/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lbv/k;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbv/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lbv/k;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbv/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lbv/k;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbv/k;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lbv/k;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lbv/k;->c:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lbv/k;->d:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lbv/k;->e:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lbv/k;->f:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
