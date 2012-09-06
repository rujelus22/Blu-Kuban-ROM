.class Lat/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/bL;


# instance fields
.field final synthetic a:Lat/h;


# direct methods
.method constructor <init>(Lat/h;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lat/i;->a:Lat/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 49
    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lat/i;->a:Lat/h;

    invoke-virtual {v1, v0, v2, v2}, Lat/h;->a(ZZZ)V

    .line 53
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lat/i;->a:Lat/h;

    invoke-virtual {v0}, Lat/h;->l()V

    .line 57
    return-void
.end method
