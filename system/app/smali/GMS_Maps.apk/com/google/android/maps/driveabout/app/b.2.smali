.class Lcom/google/android/maps/driveabout/app/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/A;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/A;)V
    .registers 2
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/B;->a:Lcom/google/android/maps/driveabout/app/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/B;->a:Lcom/google/android/maps/driveabout/app/A;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/A;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    .line 247
    return-void
.end method
