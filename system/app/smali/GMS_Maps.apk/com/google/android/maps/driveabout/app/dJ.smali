.class Lcom/google/android/maps/driveabout/app/dJ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dH;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dH;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dJ;->a:Lcom/google/android/maps/driveabout/app/dH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dJ;->a:Lcom/google/android/maps/driveabout/app/dH;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dH;->a(Lcom/google/android/maps/driveabout/app/dH;I)I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dJ;->a:Lcom/google/android/maps/driveabout/app/dH;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dH;->a(Lcom/google/android/maps/driveabout/app/dH;)Lcom/google/android/maps/driveabout/app/dL;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dJ;->a:Lcom/google/android/maps/driveabout/app/dH;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dH;->a(Lcom/google/android/maps/driveabout/app/dH;)Lcom/google/android/maps/driveabout/app/dL;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/dL;->c()V

    :cond_17
    return-void
.end method
