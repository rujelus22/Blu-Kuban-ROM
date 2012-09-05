.class public Lcom/sec/android/app/lcdtest/button_touch;
.super Landroid/app/Activity;
.source "button_touch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/lcdtest/button_touch$MyView;
    }
.end annotation


# instance fields
.field private final HEIGHT_BASIS:I

.field private final WIDTH_BASIS:I

.field private click:[[Z

.field private draw:[[Z

.field private isDrawArea:[[Z

.field private final mBottommostOfMatrix:I

.field private final mCenterOfHorizontalOfMatrix:I

.field private final mCenterOfVerticalOfMatrix:I

.field private final mLeftmostOfMatrix:I

.field private final mRightmostOfMatrix:I

.field private final mTopmostOfMatrix:I

.field private remoteCall:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x13

    const/16 v2, 0xb

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    iput v3, p0, Lcom/sec/android/app/lcdtest/button_touch;->HEIGHT_BASIS:I

    .line 24
    iput v2, p0, Lcom/sec/android/app/lcdtest/button_touch;->WIDTH_BASIS:I

    .line 25
    iput-boolean v4, p0, Lcom/sec/android/app/lcdtest/button_touch;->remoteCall:Z

    .line 28
    filled-new-array {v3, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch;->click:[[Z

    .line 29
    filled-new-array {v3, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch;->draw:[[Z

    .line 31
    filled-new-array {v3, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch;->isDrawArea:[[Z

    .line 33
    iput v4, p0, Lcom/sec/android/app/lcdtest/button_touch;->mTopmostOfMatrix:I

    .line 34
    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/app/lcdtest/button_touch;->mBottommostOfMatrix:I

    .line 35
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/lcdtest/button_touch;->mCenterOfVerticalOfMatrix:I

    .line 36
    iput v4, p0, Lcom/sec/android/app/lcdtest/button_touch;->mLeftmostOfMatrix:I

    .line 37
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/lcdtest/button_touch;->mRightmostOfMatrix:I

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/lcdtest/button_touch;->mCenterOfHorizontalOfMatrix:I

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/lcdtest/button_touch;)[[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch;->draw:[[Z

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/lcdtest/button_touch;)[[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch;->click:[[Z

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/lcdtest/button_touch;)[[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch;->isDrawArea:[[Z

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/lcdtest/button_touch;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/button_touch;->isPass()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/lcdtest/button_touch;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/sec/android/app/lcdtest/button_touch;->remoteCall:Z

    return v0
.end method

.method private decideRemote()V
    .registers 4

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/button_touch;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    .local v0, i:Landroid/content/Intent;
    const-string v1, "RemoteCall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/lcdtest/button_touch;->remoteCall:Z

    .line 53
    return-void
.end method

.method private fillUpMatrix()V
    .registers 5

    .prologue
    .line 56
    const/4 v1, 0x0

    .local v1, row:I
    :goto_1
    const/16 v2, 0x13

    if-ge v1, v2, :cond_25

    .line 57
    const/4 v0, 0x0

    .local v0, column:I
    :goto_6
    const/16 v2, 0xb

    if-ge v0, v2, :cond_22

    .line 58
    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/lcdtest/button_touch;->isNeededCheck(II)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 59
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/button_touch;->isDrawArea:[[Z

    aget-object v2, v2, v1

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 57
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 62
    :cond_1a
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/button_touch;->isDrawArea:[[Z

    aget-object v2, v2, v1

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    goto :goto_17

    .line 56
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    .end local v0           #column:I
    :cond_25
    return-void
.end method

.method private isNeededCheck(II)Z
    .registers 4
    .parameter "row"
    .parameter "column"

    .prologue
    .line 69
    if-eqz p1, :cond_13

    const/16 v0, 0x12

    if-eq p1, v0, :cond_13

    const/16 v0, 0x9

    if-eq p1, v0, :cond_13

    if-eqz p2, :cond_13

    const/16 v0, 0xa

    if-eq p2, v0, :cond_13

    const/4 v0, 0x5

    if-ne p2, v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private isPass()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 81
    const/4 v1, 0x1

    .line 83
    .local v1, isPass:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    const/16 v4, 0x13

    if-ge v0, v4, :cond_27

    .line 84
    const/4 v2, 0x0

    .local v2, j:I
    :goto_8
    const/16 v4, 0xb

    if-ge v2, v4, :cond_24

    .line 85
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/button_touch;->isDrawArea:[[Z

    aget-object v4, v4, v0

    aget-boolean v4, v4, v2

    if-ne v4, v3, :cond_1f

    .line 86
    if-eqz v1, :cond_22

    iget-object v4, p0, Lcom/sec/android/app/lcdtest/button_touch;->draw:[[Z

    aget-object v4, v4, v0

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_22

    move v1, v3

    .line 84
    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 86
    :cond_22
    const/4 v1, 0x0

    goto :goto_1f

    .line 83
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 89
    .end local v2           #j:I
    :cond_27
    return v1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/button_touch;->finish()V

    .line 99
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/button_touch;->decideRemote()V

    .line 43
    const-string v0, "button_touch"

    const-string v1, "TouchTest is created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Lcom/sec/android/app/lcdtest/button_touch$MyView;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/lcdtest/button_touch$MyView;-><init>(Lcom/sec/android/app/lcdtest/button_touch;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/button_touch;->setContentView(Landroid/view/View;)V

    .line 45
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/button_touch;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/button_touch;->fillUpMatrix()V

    .line 48
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 78
    return-void
.end method
