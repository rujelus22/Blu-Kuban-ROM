.class Lcom/infraware/polarisoffice/common/FontActivity$2;
.super Ljava/lang/Object;
.source "FontActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/FontActivity;->OnSelectColor(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/FontActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/FontActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FontActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    #calls: Lcom/infraware/polarisoffice/common/FontActivity;->onClickColorButton(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/infraware/polarisoffice/common/FontActivity;->access$2(Lcom/infraware/polarisoffice/common/FontActivity;Landroid/view/View;)V

    .line 428
    return-void
.end method
