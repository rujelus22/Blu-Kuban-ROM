.class Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;
.super Ljava/lang/Object;
.source "SheetViewList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/sheet/SheetViewList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconItem"
.end annotation


# instance fields
.field mIcon:I

.field mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SheetViewList;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter "aIcon"
    .parameter "aName"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p2, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;->mIcon:I

    .line 145
    iput-object p3, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;->mName:Ljava/lang/String;

    return-void
.end method
