.class Lcom/google/android/apps/translate/asreditor/EditorDialog$1;
.super Ljava/lang/Object;
.source "EditorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/asreditor/EditorDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/asreditor/EditorDialog;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/asreditor/EditorDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog$1;->this$0:Lcom/google/android/apps/translate/asreditor/EditorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog$1;->this$0:Lcom/google/android/apps/translate/asreditor/EditorDialog;

    #getter for: Lcom/google/android/apps/translate/asreditor/EditorDialog;->mListener:Lcom/google/android/apps/translate/asreditor/EditorDialog$Listener;
    invoke-static {v0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->access$100(Lcom/google/android/apps/translate/asreditor/EditorDialog;)Lcom/google/android/apps/translate/asreditor/EditorDialog$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog$1;->this$0:Lcom/google/android/apps/translate/asreditor/EditorDialog;

    #getter for: Lcom/google/android/apps/translate/asreditor/EditorDialog;->mEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;
    invoke-static {v1}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->access$000(Lcom/google/android/apps/translate/asreditor/EditorDialog;)Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->getEditorFieldValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/translate/asreditor/EditorDialog$Listener;->onGo(Ljava/lang/String;)V

    .line 113
    return-void
.end method
