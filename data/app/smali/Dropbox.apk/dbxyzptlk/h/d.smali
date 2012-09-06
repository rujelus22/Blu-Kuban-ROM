.class final Ldbxyzptlk/h/d;
.super Ljava/lang/Thread;
.source "panda.py"


# instance fields
.field final synthetic a:Ldbxyzptlk/h/b;


# direct methods
.method constructor <init>(Ldbxyzptlk/h/b;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Ldbxyzptlk/h/d;->a:Ldbxyzptlk/h/b;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Ldbxyzptlk/h/d;->a:Ldbxyzptlk/h/b;

    invoke-static {v0}, Ldbxyzptlk/h/b;->a(Ldbxyzptlk/h/b;)V

    .line 272
    return-void
.end method
