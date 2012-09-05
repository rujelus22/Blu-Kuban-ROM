.class Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "OfficeFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field m_imgIcon:Landroid/widget/ImageView;

.field m_imgStat:Landroid/widget/ImageView;

.field m_tvItem:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;


# direct methods
.method private constructor <init>(Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 2538
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;->this$1:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2538
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter$ViewHolder;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;)V

    return-void
.end method
