.class final enum Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;
.super Ljava/lang/Enum;
.source "Diagnostic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/diagnostics/Diagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TestStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

.field public static final enum GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

.field public static final enum NONE:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

.field public static final enum RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    const-string v1, "GREEN"

    invoke-direct {v0, v1, v2}, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 35
    new-instance v0, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    const-string v1, "RED"

    invoke-direct {v0, v1, v3}, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 36
    new-instance v0, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->NONE:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->NONE:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->ENUM$VALUES:[Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    return-object v0
.end method

.method public static values()[Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->ENUM$VALUES:[Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
