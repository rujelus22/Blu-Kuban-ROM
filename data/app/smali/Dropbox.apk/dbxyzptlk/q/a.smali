.class public abstract Ldbxyzptlk/q/a;
.super Landroid/widget/BaseAdapter;
.source "panda.py"


# instance fields
.field private a:Z


# virtual methods
.method public final a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-boolean p1, p0, Ldbxyzptlk/q/a;->a:Z

    .line 124
    invoke-virtual {p0}, Ldbxyzptlk/q/a;->notifyDataSetChanged()V

    .line 125
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 128
    iget-boolean v0, p0, Ldbxyzptlk/q/a;->a:Z

    return v0
.end method
