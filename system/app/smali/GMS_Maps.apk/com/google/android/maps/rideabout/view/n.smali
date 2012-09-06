.class Lcom/google/android/maps/rideabout/view/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;)V
    .registers 2
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/n;->a:Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/n;->a:Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;)Lcom/google/android/maps/rideabout/view/c;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 195
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/n;->a:Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;)Lcom/google/android/maps/rideabout/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/c;->d()V

    .line 197
    :cond_11
    return-void
.end method
