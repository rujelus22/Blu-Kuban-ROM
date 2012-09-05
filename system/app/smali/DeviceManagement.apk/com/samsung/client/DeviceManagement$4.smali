.class Lcom/samsung/client/DeviceManagement$4;
.super Ljava/lang/Object;
.source "DeviceManagement.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/client/DeviceManagement;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/DeviceManagement;


# direct methods
.method constructor <init>(Lcom/samsung/client/DeviceManagement;)V
    .registers 2
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/samsung/client/DeviceManagement$4;->this$0:Lcom/samsung/client/DeviceManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SECRET_CODE"

    const-string v2, "android_sercet_code://2432546"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 232
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.google.android.gsf"

    const-string v2, "com.google.android.gsf.update.SystemUpdateActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/samsung/client/DeviceManagement$4;->this$0:Lcom/samsung/client/DeviceManagement;

    invoke-virtual {v1, v0}, Lcom/samsung/client/DeviceManagement;->startActivity(Landroid/content/Intent;)V

    .line 236
    const/4 v1, 0x1

    return v1
.end method
