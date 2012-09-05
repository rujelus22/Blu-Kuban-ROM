.class Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;
.super Ljava/lang/Object;
.source "OfficeFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/OfficeFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconMenu"
.end annotation


# instance fields
.field m_nIconId:I

.field m_nMenuId:I

.field m_strName:Ljava/lang/String;

.field final synthetic this$0:Lcom/infraware/polarisoffice/OfficeFileManager;


# direct methods
.method public constructor <init>(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter "menuId"
    .parameter "iconId"
    .parameter "name"

    .prologue
    .line 2497
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    .line 2492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2494
    iput p2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->m_nMenuId:I

    .line 2495
    iput p3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->m_nIconId:I

    .line 2496
    iput-object p4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;->m_strName:Ljava/lang/String;

    return-void
.end method
