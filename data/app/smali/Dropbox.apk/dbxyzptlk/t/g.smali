.class public abstract Ldbxyzptlk/t/g;
.super Ljava/lang/ref/SoftReference;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/t/a;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ldbxyzptlk/t/b;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 39
    iget-object v0, p2, Ldbxyzptlk/t/b;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 40
    invoke-virtual {p2}, Ldbxyzptlk/t/b;->a()V

    .line 41
    return-void
.end method
