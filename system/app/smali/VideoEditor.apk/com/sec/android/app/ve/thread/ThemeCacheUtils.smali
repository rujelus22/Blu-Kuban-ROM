.class public Lcom/sec/android/app/ve/thread/ThemeCacheUtils;
.super Ljava/lang/Object;
.source "ThemeCacheUtils.java"


# static fields
.field private static mRawThemeFileLoadThread:Ljava/lang/Thread;

.field public static mSelectedTheme:I

.field private static final mThemeFileNames:[Ljava/lang/String;

.field private static mThemeLoadThread:Ljava/lang/Thread;

.field public static mThemeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/ve/data/VETheme;",
            ">;"
        }
    .end annotation
.end field

.field private static final mThemeRawResIds:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x36

    const/4 v2, 0x0

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeMap:Ljava/util/HashMap;

    .line 40
    sput-object v1, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeLoadThread:Ljava/lang/Thread;

    .line 42
    sput-object v1, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mRawThemeFileLoadThread:Ljava/lang/Thread;

    .line 44
    sput v2, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mSelectedTheme:I

    .line 141
    new-array v0, v3, [Ljava/lang/String;

    .line 142
    const-string v1, "lecture_a_alpha.jpg"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 143
    const-string v2, "lecture_b_alpha.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 144
    const-string v2, "lecture_a_template.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 145
    const-string v2, "lecture_b_template.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 146
    const-string v2, "lecture_a_alpha_q.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 147
    const-string v2, "lecture_b_alpha_q.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 148
    const-string v2, "lecture_a_template_q.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 149
    const-string v2, "lecture_b_template_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 150
    const-string v2, "lecture.mp3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 152
    const-string v2, "homevideo_a_alpha.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 153
    const-string v2, "homevideo_b_alpha.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 154
    const-string v2, "homevideo_a_template.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 155
    const-string v2, "homevideo_b_template.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 156
    const-string v2, "homevideo_a_alpha_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 157
    const-string v2, "homevideo_b_alpha_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 158
    const-string v2, "homevideo_a_template_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 159
    const-string v2, "homevideo_b_template_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 160
    const-string v2, "homevideo.mp3"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 162
    const-string v2, "movie_a_alpha.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 163
    const-string v2, "movie_b_alpha.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 164
    const-string v2, "movie_a_template.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 165
    const-string v2, "movie_b_template.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 166
    const-string v2, "movie_a_alpha_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 167
    const-string v2, "movie_b_alpha_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 168
    const-string v2, "movie_a_template_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 169
    const-string v2, "movie_b_template_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 170
    const-string v2, "movie.mp3"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 172
    const-string v2, "party_a_alpha.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 173
    const-string v2, "party_b_alpha.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 174
    const-string v2, "party_a_template.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 175
    const-string v2, "party_b_template.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 176
    const-string v2, "party_a_alpha_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 177
    const-string v2, "party_b_alpha_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 178
    const-string v2, "party_a_template_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 179
    const-string v2, "party_b_template_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 180
    const-string v2, "party.mp3"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 182
    const-string v2, "performance_a_alpha.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 183
    const-string v2, "performance_b_alpha.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 184
    const-string v2, "performance_a_template.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 185
    const-string v2, "performance_b_template.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 186
    const-string v2, "performance_a_alpha_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 187
    const-string v2, "performance_b_alpha_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 188
    const-string v2, "performance_a_template_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 189
    const-string v2, "performance_b_template_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 190
    const-string v2, "performance.mp3"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 193
    const-string v2, "travel_a_alpha.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 194
    const-string v2, "travel_b_alpha.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 195
    const-string v2, "travel_a_template.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 196
    const-string v2, "travel_b_template.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 197
    const-string v2, "travel_a_alpha_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 198
    const-string v2, "travel_b_alpha_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 199
    const-string v2, "travel_a_template_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 200
    const-string v2, "travel_b_template_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 201
    const-string v2, "travel.mp3"

    aput-object v2, v0, v1

    .line 141
    sput-object v0, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    .line 203
    new-array v0, v3, [I

    fill-array-data v0, :array_158

    sput-object v0, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeRawResIds:[I

    .line 36
    return-void

    .line 203
    :array_158
    .array-data 0x4
        0xct 0x0t 0x5t 0x7ft
        0x10t 0x0t 0x5t 0x7ft
        0xet 0x0t 0x5t 0x7ft
        0x12t 0x0t 0x5t 0x7ft
        0xdt 0x0t 0x5t 0x7ft
        0x11t 0x0t 0x5t 0x7ft
        0xft 0x0t 0x5t 0x7ft
        0x13t 0x0t 0x5t 0x7ft
        0xbt 0x0t 0x5t 0x7ft
        0x3t 0x0t 0x5t 0x7ft
        0x7t 0x0t 0x5t 0x7ft
        0x5t 0x0t 0x5t 0x7ft
        0x9t 0x0t 0x5t 0x7ft
        0x4t 0x0t 0x5t 0x7ft
        0x8t 0x0t 0x5t 0x7ft
        0x6t 0x0t 0x5t 0x7ft
        0xat 0x0t 0x5t 0x7ft
        0x2t 0x0t 0x5t 0x7ft
        0x15t 0x0t 0x5t 0x7ft
        0x19t 0x0t 0x5t 0x7ft
        0x17t 0x0t 0x5t 0x7ft
        0x1bt 0x0t 0x5t 0x7ft
        0x16t 0x0t 0x5t 0x7ft
        0x1at 0x0t 0x5t 0x7ft
        0x18t 0x0t 0x5t 0x7ft
        0x1ct 0x0t 0x5t 0x7ft
        0x14t 0x0t 0x5t 0x7ft
        0x1et 0x0t 0x5t 0x7ft
        0x22t 0x0t 0x5t 0x7ft
        0x20t 0x0t 0x5t 0x7ft
        0x24t 0x0t 0x5t 0x7ft
        0x1ft 0x0t 0x5t 0x7ft
        0x23t 0x0t 0x5t 0x7ft
        0x21t 0x0t 0x5t 0x7ft
        0x25t 0x0t 0x5t 0x7ft
        0x1dt 0x0t 0x5t 0x7ft
        0x27t 0x0t 0x5t 0x7ft
        0x2bt 0x0t 0x5t 0x7ft
        0x29t 0x0t 0x5t 0x7ft
        0x2dt 0x0t 0x5t 0x7ft
        0x28t 0x0t 0x5t 0x7ft
        0x2ct 0x0t 0x5t 0x7ft
        0x2at 0x0t 0x5t 0x7ft
        0x2et 0x0t 0x5t 0x7ft
        0x26t 0x0t 0x5t 0x7ft
        0x30t 0x0t 0x5t 0x7ft
        0x34t 0x0t 0x5t 0x7ft
        0x32t 0x0t 0x5t 0x7ft
        0x36t 0x0t 0x5t 0x7ft
        0x31t 0x0t 0x5t 0x7ft
        0x35t 0x0t 0x5t 0x7ft
        0x33t 0x0t 0x5t 0x7ft
        0x37t 0x0t 0x5t 0x7ft
        0x2ft 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 141
    sget-object v0, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()[I
    .registers 1

    .prologue
    .line 203
    sget-object v0, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeRawResIds:[I

    return-object v0
.end method

.method private static applyThemeBGMMusic(Lcom/sec/android/app/ve/data/VETheme;Lcom/samsung/app/video/editor/external/TranscodeElement;)V
    .registers 7
    .parameter "aVETheme"
    .parameter "aTrans"

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/sec/android/app/ve/data/VETheme;->getThemeBGM()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    .line 396
    .local v0, lThemeBGM:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->removeBGMMusic()V

    .line 397
    invoke-virtual {p1, v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->addAdditionlAudioEleList(Lcom/samsung/app/video/editor/external/Element;)V

    .line 399
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 401
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getAudioDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 403
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v4

    float-to-int v4, v4

    .line 401
    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->updateMusic(Ljava/lang/String;Ljava/lang/String;I)V

    .line 404
    const/4 v1, -0x1

    sput v1, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mSelectedAlbumId:I

    .line 405
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 406
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->updateAlbumId()V

    .line 408
    :cond_34
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 410
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAlbumHandler:Landroid/os/Handler;

    const/16 v2, 0x4b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 414
    :cond_45
    return-void
.end method

.method private static applyThemeToElement(Lcom/samsung/app/video/editor/external/Element;Lcom/sec/android/app/ve/data/VETheme;ZLcom/samsung/app/video/editor/external/TranscodeElement;Z)V
    .registers 7
    .parameter "aElement"
    .parameter "aVEThem"
    .parameter "isEven"
    .parameter "aTrans"
    .parameter "aChangeTrans"

    .prologue
    .line 358
    if-eqz p2, :cond_56

    .line 360
    invoke-virtual {p1}, Lcom/sec/android/app/ve/data/VETheme;->getAlphaPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->alphaImageFileName:Ljava/lang/String;

    .line 361
    invoke-virtual {p1}, Lcom/sec/android/app/ve/data/VETheme;->getTemplatePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->templateFileName:Ljava/lang/String;

    .line 362
    invoke-virtual {p1}, Lcom/sec/android/app/ve/data/VETheme;->getA_Alpha_q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->alphaImageFileName_q:Ljava/lang/String;

    .line 363
    invoke-virtual {p1}, Lcom/sec/android/app/ve/data/VETheme;->getA_Temeplete_q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->templateFileName_q:Ljava/lang/String;

    .line 373
    :goto_1a
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->Video_Template:I

    .line 375
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_55

    .line 378
    if-nez p4, :cond_35

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v0

    if-nez v0, :cond_55

    .line 381
    :cond_35
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->removetransitionEdit()V

    .line 382
    invoke-virtual {p3, p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getMyPosition(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v0

    invoke-virtual {p3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_55

    .line 383
    const-string v0, "Apply edit--not to apply for last element"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 387
    new-instance v0, Lcom/samsung/app/video/editor/external/Edit;

    invoke-static {}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->getFadeTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/app/video/editor/external/Edit;-><init>(Lcom/samsung/app/video/editor/external/Edit;)V

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/external/Element;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)V

    .line 392
    :cond_55
    return-void

    .line 367
    :cond_56
    invoke-virtual {p1}, Lcom/sec/android/app/ve/data/VETheme;->getAlphaPath1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->alphaImageFileName:Ljava/lang/String;

    .line 368
    invoke-virtual {p1}, Lcom/sec/android/app/ve/data/VETheme;->getTemplatePath1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->templateFileName:Ljava/lang/String;

    .line 369
    invoke-virtual {p1}, Lcom/sec/android/app/ve/data/VETheme;->getB_Alpha_q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->alphaImageFileName_q:Ljava/lang/String;

    .line 370
    invoke-virtual {p1}, Lcom/sec/android/app/ve/data/VETheme;->getB_Temeplete_q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->templateFileName_q:Ljava/lang/String;

    goto :goto_1a
.end method

.method public static applyThemeToTransCodeElem(Lcom/samsung/app/video/editor/external/TranscodeElement;Z)V
    .registers 8
    .parameter "lTrans"
    .parameter "aApplyBGM"

    .prologue
    .line 316
    sget-object v4, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeMap:Ljava/util/HashMap;

    sget v5, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mSelectedTheme:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/ve/data/VETheme;

    .line 320
    .local v3, lveTheme:Lcom/sec/android/app/ve/data/VETheme;
    if-eqz v3, :cond_3b

    if-eqz p0, :cond_3b

    .line 322
    sget v4, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mSelectedTheme:I

    invoke-virtual {p0, v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setThemeName(I)V

    .line 323
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v1

    .line 324
    .local v1, lElemList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    if-eqz v1, :cond_2e

    .line 326
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_3c

    .line 341
    if-eqz p1, :cond_2e

    .line 343
    const-string v4, "Applying BGM Music based on Theme"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 345
    invoke-static {v3, p0}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->applyThemeBGMMusic(Lcom/sec/android/app/ve/data/VETheme;Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 349
    .end local v0           #i:I
    :cond_2e
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 350
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V

    .line 354
    .end local v1           #lElemList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    :cond_3b
    return-void

    .line 328
    .restart local v0       #i:I
    .restart local v1       #lElemList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    :cond_3c
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Element;

    .line 330
    .local v2, lElement:Lcom/samsung/app/video/editor/external/Element;
    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_52

    .line 332
    const-string v4, "Applying theme to Even element"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 333
    const/4 v4, 0x1

    invoke-static {v2, v3, v4, p0, p1}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->applyThemeToElement(Lcom/samsung/app/video/editor/external/Element;Lcom/sec/android/app/ve/data/VETheme;ZLcom/samsung/app/video/editor/external/TranscodeElement;Z)V

    .line 326
    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 337
    :cond_52
    const-string v4, "Applying theme to Odd element"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 338
    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p0, p1}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->applyThemeToElement(Lcom/samsung/app/video/editor/external/Element;Lcom/sec/android/app/ve/data/VETheme;ZLcom/samsung/app/video/editor/external/TranscodeElement;Z)V

    goto :goto_4f
.end method

.method private static getFadeTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 454
    new-instance v0, Lcom/samsung/app/video/editor/external/Edit;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/Edit;-><init>()V

    .line 455
    .local v0, mEdit:Lcom/samsung/app/video/editor/external/Edit;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/Edit;->setType(I)V

    .line 456
    invoke-virtual {v0, v2}, Lcom/samsung/app/video/editor/external/Edit;->setTrans_duration(I)V

    .line 457
    invoke-virtual {v0, v2}, Lcom/samsung/app/video/editor/external/Edit;->setSubType(I)V

    .line 460
    return-object v0
.end method

.method public static loadPreDefinedThemes()V
    .registers 23

    .prologue
    .line 47
    const/16 v21, 0x0

    .line 48
    .local v21, lContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v9

    if-eqz v9, :cond_469

    .line 49
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v21

    .line 53
    :goto_c
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    .line 55
    .local v22, lPath:Ljava/lang/String;
    new-instance v3, Lcom/sec/android/app/ve/data/VETheme;

    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 56
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 57
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 58
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 59
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/4 v11, 0x4

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 60
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/4 v11, 0x5

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 61
    new-instance v10, Ljava/io/File;

    sget-object v11, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/4 v12, 0x6

    aget-object v11, v11, v12

    move-object/from16 v0, v22

    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 62
    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/4 v13, 0x7

    aget-object v12, v12, v13

    move-object/from16 v0, v22

    invoke-direct {v11, v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 63
    new-instance v12, Ljava/io/File;

    sget-object v13, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v14, 0x8

    aget-object v13, v13, v14

    move-object/from16 v0, v22

    invoke-direct {v12, v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 64
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080019

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 65
    const/16 v14, 0x26

    .line 66
    const/16 v15, 0x18

    .line 55
    invoke-direct/range {v3 .. v15}, Lcom/sec/android/app/ve/data/VETheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 67
    .local v3, lConfTheme:Lcom/sec/android/app/ve/data/VETheme;
    sget-object v9, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeMap:Ljava/util/HashMap;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v4, Lcom/sec/android/app/ve/data/VETheme;

    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v11, 0x9

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 71
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v11, 0xa

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 72
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v11, 0xb

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 73
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v11, 0xc

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 74
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v11, 0xd

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 75
    new-instance v10, Ljava/io/File;

    sget-object v11, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v12, 0xe

    aget-object v11, v11, v12

    move-object/from16 v0, v22

    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 76
    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v13, 0xf

    aget-object v12, v12, v13

    move-object/from16 v0, v22

    invoke-direct {v11, v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 77
    new-instance v12, Ljava/io/File;

    sget-object v13, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v14, 0x10

    aget-object v13, v13, v14

    move-object/from16 v0, v22

    invoke-direct {v12, v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 78
    new-instance v13, Ljava/io/File;

    sget-object v14, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v15, 0x11

    aget-object v14, v14, v15

    move-object/from16 v0, v22

    invoke-direct {v13, v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 79
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f08001a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 80
    const/16 v15, 0x21

    .line 81
    const/16 v16, 0x18

    .line 70
    invoke-direct/range {v4 .. v16}, Lcom/sec/android/app/ve/data/VETheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 82
    .local v4, lHomeTheme:Lcom/sec/android/app/ve/data/VETheme;
    sget-object v9, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeMap:Ljava/util/HashMap;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v5, Lcom/sec/android/app/ve/data/VETheme;

    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v11, 0x12

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 85
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v11, 0x13

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 86
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v11, 0x14

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 87
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v11, 0x15

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 88
    new-instance v10, Ljava/io/File;

    sget-object v11, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v12, 0x16

    aget-object v11, v11, v12

    move-object/from16 v0, v22

    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 89
    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v13, 0x17

    aget-object v12, v12, v13

    move-object/from16 v0, v22

    invoke-direct {v11, v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 90
    new-instance v12, Ljava/io/File;

    sget-object v13, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v14, 0x18

    aget-object v13, v13, v14

    move-object/from16 v0, v22

    invoke-direct {v12, v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 91
    new-instance v13, Ljava/io/File;

    sget-object v14, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v15, 0x19

    aget-object v14, v14, v15

    move-object/from16 v0, v22

    invoke-direct {v13, v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 92
    new-instance v14, Ljava/io/File;

    sget-object v15, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v16, 0x1a

    aget-object v15, v15, v16

    move-object/from16 v0, v22

    invoke-direct {v14, v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 93
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08001b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 94
    const/16 v16, 0x22

    .line 95
    const/16 v17, 0x18

    .line 84
    invoke-direct/range {v5 .. v17}, Lcom/sec/android/app/ve/data/VETheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 96
    .local v5, lMovieTheme:Lcom/sec/android/app/ve/data/VETheme;
    sget-object v9, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeMap:Ljava/util/HashMap;

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v6, Lcom/sec/android/app/ve/data/VETheme;

    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v11, 0x1b

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 99
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v11, 0x1c

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 100
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v11, 0x1d

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 101
    new-instance v10, Ljava/io/File;

    sget-object v11, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v12, 0x1e

    aget-object v11, v11, v12

    move-object/from16 v0, v22

    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 102
    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v13, 0x1f

    aget-object v12, v12, v13

    move-object/from16 v0, v22

    invoke-direct {v11, v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 103
    new-instance v12, Ljava/io/File;

    sget-object v13, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v14, 0x20

    aget-object v13, v13, v14

    move-object/from16 v0, v22

    invoke-direct {v12, v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 104
    new-instance v13, Ljava/io/File;

    sget-object v14, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v15, 0x21

    aget-object v14, v14, v15

    move-object/from16 v0, v22

    invoke-direct {v13, v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 105
    new-instance v14, Ljava/io/File;

    sget-object v15, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v16, 0x22

    aget-object v15, v15, v16

    move-object/from16 v0, v22

    invoke-direct {v14, v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 106
    new-instance v15, Ljava/io/File;

    sget-object v16, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v17, 0x23

    aget-object v16, v16, v17

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 107
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f08001c

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 108
    const/16 v17, 0x23

    .line 109
    const/16 v18, 0x18

    .line 98
    invoke-direct/range {v6 .. v18}, Lcom/sec/android/app/ve/data/VETheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 110
    .local v6, lPartyTheme:Lcom/sec/android/app/ve/data/VETheme;
    sget-object v9, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeMap:Ljava/util/HashMap;

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v7, Lcom/sec/android/app/ve/data/VETheme;

    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v11, 0x24

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 113
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v11, 0x25

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 114
    new-instance v10, Ljava/io/File;

    sget-object v11, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v12, 0x26

    aget-object v11, v11, v12

    move-object/from16 v0, v22

    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 115
    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v13, 0x27

    aget-object v12, v12, v13

    move-object/from16 v0, v22

    invoke-direct {v11, v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 116
    new-instance v12, Ljava/io/File;

    sget-object v13, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v14, 0x28

    aget-object v13, v13, v14

    move-object/from16 v0, v22

    invoke-direct {v12, v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 117
    new-instance v13, Ljava/io/File;

    sget-object v14, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v15, 0x29

    aget-object v14, v14, v15

    move-object/from16 v0, v22

    invoke-direct {v13, v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 118
    new-instance v14, Ljava/io/File;

    sget-object v15, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v16, 0x2a

    aget-object v15, v15, v16

    move-object/from16 v0, v22

    invoke-direct {v14, v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 119
    new-instance v15, Ljava/io/File;

    sget-object v16, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v17, 0x2b

    aget-object v16, v16, v17

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 120
    new-instance v16, Ljava/io/File;

    sget-object v17, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v18, 0x2c

    aget-object v17, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    .line 121
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f08001d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 122
    const/16 v18, 0x25

    .line 123
    const/16 v19, 0x18

    .line 112
    invoke-direct/range {v7 .. v19}, Lcom/sec/android/app/ve/data/VETheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 124
    .local v7, lStageTheme:Lcom/sec/android/app/ve/data/VETheme;
    sget-object v9, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeMap:Ljava/util/HashMap;

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v8, Lcom/sec/android/app/ve/data/VETheme;

    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v11, 0x2d

    aget-object v10, v10, v11

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 127
    new-instance v10, Ljava/io/File;

    sget-object v11, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v12, 0x2e

    aget-object v11, v11, v12

    move-object/from16 v0, v22

    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 128
    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v13, 0x2f

    aget-object v12, v12, v13

    move-object/from16 v0, v22

    invoke-direct {v11, v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 129
    new-instance v12, Ljava/io/File;

    sget-object v13, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v14, 0x30

    aget-object v13, v13, v14

    move-object/from16 v0, v22

    invoke-direct {v12, v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 130
    new-instance v13, Ljava/io/File;

    sget-object v14, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v15, 0x31

    aget-object v14, v14, v15

    move-object/from16 v0, v22

    invoke-direct {v13, v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 131
    new-instance v14, Ljava/io/File;

    sget-object v15, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v16, 0x32

    aget-object v15, v15, v16

    move-object/from16 v0, v22

    invoke-direct {v14, v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 132
    new-instance v15, Ljava/io/File;

    sget-object v16, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v17, 0x33

    aget-object v16, v16, v17

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 133
    new-instance v16, Ljava/io/File;

    sget-object v17, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v18, 0x34

    aget-object v17, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    .line 134
    new-instance v17, Ljava/io/File;

    sget-object v18, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeFileNames:[Ljava/lang/String;

    const/16 v19, 0x35

    aget-object v18, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    .line 135
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f08001e

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 136
    const/16 v19, 0x24

    .line 137
    const/16 v20, 0x16

    .line 126
    invoke-direct/range {v8 .. v20}, Lcom/sec/android/app/ve/data/VETheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 138
    .local v8, lTravelTheme:Lcom/sec/android/app/ve/data/VETheme;
    sget-object v9, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeMap:Ljava/util/HashMap;

    const/4 v10, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void

    .line 51
    .end local v3           #lConfTheme:Lcom/sec/android/app/ve/data/VETheme;
    .end local v4           #lHomeTheme:Lcom/sec/android/app/ve/data/VETheme;
    .end local v5           #lMovieTheme:Lcom/sec/android/app/ve/data/VETheme;
    .end local v6           #lPartyTheme:Lcom/sec/android/app/ve/data/VETheme;
    .end local v7           #lStageTheme:Lcom/sec/android/app/ve/data/VETheme;
    .end local v8           #lTravelTheme:Lcom/sec/android/app/ve/data/VETheme;
    .end local v22           #lPath:Ljava/lang/String;
    :cond_469
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v21

    goto/16 :goto_c
.end method

.method public static loadRawThemeFileLoad()V
    .registers 2

    .prologue
    .line 268
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/ve/thread/ThemeCacheUtils$1;

    invoke-direct {v1}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mRawThemeFileLoadThread:Ljava/lang/Thread;

    .line 311
    sget-object v0, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mRawThemeFileLoadThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 312
    sget-object v0, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mRawThemeFileLoadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 313
    return-void
.end method

.method public static reset()V
    .registers 1

    .prologue
    .line 418
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mSelectedTheme:I

    .line 419
    return-void
.end method

.method public static resetThemeToBasic(Lcom/samsung/app/video/editor/external/TranscodeElement;)V
    .registers 7
    .parameter "lTrans"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 423
    if-eqz p0, :cond_26

    .line 425
    sput v5, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mSelectedTheme:I

    .line 426
    invoke-virtual {p0, v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setThemeName(I)V

    .line 428
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v1

    .line 429
    .local v1, lElemList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    if-eqz v1, :cond_16

    .line 431
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_27

    .line 443
    .end local v0           #i:I
    :cond_16
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->removeBGMMusic()V

    .line 444
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 445
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V

    .line 448
    .end local v1           #lElemList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    :cond_26
    return-void

    .line 433
    .restart local v0       #i:I
    .restart local v1       #lElemList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    :cond_27
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Element;

    .line 434
    .local v2, lElement:Lcom/samsung/app/video/editor/external/Element;
    iput-object v4, v2, Lcom/samsung/app/video/editor/external/Element;->alphaImageFileName:Ljava/lang/String;

    .line 435
    iput-object v4, v2, Lcom/samsung/app/video/editor/external/Element;->templateFileName:Ljava/lang/String;

    .line 436
    iput-object v4, v2, Lcom/samsung/app/video/editor/external/Element;->templateFileName_q:Ljava/lang/String;

    .line 437
    iput-object v4, v2, Lcom/samsung/app/video/editor/external/Element;->alphaImageFileName_q:Ljava/lang/String;

    .line 438
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->removetransitionEdit()V

    .line 440
    iput v5, v2, Lcom/samsung/app/video/editor/external/Element;->Video_Template:I

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method
