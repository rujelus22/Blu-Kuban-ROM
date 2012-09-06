.class public final Lcom/android/athome/picker/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AlbumArt:[I

.field public static final MaxSize:[I

.field public static final MediaRouteButton:[I

.field public static final MusicMenuView:[I

.field public static final PassClick:[I

.field public static final PlayPauseImages:[I

.field public static final SizableSeekbar:[I

.field public static final TouchDelagate:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3508
    new-array v0, v4, [I

    fill-array-data v0, :array_44

    sput-object v0, Lcom/android/athome/picker/R$styleable;->AlbumArt:[I

    .line 3549
    new-array v0, v3, [I

    const v1, 0x7f010009

    aput v1, v0, v2

    sput-object v0, Lcom/android/athome/picker/R$styleable;->MaxSize:[I

    .line 3586
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/android/athome/picker/R$styleable;->MediaRouteButton:[I

    .line 3656
    new-array v0, v5, [I

    fill-array-data v0, :array_58

    sput-object v0, Lcom/android/athome/picker/R$styleable;->MusicMenuView:[I

    .line 3715
    new-array v0, v4, [I

    fill-array-data v0, :array_62

    sput-object v0, Lcom/android/athome/picker/R$styleable;->PassClick:[I

    .line 3752
    new-array v0, v5, [I

    fill-array-data v0, :array_6a

    sput-object v0, Lcom/android/athome/picker/R$styleable;->PlayPauseImages:[I

    .line 3807
    new-array v0, v3, [I

    const v1, 0x7f010003

    aput v1, v0, v2

    sput-object v0, Lcom/android/athome/picker/R$styleable;->SizableSeekbar:[I

    .line 3836
    new-array v0, v3, [I

    const v1, 0x7f01000c

    aput v1, v0, v2

    sput-object v0, Lcom/android/athome/picker/R$styleable;->TouchDelagate:[I

    return-void

    .line 3508
    :array_44
    .array-data 0x4
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
    .end array-data

    .line 3586
    :array_4c
    .array-data 0x4
        0x3ft 0x1t 0x1t 0x1t
        0x40t 0x1t 0x1t 0x1t
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
    .end array-data

    .line 3656
    :array_58
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
    .end array-data

    .line 3715
    :array_62
    .array-data 0x4
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
    .end array-data

    .line 3752
    :array_6a
    .array-data 0x4
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
