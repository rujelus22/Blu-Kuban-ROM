.class Lcom/google/android/apps/plus/fragments/EditEventFragment$6;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/EditEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EditEventFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EditEventFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 1136
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1140
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1144
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditEventFragment;->mDescriptionView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->access$1000(Lcom/google/android/apps/plus/fragments/EditEventFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1145
    .local v0, desc:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->access$700(Lcom/google/android/apps/plus/fragments/EditEventFragment;)Lcom/google/api/services/plusi/model/PlusEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/google/api/services/plusi/model/PlusEvent;->description:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1146
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->access$700(Lcom/google/android/apps/plus/fragments/EditEventFragment;)Lcom/google/api/services/plusi/model/PlusEvent;

    move-result-object v1

    iput-object v0, v1, Lcom/google/api/services/plusi/model/PlusEvent;->description:Ljava/lang/String;

    .line 1147
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/apps/plus/fragments/EditEventFragment;->mChanged:Z
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->access$802(Lcom/google/android/apps/plus/fragments/EditEventFragment;Z)Z

    .line 1149
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditEventFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->access$900(Lcom/google/android/apps/plus/fragments/EditEventFragment;)Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 1150
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditEventFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->access$900(Lcom/google/android/apps/plus/fragments/EditEventFragment;)Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;->onEventChanged()V

    .line 1153
    :cond_3f
    return-void
.end method
