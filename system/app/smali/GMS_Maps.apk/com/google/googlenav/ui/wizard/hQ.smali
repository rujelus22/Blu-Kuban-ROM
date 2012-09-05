.class Lcom/google/googlenav/ui/wizard/hQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Laq/b;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/hM;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hM;ILaq/b;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hQ;->c:Lcom/google/googlenav/ui/wizard/hM;

    iput p2, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:I

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/hQ;->b:Laq/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hQ;->c:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hM;->a:Lcom/google/googlenav/L;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/hQ;->a:I

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hQ;->b:Laq/b;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/L;->a(ILaq/b;)Z

    return-void
.end method
