.class Lcom/google/googlenav/ui/S;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;)V
    .registers 2
    .parameter

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/google/googlenav/ui/S;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 1246
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->f()LS/g;

    .line 1247
    return-void
.end method
