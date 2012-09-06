.class Lcom/android/inputmethod/latin/CustomDitctionaryEditor$1;
.super Ljava/lang/Object;
.source "CustomDitctionaryEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->add()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/CustomDitctionaryEditor;

.field private final synthetic val$wrapper:Lcom/android/inputmethod/latin/CustomDialogWrapper;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Lcom/android/inputmethod/latin/CustomDialogWrapper;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$1;->this$0:Lcom/android/inputmethod/latin/CustomDitctionaryEditor;

    iput-object p2, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$1;->val$wrapper:Lcom/android/inputmethod/latin/CustomDialogWrapper;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$1;->this$0:Lcom/android/inputmethod/latin/CustomDitctionaryEditor;

    iget-object v1, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$1;->val$wrapper:Lcom/android/inputmethod/latin/CustomDialogWrapper;

    #calls: Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->processAdd(Lcom/android/inputmethod/latin/CustomDialogWrapper;)V
    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->access$0(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Lcom/android/inputmethod/latin/CustomDialogWrapper;)V

    .line 150
    return-void
.end method
