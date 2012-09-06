.class Lcom/google/android/maps/driveabout/app/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/z;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/z;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->finish()V

    .line 235
    return-void
.end method
