.class public Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GUI_BORDER_EVENT"
.end annotation


# instance fields
.field public nBorderBottomColor:I

.field public nBorderHorizontalColor:I

.field public nBorderLeftColor:I

.field public nBorderMask:I

.field public nBorderRightColor:I

.field public nBorderStyle:I

.field public nBorderTopColor:I

.field public nBorderVerticalColor:I

.field public nCellColor:I

.field public nType:I

.field final synthetic this$0:Lcom/infraware/office/evengine/EV;


# direct methods
.method public constructor <init>(Lcom/infraware/office/evengine/EV;)V
    .registers 2
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->this$0:Lcom/infraware/office/evengine/EV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .prologue
    .line 363
    .line 365
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nCellColor:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nBorderHorizontalColor:I

    .line 364
    iput v0, p0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nBorderVerticalColor:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nBorderBottomColor:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nBorderRightColor:I

    .line 363
    iput v0, p0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nBorderTopColor:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nBorderLeftColor:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nBorderStyle:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nBorderMask:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nType:I

    .line 366
    return-void
.end method
