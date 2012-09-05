.class Lcom/swype/android/connect/settings/ConnectPrivacyActivity$1;
.super Ljava/lang/Object;
.source "ConnectPrivacyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/connect/settings/ConnectPrivacyActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/connect/settings/ConnectPrivacyActivity;


# direct methods
.method constructor <init>(Lcom/swype/android/connect/settings/ConnectPrivacyActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/swype/android/connect/settings/ConnectPrivacyActivity$1;->this$0:Lcom/swype/android/connect/settings/ConnectPrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 122
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 123
    return-void
.end method
