.class public final Lcom/swype/android/connect/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/connect/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final IconPreferenceScreen:[I = null

.field public static final IconPreferenceScreen_icon:I = 0x0

.field public static final SeekBarPreference:[I = null

.field public static final SeekBarPreference_labelMax:I = 0x1

.field public static final SeekBarPreference_labelMin:I = 0x0

.field public static final SeekBarPreference_showValue:I = 0x4

.field public static final SeekBarPreference_valueMax:I = 0x3

.field public static final SeekBarPreference_valueMin:I = 0x2

.field public static final SeekBarPreference_valueSubLabel:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 601
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010006

    aput v2, v0, v1

    sput-object v0, Lcom/swype/android/connect/R$styleable;->IconPreferenceScreen:[I

    .line 634
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/swype/android/connect/R$styleable;->SeekBarPreference:[I

    return-void

    :array_14
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
