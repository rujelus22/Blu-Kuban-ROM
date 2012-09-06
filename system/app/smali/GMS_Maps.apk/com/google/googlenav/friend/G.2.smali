.class Lcom/google/googlenav/friend/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/be;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/E;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/E;)V
    .registers 2
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/google/googlenav/friend/G;->a:Lcom/google/googlenav/friend/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 286
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->D()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/r;->b(Landroid/content/Context;)V

    .line 288
    return-void
.end method
