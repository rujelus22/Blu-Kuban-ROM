.class public Lcom/google/android/maps/rideabout/app/i;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/rideabout/app/NavigationService;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/rideabout/app/NavigationService;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/i;->a:Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/maps/rideabout/app/NavigationService;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/i;->a:Lcom/google/android/maps/rideabout/app/NavigationService;

    return-object v0
.end method
