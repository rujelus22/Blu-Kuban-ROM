.class Lcom/google/googlenav/ui/K;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/D;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/D;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/K;->b:Lcom/google/googlenav/ui/D;

    iput p2, p0, Lcom/google/googlenav/ui/K;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/K;->b:Lcom/google/googlenav/ui/D;

    iget v1, p0, Lcom/google/googlenav/ui/K;->a:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->d(I)V

    return-void
.end method
