.class public final Ldbxyzptlk/p/g;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field public final a:Ldbxyzptlk/p/a;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ldbxyzptlk/l/q;


# direct methods
.method public constructor <init>(Ldbxyzptlk/p/a;Ldbxyzptlk/p/f;Ldbxyzptlk/l/q;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Ldbxyzptlk/p/g;->a:Ldbxyzptlk/p/a;

    .line 70
    if-eqz p2, :cond_13

    .line 71
    iget-object v0, p2, Ldbxyzptlk/p/f;->a:Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/p/g;->b:Ljava/lang/String;

    .line 72
    iget-object v0, p2, Ldbxyzptlk/p/f;->b:Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/p/g;->c:Ljava/lang/String;

    .line 77
    :goto_10
    iput-object p3, p0, Ldbxyzptlk/p/g;->d:Ldbxyzptlk/l/q;

    .line 78
    return-void

    .line 74
    :cond_13
    iput-object v0, p0, Ldbxyzptlk/p/g;->b:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Ldbxyzptlk/p/g;->c:Ljava/lang/String;

    goto :goto_10
.end method
