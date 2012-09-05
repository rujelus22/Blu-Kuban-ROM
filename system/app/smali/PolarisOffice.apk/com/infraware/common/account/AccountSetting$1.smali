.class Lcom/infraware/common/account/AccountSetting$1;
.super Ljava/lang/Object;
.source "AccountSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/account/AccountSetting;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/infraware/common/account/AccountSetting$1;->this$0:Lcom/infraware/common/account/AccountSetting;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/infraware/common/account/AccountSetting$1;->this$0:Lcom/infraware/common/account/AccountSetting;

    #calls: Lcom/infraware/common/account/AccountSetting;->AddAccountOpen()V
    invoke-static {v0}, Lcom/infraware/common/account/AccountSetting;->access$2(Lcom/infraware/common/account/AccountSetting;)V

    .line 82
    return-void
.end method
