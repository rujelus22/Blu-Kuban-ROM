.class public final enum Lcom/android/inputmethod/latin/Dictionary$DataType;
.super Ljava/lang/Enum;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Dictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/inputmethod/latin/Dictionary$DataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

.field private static final synthetic ENUM$VALUES:[Lcom/android/inputmethod/latin/Dictionary$DataType;

.field public static final enum UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/android/inputmethod/latin/Dictionary$DataType;

    const-string v1, "UNIGRAM"

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/Dictionary$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    new-instance v0, Lcom/android/inputmethod/latin/Dictionary$DataType;

    const-string v1, "BIGRAM"

    invoke-direct {v0, v1, v3}, Lcom/android/inputmethod/latin/Dictionary$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/latin/Dictionary$DataType;->BIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/inputmethod/latin/Dictionary$DataType;

    sget-object v1, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/inputmethod/latin/Dictionary$DataType;->BIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/inputmethod/latin/Dictionary$DataType;->ENUM$VALUES:[Lcom/android/inputmethod/latin/Dictionary$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/inputmethod/latin/Dictionary$DataType;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/android/inputmethod/latin/Dictionary$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/Dictionary$DataType;

    return-object v0
.end method

.method public static values()[Lcom/android/inputmethod/latin/Dictionary$DataType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/android/inputmethod/latin/Dictionary$DataType;->ENUM$VALUES:[Lcom/android/inputmethod/latin/Dictionary$DataType;

    array-length v1, v0

    new-array v2, v1, [Lcom/android/inputmethod/latin/Dictionary$DataType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
