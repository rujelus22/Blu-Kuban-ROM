.class public Lbb/n;
.super Ljava/lang/Object;


# instance fields
.field public final l:Lcom/google/googlenav/ui/bl;

.field public final m:Lcom/google/googlenav/ui/bl;

.field public final n:Lcom/google/googlenav/ui/bl;

.field public final o:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lbb/n;-><init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbb/n;->l:Lcom/google/googlenav/ui/bl;

    iput-object p2, p0, Lbb/n;->m:Lcom/google/googlenav/ui/bl;

    iput-object p3, p0, Lbb/n;->n:Lcom/google/googlenav/ui/bl;

    iput-boolean p4, p0, Lbb/n;->o:Z

    return-void
.end method
