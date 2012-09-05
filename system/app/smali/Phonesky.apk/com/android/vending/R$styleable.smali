.class public final Lcom/android/vending/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ArtistBucketEntry:[I

.field public static final CellTitleOverlay:[I

.field public static final ContentFrame:[I

.field public static final DecoratedTextView:[I

.field public static final HeroGraphicView:[I

.field public static final HistogramTable:[I

.field public static final HorizontalStrip:[I

.field public static final MarginBox:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2913
    new-array v0, v3, [I

    const v1, 0x7f01000a

    aput v1, v0, v2

    sput-object v0, Lcom/android/vending/R$styleable;->ArtistBucketEntry:[I

    .line 2942
    new-array v0, v4, [I

    fill-array-data v0, :array_46

    sput-object v0, Lcom/android/vending/R$styleable;->CellTitleOverlay:[I

    .line 2985
    new-array v0, v4, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/android/vending/R$styleable;->ContentFrame:[I

    .line 3020
    new-array v0, v4, [I

    fill-array-data v0, :array_56

    sput-object v0, Lcom/android/vending/R$styleable;->DecoratedTextView:[I

    .line 3066
    new-array v0, v3, [I

    const v1, 0x7f010001

    aput v1, v0, v2

    sput-object v0, Lcom/android/vending/R$styleable;->HeroGraphicView:[I

    .line 3095
    new-array v0, v3, [I

    const v1, 0x7f010006

    aput v1, v0, v2

    sput-object v0, Lcom/android/vending/R$styleable;->HistogramTable:[I

    .line 3124
    new-array v0, v3, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/vending/R$styleable;->HorizontalStrip:[I

    .line 3147
    new-array v0, v3, [I

    const v1, 0x7f010007

    aput v1, v0, v2

    sput-object v0, Lcom/android/vending/R$styleable;->MarginBox:[I

    return-void

    .line 2942
    nop

    :array_46
    .array-data 0x4
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
    .end array-data

    .line 2985
    :array_4e
    .array-data 0x4
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data

    .line 3020
    :array_56
    .array-data 0x4
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
