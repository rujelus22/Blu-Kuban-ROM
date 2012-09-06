.class Lcom/google/android/maps/driveabout/app/aT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lm/b;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/aS;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/aS;Lm/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aT;->b:Lcom/google/android/maps/driveabout/app/aS;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/aT;->a:Lm/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aT;->b:Lcom/google/android/maps/driveabout/app/aS;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/aS;->a:Lcom/google/android/maps/driveabout/app/aN;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aT;->a:Lm/b;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aN;->a(Lm/b;)V

    return-void
.end method
