.class Lax/bI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lax/bG;


# direct methods
.method constructor <init>(Lax/bG;I)V
    .registers 3

    iput-object p1, p0, Lax/bI;->b:Lax/bG;

    iput p2, p0, Lax/bI;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lax/bI;->b:Lax/bG;

    invoke-static {v0}, Lax/bG;->b(Lax/bG;)Lax/bJ;

    move-result-object v0

    iget v1, p0, Lax/bI;->a:I

    invoke-interface {v0, v1}, Lax/bJ;->a(I)V

    return-void
.end method
