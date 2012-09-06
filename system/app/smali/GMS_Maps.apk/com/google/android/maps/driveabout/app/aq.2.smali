.class Lcom/google/android/maps/driveabout/app/aQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/t;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/aN;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/aN;)V
    .registers 2
    .parameter

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aQ;->a:Lcom/google/android/maps/driveabout/app/aN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/aN;Lcom/google/android/maps/driveabout/app/aO;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1195
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/aQ;-><init>(Lcom/google/android/maps/driveabout/app/aN;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aQ;->a:Lcom/google/android/maps/driveabout/app/aN;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aR;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/aR;-><init>(Lcom/google/android/maps/driveabout/app/aQ;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/Runnable;)V

    .line 1202
    return-void
.end method
