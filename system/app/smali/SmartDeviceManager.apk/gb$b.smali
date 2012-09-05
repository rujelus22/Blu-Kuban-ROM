.class public final enum Lgb$b;
.super Ljava/lang/Enum;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4031
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgb$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgb$b;

.field public static final enum CLASS:Lgb$b;

.field public static final enum CUSTOM:Lgb$b;

.field public static final enum MINIMAL_CLASS:Lgb$b;

.field public static final enum NAME:Lgb$b;

.field public static final enum NONE:Lgb$b;


# instance fields
.field private final _defaultPropertyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lgb$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lgb$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgb$b;->NONE:Lgb$b;

    .line 61
    new-instance v0, Lgb$b;

    const-string v1, "CLASS"

    const-string v2, "@class"

    invoke-direct {v0, v1, v4, v2}, Lgb$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgb$b;->CLASS:Lgb$b;

    .line 80
    new-instance v0, Lgb$b;

    const-string v1, "MINIMAL_CLASS"

    const-string v2, "@c"

    invoke-direct {v0, v1, v5, v2}, Lgb$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgb$b;->MINIMAL_CLASS:Lgb$b;

    .line 86
    new-instance v0, Lgb$b;

    const-string v1, "NAME"

    const-string v2, "@type"

    invoke-direct {v0, v1, v6, v2}, Lgb$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgb$b;->NAME:Lgb$b;

    .line 93
    new-instance v0, Lgb$b;

    const-string v1, "CUSTOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v7, v2}, Lgb$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgb$b;->CUSTOM:Lgb$b;

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Lgb$b;

    sget-object v1, Lgb$b;->NONE:Lgb$b;

    aput-object v1, v0, v3

    sget-object v1, Lgb$b;->CLASS:Lgb$b;

    aput-object v1, v0, v4

    sget-object v1, Lgb$b;->MINIMAL_CLASS:Lgb$b;

    aput-object v1, v0, v5

    sget-object v1, Lgb$b;->NAME:Lgb$b;

    aput-object v1, v0, v6

    sget-object v1, Lgb$b;->CUSTOM:Lgb$b;

    aput-object v1, v0, v7

    sput-object v0, Lgb$b;->$VALUES:[Lgb$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput-object p3, p0, Lgb$b;->_defaultPropertyName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgb$b;
    .registers 2
    .parameter

    .prologue
    .line 47
    const-class v0, Lgb$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgb$b;

    return-object p0
.end method

.method public static values()[Lgb$b;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lgb$b;->$VALUES:[Lgb$b;

    invoke-virtual {v0}, [Lgb$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgb$b;

    return-object v0
.end method


# virtual methods
.method public final getDefaultPropertyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lgb$b;->_defaultPropertyName:Ljava/lang/String;

    return-object v0
.end method
