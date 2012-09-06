.class Lcom/google/googlenav/ui/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/q;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;)V
    .registers 2
    .parameter

    .prologue
    .line 932
    iput-object p1, p0, Lcom/google/googlenav/ui/P;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lat/H;)V
    .registers 5
    .parameter

    .prologue
    .line 936
    invoke-virtual {p1}, Lat/H;->a()Lat/B;

    move-result-object v0

    invoke-virtual {p1}, Lat/H;->b()Lat/Y;

    move-result-object v1

    invoke-virtual {v1}, Lat/Y;->a()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/P;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v2}, Lcom/google/googlenav/ui/v;->c(Lcom/google/googlenav/ui/v;)LY/c;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lan/d;->a(Lat/B;ILY/c;)V

    .line 938
    return-void
.end method
