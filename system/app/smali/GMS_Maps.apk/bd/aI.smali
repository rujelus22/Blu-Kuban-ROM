.class Lbd/aI;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/aJ;


# instance fields
.field final synthetic a:Lbd/aG;

.field private b:Lcom/google/googlenav/ui/android/TransitLineStationView;


# direct methods
.method private constructor <init>(Lbd/aG;)V
    .registers 2

    iput-object p1, p0, Lbd/aI;->a:Lbd/aG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbd/aG;Lbd/aH;)V
    .registers 3

    invoke-direct {p0, p1}, Lbd/aI;-><init>(Lbd/aG;)V

    return-void
.end method

.method static synthetic a(Lbd/aI;)Lcom/google/googlenav/ui/android/TransitLineStationView;
    .registers 2

    iget-object v0, p0, Lbd/aI;->b:Lcom/google/googlenav/ui/android/TransitLineStationView;

    return-object v0
.end method

.method static synthetic a(Lbd/aI;Lcom/google/googlenav/ui/android/TransitLineStationView;)Lcom/google/googlenav/ui/android/TransitLineStationView;
    .registers 2

    iput-object p1, p0, Lbd/aI;->b:Lcom/google/googlenav/ui/android/TransitLineStationView;

    return-object p1
.end method
