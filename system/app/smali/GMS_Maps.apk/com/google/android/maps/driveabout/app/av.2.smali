.class Lcom/google/android/maps/driveabout/app/aV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/aS;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/aS;)V
    .registers 2
    .parameter

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aV;->a:Lcom/google/android/maps/driveabout/app/aS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aV;->a:Lcom/google/android/maps/driveabout/app/aS;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/aS;->a:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->ac()V

    return-void
.end method
