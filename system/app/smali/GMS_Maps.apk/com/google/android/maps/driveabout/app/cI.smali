.class public Lcom/google/android/maps/driveabout/app/cI;
.super Landroid/os/Binder;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationService;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cI;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/android/maps/driveabout/app/NavigationService;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cI;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    return-object v0
.end method
