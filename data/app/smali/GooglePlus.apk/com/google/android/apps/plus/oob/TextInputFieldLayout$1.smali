.class Lcom/google/android/apps/plus/oob/TextInputFieldLayout$1;
.super Ljava/lang/Object;
.source "TextInputFieldLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/oob/TextInputFieldLayout;->bindToField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/oob/TextInputFieldLayout;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/oob/TextInputFieldLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/apps/plus/oob/TextInputFieldLayout$1;->this$0:Lcom/google/android/apps/plus/oob/TextInputFieldLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 94
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 87
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/TextInputFieldLayout$1;->this$0:Lcom/google/android/apps/plus/oob/TextInputFieldLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/oob/TextInputFieldLayout;->mActionCallback:Lcom/google/android/apps/plus/oob/ActionCallback;

    iget-object v1, p0, Lcom/google/android/apps/plus/oob/TextInputFieldLayout$1;->this$0:Lcom/google/android/apps/plus/oob/TextInputFieldLayout;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/oob/ActionCallback;->onInputChanged(Lcom/google/android/apps/plus/oob/BaseFieldLayout;)V

    .line 80
    return-void
.end method
