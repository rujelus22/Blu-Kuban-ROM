.class public final enum Lcom/darekxan/extweaks/h;
.super Ljava/lang/Enum;
.source "ShellInterface.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/darekxan/extweaks/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/darekxan/extweaks/h;

.field public static final enum b:Lcom/darekxan/extweaks/h;

.field private static final synthetic c:[Lcom/darekxan/extweaks/h;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/darekxan/extweaks/h;

    const-string v1, "SU"

    invoke-direct {v0, v1, v2}, Lcom/darekxan/extweaks/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/darekxan/extweaks/h;->a:Lcom/darekxan/extweaks/h;

    new-instance v0, Lcom/darekxan/extweaks/h;

    const-string v1, "SH"

    invoke-direct {v0, v1, v3}, Lcom/darekxan/extweaks/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/darekxan/extweaks/h;->b:Lcom/darekxan/extweaks/h;

    .line 4
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/darekxan/extweaks/h;

    sget-object v1, Lcom/darekxan/extweaks/h;->a:Lcom/darekxan/extweaks/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/darekxan/extweaks/h;->b:Lcom/darekxan/extweaks/h;

    aput-object v1, v0, v3

    sput-object v0, Lcom/darekxan/extweaks/h;->c:[Lcom/darekxan/extweaks/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/darekxan/extweaks/h;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/darekxan/extweaks/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/h;

    return-object v0
.end method

.method public static values()[Lcom/darekxan/extweaks/h;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/darekxan/extweaks/h;->c:[Lcom/darekxan/extweaks/h;

    array-length v1, v0

    new-array v2, v1, [Lcom/darekxan/extweaks/h;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
