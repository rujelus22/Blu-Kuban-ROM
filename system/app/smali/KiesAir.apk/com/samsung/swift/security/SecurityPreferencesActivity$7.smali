.class Lcom/samsung/swift/security/SecurityPreferencesActivity$7;
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
    .line 352
    iput-object p1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$7;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter "preference"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$7;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    #calls: Lcom/samsung/swift/security/SecurityPreferencesActivity;->resetSettings()V
    invoke-static {v0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->access$700(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V

    .line 357
    const/4 v0, 0x1

    return v0
.end method
