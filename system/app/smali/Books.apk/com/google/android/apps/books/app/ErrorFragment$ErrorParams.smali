.class public Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;
.super Ljava/lang/Object;
.source "ErrorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ErrorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorParams"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessageText(Landroid/os/Bundle;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "bundle"

    .prologue
    .line 63
    const-string v0, "messageText"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getNegativeText(Landroid/os/Bundle;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "bundle"

    .prologue
    .line 71
    const-string v0, "negativeText"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getPositiveIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 2
    .parameter "bundle"

    .prologue
    .line 75
    const-string v0, "positiveIntent"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public static getPositiveText(Landroid/os/Bundle;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "bundle"

    .prologue
    .line 67
    const-string v0, "positiveText"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "bundle"
    .parameter "text"

    .prologue
    .line 47
    const-string v0, "messageText"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method public static setNegativeText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "bundle"
    .parameter "text"

    .prologue
    .line 55
    const-string v0, "negativeText"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method public static setPositiveIntent(Landroid/os/Bundle;Landroid/content/Intent;)V
    .registers 3
    .parameter "bundle"
    .parameter "intent"

    .prologue
    .line 59
    const-string v0, "positiveIntent"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 60
    return-void
.end method

.method public static setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "bundle"
    .parameter "text"

    .prologue
    .line 51
    const-string v0, "positiveText"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method
