.class Lcom/google/android/maps/driveabout/app/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/cZ;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/RouteSelectorView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/da;->b:Lcom/google/android/maps/driveabout/app/cZ;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/da;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/da;->b:Lcom/google/android/maps/driveabout/app/cZ;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/cZ;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(Lcom/google/android/maps/driveabout/app/RouteSelectorView;)Lcom/google/android/maps/driveabout/app/cY;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/da;->b:Lcom/google/android/maps/driveabout/app/cZ;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/cZ;->a(Lcom/google/android/maps/driveabout/app/cZ;)Lo/x;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cY;->a(Lo/x;)V

    .line 60
    return-void
.end method
