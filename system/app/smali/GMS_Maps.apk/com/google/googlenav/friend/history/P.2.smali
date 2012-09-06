.class public Lcom/google/googlenav/friend/history/P;
.super Lcom/google/googlenav/friend/history/K;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/googlenav/friend/history/P;->a:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/googlenav/friend/history/K;-><init>()V

    .line 56
    iput p1, p0, Lcom/google/googlenav/friend/history/P;->b:I

    .line 57
    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 82
    iget v0, p0, Lcom/google/googlenav/friend/history/P;->b:I

    .line 85
    const/16 v2, 0x41

    if-ne v0, v2, :cond_e

    .line 86
    const/16 v0, 0x28a

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_d
    return-object v0

    .line 88
    :cond_e
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_19

    .line 89
    const/16 v0, 0x289

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 92
    :cond_19
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 93
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v3

    move v2, v0

    move v0, v1

    .line 97
    :goto_28
    const/4 v4, 0x7

    if-ge v0, v4, :cond_4a

    .line 100
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_45

    .line 103
    const/16 v2, 0x288

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    sget-object v5, Lcom/google/googlenav/friend/history/P;->a:[I

    aget v0, v5, v0

    aget-object v0, v3, v0

    aput-object v0, v4, v1

    invoke-static {v2, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 109
    :cond_45
    ushr-int/lit8 v2, v2, 0x1

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 115
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid input for dayOfWeek. Value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/googlenav/friend/history/P;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
