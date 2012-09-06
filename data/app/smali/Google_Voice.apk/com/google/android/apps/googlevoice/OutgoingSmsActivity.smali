.class public Lcom/google/android/apps/googlevoice/OutgoingSmsActivity;
.super Landroid/app/Activity;
.source "OutgoingSmsActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget-object v1, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/OutgoingSmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 23
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/OutgoingSmsActivity;->startActivity(Landroid/content/Intent;)V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/OutgoingSmsActivity;->finish()V

    .line 26
    return-void
.end method
