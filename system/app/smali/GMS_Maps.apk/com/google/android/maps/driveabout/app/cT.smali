.class Lcom/google/android/maps/driveabout/app/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/power/e;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationService;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .registers 2
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ct;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ct;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->g(Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->c()Z

    move-result v0

    return v0
.end method
