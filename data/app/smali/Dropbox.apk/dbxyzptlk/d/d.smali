.class final Ldbxyzptlk/d/d;
.super Landroid/database/DataSetObserver;
.source "panda.py"


# instance fields
.field final synthetic a:Ldbxyzptlk/d/a;


# direct methods
.method private constructor <init>(Ldbxyzptlk/d/a;)V
    .registers 2
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Ldbxyzptlk/d/d;->a:Ldbxyzptlk/d/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldbxyzptlk/d/a;Ldbxyzptlk/d/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 469
    invoke-direct {p0, p1}, Ldbxyzptlk/d/d;-><init>(Ldbxyzptlk/d/a;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 3

    .prologue
    .line 472
    iget-object v0, p0, Ldbxyzptlk/d/d;->a:Ldbxyzptlk/d/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ldbxyzptlk/d/a;->a:Z

    .line 473
    iget-object v0, p0, Ldbxyzptlk/d/d;->a:Ldbxyzptlk/d/a;

    invoke-virtual {v0}, Ldbxyzptlk/d/a;->notifyDataSetChanged()V

    .line 474
    return-void
.end method

.method public final onInvalidated()V
    .registers 3

    .prologue
    .line 478
    iget-object v0, p0, Ldbxyzptlk/d/d;->a:Ldbxyzptlk/d/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ldbxyzptlk/d/a;->a:Z

    .line 479
    iget-object v0, p0, Ldbxyzptlk/d/d;->a:Ldbxyzptlk/d/a;

    invoke-virtual {v0}, Ldbxyzptlk/d/a;->notifyDataSetInvalidated()V

    .line 480
    return-void
.end method
