.class public LbX;
.super Ljava/lang/Object;


# instance fields
.field private final a:D

.field private final a:Ljava/lang/String;

.field private final b:D

.field private final b:Ljava/lang/String;

.field private final c:D


# direct methods
.method private constructor <init>(LbZ;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LbZ;->a(LbZ;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LbX;->a:Ljava/lang/String;

    invoke-static {p1}, LbZ;->a(LbZ;)D

    move-result-wide v0

    iput-wide v0, p0, LbX;->a:D

    invoke-static {p1}, LbZ;->b(LbZ;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LbX;->b:Ljava/lang/String;

    invoke-static {p1}, LbZ;->b(LbZ;)D

    move-result-wide v0

    iput-wide v0, p0, LbX;->b:D

    invoke-static {p1}, LbZ;->c(LbZ;)D

    move-result-wide v0

    iput-wide v0, p0, LbX;->c:D

    return-void
.end method

.method synthetic constructor <init>(LbZ;LbY;)V
    .registers 3

    invoke-direct {p0, p1}, LbX;-><init>(LbZ;)V

    return-void
.end method


# virtual methods
.method a()D
    .registers 3

    iget-wide v0, p0, LbX;->a:D

    return-wide v0
.end method

.method a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LbX;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()D
    .registers 3

    iget-wide v0, p0, LbX;->b:D

    return-wide v0
.end method

.method b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LbX;->b:Ljava/lang/String;

    return-object v0
.end method

.method c()D
    .registers 3

    iget-wide v0, p0, LbX;->c:D

    return-wide v0
.end method
