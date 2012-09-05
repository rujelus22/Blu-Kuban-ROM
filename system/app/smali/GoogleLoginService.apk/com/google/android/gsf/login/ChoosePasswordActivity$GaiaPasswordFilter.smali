.class Lcom/google/android/gsf/login/ChoosePasswordActivity$GaiaPasswordFilter;
.super Landroid/text/LoginFilter$PasswordFilterGMail;
.source "ChoosePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/ChoosePasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GaiaPasswordFilter"
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .registers 2
    .parameter "append"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Landroid/text/LoginFilter$PasswordFilterGMail;-><init>(Z)V

    .line 194
    return-void
.end method


# virtual methods
.method public isAllowed(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 199
    const/16 v0, 0x20

    if-le p1, v0, :cond_a

    const/16 v0, 0x7f

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    .line 200
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
