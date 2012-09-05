.class Lcom/cooliris/media/GetNewContactNewEmail$3;
.super Ljava/lang/Object;
.source "GetNewContactNewEmail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/GetNewContactNewEmail;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/GetNewContactNewEmail;


# direct methods
.method constructor <init>(Lcom/cooliris/media/GetNewContactNewEmail;)V
    .registers 2
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/cooliris/media/GetNewContactNewEmail$3;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/cooliris/media/GetNewContactNewEmail$3;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    invoke-virtual {v0}, Lcom/cooliris/media/GetNewContactNewEmail;->finish()V

    .line 169
    return-void
.end method
