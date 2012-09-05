.class Lcom/vlingo/client/contacts/AutoDialActivity$2;
.super Ljava/lang/Object;
.source "AutoDialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/contacts/AutoDialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/contacts/AutoDialActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/contacts/AutoDialActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/vlingo/client/contacts/AutoDialActivity$2;->this$0:Lcom/vlingo/client/contacts/AutoDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vlingo/client/contacts/AutoDialActivity$2;->this$0:Lcom/vlingo/client/contacts/AutoDialActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/contacts/AutoDialActivity;->launchAction()V

    .line 82
    return-void
.end method
