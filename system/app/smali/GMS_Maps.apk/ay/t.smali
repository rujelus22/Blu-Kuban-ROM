.class Lay/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lay/q;

.field final synthetic b:Lay/s;


# direct methods
.method constructor <init>(Lay/s;Lay/q;)V
    .registers 3

    iput-object p1, p0, Lay/t;->b:Lay/s;

    iput-object p2, p0, Lay/t;->a:Lay/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lay/t;->a:Lay/q;

    invoke-interface {v0}, Lay/q;->aa_()V

    return-void
.end method
