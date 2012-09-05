.class public Lcom/google/googlenav/ui/wizard/aH;
.super Ljava/lang/Object;


# instance fields
.field private final a:LaE/h;

.field private final b:Lcom/google/googlenav/android/ac;

.field private c:Lcom/google/googlenav/ui/wizard/aI;


# direct methods
.method public constructor <init>(LaE/h;Lcom/google/googlenav/android/ac;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aH;->a:LaE/h;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aH;->b:Lcom/google/googlenav/android/ac;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/aH;)Lcom/google/googlenav/android/ac;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aH;->b:Lcom/google/googlenav/android/ac;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/aH;Lcom/google/googlenav/ui/wizard/aI;)Lcom/google/googlenav/ui/wizard/aI;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aH;->c:Lcom/google/googlenav/ui/wizard/aI;

    return-object p1
.end method


# virtual methods
.method public a(LaE/m;)V
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/wizard/aI;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/wizard/aI;-><init>(Lcom/google/googlenav/ui/wizard/aH;LaE/m;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aH;->c:Lcom/google/googlenav/ui/wizard/aI;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aH;->a:LaE/h;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aH;->c:Lcom/google/googlenav/ui/wizard/aI;

    invoke-virtual {v0, v1}, LaE/h;->a(LaE/m;)V

    return-void
.end method
