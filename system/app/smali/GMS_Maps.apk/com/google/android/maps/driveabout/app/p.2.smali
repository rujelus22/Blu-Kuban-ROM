.class Lcom/google/android/maps/driveabout/app/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/O;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/O;)V
    .registers 2
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/P;->a:Lcom/google/android/maps/driveabout/app/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/P;->a:Lcom/google/android/maps/driveabout/app/O;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    .line 311
    return-void
.end method
