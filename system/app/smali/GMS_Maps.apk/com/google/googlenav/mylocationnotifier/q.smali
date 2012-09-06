.class Lcom/google/googlenav/mylocationnotifier/q;
.super Lcom/google/googlenav/ai;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/google/googlenav/mylocationnotifier/l;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/mylocationnotifier/l;)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 291
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/q;->c:Lcom/google/googlenav/mylocationnotifier/l;

    .line 292
    new-instance v1, Lat/B;

    invoke-direct {v1, v0, v0}, Lat/B;-><init>(II)V

    invoke-static {p1}, Lcom/google/googlenav/mylocationnotifier/l;->e(Lcom/google/googlenav/mylocationnotifier/l;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x2da

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_14
    const/16 v2, 0x8

    invoke-direct {p0, v1, v0, v2}, Lcom/google/googlenav/ai;-><init>(Lat/g;Ljava/lang/String;B)V

    .line 297
    return-void

    .line 292
    :cond_1a
    const/16 v0, 0x2d9

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method
