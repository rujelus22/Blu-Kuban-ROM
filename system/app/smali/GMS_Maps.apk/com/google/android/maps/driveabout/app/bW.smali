.class Lcom/google/android/maps/driveabout/app/bW;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bV;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bV;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bW;->a:Lcom/google/android/maps/driveabout/app/bV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bW;->a:Lcom/google/android/maps/driveabout/app/bV;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/bV;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    return-void
.end method
