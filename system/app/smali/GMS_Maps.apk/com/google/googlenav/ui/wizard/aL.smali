.class public Lcom/google/googlenav/ui/wizard/aL;
.super Ljava/lang/Object;


# instance fields
.field private final a:LaY/a;

.field private final b:Lcom/google/googlenav/android/ac;


# direct methods
.method public constructor <init>(LaY/a;Lcom/google/googlenav/android/ac;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aL;->a:LaY/a;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aL;->b:Lcom/google/googlenav/android/ac;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/aL;)Lcom/google/googlenav/android/ac;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aL;->b:Lcom/google/googlenav/android/ac;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/aL;Lcom/google/googlenav/ui/wizard/aS;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/aL;->a(Lcom/google/googlenav/ui/wizard/aS;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/wizard/aS;)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aL;->b:Lcom/google/googlenav/android/ac;

    new-instance v2, Lcom/google/googlenav/ui/wizard/aR;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/wizard/aR;-><init>(Lcom/google/googlenav/ui/wizard/aL;Lcom/google/googlenav/ui/wizard/aS;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/aL;)LaY/a;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aL;->a:LaY/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/aS;)V
    .registers 7

    invoke-static {}, Lax/aA;->D()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aL;->a:LaY/a;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aL;->b:Lcom/google/googlenav/android/ac;

    new-instance v3, Lcom/google/googlenav/ui/wizard/aM;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/googlenav/ui/wizard/aM;-><init>(Lcom/google/googlenav/ui/wizard/aL;Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/aS;)V

    invoke-virtual {v0, v1, v2, v3}, LaY/a;->a(ILcom/google/googlenav/android/ac;LaY/f;)V

    return-void
.end method
