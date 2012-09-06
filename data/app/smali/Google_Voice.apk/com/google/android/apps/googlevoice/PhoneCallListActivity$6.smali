.class Lcom/google/android/apps/googlevoice/PhoneCallListActivity$6;
.super Ljava/lang/Object;
.source "PhoneCallListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 478
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$6;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$6;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updateSendButton()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$900(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    .line 482
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 484
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 486
    return-void
.end method
