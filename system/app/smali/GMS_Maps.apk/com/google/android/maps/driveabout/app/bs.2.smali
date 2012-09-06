.class Lcom/google/android/maps/driveabout/app/bS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/android/maps/driveabout/app/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bS;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iput-wide p2, p0, Lcom/google/android/maps/driveabout/app/bS;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/bS;->a:J

    sub-long/2addr v0, v2

    .line 284
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(J)J

    .line 286
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bS;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    const-string v1, "Show Disclaimer"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bS;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/al;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/al;->m()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 288
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bS;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Z)Z

    .line 291
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bS;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    .line 292
    return-void
.end method
