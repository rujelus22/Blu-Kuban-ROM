.class Lcom/google/android/maps/driveabout/app/cd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/android/maps/driveabout/app/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cd;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iput-wide p2, p0, Lcom/google/android/maps/driveabout/app/cd;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/cd;->a:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(J)J

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cd;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    const-string v1, "Show Disclaimer"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cd;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/am;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/am;->l()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lz/r;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cd;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Z)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cd;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cd;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/content/Intent;)V

    return-void
.end method
