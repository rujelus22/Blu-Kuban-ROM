.class public Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
.super Landroid/widget/EditText;
.source "DioEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;
    }
.end annotation


# instance fields
.field mOnPrivateCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5
    .parameter "action"
    .parameter "data"

    .prologue
    .line 34
    const/4 v0, 0x1

    .line 35
    .local v0, result:Z
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->mOnPrivateCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->mOnPrivateCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;->onPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 37
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 39
    :cond_11
    return v0
.end method

.method public setPrivateCommandListener(Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->mOnPrivateCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

    .line 30
    return-void
.end method
