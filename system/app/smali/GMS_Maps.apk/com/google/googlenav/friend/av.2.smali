.class Lcom/google/googlenav/friend/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/be;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/au;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/au;)V
    .registers 2
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/googlenav/friend/av;->a:Lcom/google/googlenav/friend/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 270
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->D()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/r;->b(Landroid/content/Context;)V

    .line 272
    return-void
.end method
