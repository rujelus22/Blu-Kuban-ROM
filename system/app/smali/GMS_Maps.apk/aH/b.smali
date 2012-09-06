.class Lah/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah/i;


# instance fields
.field final synthetic a:Lah/p;

.field final synthetic b:Lah/a;


# direct methods
.method constructor <init>(Lah/a;Lah/p;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lah/b;->b:Lah/a;

    iput-object p2, p0, Lah/b;->a:Lah/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lah/m;)V
    .registers 4
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lah/b;->b:Lah/a;

    invoke-virtual {p1}, Lah/m;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lah/a;->a(Lah/a;Ljava/lang/Long;Lah/m;)V

    .line 233
    return-void
.end method

.method public a(Lah/n;)V
    .registers 5
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lah/b;->b:Lah/a;

    invoke-virtual {p1}, Lah/n;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Lah/a;->b()Lah/m;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lah/a;->a(Lah/a;Ljava/lang/Long;Lah/m;)V

    .line 238
    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .registers 4
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lah/b;->b:Lah/a;

    iget-object v1, p0, Lah/b;->a:Lah/p;

    invoke-static {v0, v1}, Lah/a;->a(Lah/a;Lah/p;)V

    .line 227
    iget-object v0, p0, Lah/b;->b:Lah/a;

    invoke-static {v0}, Lah/a;->a(Lah/a;)V

    .line 228
    return-void
.end method
