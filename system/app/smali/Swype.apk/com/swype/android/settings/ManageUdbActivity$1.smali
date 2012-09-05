.class Lcom/swype/android/settings/ManageUdbActivity$1;
.super Ljava/lang/Object;
.source "ManageUdbActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/settings/ManageUdbActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/settings/ManageUdbActivity;


# direct methods
.method constructor <init>(Lcom/swype/android/settings/ManageUdbActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/swype/android/settings/ManageUdbActivity$1;->this$0:Lcom/swype/android/settings/ManageUdbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity$1;->this$0:Lcom/swype/android/settings/ManageUdbActivity;

    invoke-virtual {v0}, Lcom/swype/android/settings/ManageUdbActivity;->startAddWordActivity()V

    .line 97
    return-void
.end method
