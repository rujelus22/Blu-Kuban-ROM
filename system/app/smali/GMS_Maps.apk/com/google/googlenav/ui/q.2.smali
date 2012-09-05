.class public Lcom/google/googlenav/ui/q;
.super Lcom/google/googlenav/ui/bl;


# instance fields
.field public a:Lau/s;

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/bl;Lau/s;Z)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/bl;-><init>(Lcom/google/googlenav/ui/bl;)V

    iput-object p2, p0, Lcom/google/googlenav/ui/q;->a:Lau/s;

    iput-boolean p3, p0, Lcom/google/googlenav/ui/q;->b:Z

    return-void
.end method
