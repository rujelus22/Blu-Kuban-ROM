.class Lcom/google/android/maps/driveabout/app/m;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/l;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/l;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/m;->a:Lcom/google/android/maps/driveabout/app/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/m;->a:Lcom/google/android/maps/driveabout/app/l;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/l;->a(Lcom/google/android/maps/driveabout/app/l;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.googlenav.suggest.android.SuggestContentProvider.INIT_SUGGEST_PROVIDER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/m;->a:Lcom/google/android/maps/driveabout/app/l;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/l;->a(Lcom/google/android/maps/driveabout/app/l;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/m;->a:Lcom/google/android/maps/driveabout/app/l;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/l;->b(Lcom/google/android/maps/driveabout/app/l;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 43
    return-void
.end method
