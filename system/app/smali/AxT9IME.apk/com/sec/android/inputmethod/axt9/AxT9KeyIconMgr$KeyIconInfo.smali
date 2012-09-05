.class public Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;
.super Ljava/lang/Object;
.source "AxT9KeyIconMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyIconInfo"
.end annotation


# instance fields
.field private mDisableIconId:I

.field private mInputMethod:I

.field private mInputMode:I

.field private mKeyPrimaryCode:I

.field private mNormalIconId:I

.field private mPressIconId:I

.field private mPreviewIconId:I

.field private mStateFlag:I


# direct methods
.method constructor <init>(IIIIIIII)V
    .registers 9
    .parameter "keyPrimaryCode"
    .parameter "inputMethod"
    .parameter "inputMode"
    .parameter "stateFlag"
    .parameter "normalIconId"
    .parameter "pressIconId"
    .parameter "previewIconId"
    .parameter "disableIconId"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mKeyPrimaryCode:I

    .line 34
    iput p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mInputMethod:I

    .line 35
    iput p3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mInputMode:I

    .line 36
    iput p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mStateFlag:I

    .line 37
    iput p5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mNormalIconId:I

    .line 38
    iput p6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mPressIconId:I

    .line 39
    iput p7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mPreviewIconId:I

    .line 40
    iput p8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mDisableIconId:I

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mKeyPrimaryCode:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mInputMethod:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mInputMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mStateFlag:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mNormalIconId:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mPressIconId:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mPreviewIconId:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->mDisableIconId:I

    return v0
.end method
