.class Lcom/android/inputmethod/latin/LatinIME$3;
.super Ljava/lang/Object;
.source "LatinIME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/LatinIME;->showOptionsMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinIME;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$3;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    .line 2429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "di"
    .parameter "position"

    .prologue
    .line 2431
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2432
    packed-switch p2, :pswitch_data_18

    .line 2440
    :goto_6
    return-void

    .line 2434
    :pswitch_7
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$3;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$12(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->showInputMethodPicker()V

    goto :goto_6

    .line 2437
    :pswitch_11
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$3;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->launchSettings()V

    goto :goto_6

    .line 2432
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_7
        :pswitch_11
    .end packed-switch
.end method
