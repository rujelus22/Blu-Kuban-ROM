.class Lay/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Vector;

.field final synthetic b:Lay/a;


# direct methods
.method constructor <init>(Lay/a;Ljava/util/Vector;)V
    .registers 3

    iput-object p1, p0, Lay/d;->b:Lay/a;

    iput-object p2, p0, Lay/d;->a:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lay/d;->b:Lay/a;

    iget-object v1, p0, Lay/d;->a:Ljava/util/Vector;

    invoke-static {v0, v1}, Lay/a;->b(Lay/a;Ljava/util/Vector;)V

    return-void
.end method
