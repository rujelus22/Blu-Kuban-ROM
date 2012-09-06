.class Lcom/google/android/maps/o;
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
    .line 2119
    iput-object p1, p0, Lcom/google/android/maps/o;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 2122
    const/16 v0, 0xc

    return v0
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2131
    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    .line 2132
    iget-object v0, p0, Lcom/google/android/maps/o;->a:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->finish()V

    .line 2134
    :cond_8
    return-void
.end method
