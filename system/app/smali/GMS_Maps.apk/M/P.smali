.class Lm/p;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lm/o;


# direct methods
.method constructor <init>(Lm/o;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lm/p;->b:Lm/o;

    iput-object p3, p0, Lm/p;->a:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lm/p;->onChange(ZLandroid/net/Uri;)V

    .line 195
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lm/p;->b:Lm/o;

    iget-object v1, p0, Lm/p;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lm/o;->a(Lm/o;Landroid/content/Context;)V

    .line 199
    return-void
.end method
