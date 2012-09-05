.class Lcom/swype/android/settings/SwypeSettings$4;
.super Ljava/lang/Object;
.source "SwypeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/settings/SwypeSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/settings/SwypeSettings;


# direct methods
.method constructor <init>(Lcom/swype/android/settings/SwypeSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/swype/android/settings/SwypeSettings$4;->this$0:Lcom/swype/android/settings/SwypeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 330
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.swype.android.connect.settings.ConnectPreferenceActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/swype/android/settings/SwypeSettings$4;->this$0:Lcom/swype/android/settings/SwypeSettings;

    invoke-virtual {v1, v0}, Lcom/swype/android/settings/SwypeSettings;->startActivity(Landroid/content/Intent;)V

    .line 332
    return-void
.end method
