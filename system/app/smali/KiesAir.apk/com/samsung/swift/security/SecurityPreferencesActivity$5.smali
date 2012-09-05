.class Lcom/samsung/swift/security/SecurityPreferencesActivity$5;
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

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$5;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    iput-object p2, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$5;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preference"

    .prologue
    .line 307
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "devicenamepref"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$5;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$5;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 310
    const/4 v1, 0x1

    return v1
.end method
