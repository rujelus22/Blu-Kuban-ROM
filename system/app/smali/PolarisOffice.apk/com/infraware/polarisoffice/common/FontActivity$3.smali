.class Lcom/infraware/polarisoffice/common/FontActivity$3;
.super Ljava/lang/Object;
.source "FontActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field private final synthetic val$bBackColorAlert:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/FontActivity;Ljava/lang/Boolean;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FontActivity$3;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iput-object p2, p0, Lcom/infraware/polarisoffice/common/FontActivity$3;->val$bBackColorAlert:Ljava/lang/Boolean;

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity$3;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity$3;->val$bBackColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/FontActivity;->OnSelectMoreColor(Ljava/lang/Boolean;)V

    .line 441
    return-void
.end method
