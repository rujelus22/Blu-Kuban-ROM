.class public Lcom/swype/android/settings/TipDialog$JavaScriptBridge;
.super Ljava/lang/Object;
.source "TipDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/settings/TipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JavaScriptBridge"
.end annotation


# instance fields
.field private final dialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/swype/android/settings/TipDialog$JavaScriptBridge;->dialogRef:Ljava/lang/ref/WeakReference;

    .line 170
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 173
    iget-object v1, p0, Lcom/swype/android/settings/TipDialog$JavaScriptBridge;->dialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 174
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_d

    .line 175
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 177
    :cond_d
    return-void
.end method

.method public doNotShow(Ljava/lang/String;)V
    .registers 4
    .parameter "tag"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/swype/android/settings/TipDialog$JavaScriptBridge;->dialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 197
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_14

    .line 198
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/swype/android/settings/TipDialog;->doNotShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 201
    :cond_14
    return-void
.end method

.method public showHelp()V
    .registers 3

    .prologue
    .line 180
    iget-object v1, p0, Lcom/swype/android/settings/TipDialog$JavaScriptBridge;->dialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 181
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_14

    .line 182
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/settings/TipDialog;->showHelp(Landroid/content/Context;)V

    .line 183
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 185
    :cond_14
    return-void
.end method

.method public showSettings()V
    .registers 3

    .prologue
    .line 188
    iget-object v1, p0, Lcom/swype/android/settings/TipDialog$JavaScriptBridge;->dialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 189
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_14

    .line 190
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/settings/TipDialog;->showSettings(Landroid/content/Context;)V

    .line 191
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 193
    :cond_14
    return-void
.end method
