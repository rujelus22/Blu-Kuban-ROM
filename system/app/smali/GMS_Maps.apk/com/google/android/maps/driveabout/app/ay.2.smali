.class Lcom/google/android/maps/driveabout/app/aY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lo/j;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/maps/driveabout/app/aX;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/aX;Lo/j;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aY;->c:Lcom/google/android/maps/driveabout/app/aX;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/aY;->a:Lo/j;

    iput p3, p0, Lcom/google/android/maps/driveabout/app/aY;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->c:Lcom/google/android/maps/driveabout/app/aX;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/aX;->a:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->I()Ls/q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->a:Lo/j;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aY;->b:I

    invoke-virtual {v0, v1, v2}, Ls/q;->a(Lo/j;I)V

    .line 1108
    return-void
.end method
