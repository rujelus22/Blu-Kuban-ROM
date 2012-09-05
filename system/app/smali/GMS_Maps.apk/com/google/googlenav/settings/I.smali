.class Lcom/google/googlenav/settings/I;
.super Lap/b;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/H;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/H;Lap/c;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/settings/I;->a:Lcom/google/googlenav/settings/H;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const-string v0, "UOCT_SET_OR_LAST_NOTIFICATION"

    invoke-static {v0}, Lbf/c;->b(Ljava/lang/String;)V

    return-void
.end method
