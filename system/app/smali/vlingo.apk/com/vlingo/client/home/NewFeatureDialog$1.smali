.class Lcom/vlingo/client/home/NewFeatureDialog$1;
.super Ljava/lang/Object;
.source "NewFeatureDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/home/NewFeatureDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/home/NewFeatureDialog;


# direct methods
.method constructor <init>(Lcom/vlingo/client/home/NewFeatureDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vlingo/client/home/NewFeatureDialog$1;->this$0:Lcom/vlingo/client/home/NewFeatureDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 42
    const-string v0, "new_feature_dialog_shown"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 43
    iget-object v0, p0, Lcom/vlingo/client/home/NewFeatureDialog$1;->this$0:Lcom/vlingo/client/home/NewFeatureDialog;

    invoke-virtual {v0}, Lcom/vlingo/client/home/NewFeatureDialog;->finish()V

    .line 44
    return-void
.end method
