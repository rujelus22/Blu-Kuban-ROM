.class final Lcom/dropbox/android/activity/delegate/u;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/delegate/t;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/delegate/t;)V
    .registers 2
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/dropbox/android/activity/delegate/u;->a:Lcom/dropbox/android/activity/delegate/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .parameter

    .prologue
    .line 301
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {v0}, Lcom/dropbox/android/util/aa;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 305
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p1, v0, v2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 307
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
    .line 292
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    return-void
.end method
