.class public Lcom/infraware/office/evengine/EV$CELL_PROPERTY;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CELL_PROPERTY"
.end annotation


# instance fields
.field public a_BorderColor:I

.field public a_BorderLineStyle:I

.field public a_BorderLineWidthType:I

.field public a_CellBorderType:I

.field public a_CellColor:I

.field final synthetic this$0:Lcom/infraware/office/evengine/EV;


# direct methods
.method public constructor <init>(Lcom/infraware/office/evengine/EV;)V
    .registers 2
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/infraware/office/evengine/EV$CELL_PROPERTY;->this$0:Lcom/infraware/office/evengine/EV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .prologue
    .line 659
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/office/evengine/EV$CELL_PROPERTY;->a_BorderLineStyle:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$CELL_PROPERTY;->a_BorderLineWidthType:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$CELL_PROPERTY;->a_CellBorderType:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$CELL_PROPERTY;->a_BorderColor:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$CELL_PROPERTY;->a_CellColor:I

    .line 660
    return-void
.end method
