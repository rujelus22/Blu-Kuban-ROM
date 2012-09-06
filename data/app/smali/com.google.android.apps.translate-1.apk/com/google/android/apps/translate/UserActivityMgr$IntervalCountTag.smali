.class public final enum Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;
.super Ljava/lang/Enum;
.source "UserActivityMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/UserActivityMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntervalCountTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

.field public static final enum CHIPVIEW_SRC_COPY_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

.field public static final enum CHIPVIEW_SRC_SEARCH_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

.field public static final enum CHIPVIEW_SRC_SHARE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

.field public static final enum CHIPVIEW_SRC_TRANSLATE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

.field public static final enum CHIPVIEW_SRC_TTS_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

.field public static final enum CHIPVIEW_TRG_COPY_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

.field public static final enum CHIPVIEW_TRG_SEARCH_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

.field public static final enum CHIPVIEW_TRG_SHARE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

.field public static final enum CHIPVIEW_TRG_SUPERSIZE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

.field public static final enum CHIPVIEW_TRG_TRANSLATE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

.field public static final enum CHIPVIEW_TRG_TTS_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

.field public static final enum EDITPANELVIEW_INSTANT_TRANSLATION_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

.field public static final enum FAVORITES_VIEWS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

.field public static final enum FAVORITES_VIEW_ITEM_EXPANSIONS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

.field public static final enum HISTORY_VIEWS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

.field public static final enum HISTORY_VIEW_ITEM_EXPANSIONS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

.field public static final enum STARS_MINUS_UNSTARS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;


# instance fields
.field private final mTagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    const-string v1, "FAVORITES_VIEWS"

    const-string v2, "fvrv"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->FAVORITES_VIEWS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    .line 86
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    const-string v1, "HISTORY_VIEWS"

    const-string v2, "hstv"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->HISTORY_VIEWS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    .line 88
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    const-string v1, "FAVORITES_VIEW_ITEM_EXPANSIONS"

    const-string v2, "fvrie"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->FAVORITES_VIEW_ITEM_EXPANSIONS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    .line 89
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    const-string v1, "HISTORY_VIEW_ITEM_EXPANSIONS"

    const-string v2, "hsrie"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->HISTORY_VIEW_ITEM_EXPANSIONS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    .line 91
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    const-string v1, "EDITPANELVIEW_INSTANT_TRANSLATION_CLICKS"

    const-string v2, "epit"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->EDITPANELVIEW_INSTANT_TRANSLATION_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    .line 93
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    const-string v1, "CHIPVIEW_SRC_COPY_CLICKS"

    const/4 v2, 0x5

    const-string v3, "cvscp"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_SRC_COPY_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    .line 94
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    const-string v1, "CHIPVIEW_TRG_COPY_CLICKS"

    const/4 v2, 0x6

    const-string v3, "cvtcp"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_TRG_COPY_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    .line 95
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    const-string v1, "CHIPVIEW_SRC_SHARE_CLICKS"

    const/4 v2, 0x7

    const-string v3, "cvsshr"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_SRC_SHARE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    .line 96
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    const-string v1, "CHIPVIEW_TRG_SHARE_CLICKS"

    const/16 v2, 0x8

    const-string v3, "cvtshr"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_TRG_SHARE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    .line 97
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    const-string v1, "CHIPVIEW_TRG_SUPERSIZE_CLICKS"

    const/16 v2, 0x9

    const-string v3, "cvtspsz"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_TRG_SUPERSIZE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    .line 98
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    const-string v1, "CHIPVIEW_SRC_TTS_CLICKS"

    const/16 v2, 0xa

    const-string v3, "cvstts"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_SRC_TTS_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    .line 99
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    const-string v1, "CHIPVIEW_TRG_TTS_CLICKS"

    const/16 v2, 0xb

    const-string v3, "cvttts"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_TRG_TTS_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    .line 100
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    const-string v1, "CHIPVIEW_SRC_SEARCH_CLICKS"

    const/16 v2, 0xc

    const-string v3, "cvssrch"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_SRC_SEARCH_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    .line 101
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    const-string v1, "CHIPVIEW_TRG_SEARCH_CLICKS"

    const/16 v2, 0xd

    const-string v3, "cvtsrch"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_TRG_SEARCH_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    .line 102
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    const-string v1, "CHIPVIEW_SRC_TRANSLATE_CLICKS"

    const/16 v2, 0xe

    const-string v3, "cvstran"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_SRC_TRANSLATE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    .line 103
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    const-string v1, "CHIPVIEW_TRG_TRANSLATE_CLICKS"

    const/16 v2, 0xf

    const-string v3, "cvttran"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_TRG_TRANSLATE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    .line 104
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    const-string v1, "STARS_MINUS_UNSTARS"

    const/16 v2, 0x10

    const-string v3, "smus"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->STARS_MINUS_UNSTARS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    .line 83
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->FAVORITES_VIEWS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->HISTORY_VIEWS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->FAVORITES_VIEW_ITEM_EXPANSIONS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->HISTORY_VIEW_ITEM_EXPANSIONS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->EDITPANELVIEW_INSTANT_TRANSLATION_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_SRC_COPY_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_TRG_COPY_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_SRC_SHARE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_TRG_SHARE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_TRG_SUPERSIZE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_SRC_TTS_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_TRG_TTS_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_SRC_SEARCH_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_TRG_SEARCH_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_SRC_TRANSLATE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_TRG_TRANSLATE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->STARS_MINUS_UNSTARS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->$VALUES:[Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter "tagName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput-object p3, p0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->mTagName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;
    .registers 2
    .parameter "name"

    .prologue
    .line 83
    const-class v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;
    .registers 1

    .prologue
    .line 83
    sget-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->$VALUES:[Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    invoke-virtual {v0}, [Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    return-object v0
.end method


# virtual methods
.method public tagName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->mTagName:Ljava/lang/String;

    return-object v0
.end method
