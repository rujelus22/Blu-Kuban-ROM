.class public final enum Lcom/google/android/apps/googlevoice/LoginChannel;
.super Ljava/lang/Enum;
.source "LoginChannel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/googlevoice/LoginChannel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/googlevoice/LoginChannel;

.field public static final enum DEFAULT:Lcom/google/android/apps/googlevoice/LoginChannel;

.field public static final enum MASF:Lcom/google/android/apps/googlevoice/LoginChannel;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/google/android/apps/googlevoice/LoginChannel;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/LoginChannel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/LoginChannel;->DEFAULT:Lcom/google/android/apps/googlevoice/LoginChannel;

    .line 16
    new-instance v0, Lcom/google/android/apps/googlevoice/LoginChannel;

    const-string v1, "MASF"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/googlevoice/LoginChannel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/LoginChannel;->MASF:Lcom/google/android/apps/googlevoice/LoginChannel;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/googlevoice/LoginChannel;

    sget-object v1, Lcom/google/android/apps/googlevoice/LoginChannel;->DEFAULT:Lcom/google/android/apps/googlevoice/LoginChannel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/googlevoice/LoginChannel;->MASF:Lcom/google/android/apps/googlevoice/LoginChannel;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/googlevoice/LoginChannel;->$VALUES:[Lcom/google/android/apps/googlevoice/LoginChannel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/LoginChannel;
    .registers 4
    .parameter "valueStr"

    .prologue
    .line 25
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/LoginChannel;->valueOf(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/LoginChannel;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_29

    move-result-object v1

    .line 32
    :goto_8
    return-object v1

    .line 26
    :catch_9
    move-exception v0

    .line 27
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not understand LoginChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Will use DEFAULT instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_26
    sget-object v1, Lcom/google/android/apps/googlevoice/LoginChannel;->DEFAULT:Lcom/google/android/apps/googlevoice/LoginChannel;

    goto :goto_8

    .line 29
    :catch_29
    move-exception v0

    .line 30
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "null LoginChannel encountered. Will use DEFAULT instead."

    invoke-static {v1, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/LoginChannel;
    .registers 2
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/google/android/apps/googlevoice/LoginChannel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/LoginChannel;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/googlevoice/LoginChannel;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/apps/googlevoice/LoginChannel;->$VALUES:[Lcom/google/android/apps/googlevoice/LoginChannel;

    invoke-virtual {v0}, [Lcom/google/android/apps/googlevoice/LoginChannel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/googlevoice/LoginChannel;

    return-object v0
.end method
