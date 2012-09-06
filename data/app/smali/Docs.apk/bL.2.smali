.class public LbL;
.super Ljava/lang/Object;


# instance fields
.field private final a:D

.field private final a:J

.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DJ)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LbL;->c:Ljava/lang/String;

    iput-object v0, p0, LbL;->d:Ljava/lang/String;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "orderId must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    if-eqz p2, :cond_28

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemSKU must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    iput-object p1, p0, LbL;->a:Ljava/lang/String;

    iput-object p2, p0, LbL;->b:Ljava/lang/String;

    iput-wide p3, p0, LbL;->a:D

    iput-wide p5, p0, LbL;->a:J

    return-void
.end method

.method static synthetic a(LbL;)D
    .registers 3

    iget-wide v0, p0, LbL;->a:D

    return-wide v0
.end method

.method static synthetic a(LbL;)J
    .registers 3

    iget-wide v0, p0, LbL;->a:J

    return-wide v0
.end method

.method static synthetic a(LbL;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LbL;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(LbL;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LbL;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(LbL;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LbL;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(LbL;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LbL;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()LbJ;
    .registers 3

    new-instance v0, LbJ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LbJ;-><init>(LbL;LbK;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)LbL;
    .registers 2

    iput-object p1, p0, LbL;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)LbL;
    .registers 2

    iput-object p1, p0, LbL;->d:Ljava/lang/String;

    return-object p0
.end method
