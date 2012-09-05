.class Lcom/google/android/finsky/activities/PinEntryDialog$1;
.super Ljava/lang/Object;
.source "PinEntryDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/PinEntryDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PinEntryDialog;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PinEntryDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/finsky/activities/PinEntryDialog$1;->this$0:Lcom/google/android/finsky/activities/PinEntryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 134
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 138
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/activities/PinEntryDialog$1;->this$0:Lcom/google/android/finsky/activities/PinEntryDialog;

    #calls: Lcom/google/android/finsky/activities/PinEntryDialog;->syncOkButtonState()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/PinEntryDialog;->access$000(Lcom/google/android/finsky/activities/PinEntryDialog;)V

    .line 130
    return-void
.end method
