.class Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog$1;
.super Ljava/lang/Object;
.source "HdcpCheckDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog;->dialogOkPopup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog$1;->this$0:Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog$1;->this$0:Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog;

    invoke-virtual {v0}, Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog;->finish()V

    .line 48
    return-void
.end method
