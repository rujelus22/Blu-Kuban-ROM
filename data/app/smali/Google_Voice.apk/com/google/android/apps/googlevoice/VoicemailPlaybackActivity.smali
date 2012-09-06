.class public Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;
.super Landroid/app/Activity;
.source "VoicemailPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;
    }
.end annotation


# static fields
.field private static final ID_DIALOG:I = 0x3e9

.field private static final POSITION_PLAYBACK_SPEAKER:I


# instance fields
.field private adapter:Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;

.field private dialog:Landroid/app/Dialog;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 96
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    return-object v0
.end method


# virtual methods
.method protected done()V
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->finish()V

    .line 50
    return-void
.end method

.method protected getDialog()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget-object v0, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 38
    new-instance v0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;-><init>(Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->adapter:Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;

    .line 39
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 54
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_40

    .line 55
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->dialog:Landroid/app/Dialog;

    if-nez v1, :cond_3d

    .line 56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_playback_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->adapter:Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;

    new-instance v3, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$3;

    invoke-direct {v3, p0}, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$3;-><init>(Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$2;-><init>(Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$1;-><init>(Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->dialog:Landroid/app/Dialog;

    .line 81
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_3d
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->dialog:Landroid/app/Dialog;

    .line 83
    :goto_3f
    return-object v1

    :cond_40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_3f
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "theDialog"

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 90
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 44
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->showDialog(I)V

    .line 45
    return-void
.end method
