.class Lah/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah/k;


# instance fields
.field private final a:Lah/a;


# direct methods
.method public constructor <init>(Lah/a;)V
    .registers 2
    .parameter

    .prologue
    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput-object p1, p0, Lah/l;->a:Lah/a;

    .line 493
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, Lah/l;->a:Lah/a;

    invoke-static {v0}, Lah/a;->d(Lah/a;)V

    .line 504
    return-void
.end method

.method public a(Lah/m;)V
    .registers 5
    .parameter

    .prologue
    .line 497
    iget-object v0, p0, Lah/l;->a:Lah/a;

    iget-object v0, v0, Lah/a;->a:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lah/m;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lah/m;->b()Lah/n;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Lah/l;->a:Lah/a;

    invoke-static {v0}, Lah/a;->e(Lah/a;)V

    .line 511
    return-void
.end method
