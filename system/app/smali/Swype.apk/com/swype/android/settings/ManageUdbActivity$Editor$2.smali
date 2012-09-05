.class Lcom/swype/android/settings/ManageUdbActivity$Editor$2;
.super Ljava/lang/Object;
.source "ManageUdbActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/settings/ManageUdbActivity$Editor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/settings/ManageUdbActivity$Editor;


# direct methods
.method constructor <init>(Lcom/swype/android/settings/ManageUdbActivity$Editor;)V
    .registers 2
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/swype/android/settings/ManageUdbActivity$Editor$2;->this$0:Lcom/swype/android/settings/ManageUdbActivity$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity$Editor$2;->this$0:Lcom/swype/android/settings/ManageUdbActivity$Editor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/swype/android/settings/ManageUdbActivity$Editor;->setResult(I)V

    .line 524
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity$Editor$2;->this$0:Lcom/swype/android/settings/ManageUdbActivity$Editor;

    invoke-virtual {v0}, Lcom/swype/android/settings/ManageUdbActivity$Editor;->finish()V

    .line 525
    return-void
.end method
