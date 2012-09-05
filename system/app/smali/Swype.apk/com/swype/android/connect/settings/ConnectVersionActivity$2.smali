.class Lcom/swype/android/connect/settings/ConnectVersionActivity$2;
.super Ljava/lang/Object;
.source "ConnectVersionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/connect/settings/ConnectVersionActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/connect/settings/ConnectVersionActivity;


# direct methods
.method constructor <init>(Lcom/swype/android/connect/settings/ConnectVersionActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/swype/android/connect/settings/ConnectVersionActivity$2;->this$0:Lcom/swype/android/connect/settings/ConnectVersionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 141
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 142
    return-void
.end method
