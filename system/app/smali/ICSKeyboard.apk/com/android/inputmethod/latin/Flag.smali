.class public Lcom/android/inputmethod/latin/Flag;
.super Ljava/lang/Object;
.source "Flag.java"


# static fields
.field private static final SOURCE_CONFIG:I = 0x1

.field private static final SOURCE_EXTRAVALUE:I = 0x2

.field private static final SOURCE_PARAM:I = 0x3


# instance fields
.field public final mMask:I

.field public final mName:Ljava/lang/String;

.field public final mResource:I

.field public final mSource:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "mask"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/Flag;->mName:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/Flag;->mResource:I

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/latin/Flag;->mSource:I

    .line 51
    iput p1, p0, Lcom/android/inputmethod/latin/Flag;->mMask:I

    .line 52
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .parameter "resourceId"
    .parameter "mask"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/Flag;->mName:Ljava/lang/String;

    .line 35
    iput p1, p0, Lcom/android/inputmethod/latin/Flag;->mResource:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/Flag;->mSource:I

    .line 37
    iput p2, p0, Lcom/android/inputmethod/latin/Flag;->mMask:I

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "name"
    .parameter "mask"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/inputmethod/latin/Flag;->mName:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/Flag;->mResource:I

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/inputmethod/latin/Flag;->mSource:I

    .line 44
    iput p2, p0, Lcom/android/inputmethod/latin/Flag;->mMask:I

    .line 45
    return-void
.end method

.method public static initFlags([Lcom/android/inputmethod/latin/Flag;Landroid/content/Context;Lcom/android/inputmethod/latin/SubtypeSwitcher;)I
    .registers 9
    .parameter "flagArray"
    .parameter "context"
    .parameter "switcher"

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, flags:I
    if-nez p1, :cond_9

    const/4 v2, 0x0

    .line 58
    .local v2, res:Landroid/content/res/Resources;
    :goto_4
    array-length v4, p0

    const/4 v3, 0x0

    :goto_6
    if-lt v3, v4, :cond_e

    .line 74
    return v1

    .line 57
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_4

    .line 58
    .restart local v2       #res:Landroid/content/res/Resources;
    :cond_e
    aget-object v0, p0, v3

    .line 59
    .local v0, entry:Lcom/android/inputmethod/latin/Flag;
    iget v5, v0, Lcom/android/inputmethod/latin/Flag;->mSource:I

    packed-switch v5, :pswitch_data_38

    .line 58
    :cond_15
    :goto_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 61
    :pswitch_18
    if-eqz v2, :cond_22

    iget v5, v0, Lcom/android/inputmethod/latin/Flag;->mResource:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 62
    :cond_22
    iget v5, v0, Lcom/android/inputmethod/latin/Flag;->mMask:I

    or-int/2addr v1, v5

    .line 63
    goto :goto_15

    .line 65
    :pswitch_26
    if-eqz p2, :cond_30

    .line 66
    iget-object v5, v0, Lcom/android/inputmethod/latin/Flag;->mName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->currentSubtypeContainsExtraValueKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 67
    :cond_30
    iget v5, v0, Lcom/android/inputmethod/latin/Flag;->mMask:I

    or-int/2addr v1, v5

    .line 68
    goto :goto_15

    .line 70
    :pswitch_34
    iget v5, v0, Lcom/android/inputmethod/latin/Flag;->mMask:I

    or-int/2addr v1, v5

    goto :goto_15

    .line 59
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_18
        :pswitch_26
        :pswitch_34
    .end packed-switch
.end method
