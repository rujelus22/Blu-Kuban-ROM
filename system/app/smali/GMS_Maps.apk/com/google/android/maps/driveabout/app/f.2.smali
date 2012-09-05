.class Lcom/google/android/maps/driveabout/app/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/maps/driveabout/app/e;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/e;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/f;->b:Lcom/google/android/maps/driveabout/app/e;

    iput p2, p0, Lcom/google/android/maps/driveabout/app/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/f;->b:Lcom/google/android/maps/driveabout/app/e;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/e;->a:Lcom/google/android/maps/driveabout/app/a;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/f;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/a;->a(I)V

    return-void
.end method
