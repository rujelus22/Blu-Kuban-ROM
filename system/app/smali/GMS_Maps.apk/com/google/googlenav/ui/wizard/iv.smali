.class public final enum Lcom/google/googlenav/ui/wizard/iv;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/ui/wizard/iv;

.field public static final enum b:Lcom/google/googlenav/ui/wizard/iv;

.field public static final enum c:Lcom/google/googlenav/ui/wizard/iv;

.field private static final synthetic d:[Lcom/google/googlenav/ui/wizard/iv;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/google/googlenav/ui/wizard/iv;

    const-string v1, "VIBRATION"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/iv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/iv;->a:Lcom/google/googlenav/ui/wizard/iv;

    .line 57
    new-instance v0, Lcom/google/googlenav/ui/wizard/iv;

    const-string v1, "VOICE"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/wizard/iv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/iv;->b:Lcom/google/googlenav/ui/wizard/iv;

    .line 58
    new-instance v0, Lcom/google/googlenav/ui/wizard/iv;

    const-string v1, "RINGTONE"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/ui/wizard/iv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/iv;->c:Lcom/google/googlenav/ui/wizard/iv;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlenav/ui/wizard/iv;

    sget-object v1, Lcom/google/googlenav/ui/wizard/iv;->a:Lcom/google/googlenav/ui/wizard/iv;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/ui/wizard/iv;->b:Lcom/google/googlenav/ui/wizard/iv;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/ui/wizard/iv;->c:Lcom/google/googlenav/ui/wizard/iv;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/googlenav/ui/wizard/iv;->d:[Lcom/google/googlenav/ui/wizard/iv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/iv;
    .registers 2
    .parameter

    .prologue
    .line 55
    const-class v0, Lcom/google/googlenav/ui/wizard/iv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/iv;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/ui/wizard/iv;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/googlenav/ui/wizard/iv;->d:[Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v0}, [Lcom/google/googlenav/ui/wizard/iv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/wizard/iv;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/EnumSet;)Z
    .registers 3
    .parameter

    .prologue
    .line 61
    invoke-virtual {p1, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
