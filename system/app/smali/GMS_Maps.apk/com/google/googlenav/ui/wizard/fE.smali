.class Lcom/google/googlenav/ui/wizard/fE;
.super Ljava/lang/Object;

# interfaces
.implements Lat/d;


# instance fields
.field private a:Z

.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fE;->a:Z

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fE;->b:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/fE;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fE;->a:Z

    return v0
.end method


# virtual methods
.method public X()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fE;->a:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fE;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
