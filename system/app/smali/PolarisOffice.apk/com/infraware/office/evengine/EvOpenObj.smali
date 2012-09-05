.class Lcom/infraware/office/evengine/EvOpenObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bLandScape:I

.field private m_eLoadType:I

.field private m_nHeight:I

.field private m_nLocale:I

.field private m_nOpenPageNum:I

.field private m_nOpenRotateAngle:I

.field private m_nOpenScale:I

.field private m_nOpenStartX:I

.field private m_nOpenStartY:I

.field private m_nPageBgColor:I

.field private m_nTextColor:I

.field private m_nWidth:I

.field private m_sBookClipPath:Ljava/lang/String;

.field private m_sBookMarkPath:Ljava/lang/String;

.field private m_sFilePath:Ljava/lang/String;

.field private m_sTempPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;Ljava/lang/String;IIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .parameter "a_Native"
    .parameter "a_sFilePath"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_eLoadType"
    .parameter "a_nPageBgColor"
    .parameter "a_nTextColor"
    .parameter "a_nOpenPageNum"
    .parameter "a_nOpenScale"
    .parameter "a_nOpenRotateAngle"
    .parameter "a_nOpenStartX"
    .parameter "a_nOpenStartY"
    .parameter "a_nLocale"
    .parameter "a_bLandScape"
    .parameter "a_sTempPath"
    .parameter "a_sBookMarkPath"
    .parameter "a_sBookClipPath"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 112
    iput-object p2, p0, Lcom/infraware/office/evengine/EvOpenObj;->m_sFilePath:Ljava/lang/String;

    .line 113
    iput p3, p0, Lcom/infraware/office/evengine/EvOpenObj;->m_nWidth:I

    .line 114
    iput p4, p0, Lcom/infraware/office/evengine/EvOpenObj;->m_nHeight:I

    .line 115
    iput p5, p0, Lcom/infraware/office/evengine/EvOpenObj;->m_eLoadType:I

    .line 116
    iput p6, p0, Lcom/infraware/office/evengine/EvOpenObj;->m_nPageBgColor:I

    .line 117
    iput p7, p0, Lcom/infraware/office/evengine/EvOpenObj;->m_nTextColor:I

    .line 118
    iput p8, p0, Lcom/infraware/office/evengine/EvOpenObj;->m_nOpenPageNum:I

    .line 119
    iput p10, p0, Lcom/infraware/office/evengine/EvOpenObj;->m_nOpenScale:I

    .line 120
    iput p11, p0, Lcom/infraware/office/evengine/EvOpenObj;->m_nOpenStartX:I

    .line 121
    iput p12, p0, Lcom/infraware/office/evengine/EvOpenObj;->m_nOpenStartY:I

    .line 122
    iput p13, p0, Lcom/infraware/office/evengine/EvOpenObj;->m_nLocale:I

    .line 123
    iput p14, p0, Lcom/infraware/office/evengine/EvOpenObj;->m_bLandScape:I

    .line 124
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/infraware/office/evengine/EvOpenObj;->m_sTempPath:Ljava/lang/String;

    .line 125
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/infraware/office/evengine/EvOpenObj;->m_sBookMarkPath:Ljava/lang/String;

    .line 126
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/infraware/office/evengine/EvOpenObj;->m_sBookClipPath:Ljava/lang/String;

    .line 127
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 19

    .prologue
    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/infraware/office/evengine/EvOpenObj;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/office/evengine/EvOpenObj;->m_sFilePath:Ljava/lang/String;

    .line 132
    move-object/from16 v0, p0

    iget v3, v0, Lcom/infraware/office/evengine/EvOpenObj;->m_nWidth:I

    .line 133
    move-object/from16 v0, p0

    iget v4, v0, Lcom/infraware/office/evengine/EvOpenObj;->m_nHeight:I

    .line 134
    move-object/from16 v0, p0

    iget v5, v0, Lcom/infraware/office/evengine/EvOpenObj;->m_eLoadType:I

    .line 135
    move-object/from16 v0, p0

    iget v6, v0, Lcom/infraware/office/evengine/EvOpenObj;->m_nPageBgColor:I

    .line 136
    move-object/from16 v0, p0

    iget v7, v0, Lcom/infraware/office/evengine/EvOpenObj;->m_nTextColor:I

    .line 137
    move-object/from16 v0, p0

    iget v8, v0, Lcom/infraware/office/evengine/EvOpenObj;->m_nOpenPageNum:I

    .line 138
    move-object/from16 v0, p0

    iget v9, v0, Lcom/infraware/office/evengine/EvOpenObj;->m_nOpenScale:I

    .line 139
    move-object/from16 v0, p0

    iget v10, v0, Lcom/infraware/office/evengine/EvOpenObj;->m_nOpenRotateAngle:I

    .line 140
    move-object/from16 v0, p0

    iget v11, v0, Lcom/infraware/office/evengine/EvOpenObj;->m_nOpenStartX:I

    .line 141
    move-object/from16 v0, p0

    iget v12, v0, Lcom/infraware/office/evengine/EvOpenObj;->m_nOpenStartY:I

    .line 142
    move-object/from16 v0, p0

    iget v13, v0, Lcom/infraware/office/evengine/EvOpenObj;->m_nLocale:I

    .line 143
    move-object/from16 v0, p0

    iget v14, v0, Lcom/infraware/office/evengine/EvOpenObj;->m_bLandScape:I

    .line 144
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/office/evengine/EvOpenObj;->m_sTempPath:Ljava/lang/String;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/office/evengine/EvOpenObj;->m_sBookMarkPath:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/office/evengine/EvOpenObj;->m_sBookClipPath:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 131
    invoke-virtual/range {v1 .. v17}, Lcom/infraware/office/evengine/EvNative;->IOpen(Ljava/lang/String;IIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method
