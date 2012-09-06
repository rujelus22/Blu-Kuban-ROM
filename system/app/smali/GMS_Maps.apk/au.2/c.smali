.class Lau/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/ef;


# instance fields
.field final synthetic a:Lau/a;


# direct methods
.method constructor <init>(Lau/a;)V
    .registers 2
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lau/c;->a:Lau/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln/Q;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 156
    new-instance v0, Lat/B;

    invoke-virtual {p1}, Ln/Q;->a()I

    move-result v1

    invoke-virtual {p1}, Ln/Q;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lat/B;-><init>(II)V

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lan/d;->a(Lat/B;ILY/c;)V

    .line 162
    iget-object v0, p0, Lau/c;->a:Lau/a;

    invoke-static {v0}, Lau/a;->a(Lau/a;)Ll/q;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lau/c;->a:Lau/a;

    invoke-static {v0}, Lau/a;->a(Lau/a;)Ll/q;

    move-result-object v0

    invoke-virtual {v0}, Ll/q;->d()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 163
    const/16 v0, 0x68

    const-string v1, "v"

    iget-object v2, p0, Lau/c;->a:Lau/a;

    invoke-static {v2, p2}, Lau/a;->a(Lau/a;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_35
    return-void
.end method
