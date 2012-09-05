.class LaZ/d;
.super Lcom/google/googlenav/x;


# instance fields
.field final synthetic a:Lz/d;

.field final synthetic b:LaZ/b;


# direct methods
.method constructor <init>(LaZ/b;Lz/d;)V
    .registers 3

    iput-object p1, p0, LaZ/d;->b:LaZ/b;

    iput-object p2, p0, LaZ/d;->a:Lz/d;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, LaZ/d;->a:Lz/d;

    invoke-virtual {v0}, Lz/d;->start()V

    return-void
.end method
