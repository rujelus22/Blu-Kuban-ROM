.class Lcom/google/android/maps/driveabout/app/dR;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dO;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dO;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dR;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dR;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dO;->c(Lcom/google/android/maps/driveabout/app/dO;)Lcom/google/android/maps/driveabout/app/cW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->b()Lu/I;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dR;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0}, Lu/I;->j()Lu/I;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/dO;->a(Lu/I;Z)V

    :cond_16
    return-void
.end method
