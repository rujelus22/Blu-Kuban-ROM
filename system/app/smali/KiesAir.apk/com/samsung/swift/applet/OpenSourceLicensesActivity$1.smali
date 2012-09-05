.class Lcom/samsung/swift/applet/OpenSourceLicensesActivity$1;
.super Ljava/lang/Object;
.source "OpenSourceLicensesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/applet/OpenSourceLicensesActivity;


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/OpenSourceLicensesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity$1;->this$0:Lcom/samsung/swift/applet/OpenSourceLicensesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dlgi"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity$1;->this$0:Lcom/samsung/swift/applet/OpenSourceLicensesActivity;

    invoke-virtual {v0}, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->finish()V

    .line 48
    return-void
.end method
