.class final enum Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
.super Ljava/lang/Enum;
.source "Diagnostic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/diagnostics/Diagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RunStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

.field public static final enum NOT_RUN:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

.field public static final enum RUNNING:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

.field public static final enum RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

.field public static final enum RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

.field public static final enum RUN_WARN:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    const-string v1, "NOT_RUN"

    invoke-direct {v0, v1, v2}, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->NOT_RUN:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 27
    new-instance v0, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUNNING:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 28
    new-instance v0, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    const-string v1, "RUN_OKAY"

    invoke-direct {v0, v1, v4}, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 29
    new-instance v0, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    const-string v1, "RUN_WARN"

    invoke-direct {v0, v1, v5}, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_WARN:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 30
    new-instance v0, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    const-string v1, "RUN_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->NOT_RUN:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUNNING:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_WARN:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->ENUM$VALUES:[Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    return-object v0
.end method

.method public static values()[Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->ENUM$VALUES:[Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
