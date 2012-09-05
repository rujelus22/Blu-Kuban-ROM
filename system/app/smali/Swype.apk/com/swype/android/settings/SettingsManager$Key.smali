.class public final enum Lcom/swype/android/settings/SettingsManager$Key;
.super Ljava/lang/Enum;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/settings/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/swype/android/settings/SettingsManager$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum activeDisplay:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum autoCorrection:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum autoSpaceCheck:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum defaultWordTimeout:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum displayTraceBool:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum enableAudioFeedback:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum enableAutoCaps:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum enableHapticFeedback:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum enableRubbing:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum enableTipIndicator:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum nextWordPrediction:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum showBlueChars:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum showNavigationBar:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum showSuggestedWordMGD:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum showSuggestedWordNonMGD:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum showToastTips:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum showWCW:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum trackStats:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum useSwypeTapLayout:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum wordCompletion:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum wordSuggestionMaster:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum z1Operation:Lcom/swype/android/settings/SettingsManager$Key;

.field public static final enum z1OperationDefault:Lcom/swype/android/settings/SettingsManager$Key;


# instance fields
.field protected final index:I

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 123
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "enableAudioFeedback"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->enableAudioFeedback:Lcom/swype/android/settings/SettingsManager$Key;

    .line 124
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "wordCompletion"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->wordCompletion:Lcom/swype/android/settings/SettingsManager$Key;

    .line 125
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "enableRubbing"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->enableRubbing:Lcom/swype/android/settings/SettingsManager$Key;

    .line 126
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "enableTipIndicator"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->enableTipIndicator:Lcom/swype/android/settings/SettingsManager$Key;

    .line 127
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "showBlueChars"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->showBlueChars:Lcom/swype/android/settings/SettingsManager$Key;

    .line 128
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "trackStats"

    const/4 v2, 0x5

    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->trackStats:Lcom/swype/android/settings/SettingsManager$Key;

    .line 129
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "useSwypeTapLayout"

    const/4 v2, 0x6

    const/4 v3, 0x6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->useSwypeTapLayout:Lcom/swype/android/settings/SettingsManager$Key;

    .line 130
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "displayTraceBool"

    const/4 v2, 0x7

    const/4 v3, 0x7

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->displayTraceBool:Lcom/swype/android/settings/SettingsManager$Key;

    .line 131
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "autoSpaceCheck"

    const/16 v2, 0x8

    const/16 v3, 0x8

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->autoSpaceCheck:Lcom/swype/android/settings/SettingsManager$Key;

    .line 132
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "showWCW"

    const/16 v2, 0x9

    const/16 v3, 0x9

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->showWCW:Lcom/swype/android/settings/SettingsManager$Key;

    .line 133
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "z1Operation"

    const/16 v2, 0xa

    const/16 v3, 0xa

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->z1Operation:Lcom/swype/android/settings/SettingsManager$Key;

    .line 134
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "defaultWordTimeout"

    const/16 v2, 0xb

    const/16 v3, 0xb

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->defaultWordTimeout:Lcom/swype/android/settings/SettingsManager$Key;

    .line 135
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "enableAutoCaps"

    const/16 v2, 0xc

    const/16 v3, 0xc

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->enableAutoCaps:Lcom/swype/android/settings/SettingsManager$Key;

    .line 136
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "enableHapticFeedback"

    const/16 v2, 0xd

    const/16 v3, 0xd

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->enableHapticFeedback:Lcom/swype/android/settings/SettingsManager$Key;

    .line 137
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "activeDisplay"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const-class v4, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->activeDisplay:Lcom/swype/android/settings/SettingsManager$Key;

    .line 138
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "wordSuggestionMaster"

    const/16 v2, 0xf

    const/16 v3, 0xf

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->wordSuggestionMaster:Lcom/swype/android/settings/SettingsManager$Key;

    .line 139
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "autoCorrection"

    const/16 v2, 0x10

    const/16 v3, 0x10

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->autoCorrection:Lcom/swype/android/settings/SettingsManager$Key;

    .line 140
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "showSuggestedWordNonMGD"

    const/16 v2, 0x11

    const/16 v3, 0x11

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->showSuggestedWordNonMGD:Lcom/swype/android/settings/SettingsManager$Key;

    .line 141
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "showSuggestedWordMGD"

    const/16 v2, 0x12

    const/16 v3, 0x12

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->showSuggestedWordMGD:Lcom/swype/android/settings/SettingsManager$Key;

    .line 142
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "z1OperationDefault"

    const/16 v2, 0x13

    const/16 v3, 0x13

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->z1OperationDefault:Lcom/swype/android/settings/SettingsManager$Key;

    .line 143
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "showToastTips"

    const/16 v2, 0x14

    const/16 v3, 0x14

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->showToastTips:Lcom/swype/android/settings/SettingsManager$Key;

    .line 144
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "nextWordPrediction"

    const/16 v2, 0x15

    const/16 v3, 0x15

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->nextWordPrediction:Lcom/swype/android/settings/SettingsManager$Key;

    .line 145
    new-instance v0, Lcom/swype/android/settings/SettingsManager$Key;

    const-string v1, "showNavigationBar"

    const/16 v2, 0x16

    const/16 v3, 0x16

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/settings/SettingsManager$Key;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->showNavigationBar:Lcom/swype/android/settings/SettingsManager$Key;

    .line 122
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/swype/android/settings/SettingsManager$Key;

    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->enableAudioFeedback:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v1, v0, v5

    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->wordCompletion:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v1, v0, v6

    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->enableRubbing:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v1, v0, v7

    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->enableTipIndicator:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v1, v0, v8

    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->showBlueChars:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->trackStats:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->useSwypeTapLayout:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->displayTraceBool:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->autoSpaceCheck:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->showWCW:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->z1Operation:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->defaultWordTimeout:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->enableAutoCaps:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->enableHapticFeedback:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->activeDisplay:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->wordSuggestionMaster:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->autoCorrection:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->showSuggestedWordNonMGD:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->showSuggestedWordMGD:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->z1OperationDefault:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->showToastTips:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->nextWordPrediction:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->showNavigationBar:Lcom/swype/android/settings/SettingsManager$Key;

    aput-object v2, v0, v1

    sput-object v0, Lcom/swype/android/settings/SettingsManager$Key;->$VALUES:[Lcom/swype/android/settings/SettingsManager$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .registers 5
    .parameter
    .parameter
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p4, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 151
    iput p3, p0, Lcom/swype/android/settings/SettingsManager$Key;->index:I

    .line 152
    iput-object p4, p0, Lcom/swype/android/settings/SettingsManager$Key;->type:Ljava/lang/Class;

    .line 153
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swype/android/settings/SettingsManager$Key;
    .registers 2
    .parameter

    .prologue
    .line 122
    const-class v0, Lcom/swype/android/settings/SettingsManager$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swype/android/settings/SettingsManager$Key;

    return-object p0
.end method

.method public static values()[Lcom/swype/android/settings/SettingsManager$Key;
    .registers 1

    .prologue
    .line 122
    sget-object v0, Lcom/swype/android/settings/SettingsManager$Key;->$VALUES:[Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v0}, [Lcom/swype/android/settings/SettingsManager$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swype/android/settings/SettingsManager$Key;

    return-object v0
.end method


# virtual methods
.method public final getBoolean(Landroid/content/SharedPreferences;Z)Z
    .registers 4
    .parameter "sp"
    .parameter "defaultValue"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/swype/android/settings/SettingsManager$Key;->isBoolean()Z

    move-result v0

    if-nez v0, :cond_c

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 159
    :cond_c
    invoke-virtual {p0}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getInt(Landroid/content/SharedPreferences;I)I
    .registers 4
    .parameter "sp"
    .parameter "defaultValue"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/swype/android/settings/SettingsManager$Key;->isInt()Z

    move-result v0

    if-nez v0, :cond_c

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 166
    :cond_c
    invoke-virtual {p0}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "sp"
    .parameter "defaultValue"

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/swype/android/settings/SettingsManager$Key;->isString()Z

    move-result v0

    if-nez v0, :cond_c

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 173
    :cond_c
    invoke-virtual {p0}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isBoolean()Z
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/swype/android/settings/SettingsManager$Key;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInt()Z
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/swype/android/settings/SettingsManager$Key;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isString()Z
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/swype/android/settings/SettingsManager$Key;->type:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final putBoolean(Landroid/content/SharedPreferences$Editor;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/swype/android/settings/SettingsManager$Key;->isBoolean()Z

    move-result v0

    if-nez v0, :cond_c

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 180
    :cond_c
    invoke-virtual {p0}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 181
    return-void
.end method

.method public final putInt(Landroid/content/SharedPreferences$Editor;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/swype/android/settings/SettingsManager$Key;->isInt()Z

    move-result v0

    if-nez v0, :cond_c

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 187
    :cond_c
    invoke-virtual {p0}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 188
    return-void
.end method

.method public final putString(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/swype/android/settings/SettingsManager$Key;->isString()Z

    move-result v0

    if-nez v0, :cond_c

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 194
    :cond_c
    invoke-virtual {p0}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    return-void
.end method
