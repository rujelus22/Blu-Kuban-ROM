.class Lcom/google/android/maps/driveabout/app/dl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/StepDescriptionView;)V
    .registers 2
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dl;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Z)V

    .line 601
    return-void
.end method
