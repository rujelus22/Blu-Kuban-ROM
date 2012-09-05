.class public abstract Lcom/android/exchange/SearchRequest;
.super Ljava/lang/Object;
.source "SearchRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/SearchRequest$2;,
        Lcom/android/exchange/SearchRequest$Builder;,
        Lcom/android/exchange/SearchRequest$SearchRequestImpl;,
        Lcom/android/exchange/SearchRequest$OptionsMIMESupport;,
        Lcom/android/exchange/SearchRequest$BodyPreferenceType;,
        Lcom/android/exchange/SearchRequest$QueryClass;,
        Lcom/android/exchange/SearchRequest$StoreName;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/exchange/SearchRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 611
    new-instance v0, Lcom/android/exchange/SearchRequest$1;

    invoke-direct {v0}, Lcom/android/exchange/SearchRequest$1;-><init>()V

    sput-object v0, Lcom/android/exchange/SearchRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exchange/SearchRequest$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/exchange/SearchRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOptionsBodyPreferenceTruncationSize()Ljava/lang/String;
.end method

.method public abstract getOptionsBodyPreferenceType()Ljava/lang/String;
.end method

.method public abstract getOptionsDeepTraversal()Z
.end method

.method public abstract getOptionsOptionsMIMESupport()Ljava/lang/String;
.end method

.method public abstract getOptionsRange()Ljava/lang/String;
.end method

.method public abstract getOptionsRebuildResults()Z
.end method

.method public abstract getQueryClass()Ljava/lang/String;
.end method

.method public abstract getQueryCollectionIds()[J
.end method

.method public abstract getQueryConvIdText()Ljava/lang/String;
.end method

.method public abstract getQueryFreeText()Ljava/lang/String;
.end method

.method public abstract getQueryGreaterThan()Ljava/lang/String;
.end method

.method public abstract getQueryLessThan()Ljava/lang/String;
.end method

.method public abstract getQueryText()Ljava/lang/String;
.end method

.method public abstract getStoreName()Ljava/lang/String;
.end method
