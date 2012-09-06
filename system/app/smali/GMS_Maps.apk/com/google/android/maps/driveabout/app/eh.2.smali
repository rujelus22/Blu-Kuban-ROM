.class Lcom/google/android/maps/driveabout/app/eh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dD;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dD;)V
    .registers 2
    .parameter

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/eh;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eh;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->b(Lcom/google/android/maps/driveabout/app/dD;)Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 1043
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eh;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->b(Lcom/google/android/maps/driveabout/app/dD;)Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    .line 1044
    return-void
.end method
