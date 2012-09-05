.class Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6$1;
.super Landroid/app/ProgressDialog;
.source "SnsAccountTwAuthenticatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6$1;->this$1:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 341
    const/16 v0, 0x54

    if-eq p1, v0, :cond_8

    const/16 v0, 0x52

    if-ne p1, v0, :cond_a

    .line 342
    :cond_8
    const/4 v0, 0x1

    .line 344
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/ProgressDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method
