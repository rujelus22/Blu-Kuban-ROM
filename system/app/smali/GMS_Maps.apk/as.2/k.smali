.class LaS/k;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:LaS/j;


# direct methods
.method constructor <init>(LaS/j;LY/c;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, LaS/k;->b:LaS/j;

    iput-object p3, p0, LaS/k;->a:Landroid/content/Context;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 101
    iget-object v0, p0, LaS/k;->b:LaS/j;

    new-instance v1, LaS/n;

    iget-object v2, p0, LaS/k;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, LaS/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, LaS/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, v0, LaS/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 102
    return-void
.end method
