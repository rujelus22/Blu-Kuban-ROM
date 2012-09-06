.class public final enum Lcom/google/android/ytremote/model/CloudScreen$AccessType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/google/android/ytremote/model/CloudScreen$AccessType;

.field public static final enum PERMANENT:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

.field public static final enum TEMPORARY:Lcom/google/android/ytremote/model/CloudScreen$AccessType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    new-instance v0, Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    const-string v1, "PERMANENT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/model/CloudScreen$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->PERMANENT:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    new-instance v0, Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    const-string v1, "TEMPORARY"

    invoke-direct {v0, v1, v3}, Lcom/google/android/ytremote/model/CloudScreen$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->TEMPORARY:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    .line 127
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    sget-object v1, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->PERMANENT:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->TEMPORARY:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->ENUM$VALUES:[Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/android/ytremote/model/CloudScreen$AccessType;
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 131
    if-nez p0, :cond_4

    .line 137
    :goto_3
    return-object v0

    .line 135
    :cond_4
    :try_start_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->valueOf(Ljava/lang/String;)Lcom/google/android/ytremote/model/CloudScreen$AccessType;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_3

    .line 137
    :catch_f
    move-exception v1

    goto :goto_3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/ytremote/model/CloudScreen$AccessType;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/ytremote/model/CloudScreen$AccessType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->ENUM$VALUES:[Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
