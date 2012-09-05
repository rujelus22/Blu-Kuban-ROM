.class Lcom/google/android/gsf/login/ChoosePasswordActivity$2;
.super Ljava/lang/Object;
.source "ChoosePasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/ChoosePasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/ChoosePasswordActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$2;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$2;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    #calls: Lcom/google/android/gsf/login/ChoosePasswordActivity;->ratePassword()V
    invoke-static {v0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$600(Lcom/google/android/gsf/login/ChoosePasswordActivity;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 96
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 98
    return-void
.end method
