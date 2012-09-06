.class Lcom/google/android/maps/driveabout/app/bP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 735
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bP;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bP;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->a(Landroid/content/Context;Z)V

    .line 739
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bP;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->n()Z

    .line 740
    return-void
.end method
