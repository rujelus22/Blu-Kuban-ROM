.class public Lcom/sec/android/app/ve/data/VETheme;
.super Ljava/lang/Object;
.source "VETheme.java"


# instance fields
.field private lMusicElement:Lcom/samsung/app/video/editor/external/Element;

.field private mAlphaPath:Ljava/lang/String;

.field private mAlphaPath1:Ljava/lang/String;

.field private mEffectEdit:Lcom/samsung/app/video/editor/external/Edit;

.field private mReTouchEdit:Lcom/samsung/app/video/editor/external/Edit;

.field private mTemplatePath:Ljava/lang/String;

.field private mTemplatePath1:Ljava/lang/String;

.field private mTransitionEdit:Lcom/samsung/app/video/editor/external/Edit;

.field private maAlphaq:Ljava/lang/String;

.field private maTemepleteq:Ljava/lang/String;

.field private mbAlphaq:Ljava/lang/String;

.field private mbTemepleteq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 15
    .parameter "aAlphapath"
    .parameter "aAlphapath1"
    .parameter "aTemplatepath"
    .parameter "aTemplatepath1"
    .parameter "aAlphaq"
    .parameter "bAlphaq"
    .parameter "aTempleteq"
    .parameter "bTempleteq"
    .parameter "aBGMPath"
    .parameter "aBGMName"
    .parameter "aSubType"
    .parameter "aBGMDuration"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mAlphaPath:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mAlphaPath1:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mTemplatePath:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mTemplatePath1:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mTransitionEdit:Lcom/samsung/app/video/editor/external/Edit;

    .line 30
    iput-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mEffectEdit:Lcom/samsung/app/video/editor/external/Edit;

    .line 31
    iput-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mReTouchEdit:Lcom/samsung/app/video/editor/external/Edit;

    .line 32
    iput-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->lMusicElement:Lcom/samsung/app/video/editor/external/Element;

    .line 36
    iput-object p1, p0, Lcom/sec/android/app/ve/data/VETheme;->mAlphaPath:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/sec/android/app/ve/data/VETheme;->mAlphaPath1:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/sec/android/app/ve/data/VETheme;->mTemplatePath:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/sec/android/app/ve/data/VETheme;->mTemplatePath1:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/sec/android/app/ve/data/VETheme;->maAlphaq:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/sec/android/app/ve/data/VETheme;->mbAlphaq:Ljava/lang/String;

    .line 42
    iput-object p7, p0, Lcom/sec/android/app/ve/data/VETheme;->maTemepleteq:Ljava/lang/String;

    .line 43
    iput-object p8, p0, Lcom/sec/android/app/ve/data/VETheme;->mbTemepleteq:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/samsung/app/video/editor/external/Edit;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/Edit;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mTransitionEdit:Lcom/samsung/app/video/editor/external/Edit;

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mTransitionEdit:Lcom/samsung/app/video/editor/external/Edit;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/Edit;->setType(I)V

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mTransitionEdit:Lcom/samsung/app/video/editor/external/Edit;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/Edit;->setTrans_duration(I)V

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mTransitionEdit:Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v0, p11}, Lcom/samsung/app/video/editor/external/Edit;->setSubType(I)V

    .line 51
    new-instance v0, Lcom/samsung/app/video/editor/external/Edit;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/Edit;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mEffectEdit:Lcom/samsung/app/video/editor/external/Edit;

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mEffectEdit:Lcom/samsung/app/video/editor/external/Edit;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/Edit;->setType(I)V

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mEffectEdit:Lcom/samsung/app/video/editor/external/Edit;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/Edit;->setSubType(I)V

    .line 55
    invoke-direct {p0, p9, p10, p12}, Lcom/sec/android/app/ve/data/VETheme;->createBGMElement(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method private createBGMElement(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "aFilePath"
    .parameter "aDisplayName"
    .parameter "aBGMDuration"

    .prologue
    const/16 v3, 0x64

    .line 60
    new-instance v1, Lcom/samsung/app/video/editor/external/Element;

    invoke-direct {v1}, Lcom/samsung/app/video/editor/external/Element;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/ve/data/VETheme;->lMusicElement:Lcom/samsung/app/video/editor/external/Element;

    .line 61
    iget-object v1, p0, Lcom/sec/android/app/ve/data/VETheme;->lMusicElement:Lcom/samsung/app/video/editor/external/Element;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/app/video/editor/external/Element;->setType(I)V

    .line 62
    iget-object v1, p0, Lcom/sec/android/app/ve/data/VETheme;->lMusicElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v1, p1}, Lcom/samsung/app/video/editor/external/Element;->setFilePath(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/sec/android/app/ve/data/VETheme;->lMusicElement:Lcom/samsung/app/video/editor/external/Element;

    int-to-float v2, p3

    invoke-virtual {v1, v2}, Lcom/samsung/app/video/editor/external/Element;->setEndTime(F)V

    .line 66
    new-instance v0, Lcom/samsung/app/video/editor/external/Edit;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/Edit;-><init>()V

    .line 67
    .local v0, edit:Lcom/samsung/app/video/editor/external/Edit;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/Edit;->setType(I)V

    .line 68
    invoke-virtual {v0, v3}, Lcom/samsung/app/video/editor/external/Edit;->setVolumeLevel(I)V

    .line 69
    iget-object v1, p0, Lcom/sec/android/app/ve/data/VETheme;->lMusicElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v1, v0}, Lcom/samsung/app/video/editor/external/Element;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)V

    .line 70
    iget-object v1, p0, Lcom/sec/android/app/ve/data/VETheme;->lMusicElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v1, p2}, Lcom/samsung/app/video/editor/external/Element;->setAudioDisplayName(Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/samsung/app/video/editor/external/Edit;

    .end local v0           #edit:Lcom/samsung/app/video/editor/external/Edit;
    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/Edit;-><init>()V

    .line 74
    .restart local v0       #edit:Lcom/samsung/app/video/editor/external/Edit;
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/Edit;->setType(I)V

    .line 75
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/Edit;->setSubType(I)V

    .line 76
    invoke-virtual {v0, v3}, Lcom/samsung/app/video/editor/external/Edit;->setVolumeLevel(I)V

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/ve/data/VETheme;->lMusicElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v1, v0}, Lcom/samsung/app/video/editor/external/Element;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getA_Alpha_q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->maAlphaq:Ljava/lang/String;

    return-object v0
.end method

.method public getA_Temeplete_q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->maTemepleteq:Ljava/lang/String;

    return-object v0
.end method

.method public getAlphaPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mAlphaPath:Ljava/lang/String;

    return-object v0
.end method

.method public getAlphaPath1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mAlphaPath1:Ljava/lang/String;

    return-object v0
.end method

.method public getB_Alpha_q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mbAlphaq:Ljava/lang/String;

    return-object v0
.end method

.method public getB_Temeplete_q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mbTemepleteq:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectEdit()Lcom/samsung/app/video/editor/external/Edit;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mEffectEdit:Lcom/samsung/app/video/editor/external/Edit;

    return-object v0
.end method

.method public getReTouchEdit()Lcom/samsung/app/video/editor/external/Edit;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mReTouchEdit:Lcom/samsung/app/video/editor/external/Edit;

    return-object v0
.end method

.method public getTemplatePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mTemplatePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplatePath1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mTemplatePath1:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeBGM()Lcom/samsung/app/video/editor/external/Element;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->lMusicElement:Lcom/samsung/app/video/editor/external/Element;

    return-object v0
.end method

.method public getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VETheme;->mTransitionEdit:Lcom/samsung/app/video/editor/external/Edit;

    return-object v0
.end method
