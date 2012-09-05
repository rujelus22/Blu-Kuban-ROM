.class Lcom/google/googlenav/ui/wizard/dU;
.super Ljava/lang/Object;

# interfaces
.implements Lbb/c;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dO;

.field private b:Lcom/google/googlenav/ah;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/dO;Lcom/google/googlenav/ah;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dU;->a:Lcom/google/googlenav/ui/wizard/dO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dU;->b:Lcom/google/googlenav/ah;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dU;)Lcom/google/googlenav/ah;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dU;->b:Lcom/google/googlenav/ah;

    return-object v0
.end method

.method private a()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dU;->a:Lcom/google/googlenav/ui/wizard/dO;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/dO;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/dX;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/dX;-><init>(Lcom/google/googlenav/ui/wizard/dU;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dU;->a:Lcom/google/googlenav/ui/wizard/dO;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/dO;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/dV;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/wizard/dV;-><init>(Lcom/google/googlenav/ui/wizard/dU;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method


# virtual methods
.method public a(Lbb/E;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lbb/A;

    if-eqz v2, :cond_c

    check-cast p1, Lbb/A;

    iget-object v2, p1, Lbb/A;->b:Ljava/lang/String;

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    const-string v3, "checkin:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v0, "checkin:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/dU;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_c

    :cond_24
    const-string v3, "dismiss"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dU;->a()V

    move v0, v1

    goto :goto_c
.end method

.method public b(Lbb/E;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
