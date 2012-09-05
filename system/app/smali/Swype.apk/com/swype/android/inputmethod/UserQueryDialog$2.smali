.class Lcom/swype/android/inputmethod/UserQueryDialog$2;
.super Ljava/lang/Object;
.source "UserQueryDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/inputmethod/UserQueryDialog;->doCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/inputmethod/UserQueryDialog;

.field final synthetic val$core:Lcom/swype/android/jni/SwypeCore;


# direct methods
.method constructor <init>(Lcom/swype/android/inputmethod/UserQueryDialog;Lcom/swype/android/jni/SwypeCore;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/swype/android/inputmethod/UserQueryDialog$2;->this$0:Lcom/swype/android/inputmethod/UserQueryDialog;

    iput-object p2, p0, Lcom/swype/android/inputmethod/UserQueryDialog$2;->val$core:Lcom/swype/android/jni/SwypeCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/swype/android/inputmethod/UserQueryDialog$2;->val$core:Lcom/swype/android/jni/SwypeCore;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/swype/android/inputmethod/UserQueryDialog$2;->this$0:Lcom/swype/android/inputmethod/UserQueryDialog;

    #getter for: Lcom/swype/android/inputmethod/UserQueryDialog;->responseToken:I
    invoke-static {v2}, Lcom/swype/android/inputmethod/UserQueryDialog;->access$000(Lcom/swype/android/inputmethod/UserQueryDialog;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/jni/SwypeCore;->onUserQueryResult(ZI)V

    .line 53
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 54
    return-void
.end method
