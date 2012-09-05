.class Lcom/sec/android/app/dlna/ui/DLNASettings$2;
.super Ljava/lang/Object;
.source "DLNASettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/DLNASettings;->saveSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V
    .registers 2
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$2;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 396
    const-string v0, "device_name"

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$2;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mKeyName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$2;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mDeviceName:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$300(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$2;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mOriginalServerName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$400(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 406
    :cond_1f
    :goto_1f
    return-void

    .line 399
    :cond_20
    const-string v0, "sharing_video"

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$2;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mKeyName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$2;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mSharingVideo:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$600(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$2;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mNewValue:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$100(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_92

    move v0, v1

    :goto_43
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 401
    :cond_46
    const-string v0, "sharing_picture"

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$2;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mKeyName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$2;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mSharingPicture:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$700(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$2;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mNewValue:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$100(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_94

    move v0, v1

    :goto_69
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 403
    :cond_6c
    const-string v0, "sharing_audio"

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$2;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mKeyName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$2;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mSharingAudio:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$800(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$2;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mNewValue:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$100(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_96

    :goto_8e
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1f

    :cond_92
    move v0, v2

    .line 400
    goto :goto_43

    :cond_94
    move v0, v2

    .line 402
    goto :goto_69

    :cond_96
    move v1, v2

    .line 404
    goto :goto_8e
.end method
