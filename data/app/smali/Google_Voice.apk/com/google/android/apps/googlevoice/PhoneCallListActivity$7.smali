.class Lcom/google/android/apps/googlevoice/PhoneCallListActivity$7;
.super Ljava/lang/Object;
.source "PhoneCallListActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$7;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 491
    const/16 v0, 0x42

    if-ne p2, v0, :cond_25

    .line 492
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$7;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sendButton:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 493
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$7;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sendButton:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 496
    :cond_25
    const/4 v0, 0x0

    return v0
.end method
