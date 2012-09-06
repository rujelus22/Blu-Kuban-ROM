.class Lcom/google/android/maps/driveabout/app/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lo/q;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/aX;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/aX;Lo/q;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ba;->b:Lcom/google/android/maps/driveabout/app/aX;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ba;->a:Lo/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ba;->b:Lcom/google/android/maps/driveabout/app/aX;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/aX;->a:Lcom/google/android/maps/driveabout/app/aN;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ba;->a:Lo/q;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aN;->a(Lo/q;)V

    return-void
.end method
