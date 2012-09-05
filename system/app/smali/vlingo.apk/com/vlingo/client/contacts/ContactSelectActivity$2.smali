.class Lcom/vlingo/client/contacts/ContactSelectActivity$2;
.super Ljava/lang/Object;
.source "ContactSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/contacts/ContactSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/contacts/ContactSelectActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$2;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$2;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/contacts/ContactSelectActivity;->startRecognition()V

    .line 150
    return-void
.end method
