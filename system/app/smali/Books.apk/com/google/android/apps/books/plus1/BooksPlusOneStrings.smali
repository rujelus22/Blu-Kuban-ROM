.class public Lcom/google/android/apps/books/plus1/BooksPlusOneStrings;
.super Ljava/lang/Object;
.source "BooksPlusOneStrings.java"


# static fields
.field private static final RESOURCES:Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;

    const v1, 0x7f0e00d9

    const v2, 0x7f0e00d7

    const v3, 0x7f0e00d8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;-><init>(III)V

    sput-object v0, Lcom/google/android/apps/books/plus1/BooksPlusOneStrings;->RESOURCES:Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeAnnotationString(Landroid/content/Context;Lcom/google/android/plus1/PlusOne;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "context"
    .parameter "value"

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/apps/books/plus1/BooksPlusOneStrings;->RESOURCES:Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;

    invoke-static {p0, v0, p1}, Lcom/google/android/plus1/BasePlusOneStrings;->makeAnnotationString(Landroid/content/Context;Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;Lcom/google/android/plus1/PlusOne;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
