.class Lbd/aB;
.super Ljava/lang/Object;

# interfaces
.implements Lbb/F;


# instance fields
.field final synthetic a:Lbd/az;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lbd/az;)V
    .registers 3

    iput-object p1, p0, Lbd/aB;->a:Lbd/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbd/aC;

    invoke-direct {v0, p0}, Lbd/aC;-><init>(Lbd/aB;)V

    iput-object v0, p0, Lbd/aB;->b:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lbd/az;Lbd/aA;)V
    .registers 3

    invoke-direct {p0, p1}, Lbd/aB;-><init>(Lbd/az;)V

    return-void
.end method


# virtual methods
.method public a(Lbb/E;)Z
    .registers 4

    iget-object v0, p0, Lbd/aB;->a:Lbd/az;

    invoke-static {v0}, Lbd/az;->a(Lbd/az;)Lcom/google/googlenav/ui/android/LoadingFooterView;

    move-result-object v0

    iget-object v1, p0, Lbd/aB;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/LoadingFooterView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method
