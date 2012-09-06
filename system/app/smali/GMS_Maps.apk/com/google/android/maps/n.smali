.class Lcom/google/android/maps/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/R;


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2097
    iput-object p1, p0, Lcom/google/android/maps/n;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 2100
    const/16 v0, 0x8

    return v0
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2109
    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    .line 2110
    iget-object v0, p0, Lcom/google/android/maps/n;->a:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->finish()V

    .line 2112
    :cond_8
    return-void
.end method
