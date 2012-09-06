.class final Ldbxyzptlk/j/n;
.super Ljava/lang/Thread;
.source "panda.py"


# instance fields
.field final synthetic a:Ldbxyzptlk/j/m;


# direct methods
.method constructor <init>(Ldbxyzptlk/j/m;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Ldbxyzptlk/j/n;->a:Ldbxyzptlk/j/m;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Ldbxyzptlk/j/n;->a:Ldbxyzptlk/j/m;

    invoke-static {v0}, Ldbxyzptlk/j/m;->a(Ldbxyzptlk/j/m;)Landroid/content/SharedPreferences;

    .line 137
    iget-object v0, p0, Ldbxyzptlk/j/n;->a:Ldbxyzptlk/j/m;

    invoke-static {v0}, Ldbxyzptlk/j/m;->b(Ldbxyzptlk/j/m;)Landroid/content/SharedPreferences;

    .line 138
    return-void
.end method
