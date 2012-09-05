.class public Lcom/google/android/apps/books/app/ExitSearchDialogFragment$Arguments;
.super Ljava/lang/Object;
.source "ExitSearchDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ExitSearchDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arguments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/ExitSearchDialogFragment$Arguments$Keys;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static create(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .parameter "pageTitle"

    .prologue
    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "pageTitle"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-object v0
.end method

.method static getPageTitle(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2
    .parameter "bundle"

    .prologue
    .line 33
    const-string v0, "pageTitle"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
