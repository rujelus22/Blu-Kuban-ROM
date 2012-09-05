.class Lcom/android/calendar/EditEvent$40;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->prepareRepeatCustomizeDialog(Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;

.field final synthetic val$mSet:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;Landroid/widget/Button;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1665
    iput-object p1, p0, Lcom/android/calendar/EditEvent$40;->this$0:Lcom/android/calendar/EditEvent;

    iput-object p2, p0, Lcom/android/calendar/EditEvent$40;->val$mSet:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter "edit"

    .prologue
    const/16 v1, 0x3e7

    .line 1667
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_25

    .line 1670
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_1e

    .line 1671
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 1672
    const/16 v0, 0x3e7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_2c

    .line 1676
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/android/calendar/EditEvent$40;->val$mSet:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1680
    :goto_24
    return-void

    .line 1678
    :cond_25
    iget-object v0, p0, Lcom/android/calendar/EditEvent$40;->val$mSet:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_24

    .line 1674
    :catch_2c
    move-exception v0

    goto :goto_1e
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 1683
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 1686
    return-void
.end method
