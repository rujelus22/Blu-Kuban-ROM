.class Lcom/google/android/maps/driveabout/app/cf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cf;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cf;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b(Lcom/google/android/maps/driveabout/app/NavigationActivity;Z)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cf;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->k(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    return-void
.end method
