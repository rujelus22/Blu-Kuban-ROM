.class public Lcom/google/android/apps/unveil/env/puggle/PuggleResultItems;
.super Ljava/lang/Object;
.source "PuggleResultItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/puggle/PuggleResultItems$PriceComparator;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/puggle/PuggleResultItems;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static safeConvertPriceStringToDouble(Ljava/lang/String;)D
    .registers 8
    .parameter "priceString"

    .prologue
    .line 60
    const-string v3, "$"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, cleanedPriceString:Ljava/lang/String;
    :try_start_10
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 64
    .local v2, price:Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_17} :catch_19

    move-result-wide v3

    .line 67
    .end local v2           #price:Ljava/lang/Double;
    :goto_18
    return-wide v3

    .line 65
    :catch_19
    move-exception v1

    .line 66
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/google/android/apps/unveil/env/puggle/PuggleResultItems;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Price from ItemList is not parceable: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const-wide/16 v3, 0x0

    goto :goto_18
.end method
