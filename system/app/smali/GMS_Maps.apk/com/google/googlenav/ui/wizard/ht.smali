.class Lcom/google/googlenav/ui/wizard/ht;
.super Lat/c;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hp;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ht;->a:Lcom/google/googlenav/ui/wizard/hp;

    invoke-direct {p0}, Lat/c;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ht;->a:Lcom/google/googlenav/ui/wizard/hp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/hp;->a(Lcom/google/googlenav/ui/wizard/hp;Z)V

    return-void
.end method
