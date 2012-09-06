.class public LbJ;
.super Ljava/lang/Object;


# instance fields
.field private final a:D

.field private final a:J

.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(LbL;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LbL;->a(LbL;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LbJ;->a:Ljava/lang/String;

    invoke-static {p1}, LbL;->b(LbL;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LbJ;->b:Ljava/lang/String;

    invoke-static {p1}, LbL;->a(LbL;)D

    move-result-wide v0

    iput-wide v0, p0, LbJ;->a:D

    invoke-static {p1}, LbL;->a(LbL;)J

    move-result-wide v0

    iput-wide v0, p0, LbJ;->a:J

    invoke-static {p1}, LbL;->c(LbL;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LbJ;->c:Ljava/lang/String;

    invoke-static {p1}, LbL;->d(LbL;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LbJ;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(LbL;LbK;)V
    .registers 3

    invoke-direct {p0, p1}, LbJ;-><init>(LbL;)V

    return-void
.end method


# virtual methods
.method a()D
    .registers 3

    iget-wide v0, p0, LbJ;->a:D

    return-wide v0
.end method

.method a()J
    .registers 3

    iget-wide v0, p0, LbJ;->a:J

    return-wide v0
.end method

.method a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LbJ;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LbJ;->b:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LbJ;->c:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LbJ;->d:Ljava/lang/String;

    return-object v0
.end method
