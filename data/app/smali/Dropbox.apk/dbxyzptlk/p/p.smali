.class public final Ldbxyzptlk/p/p;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private final a:J

.field private final b:Ldbxyzptlk/o/k;


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .registers 5
    .parameter

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-string v0, "uid"

    invoke-static {p1, v0}, Ldbxyzptlk/p/i;->e(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ldbxyzptlk/p/p;->a:J

    .line 187
    new-instance v2, Ldbxyzptlk/o/k;

    const-string v0, "token"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "secret"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ldbxyzptlk/o/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Ldbxyzptlk/p/p;->b:Ldbxyzptlk/o/k;

    .line 190
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ldbxyzptlk/p/j;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-direct {p0, p1}, Ldbxyzptlk/p/p;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a()Ldbxyzptlk/o/k;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Ldbxyzptlk/p/p;->b:Ldbxyzptlk/o/k;

    return-object v0
.end method

.method public final b()J
    .registers 3

    .prologue
    .line 197
    iget-wide v0, p0, Ldbxyzptlk/p/p;->a:J

    return-wide v0
.end method
