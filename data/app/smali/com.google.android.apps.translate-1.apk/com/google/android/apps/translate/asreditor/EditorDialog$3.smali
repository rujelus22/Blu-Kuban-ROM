.class Lcom/google/android/apps/translate/asreditor/EditorDialog$3;
.super Ljava/lang/Object;
.source "EditorDialog.java"

# interfaces
.implements Lcom/google/android/apps/translate/asreditor/RecordingPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/asreditor/EditorDialog;->changeRecognitionMode(I)V
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
    .line 298
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog$3;->this$0:Lcom/google/android/apps/translate/asreditor/EditorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/google/android/apps/translate/asreditor/RecordingPopup;)V
    .registers 3
    .parameter "popup"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/EditorDialog$3;->this$0:Lcom/google/android/apps/translate/asreditor/EditorDialog;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/EditorDialog;->stopRecognizing()V

    .line 302
    return-void
.end method
