.class Lcom/infraware/office/evengine/EvSetZoomObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bHaveZoomCenter:I

.field private m_bStep:I

.field private m_eKey:I

.field private m_eZoomType:I

.field private m_nEx:I

.field private m_nEy:I

.field private m_nScale:I

.field private m_nSx:I

.field private m_nSy:I

.field private m_nZoomCenterX:I

.field private m_nZoomCenterY:I


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;IIIIIIIIIII)V
    .registers 13
    .parameter "a_Native"
    .parameter "a_eZoomType"
    .parameter "a_nScale"
    .parameter "a_nSx"
    .parameter "a_nSy"
    .parameter "a_nEx"
    .parameter "a_nEy"
    .parameter "a_eKey"
    .parameter "a_bStep"
    .parameter "a_bHaveZoomCenter"
    .parameter "a_nZoomCenterX"
    .parameter "a_nZoomCenterY"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 254
    iput p2, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_eZoomType:I

    .line 255
    iput p3, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_nScale:I

    .line 256
    iput p4, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_nSx:I

    .line 257
    iput p5, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_nSy:I

    .line 258
    iput p6, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_nEx:I

    .line 259
    iput p7, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_nEy:I

    .line 260
    iput p8, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_eKey:I

    .line 261
    iput p9, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_bStep:I

    .line 262
    iput p10, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_bHaveZoomCenter:I

    .line 263
    iput p11, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_nZoomCenterX:I

    .line 264
    iput p12, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_nZoomCenterY:I

    .line 265
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 13

    .prologue
    .line 269
    iget-object v0, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_eZoomType:I

    .line 270
    iget v2, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_nScale:I

    .line 271
    iget v3, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_nSx:I

    .line 272
    iget v4, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_nSy:I

    .line 273
    iget v5, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_nEx:I

    .line 274
    iget v6, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_nEy:I

    .line 275
    iget v7, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_eKey:I

    .line 276
    iget v8, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_bStep:I

    .line 277
    iget v9, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_bHaveZoomCenter:I

    .line 278
    iget v10, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_nZoomCenterX:I

    .line 279
    iget v11, p0, Lcom/infraware/office/evengine/EvSetZoomObj;->m_nZoomCenterY:I

    .line 269
    invoke-virtual/range {v0 .. v11}, Lcom/infraware/office/evengine/EvNative;->ISetZoom(IIIIIIIIIII)V

    .line 280
    return-void
.end method
