.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$16;
.super Ljava/lang/Object;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onPasswordDoc(I)Z
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$16;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iput-object p2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$16;->val$etPassword:Landroid/widget/EditText;

    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 985
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$16;->val$etPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 986
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$16;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iput-object v0, v1, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_strPassword:Ljava/lang/String;

    .line 987
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$16;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v1, v0}, Lcom/infraware/office/baseframe/EvBaseView;->openDocEx(Ljava/lang/String;)V

    .line 988
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$16;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->showDialog(I)V

    .line 989
    return-void
.end method
