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
    .line 1119
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$3;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "di"
    .parameter "position"

    .prologue
    .line 1122
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1123
    packed-switch p2, :pswitch_data_1c

    .line 1132
    :goto_6
    return-void

    .line 1125
    :pswitch_7
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$3;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->launchSettings()V

    goto :goto_6

    .line 1128
    :pswitch_d
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$3;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_6

    .line 1123
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method
