.class final Ldbxyzptlk/p/b;
.super Ldbxyzptlk/l/q;
.source "panda.py"


# instance fields
.field final synthetic a:Ldbxyzptlk/l/q;

.field final synthetic b:Ldbxyzptlk/p/a;


# direct methods
.method constructor <init>(Ldbxyzptlk/p/a;Ldbxyzptlk/l/q;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Ldbxyzptlk/p/b;->b:Ldbxyzptlk/p/a;

    iput-object p2, p0, Ldbxyzptlk/p/b;->a:Ldbxyzptlk/l/q;

    invoke-direct {p0}, Ldbxyzptlk/l/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Ldbxyzptlk/p/b;->a:Ldbxyzptlk/l/q;

    invoke-virtual {v0}, Ldbxyzptlk/l/q;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJ)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Ldbxyzptlk/p/b;->a:Ldbxyzptlk/l/q;

    iget-object v1, p0, Ldbxyzptlk/p/b;->b:Ldbxyzptlk/p/a;

    invoke-static {v1}, Ldbxyzptlk/p/a;->a(Ldbxyzptlk/p/a;)J

    move-result-wide v1

    add-long/2addr v1, p1

    iget-object v3, p0, Ldbxyzptlk/p/b;->b:Ldbxyzptlk/p/a;

    invoke-static {v3}, Ldbxyzptlk/p/a;->b(Ldbxyzptlk/p/a;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ldbxyzptlk/l/q;->a(JJ)V

    .line 217
    return-void
.end method
