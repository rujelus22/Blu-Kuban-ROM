.class Le/c;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Le/a;


# direct methods
.method public constructor <init>(Le/a;)V
    .registers 3
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Le/c;->a:Le/a;

    .line 455
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 456
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Le/c;->a:Le/a;

    invoke-virtual {v0}, Le/a;->b()V

    .line 466
    return-void
.end method
