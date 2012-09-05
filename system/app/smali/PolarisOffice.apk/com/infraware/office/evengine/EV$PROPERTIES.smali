.class public Lcom/infraware/office/evengine/EV$PROPERTIES;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PROPERTIES"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/evengine/EV$PROPERTIES$PAGEMAPPROPERTIES;
    }
.end annotation


# instance fields
.field public bCaretDoesntMoveWhenComposing:I

.field public bDrawDirtyBitmap:I

.field public bDualDisplay:I

.field public bFixedWidth:I

.field public bMakeThumbnailImage:I

.field public bNotUseThumbnailBgColor:I

.field public bPageOutline:I

.field public bUseOriginImageAtComics:I

.field public bVariableScale:I

.field public byPageEdgePosition:I

.field public byPageEdgeWidth:I

.field public dwBgColor:I

.field public dwEdgeColor:I

.field public dwOutlineColor:I

.field public dwPageMapColor:I

.field public dwPageMapViewColor:I

.field public dwSearchMarkSelectColor:I

.field public nBookmarkType:I

.field public nDefAlignment:I

.field public nDefCharSpace:I

.field public nDefLineSpace:I

.field public nDirectionAtComics:I

.field public nFrameBufferSwap:I

.field public nGrayLevelForImage:I

.field public nMakeThumbnailPages:I

.field public nMaxBookclipValue:I

.field public nPageMargin:I

.field public nScrollType:I

.field public nSearchMarkingMode:I

.field public nSeperateModeAtComics:I

.field public nThumbnailPercent:I

.field public nUseBookmark:I

.field public nZoomPhase:I

.field pagemapProperties:Lcom/infraware/office/evengine/EV$PROPERTIES$PAGEMAPPROPERTIES;

.field final synthetic this$0:Lcom/infraware/office/evengine/EV;


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EV;)V
    .registers 3
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->this$0:Lcom/infraware/office/evengine/EV;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v0, Lcom/infraware/office/evengine/EV$PROPERTIES$PAGEMAPPROPERTIES;

    invoke-direct {v0, p0}, Lcom/infraware/office/evengine/EV$PROPERTIES$PAGEMAPPROPERTIES;-><init>(Lcom/infraware/office/evengine/EV$PROPERTIES;)V

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->pagemapProperties:Lcom/infraware/office/evengine/EV$PROPERTIES$PAGEMAPPROPERTIES;

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .prologue
    .line 285
    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->bCaretDoesntMoveWhenComposing:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->bNotUseThumbnailBgColor:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->dwSearchMarkSelectColor:I

    .line 292
    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->nDirectionAtComics:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->bUseOriginImageAtComics:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->nSeperateModeAtComics:I

    .line 291
    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->nPageMargin:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->nMaxBookclipValue:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->nDefCharSpace:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->nDefAlignment:I

    .line 290
    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->nDefLineSpace:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->nGrayLevelForImage:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->nZoomPhase:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->bDualDisplay:I

    .line 289
    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->bDrawDirtyBitmap:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->nSearchMarkingMode:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->nThumbnailPercent:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->bFixedWidth:I

    .line 288
    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->bVariableScale:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->nMakeThumbnailPages:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->bMakeThumbnailImage:I

    .line 287
    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->nFrameBufferSwap:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->nScrollType:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->nBookmarkType:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->nUseBookmark:I

    .line 286
    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->dwPageMapViewColor:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->dwPageMapColor:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->dwOutlineColor:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->dwEdgeColor:I

    .line 285
    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->dwBgColor:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->bPageOutline:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->byPageEdgePosition:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->byPageEdgeWidth:I

    .line 295
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$PROPERTIES;->pagemapProperties:Lcom/infraware/office/evengine/EV$PROPERTIES$PAGEMAPPROPERTIES;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV$PROPERTIES$PAGEMAPPROPERTIES;->clear()V

    .line 296
    return-void
.end method
