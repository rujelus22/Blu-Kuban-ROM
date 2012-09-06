.class Lcom/android/inputmethod/latin/CustomDitctionaryEditor$3;
.super Ljava/lang/Object;
.source "CustomDitctionaryEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->edit(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/CustomDitctionaryEditor;

.field private final synthetic val$rowId:J

.field private final synthetic val$wrapper:Lcom/android/inputmethod/latin/CustomDialogWrapper;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Lcom/android/inputmethod/latin/CustomDialogWrapper;J)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$3;->this$0:Lcom/android/inputmethod/latin/CustomDitctionaryEditor;

    iput-object p2, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$3;->val$wrapper:Lcom/android/inputmethod/latin/CustomDialogWrapper;

    iput-wide p3, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$3;->val$rowId:J

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$3;->this$0:Lcom/android/inputmethod/latin/CustomDitctionaryEditor;

    iget-object v1, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$3;->val$wrapper:Lcom/android/inputmethod/latin/CustomDialogWrapper;

    iget-wide v2, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$3;->val$rowId:J

    #calls: Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->processEdit(Lcom/android/inputmethod/latin/CustomDialogWrapper;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->access$1(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Lcom/android/inputmethod/latin/CustomDialogWrapper;J)V

    .line 175
    return-void
.end method
