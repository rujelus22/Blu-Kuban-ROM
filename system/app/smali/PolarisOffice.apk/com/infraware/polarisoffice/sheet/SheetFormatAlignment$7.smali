.class Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$7;
.super Ljava/lang/Object;
.source "SheetFormatAlignment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->setControlAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->access$10(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_nHAlign:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->access$0(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)I

    move-result v1

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_nVAlign:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->access$5(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/evengine/EvInterface;->ISheetSetAlignment(II)V

    .line 143
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->finish()V

    .line 144
    return-void
.end method
