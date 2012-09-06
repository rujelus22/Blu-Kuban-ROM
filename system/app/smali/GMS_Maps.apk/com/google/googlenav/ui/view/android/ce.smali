.class final enum Lcom/google/googlenav/ui/view/android/ce;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/ui/view/android/ce;

.field public static final enum b:Lcom/google/googlenav/ui/view/android/ce;

.field private static final synthetic c:[Lcom/google/googlenav/ui/view/android/ce;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/google/googlenav/ui/view/android/ce;

    const-string v1, "DIALOG"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/ce;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/view/android/ce;->a:Lcom/google/googlenav/ui/view/android/ce;

    .line 45
    new-instance v0, Lcom/google/googlenav/ui/view/android/ce;

    const-string v1, "MAP"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/view/android/ce;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/view/android/ce;->b:Lcom/google/googlenav/ui/view/android/ce;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/googlenav/ui/view/android/ce;

    sget-object v1, Lcom/google/googlenav/ui/view/android/ce;->a:Lcom/google/googlenav/ui/view/android/ce;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/ui/view/android/ce;->b:Lcom/google/googlenav/ui/view/android/ce;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/googlenav/ui/view/android/ce;->c:[Lcom/google/googlenav/ui/view/android/ce;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/ce;
    .registers 2
    .parameter

    .prologue
    .line 36
    const-class v0, Lcom/google/googlenav/ui/view/android/ce;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/ce;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/ui/view/android/ce;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/googlenav/ui/view/android/ce;->c:[Lcom/google/googlenav/ui/view/android/ce;

    invoke-virtual {v0}, [Lcom/google/googlenav/ui/view/android/ce;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/view/android/ce;

    return-object v0
.end method
