.class Lcom/google/android/maps/w;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 825
    iput-object p1, p0, Lcom/google/android/maps/w;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/x;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/google/android/maps/w;->a:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->processIntentAndStartSession()I

    .line 834
    return-void
.end method
