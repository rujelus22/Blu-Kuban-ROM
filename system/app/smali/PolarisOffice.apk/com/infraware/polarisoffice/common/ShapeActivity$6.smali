.class Lcom/infraware/polarisoffice/common/ShapeActivity$6;
.super Ljava/lang/Object;
.source "ShapeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/ShapeActivity;->OnSelectColor(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/ShapeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity$6;->this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity$6;->this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->OnSelectMoreColor()V

    .line 330
    return-void
.end method
