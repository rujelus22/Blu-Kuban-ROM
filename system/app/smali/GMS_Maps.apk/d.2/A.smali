.class Ld/A;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ld/al;

.field final synthetic b:Ld/y;


# direct methods
.method constructor <init>(Ld/y;Ld/al;)V
    .registers 3

    iput-object p1, p0, Ld/A;->b:Ld/y;

    iput-object p2, p0, Ld/A;->a:Ld/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Ld/A;->a:Ld/al;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ld/A;->a:Ld/al;

    invoke-virtual {v0}, Ld/al;->e()V

    :cond_9
    return-void
.end method
