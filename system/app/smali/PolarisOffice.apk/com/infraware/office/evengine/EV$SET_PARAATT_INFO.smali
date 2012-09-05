.class public Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SET_PARAATT_INFO"
.end annotation


# instance fields
.field public FirstLineType:I

.field public FirstLineValue:I

.field public ParaBottomValue:I

.field public ParaDirection:I

.field public ParaTopValue:I

.field public bUndo:I

.field public nHAlignType:I

.field public nLeftMarginValue:I

.field public nLineHeight:I

.field public nLineSpace:I

.field public nLineSpaceValue:I

.field public nRightMarginValue:I

.field public nType:I

.field public nVAlignType:I

.field final synthetic this$0:Lcom/infraware/office/evengine/EV;


# direct methods
.method public constructor <init>(Lcom/infraware/office/evengine/EV;)V
    .registers 2
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->this$0:Lcom/infraware/office/evengine/EV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .prologue
    .line 496
    .line 498
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->bUndo:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->ParaDirection:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->nLineHeight:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->ParaBottomValue:I

    .line 497
    iput v0, p0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->ParaTopValue:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->nLineSpaceValue:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->nLineSpace:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->FirstLineValue:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->FirstLineType:I

    .line 496
    iput v0, p0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->nRightMarginValue:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->nLeftMarginValue:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->nHAlignType:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->nVAlignType:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;->nType:I

    .line 499
    return-void
.end method
