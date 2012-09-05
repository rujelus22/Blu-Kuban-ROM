.class Ld/aE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ld/aC;


# direct methods
.method constructor <init>(Ld/aC;)V
    .registers 2

    iput-object p1, p0, Ld/aE;->a:Ld/aC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Ld/aE;->a:Ld/aC;

    invoke-virtual {v0}, Ld/aC;->g()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Ld/aE;->a:Ld/aC;

    invoke-static {v0}, Ld/aC;->a(Ld/aC;)V

    :cond_d
    return-void
.end method
