.class Lcom/google/android/maps/driveabout/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dD;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/a;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/a;Lcom/google/android/maps/driveabout/app/dD;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/b;->b:Lcom/google/android/maps/driveabout/app/a;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/b;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/b;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->w()V

    .line 429
    return-void
.end method
