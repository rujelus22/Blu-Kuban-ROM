.class Lah/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/aC;


# instance fields
.field final synthetic a:Lah/p;

.field final synthetic b:Lah/a;


# direct methods
.method constructor <init>(Lah/a;Lah/p;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lah/c;->b:Lah/a;

    iput-object p2, p0, Lah/c;->a:Lah/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Vector;)V
    .registers 6
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lah/c;->b:Lah/a;

    invoke-static {v0, p1}, Lah/a;->a(Lah/a;Ljava/util/Vector;)V

    .line 247
    iget-object v0, p0, Lah/c;->b:Lah/a;

    iget-object v1, p0, Lah/c;->a:Lah/p;

    invoke-static {v0, v1}, Lah/a;->a(Lah/a;Lah/p;)V

    .line 248
    iget-object v0, p0, Lah/c;->b:Lah/a;

    invoke-static {v0}, Lah/a;->a(Lah/a;)V

    .line 249
    new-instance v0, Lah/j;

    iget-object v1, p0, Lah/c;->b:Lah/a;

    invoke-static {v1}, Lah/a;->b(Lah/a;)LY/c;

    move-result-object v1

    new-instance v2, Lah/l;

    iget-object v3, p0, Lah/c;->b:Lah/a;

    invoke-direct {v2, v3}, Lah/l;-><init>(Lah/a;)V

    invoke-direct {v0, v1, p1, v2}, Lah/j;-><init>(LY/c;Ljava/util/Vector;Lah/k;)V

    invoke-virtual {v0}, Lah/j;->g()V

    .line 251
    return-void
.end method
