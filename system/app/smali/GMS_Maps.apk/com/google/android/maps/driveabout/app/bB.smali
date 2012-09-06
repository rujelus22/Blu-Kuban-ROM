.class Lcom/google/android/maps/driveabout/app/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lo/g;

.field final synthetic c:Lo/q;

.field final synthetic d:Lcom/google/android/maps/driveabout/app/aX;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/aX;ILo/g;Lo/q;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bb;->d:Lcom/google/android/maps/driveabout/app/aX;

    iput p2, p0, Lcom/google/android/maps/driveabout/app/bb;->a:I

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/bb;->b:Lo/g;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/bb;->c:Lo/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bb;->d:Lcom/google/android/maps/driveabout/app/aX;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/aX;->a:Lcom/google/android/maps/driveabout/app/aN;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/bb;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bb;->b:Lo/g;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/bb;->c:Lo/q;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/aN;->a(ILo/g;Lo/q;)V

    return-void
.end method
