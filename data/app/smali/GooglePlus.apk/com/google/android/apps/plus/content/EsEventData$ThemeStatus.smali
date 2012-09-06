.class Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;
.super Ljava/lang/Object;
.source "EsEventData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/content/EsEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemeStatus"
.end annotation


# instance fields
.field imageUrl:Ljava/lang/String;

.field isDefault:Z

.field isFeatured:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/content/EsEventData$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 2127
    invoke-direct {p0}, Lcom/google/android/apps/plus/content/EsEventData$ThemeStatus;-><init>()V

    return-void
.end method
