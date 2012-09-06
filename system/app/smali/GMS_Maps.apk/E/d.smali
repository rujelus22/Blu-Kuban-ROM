.class Le/d;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Le/a;


# direct methods
.method private constructor <init>(Le/a;)V
    .registers 2
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Le/d;->a:Le/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Le/a;Le/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 469
    invoke-direct {p0, p1}, Le/d;-><init>(Le/a;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .prologue
    .line 472
    iget-object v0, p0, Le/d;->a:Le/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Le/a;->a:Z

    .line 473
    iget-object v0, p0, Le/d;->a:Le/a;

    invoke-virtual {v0}, Le/a;->notifyDataSetChanged()V

    .line 474
    return-void
.end method

.method public onInvalidated()V
    .registers 3

    .prologue
    .line 478
    iget-object v0, p0, Le/d;->a:Le/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Le/a;->a:Z

    .line 479
    iget-object v0, p0, Le/d;->a:Le/a;

    invoke-virtual {v0}, Le/a;->notifyDataSetInvalidated()V

    .line 480
    return-void
.end method
