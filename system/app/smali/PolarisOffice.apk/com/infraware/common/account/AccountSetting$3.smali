.class Lcom/infraware/common/account/AccountSetting$3;
.super Ljava/lang/Object;
.source "AccountSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/account/AccountSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/account/AccountSetting;


# direct methods
.method constructor <init>(Lcom/infraware/common/account/AccountSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/account/AccountSetting$3;->this$0:Lcom/infraware/common/account/AccountSetting;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 199
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 200
    iget-object v0, p0, Lcom/infraware/common/account/AccountSetting$3;->this$0:Lcom/infraware/common/account/AccountSetting;

    invoke-virtual {v0}, Lcom/infraware/common/account/AccountSetting;->finish()V

    .line 201
    return-void
.end method
