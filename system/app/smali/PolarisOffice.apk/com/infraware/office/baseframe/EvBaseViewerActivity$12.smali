.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$12;
.super Ljava/lang/Object;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onWritePasswordDoc(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

.field private final synthetic val$etPassword:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$12;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iput-object p2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$12;->val$etPassword:Landroid/widget/EditText;

    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 870
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$12;->val$etPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$12;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1, v0}, Lcom/infraware/office/evengine/EvInterface;->ISetWritePassword(Ljava/lang/String;)V

    .line 872
    return-void
.end method
