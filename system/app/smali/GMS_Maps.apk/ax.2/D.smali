.class public final enum LaX/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LaX/d;

.field private static final synthetic c:[LaX/d;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 12
    new-instance v0, LaX/d;

    const-string v1, "FOG_DENSITY"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v3, v2}, LaX/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, LaX/d;->a:LaX/d;

    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [LaX/d;

    sget-object v1, LaX/d;->a:LaX/d;

    aput-object v1, v0, v3

    sput-object v0, LaX/d;->c:[LaX/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, LaX/d;->b:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaX/d;
    .registers 2
    .parameter

    .prologue
    .line 11
    const-class v0, LaX/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaX/d;

    return-object v0
.end method

.method public static values()[LaX/d;
    .registers 1

    .prologue
    .line 11
    sget-object v0, LaX/d;->c:[LaX/d;

    invoke-virtual {v0}, [LaX/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaX/d;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 21
    iget v0, p0, LaX/d;->b:I

    return v0
.end method
