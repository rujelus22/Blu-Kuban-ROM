.class public interface abstract Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager;
.super Ljava/lang/Object;
.source "AddAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;
    }
.end annotation


# static fields
.field public static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field public static final KEY_ERROR:Ljava/lang/String; = "error"

.field public static final KEY_EXCEPTION:Ljava/lang/String; = "exception"

.field public static final KEY_SUCCESSFUL:Ljava/lang/String; = "successful"


# virtual methods
.method public abstract addAccount(Landroid/app/Activity;Landroid/os/Message;)V
.end method

.method public abstract isAddAccountAvailable()Z
.end method
