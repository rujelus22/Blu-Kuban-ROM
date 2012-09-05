.class Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SipHandler"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 9667
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9665
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->mActivity:Landroid/app/Activity;

    .line 9668
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->mActivity:Landroid/app/Activity;

    .line 9669
    return-void
.end method


# virtual methods
.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .registers 3

    .prologue
    .line 9672
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public hideSip()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 9701
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    if-eqz v0, :cond_e

    .line 9702
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 9703
    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    .line 9705
    :cond_e
    return-void
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;I)V
    .registers 3
    .parameter "windowToken"
    .parameter "i"

    .prologue
    .line 9683
    return-void
.end method

.method public setSoftInputMode(I)V
    .registers 2
    .parameter "i"

    .prologue
    .line 9678
    return-void
.end method

.method public toggleSoftInput(II)V
    .registers 3
    .parameter "i"
    .parameter "j"

    .prologue
    .line 9693
    return-void
.end method

.method public toggleSoftInputFromWindow(Landroid/os/IBinder;II)V
    .registers 4
    .parameter "windowToken"
    .parameter "i"
    .parameter "j"

    .prologue
    .line 9698
    return-void
.end method

.method public windowDismissed(Landroid/os/IBinder;)V
    .registers 2
    .parameter "windowToken"

    .prologue
    .line 9688
    return-void
.end method
