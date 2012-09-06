.class public LbZ;
.super Ljava/lang/Object;


# instance fields
.field private final a:D

.field private final a:Ljava/lang/String;

.field private b:D

.field private b:Ljava/lang/String;

.field private c:D


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .registers 7

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LbZ;->b:Ljava/lang/String;

    iput-wide v1, p0, LbZ;->b:D

    iput-wide v1, p0, LbZ;->c:D

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_20

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "orderId must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iput-object p1, p0, LbZ;->a:Ljava/lang/String;

    iput-wide p2, p0, LbZ;->a:D

    return-void
.end method

.method static synthetic a(LbZ;)D
    .registers 3

    iget-wide v0, p0, LbZ;->a:D

    return-wide v0
.end method

.method static synthetic a(LbZ;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LbZ;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(LbZ;)D
    .registers 3

    iget-wide v0, p0, LbZ;->b:D

    return-wide v0
.end method

.method static synthetic b(LbZ;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LbZ;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(LbZ;)D
    .registers 3

    iget-wide v0, p0, LbZ;->c:D

    return-wide v0
.end method


# virtual methods
.method public a()LbX;
    .registers 3

    new-instance v0, LbX;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LbX;-><init>(LbZ;LbY;)V

    return-object v0
.end method

.method public a(D)LbZ;
    .registers 3

    iput-wide p1, p0, LbZ;->b:D

    return-object p0
.end method

.method public a(Ljava/lang/String;)LbZ;
    .registers 2

    iput-object p1, p0, LbZ;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(D)LbZ;
    .registers 3

    iput-wide p1, p0, LbZ;->c:D

    return-object p0
.end method
