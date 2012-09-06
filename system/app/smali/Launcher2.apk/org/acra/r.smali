.class public final enum Lorg/acra/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum NOTIFICATION:Lorg/acra/r;

.field public static final enum SILENT:Lorg/acra/r;

.field public static final enum TOAST:Lorg/acra/r;

.field private static final synthetic a:[Lorg/acra/r;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lorg/acra/r;

    const-string v1, "SILENT"

    invoke-direct {v0, v1, v2}, Lorg/acra/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/r;->SILENT:Lorg/acra/r;

    .line 42
    new-instance v0, Lorg/acra/r;

    const-string v1, "NOTIFICATION"

    invoke-direct {v0, v1, v3}, Lorg/acra/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/r;->NOTIFICATION:Lorg/acra/r;

    .line 47
    new-instance v0, Lorg/acra/r;

    const-string v1, "TOAST"

    invoke-direct {v0, v1, v4}, Lorg/acra/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/r;->TOAST:Lorg/acra/r;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/acra/r;

    sget-object v1, Lorg/acra/r;->SILENT:Lorg/acra/r;

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/r;->NOTIFICATION:Lorg/acra/r;

    aput-object v1, v0, v3

    sget-object v1, Lorg/acra/r;->TOAST:Lorg/acra/r;

    aput-object v1, v0, v4

    sput-object v0, Lorg/acra/r;->a:[Lorg/acra/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/acra/r;
    .registers 2
    .parameter

    .prologue
    .line 30
    const-class v0, Lorg/acra/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/acra/r;

    return-object v0
.end method

.method public static values()[Lorg/acra/r;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lorg/acra/r;->a:[Lorg/acra/r;

    invoke-virtual {v0}, [Lorg/acra/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/acra/r;

    return-object v0
.end method
