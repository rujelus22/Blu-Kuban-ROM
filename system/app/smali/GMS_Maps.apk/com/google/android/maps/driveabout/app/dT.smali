.class Lcom/google/android/maps/driveabout/app/dT;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dO;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dO;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dT;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dT;->a:Lcom/google/android/maps/driveabout/app/dO;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dT;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dO;->c(Lcom/google/android/maps/driveabout/app/dO;)Lcom/google/android/maps/driveabout/app/cW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->i()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->b()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/app/dO;->a(ZZ)V

    return-void

    :cond_18
    move v0, v1

    goto :goto_14
.end method
