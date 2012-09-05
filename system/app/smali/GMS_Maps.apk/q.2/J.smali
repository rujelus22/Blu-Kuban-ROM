.class Lq/J;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lq/B;

.field final synthetic b:Lq/I;


# direct methods
.method constructor <init>(Lq/I;Lq/B;)V
    .registers 3

    iput-object p1, p0, Lq/J;->b:Lq/I;

    iput-object p2, p0, Lq/J;->a:Lq/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lq/J;->b:Lq/I;

    iget-object v1, p0, Lq/J;->a:Lq/B;

    invoke-static {v0, v1}, Lq/I;->a(Lq/I;Lq/B;)V

    return-void
.end method
