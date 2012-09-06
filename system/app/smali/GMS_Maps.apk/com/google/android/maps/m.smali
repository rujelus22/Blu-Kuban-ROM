.class Lcom/google/android/maps/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/dk;


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;Ljava/lang/Class;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2012
    iput-object p1, p0, Lcom/google/android/maps/m;->b:Lcom/google/android/maps/MapsActivity;

    iput-object p2, p0, Lcom/google/android/maps/m;->a:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/google/android/maps/m;->a:Ljava/lang/Class;

    if-nez v0, :cond_5

    .line 2028
    :goto_4
    return-void

    .line 2027
    :cond_5
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/m;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/Class;)V

    goto :goto_4
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 2015
    invoke-direct {p0}, Lcom/google/android/maps/m;->c()V

    .line 2016
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 2020
    invoke-direct {p0}, Lcom/google/android/maps/m;->c()V

    .line 2021
    return-void
.end method
