.class Lcom/google/android/maps/driveabout/widgets/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;)V
    .registers 2
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/maps/driveabout/widgets/c;->a:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/maps/driveabout/widgets/c;->a:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a(Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;)V

    .line 66
    return-void
.end method
