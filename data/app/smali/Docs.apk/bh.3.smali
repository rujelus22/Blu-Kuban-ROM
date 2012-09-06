.class Lbh;
.super Landroid/database/DataSetObserver;
.source "CursorAdapter.java"


# instance fields
.field final synthetic a:Lbe;


# direct methods
.method private constructor <init>(Lbe;)V
    .registers 2
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lbh;->a:Lbe;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbe;Lbf;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lbh;-><init>(Lbe;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .prologue
    .line 472
    iget-object v0, p0, Lbh;->a:Lbe;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbe;->a:Z

    .line 473
    iget-object v0, p0, Lbh;->a:Lbe;

    invoke-virtual {v0}, Lbe;->notifyDataSetChanged()V

    .line 474
    return-void
.end method

.method public onInvalidated()V
    .registers 3

    .prologue
    .line 478
    iget-object v0, p0, Lbh;->a:Lbe;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lbe;->a:Z

    .line 479
    iget-object v0, p0, Lbh;->a:Lbe;

    invoke-virtual {v0}, Lbe;->notifyDataSetInvalidated()V

    .line 480
    return-void
.end method
