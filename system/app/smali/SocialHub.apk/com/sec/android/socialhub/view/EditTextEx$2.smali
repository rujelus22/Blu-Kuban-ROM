.class Lcom/sec/android/socialhub/view/EditTextEx$2;
.super Ljava/lang/Object;
.source "EditTextEx.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/EditTextEx;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/EditTextEx;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/EditTextEx;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sec/android/socialhub/view/EditTextEx$2;->this$0:Lcom/sec/android/socialhub/view/EditTextEx;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 183
    packed-switch p2, :pswitch_data_12

    .line 189
    :goto_4
    return v2

    .line 186
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/socialhub/view/EditTextEx$2;->this$0:Lcom/sec/android/socialhub/view/EditTextEx;

    iget-object v0, v0, Lcom/sec/android/socialhub/view/EditTextEx;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_4

    .line 183
    nop

    :pswitch_data_12
    .packed-switch 0x6
        :pswitch_5
    .end packed-switch
.end method
