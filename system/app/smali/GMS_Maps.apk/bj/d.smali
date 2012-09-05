.class public final enum Lbj/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbj/d;

.field private static final synthetic c:[Lbj/d;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    new-instance v0, Lbj/d;

    const-string v1, "FOG_DENSITY"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v3, v2}, Lbj/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbj/d;->a:Lbj/d;

    const/4 v0, 0x1

    new-array v0, v0, [Lbj/d;

    sget-object v1, Lbj/d;->a:Lbj/d;

    aput-object v1, v0, v3

    sput-object v0, Lbj/d;->c:[Lbj/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbj/d;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbj/d;
    .registers 2

    const-class v0, Lbj/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbj/d;

    return-object v0
.end method

.method public static values()[Lbj/d;
    .registers 1

    sget-object v0, Lbj/d;->c:[Lbj/d;

    invoke-virtual {v0}, [Lbj/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbj/d;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lbj/d;->b:I

    return v0
.end method
