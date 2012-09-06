.class final Ldbxyzptlk/p/k;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/p/z;


# instance fields
.field final synthetic a:Ldbxyzptlk/p/i;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ldbxyzptlk/p/i;


# direct methods
.method constructor <init>(Ldbxyzptlk/p/i;Ldbxyzptlk/p/i;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1015
    iput-object p1, p0, Ldbxyzptlk/p/k;->e:Ldbxyzptlk/p/i;

    iput-object p2, p0, Ldbxyzptlk/p/k;->a:Ldbxyzptlk/p/i;

    iput-object p3, p0, Ldbxyzptlk/p/k;->b:Ljava/lang/String;

    iput-boolean p4, p0, Ldbxyzptlk/p/k;->c:Z

    iput-object p5, p0, Ldbxyzptlk/p/k;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;J)Ldbxyzptlk/l/k;
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 1020
    iget-object v0, p0, Ldbxyzptlk/p/k;->a:Ldbxyzptlk/p/i;

    iget-object v1, p0, Ldbxyzptlk/p/k;->b:Ljava/lang/String;

    iget-boolean v5, p0, Ldbxyzptlk/p/k;->c:Z

    iget-object v6, p0, Ldbxyzptlk/p/k;->d:Ljava/lang/String;

    move-object v2, p1

    move-wide v3, p2

    invoke-static/range {v0 .. v6}, Ldbxyzptlk/p/i;->a(Ldbxyzptlk/p/i;Ljava/lang/String;Ljava/util/List;JZLjava/lang/String;)Ldbxyzptlk/l/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/util/List;J)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1015
    invoke-virtual {p0, p1, p2, p3}, Ldbxyzptlk/p/k;->a(Ljava/util/List;J)Ldbxyzptlk/l/k;

    move-result-object v0

    return-object v0
.end method
