.class Lcom/google/android/maps/driveabout/app/dm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/dl;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dl;Lcom/google/android/maps/driveabout/app/RouteSelectorView;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dm;->b:Lcom/google/android/maps/driveabout/app/dl;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/dm;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dm;->b:Lcom/google/android/maps/driveabout/app/dl;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/dl;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(Lcom/google/android/maps/driveabout/app/RouteSelectorView;)Lcom/google/android/maps/driveabout/app/dk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dm;->b:Lcom/google/android/maps/driveabout/app/dl;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dl;->a(Lcom/google/android/maps/driveabout/app/dl;)Lu/x;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/dk;->a(Lu/x;)V

    return-void
.end method
