.class Lcom/vlingo/client/contacts/AutoDialActivity$3;
.super Ljava/lang/Object;
.source "AutoDialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 90
    iput-object p1, p0, Lcom/vlingo/client/contacts/AutoDialActivity$3;->this$0:Lcom/vlingo/client/contacts/AutoDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 92
    new-instance v1, Lcom/vlingo/client/contacts/AutoDialActivity$ContactImageLoadTask;

    iget-object v2, p0, Lcom/vlingo/client/contacts/AutoDialActivity$3;->this$0:Lcom/vlingo/client/contacts/AutoDialActivity;

    invoke-direct {v1, v2, v0}, Lcom/vlingo/client/contacts/AutoDialActivity$ContactImageLoadTask;-><init>(Lcom/vlingo/client/contacts/AutoDialActivity;Lcom/vlingo/client/contacts/AutoDialActivity$1;)V

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/contacts/AutoDialActivity$ContactImageLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    iget-object v0, p0, Lcom/vlingo/client/contacts/AutoDialActivity$3;->this$0:Lcom/vlingo/client/contacts/AutoDialActivity;

    iget-object v0, v0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_countDownView:Lcom/vlingo/client/contacts/AutoDialCountDownView;

    invoke-virtual {v0}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->start()V

    .line 94
    return-void
.end method
