.class public interface abstract Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;
.super Ljava/lang/Object;
.source "FeatureFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/feature/FeatureFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContactSort"
.end annotation


# static fields
.field public static final INITIAL:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 364
    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;->INITIAL:[C

    return-void

    :array_a
    .array-data 0x2
        0x31t 0x31t
        0x32t 0x31t
        0x34t 0x31t
        0x37t 0x31t
        0x38t 0x31t
        0x39t 0x31t
        0x41t 0x31t
        0x42t 0x31t
        0x43t 0x31t
        0x45t 0x31t
        0x46t 0x31t
        0x47t 0x31t
        0x48t 0x31t
        0x49t 0x31t
        0x4at 0x31t
        0x4bt 0x31t
        0x4ct 0x31t
        0x4dt 0x31t
        0x4et 0x31t
    .end array-data
.end method


# virtual methods
.method public abstract getColumnForSortIndex()I
.end method

.method public abstract getIndexCharacter(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getOrderBy()Ljava/lang/String;
.end method

.method public abstract getProjection()[Ljava/lang/String;
.end method

.method public abstract getSearchCondition(Ljava/lang/String;)Ljava/lang/String;
.end method
