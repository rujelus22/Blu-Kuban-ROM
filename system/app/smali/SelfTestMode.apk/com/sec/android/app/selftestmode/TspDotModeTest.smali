.class public Lcom/sec/android/app/selftestmode/TspDotModeTest;
.super Landroid/app/Activity;
.source "TspDotModeTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCircleSize:I

.field private mCrossSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const-string v0, "TspDotModeTest"

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest;->TAG:Ljava/lang/String;

    .line 67
    const/16 v0, 0x46

    iput v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest;->mCircleSize:I

    .line 69
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest;->mCrossSize:I

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/selftestmode/TspDotModeTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest;->mCircleSize:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/selftestmode/TspDotModeTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest;->mCrossSize:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    new-instance v0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;-><init>(Lcom/sec/android/app/selftestmode/TspDotModeTest;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/TspDotModeTest;->setContentView(Landroid/view/View;)V

    .line 81
    const/16 v0, 0x1e

    iput v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest;->mCircleSize:I

    .line 83
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest;->mCrossSize:I

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/TspDotModeTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 87
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 107
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 97
    return-void
.end method
