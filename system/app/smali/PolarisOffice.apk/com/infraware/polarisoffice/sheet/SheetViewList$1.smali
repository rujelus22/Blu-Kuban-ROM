.class Lcom/infraware/polarisoffice/sheet/SheetViewList$1;
.super Landroid/os/Handler;
.source "SheetViewList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/sheet/SheetViewList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SheetViewList;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    .line 55
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    .line 61
    return-void
.end method
