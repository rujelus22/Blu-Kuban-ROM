.class public Laz/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/location/Geocoder;


# direct methods
.method public constructor <init>(Landroid/location/Geocoder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laz/a;->a:Landroid/location/Geocoder;

    return-void
.end method

.method static synthetic a(Laz/a;)Landroid/location/Geocoder;
    .registers 2

    iget-object v0, p0, Laz/a;->a:Landroid/location/Geocoder;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILaz/c;)V
    .registers 10

    new-instance v0, Laz/b;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Laz/b;-><init>(Laz/a;Lap/c;Ljava/lang/String;ILaz/c;)V

    invoke-virtual {v0}, Laz/b;->g()V

    return-void
.end method
