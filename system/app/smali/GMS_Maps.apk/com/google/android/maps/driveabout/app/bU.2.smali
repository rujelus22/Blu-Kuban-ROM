.class Lcom/google/android/maps/driveabout/app/bU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/app/bK;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/LoadingView;)Lcom/google/android/maps/driveabout/app/LoadingView;

    .line 334
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    .line 335
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/content/Intent;)V

    .line 341
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->k(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    .line 342
    return-void
.end method
