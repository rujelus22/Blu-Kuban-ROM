.class final Lcom/google/android/youtube/app/ui/eo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/google/android/youtube/app/ui/el;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/el;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/eo;->b:Lcom/google/android/youtube/app/ui/el;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/eo;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eo;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eo;->b:Lcom/google/android/youtube/app/ui/el;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/el;->a(Lcom/google/android/youtube/app/ui/el;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 161
    if-eqz v0, :cond_1b

    .line 162
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/eo;->a:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 164
    :cond_1b
    return-void
.end method
