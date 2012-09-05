.class public Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;
.super Ljava/lang/Object;
.source "AxT9HWKeyMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HWKeyInfo"
.end annotation


# instance fields
.field private mAltGrKeyValue:I

.field private mCountryCode:I

.field private mKeyCode:I

.field private mLanguageDBID:S

.field private mNormalKeyValue:I

.field private mShiftedAltGrKeyValue:I

.field private mShiftedKeyValue:I


# direct methods
.method constructor <init>(SIIIIII)V
    .registers 8
    .parameter "languageDBID"
    .parameter "countryCode"
    .parameter "keyCode"
    .parameter "normalKeyValues"
    .parameter "shiftedKeyValues"
    .parameter "altGrKeyValue"
    .parameter "shiftedAltGrKeyValue"

    .prologue
    .line 810
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 811
    iput-short p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mLanguageDBID:S

    .line 812
    iput p3, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mKeyCode:I

    .line 813
    iput p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mNormalKeyValue:I

    .line 814
    iput p5, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mShiftedKeyValue:I

    .line 815
    iput p6, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mAltGrKeyValue:I

    .line 816
    iput p7, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mShiftedAltGrKeyValue:I

    .line 817
    iput p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mCountryCode:I

    .line 818
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;)S
    .registers 2
    .parameter "x0"

    .prologue
    .line 801
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mLanguageDBID:S

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 801
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mCountryCode:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 801
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mKeyCode:I

    return v0
.end method


# virtual methods
.method public getAltGrKeyValues()I
    .registers 2

    .prologue
    .line 824
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mAltGrKeyValue:I

    return v0
.end method

.method public getNormalKeyValues()I
    .registers 2

    .prologue
    .line 822
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mNormalKeyValue:I

    return v0
.end method

.method public getShiftedAltGrKeyvalue()I
    .registers 2

    .prologue
    .line 825
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mShiftedAltGrKeyValue:I

    return v0
.end method

.method public getShiftedKeyvalue()I
    .registers 2

    .prologue
    .line 823
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mShiftedKeyValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LanguageDBID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mLanguageDBID:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KeyCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mKeyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NormalKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mNormalKeyValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ShiftedKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mShiftedKeyValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
