.class Lcom/infraware/polarisoffice/common/FillBordersActivity$7;
.super Ljava/lang/Object;
.source "FillBordersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/FillBordersActivity;->OnSelectColor(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

.field private final synthetic val$bBorderColorAlert:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/FillBordersActivity;Ljava/lang/Boolean;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$7;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    iput-object p2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$7;->val$bBorderColorAlert:Ljava/lang/Boolean;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$7;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$7;->val$bBorderColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->OnSelectMoreColor(Ljava/lang/Boolean;)V

    .line 406
    return-void
.end method
