.class public Lcom/google/android/apps/googlevoice/CallRoutingActivity;
.super Landroid/app/Activity;
.source "CallRoutingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final ID_DIALOG_CALL_ROUTING:I = 0x3e9


# instance fields
.field private callRoutingDialog:Landroid/app/AlertDialog;

.field private serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/CallRoutingActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->onOptionClicked(I)V

    return-void
.end method

.method private onOptionClicked(I)V
    .registers 5
    .parameter "which"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getModes(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V

    .line 106
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->setResult(I)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->finish()V

    .line 108
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->callRoutingDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_e

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->setResult(I)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->finish()V

    .line 83
    :cond_e
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->callRoutingDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_19

    .line 88
    packed-switch p2, :pswitch_data_26

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-static {}, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->values()[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V

    .line 96
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->setResult(I)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->finish()V

    .line 101
    :cond_19
    :goto_19
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 102
    return-void

    .line 90
    :pswitch_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->setResult(I)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->finish()V

    goto :goto_19

    .line 88
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
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget-object v1, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 33
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    .line 34
    .local v0, dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 35
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServerSettings()Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    .line 36
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 46
    packed-switch p1, :pswitch_data_46

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_7
    return-object v1

    .line 48
    :pswitch_8
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->callRoutingDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_43

    .line 49
    new-instance v0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/googlevoice/CallingModesAdapter;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 51
    .local v0, callingModesAdapter:Lcom/google/android/apps/googlevoice/CallingModesAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->dialog_title_call_routing:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/googlevoice/CallRoutingActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/CallRoutingActivity$1;-><init>(Lcom/google/android/apps/googlevoice/CallRoutingActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->callRoutingDialog:Landroid/app/AlertDialog;

    .line 65
    .end local v0           #callingModesAdapter:Lcom/google/android/apps/googlevoice/CallingModesAdapter;
    :cond_43
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->callRoutingDialog:Landroid/app/AlertDialog;

    goto :goto_7

    .line 46
    :pswitch_data_46
    .packed-switch 0x3e9
        :pswitch_8
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 74
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 41
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->showDialog(I)V

    .line 42
    return-void
.end method
