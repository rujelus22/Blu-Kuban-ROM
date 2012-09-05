.class Lcom/swype/android/connect/settings/MessagesActivity$3;
.super Ljava/lang/Object;
.source "MessagesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/connect/settings/MessagesActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/connect/settings/MessagesActivity;


# direct methods
.method constructor <init>(Lcom/swype/android/connect/settings/MessagesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/swype/android/connect/settings/MessagesActivity$3;->this$0:Lcom/swype/android/connect/settings/MessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 183
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 184
    return-void
.end method
