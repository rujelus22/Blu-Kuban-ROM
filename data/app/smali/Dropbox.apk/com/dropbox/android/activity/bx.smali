.class final Lcom/dropbox/android/activity/bx;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/bw;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/bw;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/dropbox/android/activity/bx;->a:Lcom/dropbox/android/activity/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .parameter

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/dropbox/android/util/aa;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 143
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p1, v0, v2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 145
    :cond_16
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    return-void
.end method
