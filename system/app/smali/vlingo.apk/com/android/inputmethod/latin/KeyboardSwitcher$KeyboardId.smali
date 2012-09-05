.class Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/KeyboardSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyboardId"
.end annotation


# instance fields
.field public mEnableShiftLock:Z

.field public mMode:I

.field public mXml:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "xml"

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, v0, v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(IIZ)V

    .line 108
    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 4
    .parameter "xml"
    .parameter "mode"
    .parameter "enableShiftLock"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mXml:I

    .line 102
    iput p2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mMode:I

    .line 103
    iput-boolean p3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mEnableShiftLock:Z

    .line 104
    return-void
.end method


# virtual methods
.method public equals(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Z
    .registers 4
    .parameter "other"

    .prologue
    .line 115
    iget v0, p1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mXml:I

    iget v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mXml:I

    if-ne v0, v1, :cond_e

    iget v0, p1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mMode:I

    iget v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mMode:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "other"

    .prologue
    .line 111
    instance-of v0, p1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->equals(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 119
    iget v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mXml:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mMode:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mEnableShiftLock:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    :goto_e
    mul-int/2addr v0, v1

    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_e
.end method
