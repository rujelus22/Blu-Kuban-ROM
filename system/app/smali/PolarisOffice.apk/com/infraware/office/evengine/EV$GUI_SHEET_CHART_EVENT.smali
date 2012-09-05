.class public Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GUI_SHEET_CHART_EVENT"
.end annotation


# instance fields
.field public nChart:I

.field public nLegend:I

.field public nSeriesIn:I

.field public nType:I

.field public szTitle:Ljava/lang/String;

.field public szXAxis:Ljava/lang/String;

.field public szYAxis:Ljava/lang/String;

.field public tRange:Lcom/infraware/office/evengine/EV$RANGE;

.field final synthetic this$0:Lcom/infraware/office/evengine/EV;


# direct methods
.method public constructor <init>(Lcom/infraware/office/evengine/EV;)V
    .registers 3
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->this$0:Lcom/infraware/office/evengine/EV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    new-instance v0, Lcom/infraware/office/evengine/EV$RANGE;

    invoke-direct {v0, p1}, Lcom/infraware/office/evengine/EV$RANGE;-><init>(Lcom/infraware/office/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->tRange:Lcom/infraware/office/evengine/EV$RANGE;

    .line 613
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->szTitle:Ljava/lang/String;

    .line 614
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->szXAxis:Ljava/lang/String;

    .line 615
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->szYAxis:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 619
    iput v1, p0, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->nChart:I

    iput v1, p0, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->nType:I

    .line 620
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->tRange:Lcom/infraware/office/evengine/EV$RANGE;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV$RANGE;->clear()V

    .line 621
    iput v1, p0, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->nSeriesIn:I

    .line 622
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->szYAxis:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->szXAxis:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->szTitle:Ljava/lang/String;

    .line 623
    iput v1, p0, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->nLegend:I

    .line 624
    return-void
.end method
