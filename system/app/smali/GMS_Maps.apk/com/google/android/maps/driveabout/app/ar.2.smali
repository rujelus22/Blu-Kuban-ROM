.class Lcom/google/android/maps/driveabout/app/aR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/maps/driveabout/app/aQ;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/aQ;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aR;->b:Lcom/google/android/maps/driveabout/app/aQ;

    iput p2, p0, Lcom/google/android/maps/driveabout/app/aR;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aR;->b:Lcom/google/android/maps/driveabout/app/aQ;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/aQ;->a:Lcom/google/android/maps/driveabout/app/aN;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aR;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aN;->c(I)V

    return-void
.end method
