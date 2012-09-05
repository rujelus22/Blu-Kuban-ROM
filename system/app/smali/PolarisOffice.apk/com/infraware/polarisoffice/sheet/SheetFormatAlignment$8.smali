.class Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$8;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->finish()V

    .line 149
    return-void
.end method
