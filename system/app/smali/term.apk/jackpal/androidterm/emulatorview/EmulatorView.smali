.class public Ljackpal/androidterm/emulatorview/EmulatorView;
.super Landroid/view/View;
.source "EmulatorView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final CURSOR_BLINK_PERIOD:I = 0x3e8

.field private static final SELECT_TEXT_OFFSET_Y:I = -0x28


# instance fields
.field private final LOG_IME:Z

.field private final LOG_KEY_EVENTS:Z

.field private final TAG:Ljava/lang/String;

.field private mBackKeySendsCharacter:Z

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBlinkCursor:Ljava/lang/Runnable;

.field private mCharacterHeight:I

.field private mCharacterWidth:F

.field private mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

.field private mColumns:I

.field private mControlKeyCode:I

.field private mCursorBlink:I

.field private mCursorPaint:Landroid/graphics/Paint;

.field private mCursorStyle:I

.field private mCursorVisible:Z

.field private mDeferInit:Z

.field private mDensity:F

.field private mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

.field private mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mFnKeyCode:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mImeBuffer:Ljava/lang/String;

.field private mIsActive:Z

.field private mIsControlKeySent:Z

.field private mIsFnKeySent:Z

.field private mIsSelectingText:Z

.field private mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

.field private mKnownSize:Z

.field private mLeftColumn:I

.field private mRows:I

.field private mScaledDensity:F

.field private mScrollRemainder:F

.field private mSelX1:I

.field private mSelX2:I

.field private mSelXAnchor:I

.field private mSelY1:I

.field private mSelY2:I

.field private mSelYAnchor:I

.field private mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

.field private mTextRenderer:Ljackpal/androidterm/emulatorview/TextRenderer;

.field private mTextSize:I

.field private mTopOfScreenMargin:I

.field private mTopRow:I

.field private mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

.field private mUpdateNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

.field private mUseCookedIme:Z

.field private mVisibleColumns:I

.field private mVisibleHeight:I

.field private mVisibleWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 249
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const-string v0, "EmulatorView"

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->TAG:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->LOG_KEY_EVENTS:Z

    .line 68
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->LOG_IME:Z

    .line 77
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mDeferInit:Z

    .line 112
    const/16 v0, 0xa

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextSize:I

    .line 120
    sget-object v0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorVisible:Z

    .line 163
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    .line 165
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBackKeySendsCharacter:Z

    .line 168
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsControlKeySent:Z

    .line 169
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsFnKeySent:Z

    .line 176
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelXAnchor:I

    .line 177
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelYAnchor:I

    .line 178
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX1:I

    .line 179
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    .line 180
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX2:I

    .line 181
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    .line 183
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsActive:Z

    .line 185
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/EmulatorView$1;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBlinkCursor:Ljava/lang/Runnable;

    .line 203
    const-string v0, ""

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    .line 208
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    .line 213
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$2;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/EmulatorView$2;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mUpdateNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 261
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const-string v0, "EmulatorView"

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->TAG:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->LOG_KEY_EVENTS:Z

    .line 68
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->LOG_IME:Z

    .line 77
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mDeferInit:Z

    .line 112
    const/16 v0, 0xa

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextSize:I

    .line 120
    sget-object v0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorVisible:Z

    .line 163
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    .line 165
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBackKeySendsCharacter:Z

    .line 168
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsControlKeySent:Z

    .line 169
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsFnKeySent:Z

    .line 176
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelXAnchor:I

    .line 177
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelYAnchor:I

    .line 178
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX1:I

    .line 179
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    .line 180
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX2:I

    .line 181
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    .line 183
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsActive:Z

    .line 185
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/EmulatorView$1;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBlinkCursor:Ljava/lang/Runnable;

    .line 203
    const-string v0, ""

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    .line 208
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    .line 213
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$2;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/EmulatorView$2;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mUpdateNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljackpal/androidterm/emulatorview/TermSession;Landroid/util/DisplayMetrics;)V
    .registers 7
    .parameter "context"
    .parameter "session"
    .parameter "metrics"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 236
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 66
    const-string v0, "EmulatorView"

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->TAG:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->LOG_KEY_EVENTS:Z

    .line 68
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->LOG_IME:Z

    .line 77
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mDeferInit:Z

    .line 112
    const/16 v0, 0xa

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextSize:I

    .line 120
    sget-object v0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorVisible:Z

    .line 163
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    .line 165
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBackKeySendsCharacter:Z

    .line 168
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsControlKeySent:Z

    .line 169
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsFnKeySent:Z

    .line 176
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelXAnchor:I

    .line 177
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelYAnchor:I

    .line 178
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX1:I

    .line 179
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    .line 180
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX2:I

    .line 181
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    .line 183
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsActive:Z

    .line 185
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/EmulatorView$1;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBlinkCursor:Ljava/lang/Runnable;

    .line 203
    const-string v0, ""

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    .line 208
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    .line 213
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$2;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/EmulatorView$2;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mUpdateNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    .line 237
    invoke-virtual {p0, p2}, Ljackpal/androidterm/emulatorview/EmulatorView;->attachSession(Ljackpal/androidterm/emulatorview/TermSession;)V

    .line 238
    invoke-virtual {p0, p3}, Ljackpal/androidterm/emulatorview/EmulatorView;->setDensity(Landroid/util/DisplayMetrics;)V

    .line 239
    return-void
.end method

.method static synthetic access$000(Ljackpal/androidterm/emulatorview/EmulatorView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorBlink:I

    return v0
.end method

.method static synthetic access$100(Ljackpal/androidterm/emulatorview/EmulatorView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorVisible:Z

    return v0
.end method

.method static synthetic access$1000(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljackpal/androidterm/emulatorview/TermSession;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

    return-object v0
.end method

.method static synthetic access$102(Ljackpal/androidterm/emulatorview/EmulatorView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorVisible:Z

    return p1
.end method

.method static synthetic access$1100(Ljackpal/androidterm/emulatorview/EmulatorView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->clearSpecialKeyStatus()V

    return-void
.end method

.method static synthetic access$1200(Ljackpal/androidterm/emulatorview/EmulatorView;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/EmulatorView;->setImeBuffer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljackpal/androidterm/emulatorview/EmulatorView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Ljackpal/androidterm/emulatorview/EmulatorView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    return v0
.end method

.method static synthetic access$400(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljackpal/androidterm/emulatorview/TerminalEmulator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    return-object v0
.end method

.method static synthetic access$520(Ljackpal/androidterm/emulatorview/EmulatorView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    sub-int/2addr v0, p1

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    return v0
.end method

.method static synthetic access$620(Ljackpal/androidterm/emulatorview/EmulatorView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    sub-int/2addr v0, p1

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    return v0
.end method

.method static synthetic access$720(Ljackpal/androidterm/emulatorview/EmulatorView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelYAnchor:I

    sub-int/2addr v0, p1

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelYAnchor:I

    return v0
.end method

.method static synthetic access$800(Ljackpal/androidterm/emulatorview/EmulatorView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->ensureCursorVisible()V

    return-void
.end method

.method static synthetic access$900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljackpal/androidterm/emulatorview/TermKeyListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    return-object v0
.end method

.method private clearSpecialKeyStatus()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1031
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsControlKeySent:Z

    if-eqz v0, :cond_c

    .line 1032
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsControlKeySent:Z

    .line 1033
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TermKeyListener;->handleControlKey(Z)V

    .line 1035
    :cond_c
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsFnKeySent:Z

    if-eqz v0, :cond_17

    .line 1036
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsFnKeySent:Z

    .line 1037
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TermKeyListener;->handleFnKey(Z)V

    .line 1039
    :cond_17
    return-void
.end method

.method private ensureCursorVisible()V
    .registers 5

    .prologue
    .line 1157
    const/4 v2, 0x0

    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    .line 1158
    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleColumns:I

    if-lez v2, :cond_1b

    .line 1159
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getCursorCol()I

    move-result v0

    .line 1160
    .local v0, cx:I
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getCursorCol()I

    move-result v2

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLeftColumn:I

    sub-int v1, v2, v3

    .line 1161
    .local v1, visibleCursorX:I
    if-gez v1, :cond_1c

    .line 1162
    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLeftColumn:I

    .line 1167
    .end local v0           #cx:I
    .end local v1           #visibleCursorX:I
    :cond_1b
    :goto_1b
    return-void

    .line 1163
    .restart local v0       #cx:I
    .restart local v1       #visibleCursorX:I
    :cond_1c
    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleColumns:I

    if-lt v1, v2, :cond_1b

    .line 1164
    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleColumns:I

    sub-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLeftColumn:I

    goto :goto_1b
.end method

.method private handleControlKey(IZ)Z
    .registers 4
    .parameter "keyCode"
    .parameter "down"

    .prologue
    .line 1005
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mControlKeyCode:I

    if-ne p1, v0, :cond_b

    .line 1009
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, p2}, Ljackpal/androidterm/emulatorview/TermKeyListener;->handleControlKey(Z)V

    .line 1010
    const/4 v0, 0x1

    .line 1012
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private handleFnKey(IZ)Z
    .registers 4
    .parameter "keyCode"
    .parameter "down"

    .prologue
    .line 1016
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mFnKeyCode:I

    if-ne p1, v0, :cond_b

    .line 1020
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, p2}, Ljackpal/androidterm/emulatorview/TermKeyListener;->handleFnKey(Z)V

    .line 1021
    const/4 v0, 0x1

    .line 1023
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private initialize()V
    .registers 3

    .prologue
    .line 710
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

    .line 712
    .local v0, session:Ljackpal/androidterm/emulatorview/TermSession;
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->updateText()V

    .line 714
    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TermSession;->getTranscriptScreen()Ljackpal/androidterm/emulatorview/TranscriptScreen;

    move-result-object v1

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    .line 715
    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TermSession;->getEmulator()Ljackpal/androidterm/emulatorview/TerminalEmulator;

    move-result-object v1

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    .line 716
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mUpdateNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TermSession;->setUpdateCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 718
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->requestFocus()Z

    .line 719
    return-void
.end method

.method private isInterceptedSystemKey(I)Z
    .registers 3
    .parameter "keyCode"

    .prologue
    .line 972
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBackKeySendsCharacter:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private isSystemKey(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1027
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    return v0
.end method

.method private onTouchEventWhileSelectingText(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "ev"

    .prologue
    const/4 v12, 0x1

    .line 896
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 897
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterWidth:F

    div-float/2addr v8, v9

    float-to-int v2, v8

    .line 898
    .local v2, cx:I
    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    const/high16 v10, -0x3de0

    iget v11, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mScaledDensity:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 901
    .local v3, cy:I
    packed-switch v0, :pswitch_data_84

    .line 930
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->toggleSelectingText()V

    .line 931
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 934
    :goto_2d
    return v12

    .line 903
    :pswitch_2e
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelXAnchor:I

    .line 904
    iput v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelYAnchor:I

    .line 905
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX1:I

    .line 906
    iput v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    .line 907
    iget v8, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX1:I

    iput v8, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX2:I

    .line 908
    iget v8, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    iput v8, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    goto :goto_2d

    .line 912
    :pswitch_3f
    iget v8, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelXAnchor:I

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 913
    .local v6, minx:I
    iget v8, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelXAnchor:I

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 914
    .local v4, maxx:I
    iget v8, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelYAnchor:I

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 915
    .local v7, miny:I
    iget v8, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelYAnchor:I

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 916
    .local v5, maxy:I
    iput v6, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX1:I

    .line 917
    iput v7, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    .line 918
    iput v4, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX2:I

    .line 919
    iput v5, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    .line 920
    if-ne v0, v12, :cond_7f

    .line 921
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "clipboard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 924
    .local v1, clip:Landroid/text/ClipboardManager;
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->getSelectedText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 925
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->toggleSelectingText()V

    .line 927
    .end local v1           #clip:Landroid/text/ClipboardManager;
    :cond_7f
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    goto :goto_2d

    .line 901
    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_3f
        :pswitch_3f
    .end packed-switch
.end method

.method private setImeBuffer(Ljava/lang/String;)V
    .registers 3
    .parameter "buffer"

    .prologue
    .line 650
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 651
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 653
    :cond_b
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    .line 654
    return-void
.end method

.method private updateSize(II)V
    .registers 7
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1078
    int-to-float v0, p1

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColumns:I

    .line 1079
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleWidth:I

    int-to-float v0, v0

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleColumns:I

    .line 1081
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextRenderer:Ljackpal/androidterm/emulatorview/TextRenderer;

    invoke-interface {v0}, Ljackpal/androidterm/emulatorview/TextRenderer;->getTopMargin()I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopOfScreenMargin:I

    .line 1082
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopOfScreenMargin:I

    sub-int v0, p2, v0

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterHeight:I

    div-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mRows:I

    .line 1083
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColumns:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mRows:I

    invoke-virtual {v0, v1, v2}, Ljackpal/androidterm/emulatorview/TermSession;->updateSize(II)V

    .line 1086
    iput v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    .line 1087
    iput v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLeftColumn:I

    .line 1089
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 1090
    return-void
.end method

.method private updateText()V
    .registers 4

    .prologue
    .line 1042
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    .line 1043
    .local v0, scheme:Ljackpal/androidterm/emulatorview/ColorScheme;
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextSize:I

    if-lez v1, :cond_2d

    .line 1044
    new-instance v1, Ljackpal/androidterm/emulatorview/PaintRenderer;

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextSize:I

    invoke-direct {v1, v2, v0}, Ljackpal/androidterm/emulatorview/PaintRenderer;-><init>(ILjackpal/androidterm/emulatorview/ColorScheme;)V

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextRenderer:Ljackpal/androidterm/emulatorview/TextRenderer;

    .line 1049
    :goto_f
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/ColorScheme;->getBackColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1050
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextRenderer:Ljackpal/androidterm/emulatorview/TextRenderer;

    invoke-interface {v1}, Ljackpal/androidterm/emulatorview/TextRenderer;->getCharacterWidth()F

    move-result v1

    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterWidth:F

    .line 1051
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextRenderer:Ljackpal/androidterm/emulatorview/TextRenderer;

    invoke-interface {v1}, Ljackpal/androidterm/emulatorview/TextRenderer;->getCharacterHeight()I

    move-result v1

    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterHeight:I

    .line 1053
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->updateSize(Z)V

    .line 1054
    return-void

    .line 1047
    :cond_2d
    new-instance v1, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;

    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;-><init>(Landroid/content/res/Resources;Ljackpal/androidterm/emulatorview/ColorScheme;)V

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextRenderer:Ljackpal/androidterm/emulatorview/TextRenderer;

    goto :goto_f
.end method


# virtual methods
.method public attachSession(Ljackpal/androidterm/emulatorview/TermSession;)V
    .registers 7
    .parameter "session"

    .prologue
    const/16 v4, 0x80

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextRenderer:Ljackpal/androidterm/emulatorview/TextRenderer;

    .line 271
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorPaint:Landroid/graphics/Paint;

    .line 272
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 273
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 274
    iput v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    .line 275
    iput v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLeftColumn:I

    .line 276
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 278
    invoke-virtual {p0, v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->setVerticalScrollBarEnabled(Z)V

    .line 279
    invoke-virtual {p0, v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->setFocusable(Z)V

    .line 280
    invoke-virtual {p0, v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->setFocusableInTouchMode(Z)V

    .line 282
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

    .line 284
    new-instance v0, Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-direct {v0, p1}, Ljackpal/androidterm/emulatorview/TermKeyListener;-><init>(Ljackpal/androidterm/emulatorview/TermSession;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    .line 287
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mDeferInit:Z

    if-eqz v0, :cond_44

    .line 288
    iput-boolean v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mDeferInit:Z

    .line 289
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKnownSize:Z

    .line 290
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->initialize()V

    .line 292
    :cond_44
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2

    .prologue
    .line 693
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mRows:I

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .registers 3

    .prologue
    .line 703
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getActiveRows()I

    move-result v0

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    add-int/2addr v0, v1

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mRows:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    .prologue
    .line 683
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getActiveRows()I

    move-result v0

    return v0
.end method

.method public getKeypadApplicationMode()Z
    .registers 2

    .prologue
    .line 660
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getKeypadApplicationMode()Z

    move-result v0

    return v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1196
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX1:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX2:I

    iget v4, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    invoke-virtual {v0, v1, v2, v3, v4}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectingText()Z
    .registers 2

    .prologue
    .line 1187
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    return v0
.end method

.method public getTermSession()Ljackpal/androidterm/emulatorview/TermSession;
    .registers 2

    .prologue
    .line 727
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

    return-object v0
.end method

.method public getVisibleHeight()I
    .registers 2

    .prologue
    .line 745
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleHeight:I

    return v0
.end method

.method public getVisibleWidth()I
    .registers 2

    .prologue
    .line 736
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleWidth:I

    return v0
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .prologue
    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3
    .parameter "outAttrs"

    .prologue
    .line 353
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mUseCookedIme:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_5
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 356
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$3;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/EmulatorView$3;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    return-object v0

    .line 353
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 876
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 880
    :goto_d
    return v1

    .line 879
    :cond_e
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mScrollRemainder:F

    goto :goto_d
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 17
    .parameter "canvas"

    .prologue
    .line 1118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->updateSize(Z)V

    .line 1120
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    if-nez v0, :cond_9

    .line 1154
    :cond_8
    return-void

    .line 1125
    :cond_9
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->getWidth()I

    move-result v14

    .line 1126
    .local v14, w:I
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->getHeight()I

    move-result v13

    .line 1128
    .local v13, h:I
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v14

    int-to-float v4, v13

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1129
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLeftColumn:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterWidth:F

    mul-float v3, v0, v2

    .line 1130
    .local v3, x:F
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterHeight:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopOfScreenMargin:I

    add-int/2addr v0, v2

    int-to-float v4, v0

    .line 1131
    .local v4, y:F
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mRows:I

    add-int v12, v0, v2

    .line 1132
    .local v12, endLine:I
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getCursorCol()I

    move-result v10

    .line 1133
    .local v10, cx:I
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getCursorRow()I

    move-result v11

    .line 1134
    .local v11, cy:I
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    .local v1, i:I
    :goto_3e
    if-ge v1, v12, :cond_8

    .line 1135
    const/4 v6, -0x1

    .line 1136
    .local v6, cursorX:I
    if-ne v1, v11, :cond_48

    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorVisible:Z

    if-eqz v0, :cond_48

    .line 1137
    move v6, v10

    .line 1139
    :cond_48
    const/4 v7, -0x1

    .line 1140
    .local v7, selx1:I
    const/4 v8, -0x1

    .line 1141
    .local v8, selx2:I
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    if-lt v1, v0, :cond_5e

    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    if-gt v1, v0, :cond_5e

    .line 1142
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    if-ne v1, v0, :cond_58

    .line 1143
    iget v7, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX1:I

    .line 1145
    :cond_58
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    if-ne v1, v0, :cond_70

    .line 1146
    iget v8, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX2:I

    .line 1151
    :cond_5e
    :goto_5e
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextRenderer:Ljackpal/androidterm/emulatorview/TextRenderer;

    iget-object v9, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v9}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->drawText(ILandroid/graphics/Canvas;FFLjackpal/androidterm/emulatorview/TextRenderer;IIILjava/lang/String;)V

    .line 1152
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterHeight:I

    int-to-float v0, v0

    add-float/2addr v4, v0

    .line 1134
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 1148
    :cond_70
    iget v8, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColumns:I

    goto :goto_5e
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 860
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 866
    :goto_d
    return v2

    .line 864
    :cond_e
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mScrollRemainder:F

    .line 865
    const v0, 0x3dcccccd

    mul-float/2addr v0, p3

    const v1, -0x42333333

    mul-float/2addr v1, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_d
.end method

.method public onJumpTapDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e1"
    .parameter "e2"

    .prologue
    .line 846
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    .line 847
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 848
    const/4 v0, 0x1

    return v0
.end method

.method public onJumpTapUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e1"
    .parameter "e2"

    .prologue
    .line 853
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getActiveTranscriptRows()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    .line 854
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 855
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 949
    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->handleControlKey(IZ)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 967
    :cond_7
    :goto_7
    return v0

    .line 951
    :cond_8
    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->handleFnKey(IZ)Z

    move-result v1

    if-nez v1, :cond_7

    .line 953
    invoke-direct {p0, p1, p2}, Ljackpal/androidterm/emulatorview/EmulatorView;->isSystemKey(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 954
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/EmulatorView;->isInterceptedSystemKey(I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 956
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7

    .line 963
    :cond_1f
    :try_start_1f
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->getKeypadApplicationMode()Z

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljackpal/androidterm/emulatorview/TermKeyListener;->keyDown(ILandroid/view/KeyEvent;Z)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_28} :catch_29

    goto :goto_7

    .line 964
    :catch_29
    move-exception v1

    goto :goto_7
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 987
    invoke-direct {p0, p1, v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->handleControlKey(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1000
    :cond_8
    :goto_8
    return v0

    .line 989
    :cond_9
    invoke-direct {p0, p1, v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->handleFnKey(IZ)Z

    move-result v1

    if-nez v1, :cond_8

    .line 991
    invoke-direct {p0, p1, p2}, Ljackpal/androidterm/emulatorview/EmulatorView;->isSystemKey(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 993
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/EmulatorView;->isInterceptedSystemKey(I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 994
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_8

    .line 998
    :cond_20
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v1, p1, p2}, Ljackpal/androidterm/emulatorview/TermKeyListener;->keyUp(ILandroid/view/KeyEvent;)V

    .line 999
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->clearSpecialKeyStatus()V

    goto :goto_8
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 822
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->showContextMenu()Z

    .line 823
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 323
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorBlink:I

    if-eqz v0, :cond_b

    .line 324
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBlinkCursor:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 326
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsActive:Z

    .line 327
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsActive:Z

    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->updateSize(Z)V

    .line 314
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorBlink:I

    if-eqz v0, :cond_14

    .line 315
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBlinkCursor:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    :cond_14
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x1

    .line 827
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v1, :cond_e

    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 838
    :goto_d
    return v4

    .line 830
    :cond_e
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mScrollRemainder:F

    add-float/2addr p4, v1

    .line 831
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterHeight:I

    int-to-float v1, v1

    div-float v1, p4, v1

    float-to-int v0, v1

    .line 832
    .local v0, deltaRows:I
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterHeight:I

    mul-int/2addr v1, v0

    int-to-float v1, v1

    sub-float v1, p4, v1

    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mScrollRemainder:F

    .line 833
    const/4 v1, 0x0

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    invoke-virtual {v2}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getActiveTranscriptRows()I

    move-result v2

    neg-int v2, v2

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    .line 836
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    goto :goto_d
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 870
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_9

    .line 871
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 873
    :cond_9
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 842
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 813
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 817
    :goto_d
    return v1

    .line 816
    :cond_e
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->requestFocus()Z

    goto :goto_d
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v1, 0x1

    .line 1063
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

    if-nez v0, :cond_8

    .line 1065
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mDeferInit:Z

    .line 1075
    :goto_7
    return-void

    .line 1069
    :cond_8
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKnownSize:Z

    if-nez v0, :cond_12

    .line 1070
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKnownSize:Z

    .line 1071
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->initialize()V

    goto :goto_7

    .line 1073
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->updateSize(Z)V

    goto :goto_7
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 887
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    if-eqz v0, :cond_9

    .line 888
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/EmulatorView;->onTouchEventWhileSelectingText(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 890
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method public page(I)V
    .registers 6
    .parameter "delta"

    .prologue
    .line 756
    const/4 v0, 0x0

    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getActiveTranscriptRows()I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mRows:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    .line 759
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 760
    return-void
.end method

.method public pageHorizontal(I)V
    .registers 6
    .parameter "deltaColumns"

    .prologue
    .line 769
    const/4 v0, 0x0

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLeftColumn:I

    add-int/2addr v1, p1

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColumns:I

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleColumns:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLeftColumn:I

    .line 772
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 773
    return-void
.end method

.method public sendControlKey()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1203
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsControlKeySent:Z

    .line 1204
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TermKeyListener;->handleControlKey(Z)V

    .line 1205
    return-void
.end method

.method public sendFnKey()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1212
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsFnKeySent:Z

    .line 1213
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TermKeyListener;->handleFnKey(Z)V

    .line 1214
    return-void
.end method

.method public setBackKeyCharacter(I)V
    .registers 3
    .parameter "keyCode"

    .prologue
    .line 1220
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/emulatorview/TermKeyListener;->setBackKeyCharacter(I)V

    .line 1221
    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBackKeySendsCharacter:Z

    .line 1222
    return-void

    .line 1221
    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setColorScheme(Ljackpal/androidterm/emulatorview/ColorScheme;)V
    .registers 3
    .parameter "scheme"

    .prologue
    .line 338
    if-nez p1, :cond_a

    .line 339
    sget-object v0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    .line 343
    :goto_6
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->updateText()V

    .line 344
    return-void

    .line 341
    :cond_a
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    goto :goto_6
.end method

.method public setControlKeyCode(I)V
    .registers 2
    .parameter "keyCode"

    .prologue
    .line 1228
    iput p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mControlKeyCode:I

    .line 1229
    return-void
.end method

.method public setCursorStyle(II)V
    .registers 7
    .parameter "style"
    .parameter "blink"

    .prologue
    .line 792
    iput p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorStyle:I

    .line 793
    if-eqz p2, :cond_14

    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorBlink:I

    if-nez v0, :cond_14

    .line 794
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBlinkCursor:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 798
    :cond_11
    :goto_11
    iput p2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorBlink:I

    .line 799
    return-void

    .line 795
    :cond_14
    if-nez p2, :cond_11

    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorBlink:I

    if-eqz v0, :cond_11

    .line 796
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBlinkCursor:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method public setDensity(Landroid/util/DisplayMetrics;)V
    .registers 4
    .parameter "metrics"

    .prologue
    .line 300
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mDensity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_10

    .line 302
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextSize:I

    int-to-float v0, v0

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextSize:I

    .line 304
    :cond_10
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mDensity:F

    .line 305
    iget v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mScaledDensity:F

    .line 306
    return-void
.end method

.method public setExtGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 675
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 676
    return-void
.end method

.method public setFnKeyCode(I)V
    .registers 2
    .parameter "keyCode"

    .prologue
    .line 1235
    iput p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mFnKeyCode:I

    .line 1236
    return-void
.end method

.method public setTextSize(I)V
    .registers 4
    .parameter "fontSize"

    .prologue
    .line 781
    int-to-float v0, p1

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextSize:I

    .line 782
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->updateText()V

    .line 783
    return-void
.end method

.method public setUseCookedIME(Z)V
    .registers 2
    .parameter "useCookedIME"

    .prologue
    .line 807
    iput-boolean p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mUseCookedIme:Z

    .line 808
    return-void
.end method

.method public toggleSelectingText()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1173
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    if-nez v0, :cond_1e

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    .line 1174
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    if-nez v0, :cond_20

    :goto_e
    invoke-virtual {p0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->setVerticalScrollBarEnabled(Z)V

    .line 1175
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    if-nez v0, :cond_1d

    .line 1176
    iput v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX1:I

    .line 1177
    iput v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    .line 1178
    iput v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX2:I

    .line 1179
    iput v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    .line 1181
    :cond_1d
    return-void

    :cond_1e
    move v0, v2

    .line 1173
    goto :goto_8

    :cond_20
    move v1, v2

    .line 1174
    goto :goto_e
.end method

.method public updateSize(Z)V
    .registers 6
    .parameter "force"

    .prologue
    .line 1099
    iget-boolean v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKnownSize:Z

    if-eqz v2, :cond_21

    .line 1100
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->getWidth()I

    move-result v1

    .line 1101
    .local v1, w:I
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->getHeight()I

    move-result v0

    .line 1103
    .local v0, h:I
    if-nez p1, :cond_16

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleWidth:I

    if-ne v1, v2, :cond_16

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleHeight:I

    if-eq v0, v2, :cond_21

    .line 1104
    :cond_16
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleWidth:I

    .line 1105
    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleHeight:I

    .line 1106
    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleWidth:I

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleHeight:I

    invoke-direct {p0, v2, v3}, Ljackpal/androidterm/emulatorview/EmulatorView;->updateSize(II)V

    .line 1109
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_21
    return-void
.end method
