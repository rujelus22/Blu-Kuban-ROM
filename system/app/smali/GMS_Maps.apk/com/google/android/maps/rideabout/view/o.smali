.class Lcom/google/android/maps/rideabout/view/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/o;->a:Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/o;->a:Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;)Lcom/google/android/maps/rideabout/view/c;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/o;->a:Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;)Lcom/google/android/maps/rideabout/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/c;->c()V

    :cond_11
    return-void
.end method
