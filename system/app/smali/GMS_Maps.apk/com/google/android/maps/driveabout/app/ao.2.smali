.class Lcom/google/android/maps/driveabout/app/aO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/aN;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/aN;)V
    .registers 2
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aO;->a:Lcom/google/android/maps/driveabout/app/aN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aO;->a:Lcom/google/android/maps/driveabout/app/aN;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/aN;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->g()V

    .line 573
    return-void
.end method
