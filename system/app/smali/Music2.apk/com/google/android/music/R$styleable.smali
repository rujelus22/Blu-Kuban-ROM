.class public final Lcom/google/android/music/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final MaxSize:[I

.field public static final MusicMenuView:[I

.field public static final PassClick:[I

.field public static final PlayPauseImages:[I

.field public static final SizableSeekbar:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3118
    new-array v0, v3, [I

    const v1, 0x7f010009

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/music/R$styleable;->MaxSize:[I

    .line 3151
    new-array v0, v4, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/google/android/music/R$styleable;->MusicMenuView:[I

    .line 3210
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_36

    sput-object v0, Lcom/google/android/music/R$styleable;->PassClick:[I

    .line 3247
    new-array v0, v4, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/google/android/music/R$styleable;->PlayPauseImages:[I

    .line 3302
    new-array v0, v3, [I

    const v1, 0x7f010003

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/music/R$styleable;->SizableSeekbar:[I

    return-void

    .line 3151
    :array_2c
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
    .end array-data

    .line 3210
    :array_36
    .array-data 0x4
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
    .end array-data

    .line 3247
    :array_3e
    .array-data 0x4
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
