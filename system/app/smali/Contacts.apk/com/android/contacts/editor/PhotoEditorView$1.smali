.class Lcom/android/contacts/editor/PhotoEditorView$1;
.super Ljava/lang/Object;
.source "PhotoEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PhotoEditorView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/PhotoEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/PhotoEditorView;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView$1;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView$1;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    #getter for: Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;
    invoke-static {v0}, Lcom/android/contacts/editor/PhotoEditorView;->access$000(Lcom/android/contacts/editor/PhotoEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 85
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView$1;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    #getter for: Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;
    invoke-static {v0}, Lcom/android/contacts/editor/PhotoEditorView;->access$000(Lcom/android/contacts/editor/PhotoEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    .line 87
    :cond_12
    return-void
.end method
