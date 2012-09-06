.class public Lai/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/location/Geocoder;


# direct methods
.method public constructor <init>(Landroid/location/Geocoder;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lai/a;->a:Landroid/location/Geocoder;

    .line 42
    return-void
.end method

.method static synthetic a(Lai/a;)Landroid/location/Geocoder;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lai/a;->a:Landroid/location/Geocoder;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILai/c;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v0, Lai/b;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lai/b;-><init>(Lai/a;LY/c;Ljava/lang/String;ILai/c;)V

    invoke-virtual {v0}, Lai/b;->g()V

    .line 63
    return-void
.end method
