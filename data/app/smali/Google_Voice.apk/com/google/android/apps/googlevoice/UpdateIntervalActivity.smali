.class public Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;
.super Landroid/app/Activity;
.source "UpdateIntervalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;
    }
.end annotation


# static fields
.field private static final ID_DIALOG_UPDATE_INTERVAL:I = 0x3e9


# instance fields
.field private dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private updateIntervalDialog:Landroid/app/AlertDialog;

.field private values:[Ljava/lang/String;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->onOptionClicked(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->values:[Ljava/lang/String;

    return-object v0
.end method

.method private onOptionClicked(I)V
    .registers 4
    .parameter "which"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->values:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setUpdateIntervalSeconds(I)V

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestUpdateServiceStart()V

    .line 110
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->setResult(I)V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->finish()V

    .line 112
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 81
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->updateIntervalDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_e

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->setResult(I)V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->finish()V

    .line 86
    :cond_e
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->updateIntervalDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_19

    .line 91
    packed-switch p2, :pswitch_data_26

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-static {}, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->values()[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V

    .line 99
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->setResult(I)V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->finish()V

    .line 104
    :cond_19
    :goto_19
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 105
    return-void

    .line 93
    :pswitch_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->setResult(I)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->finish()V

    goto :goto_19

    .line 91
    nop

    :pswitch_data_26
    .packed-switch -0x2
        :pswitch_1d
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget-object v0, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 40
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$array;->update_interval_preference_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->values:[Ljava/lang/String;

    .line 41
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 51
    packed-switch p1, :pswitch_data_42

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 53
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->updateIntervalDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_3f

    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->dialog_title_update_interval:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;-><init>(Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;)V

    new-instance v2, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$1;-><init>(Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->updateIntervalDialog:Landroid/app/AlertDialog;

    .line 68
    :cond_3f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->updateIntervalDialog:Landroid/app/AlertDialog;

    goto :goto_7

    .line 51
    :pswitch_data_42
    .packed-switch 0x3e9
        :pswitch_8
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 77
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 46
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->showDialog(I)V

    .line 47
    return-void
.end method
