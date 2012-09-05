.class Lcom/samsung/swift/security/SecurityPreferencesActivity$8;
.super Ljava/lang/Object;
.source "SecurityPreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/security/SecurityPreferencesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;


# direct methods
.method constructor <init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$8;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    .line 387
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .local v0, myIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$8;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->startActivity(Landroid/content/Intent;)V

    .line 389
    const/4 v1, 0x1

    return v1
.end method
