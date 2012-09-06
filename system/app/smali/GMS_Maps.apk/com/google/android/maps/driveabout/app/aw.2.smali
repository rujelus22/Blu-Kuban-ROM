.class Lcom/google/android/maps/driveabout/app/aW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lm/D;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/aS;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/aS;Lm/D;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aW;->b:Lcom/google/android/maps/driveabout/app/aS;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/aW;->a:Lm/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aW;->b:Lcom/google/android/maps/driveabout/app/aS;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/aS;->a:Lcom/google/android/maps/driveabout/app/aN;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aW;->a:Lm/D;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aN;->a(Lm/D;)V

    return-void
.end method
