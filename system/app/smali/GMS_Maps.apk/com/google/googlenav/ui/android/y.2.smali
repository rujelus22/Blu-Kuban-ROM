.class public final enum Lcom/google/googlenav/ui/android/Y;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/ui/android/Y;

.field public static final enum b:Lcom/google/googlenav/ui/android/Y;

.field private static final synthetic c:[Lcom/google/googlenav/ui/android/Y;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 372
    new-instance v0, Lcom/google/googlenav/ui/android/Y;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/android/Y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/android/Y;->a:Lcom/google/googlenav/ui/android/Y;

    .line 374
    new-instance v0, Lcom/google/googlenav/ui/android/Y;

    const-string v1, "SHOW_ALWAYS"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/android/Y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/android/Y;->b:Lcom/google/googlenav/ui/android/Y;

    .line 370
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/googlenav/ui/android/Y;

    sget-object v1, Lcom/google/googlenav/ui/android/Y;->a:Lcom/google/googlenav/ui/android/Y;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/ui/android/Y;->b:Lcom/google/googlenav/ui/android/Y;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/googlenav/ui/android/Y;->c:[Lcom/google/googlenav/ui/android/Y;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 370
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/android/Y;
    .registers 2
    .parameter

    .prologue
    .line 370
    const-class v0, Lcom/google/googlenav/ui/android/Y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/Y;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/ui/android/Y;
    .registers 1

    .prologue
    .line 370
    sget-object v0, Lcom/google/googlenav/ui/android/Y;->c:[Lcom/google/googlenav/ui/android/Y;

    invoke-virtual {v0}, [Lcom/google/googlenav/ui/android/Y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/android/Y;

    return-object v0
.end method
