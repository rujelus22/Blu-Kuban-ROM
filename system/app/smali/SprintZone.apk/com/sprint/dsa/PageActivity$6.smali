.class Lcom/sprint/dsa/PageActivity$6;
.super Ljava/lang/Object;
.source "PageActivity.java"

# interfaces
.implements Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/PageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/PageActivity;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/PageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/PageActivity$6;->this$0:Lcom/sprint/dsa/PageActivity;

    .line 1142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    .prologue
    .line 1151
    return-void
.end method

.method public onOk()V
    .registers 2

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity$6;->this$0:Lcom/sprint/dsa/PageActivity;

    invoke-static {v0}, Lcom/sprint/dsa/Util;->setFactoryDefault(Landroid/content/Context;)V

    .line 1146
    return-void
.end method
