.class public LRY;
.super Ljava/lang/Object;
.source "GDataClientFactory.java"


# instance fields
.field a:LJP;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public a()LarO;
    .registers 5

    .prologue
    .line 37
    iget-object v0, p0, LRY;->a:LJP;

    invoke-interface {v0}, LJP;->a()Ljava/lang/String;

    move-result-object v1

    .line 38
    iget-object v0, p0, LRY;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-le v0, v3, :cond_1f

    .line 42
    new-instance v0, Lacf;

    const-string v3, "3.0"

    invoke-direct {v0, v2, v1, v3}, Lacf;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_1e
    return-object v0

    :cond_1f
    new-instance v0, LRM;

    const-string v3, "3.0"

    invoke-direct {v0, v2, v1, v3}, LRM;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method
