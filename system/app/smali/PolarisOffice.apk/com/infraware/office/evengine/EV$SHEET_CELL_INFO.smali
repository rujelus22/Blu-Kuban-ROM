.class public Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SHEET_CELL_INFO"
.end annotation


# instance fields
.field public tActiveRange:Lcom/infraware/office/evengine/EV$RANGE;

.field public tColumnHeader:Lcom/infraware/office/evengine/EV$RANGE;

.field public tEditTextRange:Lcom/infraware/office/evengine/EV$RANGE;

.field public tRowHeader:Lcom/infraware/office/evengine/EV$RANGE;

.field public tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

.field final synthetic this$0:Lcom/infraware/office/evengine/EV;

.field public wColWidth:I

.field public wRowHeight:I


# direct methods
.method public constructor <init>(Lcom/infraware/office/evengine/EV;)V
    .registers 3
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->this$0:Lcom/infraware/office/evengine/EV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    new-instance v0, Lcom/infraware/office/evengine/EV$RANGE;

    invoke-direct {v0, p1}, Lcom/infraware/office/evengine/EV$RANGE;-><init>(Lcom/infraware/office/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tRowHeader:Lcom/infraware/office/evengine/EV$RANGE;

    .line 575
    new-instance v0, Lcom/infraware/office/evengine/EV$RANGE;

    invoke-direct {v0, p1}, Lcom/infraware/office/evengine/EV$RANGE;-><init>(Lcom/infraware/office/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tColumnHeader:Lcom/infraware/office/evengine/EV$RANGE;

    .line 580
    new-instance v0, Lcom/infraware/office/evengine/EV$RANGE;

    invoke-direct {v0, p1}, Lcom/infraware/office/evengine/EV$RANGE;-><init>(Lcom/infraware/office/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/office/evengine/EV$RANGE;

    .line 581
    new-instance v0, Lcom/infraware/office/evengine/EV$RANGE;

    invoke-direct {v0, p1}, Lcom/infraware/office/evengine/EV$RANGE;-><init>(Lcom/infraware/office/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    .line 582
    new-instance v0, Lcom/infraware/office/evengine/EV$RANGE;

    invoke-direct {v0, p1}, Lcom/infraware/office/evengine/EV$RANGE;-><init>(Lcom/infraware/office/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tEditTextRange:Lcom/infraware/office/evengine/EV$RANGE;

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tRowHeader:Lcom/infraware/office/evengine/EV$RANGE;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV$RANGE;->clear()V

    .line 586
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tColumnHeader:Lcom/infraware/office/evengine/EV$RANGE;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV$RANGE;->clear()V

    .line 587
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->wColWidth:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->wRowHeight:I

    .line 588
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/office/evengine/EV$RANGE;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV$RANGE;->clear()V

    .line 589
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV$RANGE;->clear()V

    .line 590
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tEditTextRange:Lcom/infraware/office/evengine/EV$RANGE;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV$RANGE;->clear()V

    .line 591
    return-void
.end method
