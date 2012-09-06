.class Lcom/google/android/maps/driveabout/app/cx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/app/cJ;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cJ;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationView;Lcom/google/android/maps/driveabout/app/cJ;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cx;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cx;->a:Lcom/google/android/maps/driveabout/app/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cx;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 554
    return-void
.end method

.method public a(Lo/P;)V
    .registers 3
    .parameter

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cx;->a:Lcom/google/android/maps/driveabout/app/cJ;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/app/cJ;->a(Lo/P;)V

    .line 558
    return-void
.end method
