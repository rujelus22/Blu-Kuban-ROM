.class public Lcom/infraware/office/evengine/EV$CONFIG_INFO;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CONFIG_INFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/evengine/EV$CONFIG_INFO$SCROLLINFO;
    }
.end annotation


# instance fields
.field public bBGLoad:I

.field public bContinuousMode:I

.field public nCurPage:I

.field public nDocExtType:I

.field public nFitToHeightZoomValue:I

.field public nFitToWidthZoomValue:I

.field public nMaxZoom:I

.field public nMinZoom:I

.field public nOnlyOnePage:I

.field public nReflowState:I

.field public nRotateAngle:I

.field public nTotalPages:I

.field public nZoomLevel:I

.field public nZoomRatio:I

.field public scrollInfo:Lcom/infraware/office/evengine/EV$CONFIG_INFO$SCROLLINFO;

.field final synthetic this$0:Lcom/infraware/office/evengine/EV;


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EV;)V
    .registers 3
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->this$0:Lcom/infraware/office/evengine/EV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO$SCROLLINFO;

    invoke-direct {v0, p0}, Lcom/infraware/office/evengine/EV$CONFIG_INFO$SCROLLINFO;-><init>(Lcom/infraware/office/evengine/EV$CONFIG_INFO;)V

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->scrollInfo:Lcom/infraware/office/evengine/EV$CONFIG_INFO$SCROLLINFO;

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .prologue
    .line 226
    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nOnlyOnePage:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nDocExtType:I

    .line 227
    iput v0, p0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nFitToHeightZoomValue:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nFitToWidthZoomValue:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->bContinuousMode:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomLevel:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nReflowState:I

    .line 226
    iput v0, p0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMaxZoom:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMinZoom:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nRotateAngle:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->bBGLoad:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nTotalPages:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nCurPage:I

    .line 230
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->scrollInfo:Lcom/infraware/office/evengine/EV$CONFIG_INFO$SCROLLINFO;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV$CONFIG_INFO$SCROLLINFO;->clear()V

    .line 231
    return-void
.end method
