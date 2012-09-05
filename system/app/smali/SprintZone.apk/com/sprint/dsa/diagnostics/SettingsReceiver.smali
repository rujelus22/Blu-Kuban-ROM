.class public Lcom/sprint/dsa/diagnostics/SettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsReceiver.java"


# instance fields
.field private mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;


# direct methods
.method public constructor <init>(Lcom/sprint/dsa/diagnostics/Diagnostics;)V
    .registers 2
    .parameter "diagnostics"

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/SettingsReceiver;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    .line 16
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 23
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/SettingsReceiver;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-virtual {v2}, Lcom/sprint/dsa/diagnostics/Diagnostics;->getCount()I

    move-result v0

    .line 24
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-lt v1, v0, :cond_a

    .line 27
    return-void

    .line 25
    :cond_a
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/SettingsReceiver;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-virtual {v2, v1}, Lcom/sprint/dsa/diagnostics/Diagnostics;->getDiagnostic(I)Lcom/sprint/dsa/diagnostics/Diagnostic;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;->updateState(Landroid/content/Intent;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method
