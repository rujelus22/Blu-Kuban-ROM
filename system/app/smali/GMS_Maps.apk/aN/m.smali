.class Lan/m;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lan/l;


# direct methods
.method constructor <init>(Lan/l;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lan/m;->a:Lan/l;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lan/m;->onChange(ZLandroid/net/Uri;)V

    .line 215
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lan/m;->a:Lan/l;

    invoke-static {v0}, Lan/l;->b(Lan/l;)V

    .line 219
    return-void
.end method
