.class Lcom/google/android/maps/driveabout/app/bZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bY;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bY;)V
    .registers 2
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bZ;->a:Lcom/google/android/maps/driveabout/app/bY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bZ;->a:Lcom/google/android/maps/driveabout/app/bY;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/bY;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    .line 477
    return-void
.end method
